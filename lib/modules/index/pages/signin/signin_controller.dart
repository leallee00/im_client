import 'package:fixnum/fixnum.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/enum/login_type.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/web/webview_page.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/pages/windows/home/window_home.dart';
import 'package:quliao/pb/pb_pub/comm.pbenum.dart';
import 'package:quliao/pub/config.dart' as config;
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/countdown/countdown.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:quliao/widgets/loading.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../../../../pb/pb_pub/comm.pb.dart';
import '../../../../pb/pb_pub/error_code.pbenum.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';
import 'package:http/http.dart' as http;
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  /// 账号密码登录
  final TextEditingController accountController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  /// 邮箱验证码登录
  final TextEditingController emailController = TextEditingController();
  final TextEditingController verifyCodeController = TextEditingController();

  /// 手机验证码登录
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController smsCodeController = TextEditingController();

  final RxBool accountPwdVisibility = RxBool(false);

  RxBool emailLogin = RxBool(false);
  final RxInt currentIndex = RxInt(0);

  final RxList<LoginType> loginTypeList = RxList(
    // [LoginType.account, LoginType.mobile, LoginType.email],
    [LoginType.account, LoginType.mobile],
  );
  final Rx<LoginType> currentLoginType = Rx(LoginType.account);

  final PageController pageController = PageController();

  final GlobalController globalController = GlobalController.to;

  RxBool checkboxSelected = RxBool(false);

  @override
  void onInit() {
    super.onInit();

    // emailLogin.value = globalController.systemConfig.value?.emailLogin == true;
    emailLogin.value = false;
  }

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  /// 切换登录方式
  Future<void> switchLoginType(
    BuildContext context,
    LoginType loginType,
  ) async {
    hideKeyboard(context);
    currentLoginType.value = loginType;
    pageController.jumpToPage(
      loginTypeList.indexOf(loginType),
    );
  }

  Future<void> getMobileSmsCode(
    BuildContext context,
    CountdownCubit cubit,
  ) async {
    if (!isChinaPhoneLegal(mobileController.text)) {
      showToast('请正确输入手机号码');
      return;
    }

    LoadingDialog.show();

    /// 发送短信验证码
    SendPhoneCodeReq sendPhoneCodeReq = SendPhoneCodeReq();
    sendPhoneCodeReq.phoneNo = mobileController.text;
    sendPhoneCodeReq.code = smsCodeController.text;

    cubit.startCountdown();

    var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/SendPhoneCode',
      sendPhoneCodeReq,
      pbCommData,
    ).then((value) {
      LoadingDialog.dismiss();
      // _onLoginSuccess(loginReq,value);
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast('验证码已发送到您的手机，请注意查收');
          // todo
          // 设置发送按钮1分钟计时，不可点
          return;
        } else {
          showToast('发送验证码失败：${commRsp.result}');
          cubit.cancel();
        }
      } else {
        showToast('发送验证码失败：${value.statusCode}');
        cubit.cancel();
      }
    }).catchError((err) {
      LoadingDialog.dismiss();

      /// 登录错误
      LoggerManager().debug('err:$err');
      showToast('发送验证码失败:$err');
      cubit.cancel();
    });
  }

  Future<void> getEmailVerifyCode(
    BuildContext context,
    CountdownCubit cubit,
  ) async {
    if (!isEmail(emailController.text)) {
      showToast('请正确输入邮箱地址');
      return;
    }

    SendEmailCodeReq sendEmailCodeReq = SendEmailCodeReq();
    sendEmailCodeReq.emailAddr = emailController.text;
    sendEmailCodeReq.code = verifyCodeController.text;

    LoadingDialog.show();

    cubit.startCountdown();

    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/SendEmailCode',
      sendEmailCodeReq,
      pbCommData,
    ).then((value) {
      LoadingDialog.dismiss();
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast("验证码已发送到您的邮箱，请注意查收");
          // todo
          // 设置发送按钮1分钟计时，不可点
          return;
        } else {
          showToast("发送验证码失败：${commRsp.result}");
          cubit.cancel();
        }
      } else {
        showToast("发送验证码失败：${value.statusCode}");
        cubit.cancel();
      }
    }).catchError((err) {
      LoadingDialog.dismiss();

      /// 登录错误
      LoggerManager().debug("err:$err");
      showToast("发送验证码失败:$err");
      cubit.cancel();
    });
  }

  Future<void> login(
    BuildContext context,
  ) async {
    hideKeyboard(context);
    if (!checkboxSelected.value) {
      final colorScheme = Theme.of(context).colorScheme;
      final titleWidget = RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '请仔细阅读并同意',
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                color: colorScheme.onBackground,
              ),
            ),
            TextSpan(
              text: '《用户协议》',
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                color: colorScheme.primary,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  /// 查看用户协议
                  checkUserAgreement(context);
                },
            ),
            TextSpan(
              text: '和',
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            TextSpan(
              text: '《隐私协议》',
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                color: Theme.of(context).colorScheme.primary,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  /// 查看隐私协议
                  checkPrivacyAgreement(context);
                },
            ),
          ],
        ),
      );
      DialogManager.showAgreementDialog(
        context,
        titleWidget,
        onConfirm: () {
          checkboxSelected.value = true;
        },
      );
      return;
    }
    final Map<String, dynamic> params = <String, dynamic>{
      'appId': config.ConfigMgr().config!.appId.toInt(),
      'secret': config.ConfigMgr().config!.secret,
      'clientType': CLIENT_TYPE.PHONE,
    };
    final currentLoginTypeValue = currentLoginType.value;
    if (currentLoginTypeValue == LoginType.account) {
      if (!isAccount(accountController.text)) {
        showToast('请正确输入账号，由数字和字母组成');
        return;
      }
      if (passwordController.text.length < 6 ||
          passwordController.text.length > 30) {
        showToast('请正确输入密码，6到30个字符');
        return;
      }
      params['account'] = accountController.text;
      params['password'] = passwordController.text;
    } else if (currentLoginTypeValue == LoginType.email) {
      if (!isEmail(emailController.text)) {
        showToast('请正确输入邮箱地址');
        return;
      }
      if (!isCode(verifyCodeController.text)) {
        showToast('请正确输入验证码，发送到您邮箱的6位数字');
        return;
      }
      if (verifyCodeController.text.length < 6) {
        showToast("请填写正确的验证码");
        return;
      }
      params['email'] = emailController.text;
      params['code'] = verifyCodeController.text;
    } else if (currentLoginTypeValue == LoginType.mobile) {
      if (!isChinaPhoneLegal(mobileController.text)) {
        showToast('请正确输入手机号');
        return;
      }
      if (smsCodeController.text.length < 6) {
        showToast("请填写正确的验证码");
        return;
      }
      params['phone'] = mobileController.text;
      params['code'] = smsCodeController.text;
    }

    LoadingDialog.show();

    final loginReq = LoginReq();
    loginReq.phone = params['phone'] ?? '';
    loginReq.email = params['email'] ?? '';
    loginReq.username = params['account'] ?? '';
    loginReq.password = params['password'] ?? '';
    loginReq.code = int.parse(params['code'] ?? '0');

    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/Login',
      loginReq,
      pbCommData,
    ).then((value) async {
      LoadingDialog.dismiss();

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('userName', loginReq.username);
      prefs.setString('password', loginReq.password);
      if (context.mounted) {
        _onLoginCallBack(context, loginReq, value);
      }
    }).catchError((err) {
      LoadingDialog.dismiss();

      /// 登录错误
      LoggerManager().debug('登录失败：$err');
      showToast('登录失败:$err');
    });
  }

  Future<void> _onLoginCallBack(
    BuildContext context,
    LoginReq req,
    http.Response rsp,
  ) async {
    if (rsp.statusCode != 200) {
      String resultStr = '';
      if (rsp.statusCode == 500) {
        var status = $grpcStatus.Status();
        status.mergeFromBuffer(rsp.bodyBytes);
        LoggerManager().error('login err:$req, rsp:$rsp');
        // 业务错误，跟进错误码展示错误信息
        resultStr = "${status.code}:${status.message}";
        // showToast("登录失败，errno:${status.code} errmsg:${status.message}",
        //     toastLength: Toast.LENGTH_LONG);
        showToast('登录失败，errno:${status.code} errMsg:${status.message}');
      } else {
        resultStr = "登录失败， ${rsp.body}";
        showToast(resultStr);
      }
      // setState(() {});
      return;
    }

    var loginRsp = LoginRsp()..mergeFromBuffer(rsp.bodyBytes);
    LoggerManager().debug("登录返回:$rsp loginRsp:$loginRsp");

    AppUserInfo().reset();
    groupInfoMap.clear();
    // await AppDatabase().reset();
    // await AppDatabase().dbMsg?.close();

    // 设置用户信息
    var user = AppUserInfo();
    user.appId = config.ConfigMgr().config!.appId;
    user.appUid = loginRsp.info.userId.toString();
    user.userName = loginRsp.info.username.toString();
    user.nickName = loginRsp.info.nickname; //data["nickname"];
    user.appAvatar = loginRsp.info.avatar; //data["appAvatar"];
    user.sign = loginRsp.info.sign; //data["sign"];
    user.gender = loginRsp.info.gender; //data["gender"];
    //
    user.level = loginRsp.info.level; //data["level"];
    user.imId = loginRsp.info.imId.toInt(); //imId.toInt();//data["imUserId"];

    user.appToken = loginRsp.token; //data["appToken"]; /// app登录的token
    user.uniToken = loginRsp.imToken; //data["uniToken"]; /// im登录token
    // signSecret = value["signSecret"];  /// 会被利用，还是不要了
    user.clientType = CLIENT_TYPE.valueOf(CLIENT_TYPE.PHONE.value)!;
    user.phone = loginRsp.info.phone;
    user.loginType = currentLoginType.value.type();
    user.email = loginRsp.info.email;
    LoggerManager().debug("+++++++++++++++++++++++++++++++++++$user");
    // 进行im登录
    await user.saveToSp();

    // 初始化db
    // initDb(Int64(user.imId));
    try {
      await AppDatabase().objectBox.close();
    } catch (error) {}
    await AppDatabase().init(user.imId);

    AppUserInfo().clientType = CLIENT_TYPE.PHONE;

    // token获取到了，重置触发登录IM
    Client.instance.Start();

    if (context.mounted) {
      if (Dimens.isDesktop()) {
        Navigator.of(context).pushNamedAndRemoveUntil(
          WindowHomePage.name,
          (Route<dynamic> route) => false,
        );
      } else {
        Navigator.of(context).pushNamedAndRemoveUntil(
          MainPage.name,
          (Route<dynamic> route) => false,
        );
      }
    }
  }

  void checkUserAgreement(
    BuildContext context,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return const WebViewPage(
            title: '用户协议',
            url: Config.userAgreement,
          );
        },
      ),
    );
  }

  void checkPrivacyAgreement(
    BuildContext context,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return const WebViewPage(
            title: '隐私协议',
            url: Config.privacyAgreement,
          );
        },
      ),
    );
  }

  @override
  void onClose() {
    accountController.dispose();
    passwordController.dispose();

    emailController.dispose();
    verifyCodeController.dispose();

    mobileController.dispose();
    smsCodeController.dispose();

    pageController.dispose();
    super.onClose();
  }
}
