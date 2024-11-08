import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/enum/login_type.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/countdown/countdown.dart';
import 'package:quliao/widgets/loading.dart';

import '../../../../pb/pb_pub/comm.pb.dart';
import '../../../../pb/pb_pub/error_code.pbenum.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';

class ResetPasswordController extends GetxController {
  static ResetPasswordController get to => Get.find();

  /// 邮箱验证码登录
  final TextEditingController emailController = TextEditingController();
  final TextEditingController verifyCodeController = TextEditingController();

  /// 手机验证码登录
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController smsCodeController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final RxList<LoginType> loginTypeList = RxList(
    // [LoginType.mobile, LoginType.email],
    [LoginType.mobile],
  );
  final Rx<LoginType> currentLoginType = Rx(LoginType.mobile);

  final PageController pageController = PageController();

  final GlobalController globalController = GlobalController.to;

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

    SendEmailCodeReq sendEmailCodeReq = SendEmailCodeReq();
    sendEmailCodeReq.emailAddr = emailController.text;
    sendEmailCodeReq.code = verifyCodeController.text;

    LoadingDialog.show();

    cubit.startCountdown();

    var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );
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

  Future<void> resetPassword(BuildContext context) async {
    final currentLoginTypeValue = currentLoginType.value;
    if (currentLoginTypeValue == LoginType.email) {
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
    } else if (currentLoginTypeValue == LoginType.mobile) {
      if (!isChinaPhoneLegal(emailController.text)) {
        showToast('请正确输入手机号');
        return;
      }
      if (smsCodeController.text.length < 6) {
        showToast("请填写正确的验证码");
        return;
      }
    }

    LoadingDialog.show();

    final ResetPasswordReq req = ResetPasswordReq();
    if (currentLoginTypeValue == LoginType.email) {
      req.email = emailController.text;
    } else if (currentLoginTypeValue == LoginType.mobile) {
      req.phone = emailController.text;
    }
    req.code = int.parse(verifyCodeController.text.toString());
    req.password = passwordController.text;

    var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/ResetPassword',
      req,
      pbCommData,
    ).then((value) {
      LoadingDialog.dismiss();
      // _onLoginSuccess(loginReq,value);
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast('密码找回成功');
          Navigator.pop(context);
          return;
        } else {
          showToast('密码找回失败：${commRsp.result}');
        }
      } else {
        showToast('密码找回失败：${value.statusCode}');
      }
    }).catchError((err) {
      LoadingDialog.dismiss();

      /// 登录错误
      LoggerManager().debug('err:$err');
      showToast('密码找回失败:$err');
    });
  }

  @override
  void onClose() {
    emailController.dispose();
    verifyCodeController.dispose();

    mobileController.dispose();
    smsCodeController.dispose();

    pageController.dispose();
    super.onClose();
  }
}
