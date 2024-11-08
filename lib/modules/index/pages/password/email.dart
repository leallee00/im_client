import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/index/pages/signin/signin_controller.dart';
import 'package:quliao/modules/index/widgets/verify_code.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/countdown/countdown.dart';

import 'reset_password_controller.dart';

/// 邮箱登录
class EmailSignInWidget extends StatelessWidget {
  const EmailSignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ResetPasswordController.to;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
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
            controller: controller.emailController,
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
                  controller: controller.verifyCodeController,
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
                            controller.getEmailVerifyCode(context, cubit);
                          }
                        : null,
                  );
                },
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: AppTheme.margin,
          ).copyWith(top: Dimens.gap_dp20),
          child: TextField(
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: '密码',
              hintText: '请输入密码',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x19000000),
                ),
              ),
              prefixIcon: Icon(Icons.email),
            ),
            controller: controller.passwordController,
          ),
        ),
      ],
    );
  }
}
