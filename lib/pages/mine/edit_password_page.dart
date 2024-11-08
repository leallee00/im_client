import 'package:fixnum/fixnum.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/index/widgets/verify_code.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/countdown/countdown.dart';
import '../../event/event_bus.dart';
import '../../event/event_modul.dart';
import '../../net/socket.dart';
import '../../pb/pb_pub/error_code.pbenum.dart';
import '../../pub/im_grpc_opt.dart';
import '../auth/sign_in_screen.dart';
import 'edit_password_controller.dart';

class EditPasswordPage extends StatefulWidget {
  ///0修改密码，1绑定邮箱2绑定手机
  final int type;

  const EditPasswordPage({super.key, this.type = 0});

  @override
  _EditPasswordPage createState() => _EditPasswordPage();
}

class _EditPasswordPage extends State<EditPasswordPage> {
  var dio = Dio();

  final _controller = Get.put(EditPasswordController());

  TextEditingController codeCtl = TextEditingController(text: "");
  TextEditingController pwdCtl = TextEditingController(text: "");
  TextEditingController emailCtl = TextEditingController(text: "");
  TextEditingController phoneCtl = TextEditingController(text: "");
  TextEditingController accountController = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    emailCtl = TextEditingController(text: AppUserInfo.instance.email);
    phoneCtl = TextEditingController(text: AppUserInfo.instance.phone);
    if (AppUserInfo().phone.isNotEmpty) {
      check = 1;
      setState(() {});
    }
    if (widget.type > 0) {
      accountController.text = AppUserInfo.instance.userName;
      setState(() {});
    }
  }

  @override
  void dispose() {
    codeCtl.dispose();
    pwdCtl.dispose();
    emailCtl.dispose();
    phoneCtl.dispose();
    accountController.dispose();

    super.dispose();
  }

  // 发送手机验证码
  void _onSendPhoneCode(
    SendPhoneCodeReq sendPhoneCodeReq,
    CountdownCubit cubit,
  ) {
    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/SendPhoneCode",
      sendPhoneCodeReq,
      pbCommData,
      loading: true,
      showToast: true,
    ).then((value) {
      cubit.startCountdown();
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast("验证码已发送到您的手机，请注意查收");
          // todo
          // 设置发送按钮1分钟计时，不可点
          return;
        } else {
          cubit.cancel();
          showToast("发送验证码失败：${commRsp.result}");
        }
      } else {
        cubit.cancel();
        showToast("发送验证码失败：${value.statusCode}");
      }
    }).catchError((err) {
      cubit.cancel();
      // 登录错误
      log("err:$err");
      showToast("发送验证码失败:$err");
    });
  }

  // 发送邮箱验证码
  void _onSendEmailCode(SendEmailCodeReq sendEmailCodeReq) {
    var pbCommData = MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
    RpcCallAppGateApi("/pb_grpc_commim_uaa.UAA/SendEmailCode", sendEmailCodeReq,
            pbCommData)
        .then((value) {
      if (value.statusCode == 200) {
        var commRsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (commRsp.result == ErrCode.SUCCESS) {
          showToast("验证码已发送到您的邮箱，请注意查收");
          // todo
          // 设置发送按钮1分钟计时，不可点
          return;
        } else {
          showToast("发送验证码失败：${commRsp.result}");
        }
      } else {
        showToast("发送验证码失败：${value.statusCode}");
      }
    }).catchError((err) {
      // 登录错误
      log("err:$err");
      showToast("发送验证码失败:$err");
    });
  }

  Future<void> _onAileLoginWithPhone(BuildContext ctx) async {
    if (codeCtl.text.length < 4) {
      showToast("请填写验证码");
      return;
    }
    late UpdateUserInfoReq req;
    if (widget.type == 0) {
      if (pwdCtl.text.length < 6) {
        showToast("请正确输入密码");
        return;
      }
      var uinfo = $uaa.UserInfo();
      uinfo.code = codeCtl.text;
      uinfo.passWord = pwdCtl.text;
      req = $uaa.UpdateUserInfoReq()
        ..userId = AppUserInfo.instance.appUid
        ..info = uinfo;
      req.keys.add("passWord");
    } else if (widget.type == 1) {
      if (pwdCtl.text.length < 6) {
        showToast("请正确输入登录密码");
        return;
      }
      if (emailCtl.text.isEmpty) {
        showToast("请输入要绑定的邮箱");
        return;
      }
      var uinfo = $uaa.UserInfo();
      uinfo.code = codeCtl.text;
      uinfo.passWord = pwdCtl.text;
      uinfo.email = emailCtl.text;
      req = $uaa.UpdateUserInfoReq()
        ..userId = AppUserInfo.instance.appUid
        ..info = uinfo;
      req.keys.add("email");
    } else if (widget.type == 2) {
      if (pwdCtl.text.length < 6) {
        showToast("请正确输入登录密码");
        return;
      }
      if (phoneCtl.text.isEmpty) {
        showToast("请输入要绑定的手机号码");
        return;
      }
      var uinfo = $uaa.UserInfo();
      uinfo.code = codeCtl.text;
      uinfo.passWord = pwdCtl.text;
      uinfo.phone = phoneCtl.text;
      req = $uaa.UpdateUserInfoReq()
        ..userId = AppUserInfo.instance.appUid
        ..info = uinfo;
      req.keys.add("phone");
    }

    await RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/UpdateUserInfo",
      req,
      MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId),
        toService: Service.commim_uaa,
      ),
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode != 200) {
        var status = $grpcStatus.Status();
        status.mergeFromBuffer(value.bodyBytes);
        showToast(status.message);
      } else {
        if (widget.type == 0) {
          AppUserInfo.instance.reset();
          Navigator.of(context).pushNamedAndRemoveUntil(
              SignInScreen.name, (Route<dynamic> route) => false);
          showToast("修改成功");
        } else {
          var rsp = $uaa.UpdateUserInfoRsp()..mergeFromBuffer(value.bodyBytes);
          AppUserInfo.instance.userSourceVersion = rsp.userSourceNewVersion;
          if (widget.type == 1) {
            AppUserInfo.instance.email = emailCtl.text;
          } else {
            AppUserInfo.instance.phone = phoneCtl.text;
          }

          Get.back();
          showToast("绑定成功");
        }
        AppUserInfo.instance.saveToSp();
        eventBus.fire(UserSourceVersionChanged());
      }
    }).catchError((err) {
      showToast("修改失败");
    });
  }

  var showLoginPass = false;
  var check = 0;

  @override
  Widget build(BuildContext ctx) {
    return GestureDetector(
      onTap: () {
        _controller.hideKeyboard(context);
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            widget.type == 0
                ? '修改密码'
                : widget.type == 1
                    ? '绑定邮箱'
                    : '绑定手机号码',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (widget.type > 0)
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: AppTheme.margin,
                  ).copyWith(top: Dimens.gap_dp20),
                  padding: EdgeInsets.symmetric(
                    vertical: Dimens.gap_dp16,
                  ),
                  child: Text(
                    '账号：${AppUserInfo.instance.userName}',
                  ),
                ),
              if (widget.type == 0)
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        height: 40,
                        child: Text(
                          '请选择需要发送验证码的方式',
                          style: TextStyle(
                            fontSize: Dimens.font_sp14,
                          ),
                        ),
                      ),
                      if (AppUserInfo.instance.email.isNotEmpty)
                        Row(
                          children: [
                            Checkbox(
                              value: check == 0,
                              activeColor: check == 0
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                              onChanged: (value) {
                                setState(() {
                                  check = 0;
                                });
                              },
                            ),
                            Text(
                              '绑定邮箱：${AppUserInfo.instance.email}',
                              style: TextStyle(
                                fontSize: Dimens.font_sp14,
                              ),
                            ),
                          ],
                        ),
                      if (AppUserInfo.instance.phone.isNotEmpty)
                        Row(
                          children: [
                            Checkbox(
                              value: check == 1,
                              activeColor: check == 1 ? Colors.blue : null,
                              onChanged: (value) {
                                setState(() {
                                  check = 1;
                                });
                              },
                            ),
                            Text(
                              '绑定手机：${AppUserInfo.instance.phone}',
                              style: TextStyle(
                                fontSize: Dimens.font_sp14,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              const Divider(height: 1),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: AppTheme.margin,
                ).copyWith(top: Dimens.gap_dp12),
                child: Obx(
                  () {
                    final theme = Theme.of(context);
                    final decorationTheme = theme.inputDecorationTheme;
                    final obscureText = _controller.accountPwdVisibility.value;
                    return TextField(
                      autofocus: true,
                      obscureText: !obscureText,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: widget.type == 0 ? '新密码' : '登录密码',
                        hintText: widget.type == 0 ? '请输入新密码' : '请输入登录密码',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIconConstraints: const BoxConstraints(),
                        suffixIcon: Padding(
                          padding: EdgeInsetsDirectional.only(
                            end: (decorationTheme.contentPadding?.horizontal ??
                                    0) /
                                2,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _controller.accountPwdVisibility.value =
                                  !obscureText;
                            },
                            child: Icon(
                              obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: Dimens.gap_dp24,
                            ),
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x19000000),
                          ),
                        ),
                      ),
                      controller: pwdCtl,
                    );
                  },
                ),
              ),
              if (widget.type == 1)
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: AppTheme.margin,
                  ).copyWith(top: Dimens.gap_dp20),
                  child: TextField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      labelText: '邮箱',
                      hintText: '请输入邮箱地址',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x19000000),
                        ),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                    controller: emailCtl,
                  ),
                ),
              if (widget.type == 2)
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: AppTheme.margin,
                  ).copyWith(top: Dimens.gap_dp20),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp('[0-9]'),
                      ),
                    ],
                    decoration: const InputDecoration(
                      labelText: '手机号码',
                      hintText: '请输入手机号码',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x19000000),
                        ),
                      ),
                      prefixIcon: Icon(Icons.phone),
                    ),
                    controller: phoneCtl,
                  ),
                ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: AppTheme.margin,
                ).copyWith(top: Dimens.gap_dp12),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        autofocus: true,
                        keyboardType: TextInputType.phone,
                        maxLength: 6,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp('[0-9]'),
                          ),
                        ],
                        decoration: const InputDecoration(
                          labelText: '验证码',
                          hintText: "请输入验证码",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x19000000),
                            ),
                          ),
                          prefixIcon: Icon(Icons.sms),
                        ),
                        controller: codeCtl,
                      ),
                    ),
                    Gaps.hGap12,
                    CountdownWidget(
                      onComplete: () {},
                      childBuilder: (context, seconds) {
                        bool idleState = seconds == 60 || seconds == 0;
                        final cubit = BlocProvider.of<CountdownCubit>(context);
                        return VerifyCodeWidget(
                          text: idleState ? '获取验证码' : '${seconds}s',
                          enabled: idleState,
                          onTap: idleState
                              ? () {
                                  if (widget.type == 2) {
                                    /// 发送短信验证码
                                    final sendPhoneCodeReq = SendPhoneCodeReq();
                                    sendPhoneCodeReq.phoneNo = phoneCtl.text;
                                    _onSendPhoneCode(sendPhoneCodeReq, cubit);
                                  } else if (widget.type == 1) {
                                    final sendEmailCodeReq = SendEmailCodeReq();
                                    sendEmailCodeReq.emailAddr = emailCtl.text;
                                    _onSendEmailCode(sendEmailCodeReq);
                                  } else if (widget.type == 0 && check == 0) {
                                    final sendEmailCodeReq = SendEmailCodeReq();
                                    sendEmailCodeReq.emailAddr =
                                        AppUserInfo.instance.email;
                                    _onSendEmailCode(sendEmailCodeReq);
                                  } else if (widget.type == 0 && check == 1) {
                                    final sendPhoneCodeReq = SendPhoneCodeReq();
                                    sendPhoneCodeReq.phoneNo =
                                        AppUserInfo.instance.phone;
                                    _onSendPhoneCode(sendPhoneCodeReq, cubit);
                                  }
                                }
                              : null,
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Dimens.gap_dp36,
                ).copyWith(top: Dimens.gap_dp44),
                child: CustomButton(
                  width: double.infinity,
                  height: Dimens.gap_dp48,
                  size: CustomButtonSize.large,
                  shape: CustomButtonShape.stadium,
                  onPressed: () => _onAileLoginWithPhone(ctx),
                  child: Text(
                    '确定',
                    style: TextStyle(
                      fontSize: Dimens.font_sp16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
