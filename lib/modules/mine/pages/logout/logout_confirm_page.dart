import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/index/widgets/verify_code.dart';
import 'package:quliao/pages/auth/sign_in_screen.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/countdown/countdown.dart';
import 'package:quliao/widgets/dialog/manager.dart';

import 'logout_controller.dart';

/// 注销确认
class LogoutConfirmPage extends StatefulWidget {
  const LogoutConfirmPage({super.key});

  @override
  State<StatefulWidget> createState() => _LogoutConfirmPageState();
}

class _LogoutConfirmPageState extends State<LogoutConfirmPage> {
  final _controller = Get.put(LogOutController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.hideKeyboard(context);
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: const Text('注销账号'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Obx(
              () {
                final showEmail = _controller.showEmail.value;
                if (showEmail) {
                  return Gaps.empty;
                }
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: AppTheme.margin,
                  ).copyWith(top: Dimens.gap_dp20),
                  child: TextField(
                    autofocus: true,
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
                    controller: _controller.mobileCtl,
                  ),
                );
              },
            ),
            Obx(
              () {
                final showEmail = _controller.showEmail.value;
                if (!showEmail) {
                  return Gaps.empty;
                }
                return Container(
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
                    controller: _controller.emailCtl,
                  ),
                );
              },
            ),
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
                      labelText: '登录密码',
                      hintText: '请输入登录密码',
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
                    controller: _controller.passwordCtl,
                  );
                },
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
                      controller: _controller.codeCtl,
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
                                final showEmail = _controller.showEmail.value;
                                if (showEmail) {
                                  _controller.sendEmailCode(context);
                                } else {
                                  _controller.sendMobileCode(context);
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
                horizontal: Dimens.gap_dp24,
              ).copyWith(
                top: Dimens.gap_dp44,
              ),
              child: CustomButton(
                width: double.infinity,
                height: Dimens.gap_dp48,
                size: CustomButtonSize.large,
                shape: CustomButtonShape.stadium,
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  _controller.logOut(
                    context,
                    () {
                      AppUserInfo.instance.reset();
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        SignInScreen.name,
                        (Route<dynamic> route) => false,
                      );
                    },
                  );
                },
                child: Text(
                  '确认注销',
                  style: TextStyle(
                    fontSize: Dimens.font_sp16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
