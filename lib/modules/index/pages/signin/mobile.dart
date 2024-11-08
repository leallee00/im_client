import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/index/pages/signin/signin_controller.dart';
import 'package:quliao/modules/index/widgets/verify_code.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/countdown/countdown.dart';

/// 手机验证码登录
class MobileSignInWidget extends StatelessWidget {
  const MobileSignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignInController.to;
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
              labelText: '手机验证码登录',
              hintText: '请输入手机号码',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x19000000),
                ),
              ),
              prefixIcon: Icon(Icons.phone),
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
                            controller.getMobileSmsCode(context, cubit);
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
