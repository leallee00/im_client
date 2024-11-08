import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/global/enum/channel.dart';
import 'package:quliao/global/enum/login_type.dart';
import 'package:quliao/modules/index/widgets/switch_login.dart';
import 'package:quliao/modules/index/widgets/verify_code.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/countdown/countdown.dart';
import 'package:quliao/widgets/keep_alive_widget.dart';

import 'signup_controller.dart';

/// 确认信息
class EmailSignUpWidget extends StatelessWidget {
  const EmailSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.to;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Obx(
          () {
            if (controller.currentChannel.value == XChannel.xiliao) {
              return _MobileSignUp();
            }
            return Container(
              height: Dimens.gap_dp10 * 16,
              alignment: Alignment.topCenter,
              child: PageView(
                controller: controller.pageController2,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  KeepAliveWidget(
                    child: _MobileSignUp(),
                  ),
                  /// 邮箱注册
                  KeepAliveWidget(
                    child: _EmailSignUp(),
                  ),
                ],
              ),
            );
          },
        ),
        Obx(
          () {
            if (controller.currentChannel.value == XChannel.xiliao) {
              return Gaps.empty;
            }
            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: AppTheme.margin,
              ).copyWith(top: Dimens.gap_dp16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: controller.loginTypeList
                    .map(
                      (element) => SwitchLoginButton(
                        type: element,
                        value: element.value2(),
                        checked: element == controller.currentLoginType.value,
                        onTap: () {
                          controller.switchLoginType(
                            context,
                            element,
                          );
                        },
                      ),
                    )
                    .toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}

/// 邮箱注册
class _EmailSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.to;
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
                    counterText: '',
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
      ],
    );
  }
}

class _MobileSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.to;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
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
              labelText: '手机验证码注册',
              hintText: '请输入手机号码',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x19000000),
                ),
              ),
              prefixIcon: Icon(Icons.phone),
              counterText: '',
            ),
            controller: controller.mobileController,
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
                    counterText: '',
                  ),
                  controller: controller.smsCodeController,
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
                            controller.getMobileSmsCode(
                              context,
                              cubit,
                            );
                          }
                        : null,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
