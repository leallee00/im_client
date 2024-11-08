import 'package:fixnum/fixnum.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/enum/channel.dart';
import 'package:quliao/global/enum/login_type.dart';
import 'package:quliao/global/models/system_config.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/web/webview_page.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/pages/windows/home/window_home.dart';
import 'package:quliao/pub/config.dart' as config;
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/countdown/countdown.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:quliao/widgets/loading.dart';

import '../../../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../../../../pb/pb_pub/comm.pb.dart';
import '../../../../pb/pb_pub/error_code.pbenum.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';
import 'package:http/http.dart' as http;
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;

class SignUpController extends GetxController {
  static SignUpController get to => Get.find();

  /// 账号密码
  late TextEditingController accountController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController inviteCodeController = TextEditingController();

  /// 用户昵称
  late TextEditingController nicknameController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController verifyCodeController = TextEditingController();

  /// 手机验证码注册
  late TextEditingController mobileController = TextEditingController();
  late TextEditingController smsCodeController = TextEditingController();

  final RxBool accountPwdVisibility = RxBool(false);

  RxBool emailLogin = RxBool(false);
  final RxInt currentIndex = RxInt(0);
  final RxInt currentIndex2 = RxInt(0);

  final Rx<XChannel> currentChannel = Rx(Config.channel);

  final RxList<LoginType> loginTypeList = RxList();
  final Rx<LoginType> currentLoginType = Rx(LoginType.mobile);

  final PageController pageController = PageController();
  final PageController pageController2 = PageController();

  final GlobalController globalController = GlobalController.to;
  final Rx<SystemConfig?> systemConfig = Rx(null);

  RxBool checkboxSelected = RxBool(false);

  @override
  void onInit() {
    super.onInit();
    accountController = TextEditingController();
    passwordController = TextEditingController();
    inviteCodeController = TextEditingController();

    nicknameController = TextEditingController();
    emailController = TextEditingController();
    verifyCodeController = TextEditingController();

    mobileController = TextEditingController();
    smsCodeController = TextEditingController();

    loginTypeList.clear();
    if (currentChannel.value == XChannel.laiwang) {
      loginTypeList.add(LoginType.mobile);
      // loginTypeList.add(LoginType.email);
    } else {
      loginTypeList.add(LoginType.mobile);
    }
    currentLoginType.value = loginTypeList.first;

    systemConfig.value = globalController.systemConfig.value;
    emailLogin.value = globalController.systemConfig.value?.emailLogin == true;
  }

  /// 切换登录方式
  Future<void> switchLoginType(
    BuildContext context,
    LoginType loginType,
  ) async {
    hideKeyboard(context);
    currentLoginType.value = loginType;
    currentIndex2.value = loginTypeList.indexOf(loginType);
    pageController2.jumpToPage(
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
          cubit.startCountdown();
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

  Future<void> pre(
    BuildContext context,
  ) async {
    hideKeyboard(context);
    currentIndex.value = 0;
    pageController.jumpToPage(0);
  }

  Future<void> next(
    BuildContext context,
  ) async {
    hideKeyboard(context);
    if (nicknameController.text.isEmpty) {
      showToast('请输入昵称');
      return;
    }

    if (!isAccount(accountController.text)) {
      showToast('请正确输入账号，由数字和字母组成');
      return;
    }
    if (passwordController.text.length < 6 ||
        passwordController.text.length > 30) {
      showToast('请正确输入密码，6到30个字符');
      return;
    }

    if (systemConfig.value?.showInvite == true &&
        systemConfig.value?.forceInvite == true) {
      if (inviteCodeController.text.isEmpty) {
        showToast('请输入邀请码');
        return;
      }
    }

    /// todo 检测账号是否可用
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final checkAccountExistReq = CheckAccountExistReq(
      account: accountController.text,
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/CheckAccountExist',
      checkAccountExistReq,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = CheckAccountExistRsp()..mergeFromBuffer(value.bodyBytes);
        if (rsp.exist) {
          showToast('账号已存在，请重试');
        } else {
          currentIndex.value = 1;
          pageController.jumpToPage(1);
        }
      } else {}
    }).catchError((err) {
      LoggerManager().debug('$err');
    });
  }

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  Future<void> getEmailVerifyCode(
    BuildContext context,
    CountdownCubit cubit,
  ) async {
    if (!isEmail(emailController.text)) {
      showToast('请正确输入邮箱地址');
      return;
    }

    /// 发送验证码到邮箱
    SendEmailCodeReq sendEmailCodeReq = SendEmailCodeReq();
    sendEmailCodeReq.emailAddr = emailController.text;

    _onSendEmailCode(sendEmailCodeReq, cubit);
  }

  /// 发送邮箱验证码
  void _onSendEmailCode(
    SendEmailCodeReq sendEmailCodeReq,
    CountdownCubit cubit,
  ) {
    var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/SendEmailCode',
      sendEmailCodeReq,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          cubit.startCountdown();
          showToast('验证码已发送到您的邮箱，请注意查收');
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
      showToast('发送验证码失败：$err');
      cubit.cancel();
    });
  }

  Future<void> signUp(
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

    if (currentLoginType.value == LoginType.email) {
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
    } else {
      if (!isChinaPhoneLegal(mobileController.text)) {
        showToast('请正确输入手机号');
        return;
      }
      if (smsCodeController.text.length < 6) {
        showToast("请填写正确的验证码");
        return;
      }
    }

    final Map<String, dynamic> params = <String, dynamic>{
      'appId': config.ConfigMgr().config!.appId.toInt(),
      'secret': config.ConfigMgr().config!.secret,
      'clientType': CLIENT_TYPE.PHONE,
    };

    if (currentLoginType.value == LoginType.email) {
      params['email'] = emailController.text;
      params['code'] = verifyCodeController.text;
    } else {
      params['phone'] = mobileController.text;
      params['code'] = smsCodeController.text;
    }

    params['username'] = accountController.text;
    params['nickname'] = nicknameController.text;
    params['password'] = passwordController.text;

    LoadingDialog.show();

    final signupReq = SignupReq();
    signupReq.phone = params['phone'] ?? '';
    signupReq.email = params['email'] ?? '';
    signupReq.username = params['username'] ?? '';
    signupReq.nickname = params['nickname'] ?? '';
    signupReq.password = params['password'] ?? '';
    signupReq.code = int.parse(params['code'] ?? '0');

    if (systemConfig.value?.showInvite == true) {
      signupReq.sysInviteCode = inviteCodeController.text;
    }

    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/Signup',
      signupReq,
      pbCommData,
    ).then((value) {
      LoadingDialog.dismiss();
      _onSignupCallBack(context, signupReq, value);
    }).catchError(
      (err) {
        LoadingDialog.dismiss();
        showToast('注册失败：$err');
      },
    );
  }

  void _onSignupCallBack(
    BuildContext context,
    SignupReq req,
    http.Response rsp,
  ) async {
    if (rsp.statusCode != 200) {
      if (rsp.statusCode == 500) {
        var status = $grpcStatus.Status();
        status.mergeFromBuffer(rsp.bodyBytes);
        LoggerManager().debug('signUp err:${req}, rsp:${rsp}');

        /// 业务错误，跟进错误码展示错误信息
        showToast('注册失败，errno:${status.code} errmsg:${status.message}');
        return;
      } else {
        showToast('注册失败， ${rsp.body}');
      }
      return;
    }

    var signupRsp = SignupRsp()..mergeFromBuffer(rsp.bodyBytes);
    LoggerManager().debug('注册返回：$rsp SignupRsp：$signupRsp');

    /// 设置用户信息
    var user = AppUserInfo();
    user.appId = config.ConfigMgr().config!.appId;
    user.appUid = signupRsp.info.userId.toString();
    user.nickName = signupRsp.info.nickname;
    user.userName = signupRsp.info.username;
    user.appAvatar = signupRsp.info.avatar;
    user.sign = signupRsp.info.sign;
    user.gender = signupRsp.info.gender;

    user.level = signupRsp.info.level;
    user.imId = signupRsp.info.imId.toInt();

    try {
      await AppDatabase().objectBox.close();
    } catch (error) {}
    await AppDatabase().init(user.imId);

    user.appToken = signupRsp.token;
    user.uniToken = signupRsp.imToken;
    // user.clientType = CLIENT_TYPE.valueOf(_clientType.value)!;
    user.clientType = CLIENT_TYPE.PHONE;
    user.phone = req.phone;
    user.email = signupRsp.info.email;

    /// 进行im登录
    user.saveToSp();

    AppUserInfo().clientType = CLIENT_TYPE.PHONE;

    /// token获取到了，重置触发登录IM
    Client.instance.Start();

    if (Dimens.isDesktop()) {
      if (context.mounted) {
        Navigator.of(context).pushNamedAndRemoveUntil(
          WindowHomePage.name,
          (Route<dynamic> route) => false,
        );
      }
    } else {
      if (context.mounted) {
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
    debugPrint('signup controller close');
    accountController.dispose();
    passwordController.dispose();

    emailController.dispose();
    verifyCodeController.dispose();

    inviteCodeController.dispose();
    nicknameController.dispose();

    pageController.dispose();
    pageController2.dispose();

    currentIndex.value = 0;
    currentIndex2.value = 0;

    super.onClose();
  }
}
