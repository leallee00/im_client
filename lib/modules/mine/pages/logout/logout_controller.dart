import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pub/func.dart' hide showToast;
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/dialog/manager.dart';

import '../../../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../../../../pb/pb_pub/comm.pb.dart';
import '../../../../pb/pb_pub/error_code.pbenum.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';

class LogOutController extends GetxController {
  final emailCtl = TextEditingController();
  final mobileCtl = TextEditingController();
  final passwordCtl = TextEditingController();
  final codeCtl = TextEditingController();

  final RxBool accountPwdVisibility = RxBool(false);

  final RxBool showEmail = RxBool(false);

  @override
  void onInit() {
    super.onInit();
    showEmail.value = AppUserInfo.instance.email.isNotEmpty;
    emailCtl.text = AppUserInfo.instance.email;
  }

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  Future<void> sendEmailCode(
    BuildContext context,
  ) async {
    final req = SendEmailCodeReq();
    req.emailAddr = emailCtl.text;

    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/SendEmailCode',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast('验证码已发送到您的邮箱，请注意查收');
          return;
        } else {
          showToast('发送验证码失败：${commRsp.result}');
        }
      } else {
        showToast('发送验证码失败：${value.statusCode}');
      }
    }).catchError((err) {
      showToast('发送验证码失败：$err');
    });
  }

  Future<void> sendMobileCode(
    BuildContext context,
  ) async {
    final sendPhoneCodeReq = SendPhoneCodeReq();
    sendPhoneCodeReq.phoneNo = mobileCtl.text;

    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/SendPhoneCode',
      sendPhoneCodeReq,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast('验证码已发送到您的手机，请注意查收');
          return;
        } else {
          showToast('发送验证码失败：${commRsp.result}');
        }
      } else {
        showToast('发送验证码失败：${value.statusCode}');
      }
    }).catchError(
      (err) {
        showToast('发送验证码失败：$err');
      },
    );
  }

  Future<void> logOut(
    BuildContext context,
    Function() callback,
  ) async {
    if (showEmail.value) {
      if (!isEmail(emailCtl.text)) {
        showToast('请正确输入邮箱地址');
      }
    } else {
      if (!isChinaPhoneLegal(mobileCtl.text)) {
        showToast('请正确输入手机号码');
      }
    }

    if (passwordCtl.text.length < 6 || passwordCtl.text.length > 30) {
      showToast('请正确输入密码，6到30个字符');
    }

    if (!isCode(codeCtl.text) || codeCtl.text.length < 6) {
      showToast('请正确输入验证码');
    }

    DialogManager.showLogOutDialog(
      context,
      onConfirm: () {
        final pbCommData = MakePBCommData(
          aimId: Int64(AppUserInfo.instance.imId),
          toService: Service.commim_uaa,
        );

        final unregisterReq = UnregisterReq(
          account: AppUserInfo.instance.account,
          email: showEmail.value ? emailCtl.text : '',
          phone: showEmail.value ? '' : mobileCtl.text,
          password: passwordCtl.text,
          code: int.parse(codeCtl.text),
        );

        RpcCallAppGateApi(
          '/pb_msg_commim_uaa.UAA/Unregister',
          unregisterReq,
          pbCommData,
          showToast: true,
          loading: true,
        ).then((value) {
          if (value.statusCode == 200) {
            final rsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
            if (rsp.result == ErrCode.SUCCESS) {
              showToast('已成功注销账号');
              callback();
            }
          } else {}
        }).catchError((err) {
          LoggerManager().debug('$err');
        });
      },
    );
  }
}
