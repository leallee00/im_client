import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/modules/index/pages/signin/signin_controller.dart';
import 'package:quliao/themes/theme.dart';

/// 账号密码登录
class AccountSignInWidget extends StatelessWidget {
  const AccountSignInWidget({super.key});

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
            decoration: const InputDecoration(
              labelText: '账号',
              hintText: '请输入账号',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x19000000),
                ),
              ),
              prefixIcon: Icon(
                Icons.supervisor_account,
              ),
            ),
            controller: controller.accountController,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: AppTheme.margin,
          ).copyWith(top: Dimens.gap_dp12),
          child: Obx(
            () {
              final theme = Theme.of(context);
              final decorationTheme = theme.inputDecorationTheme;
              final obscureText = controller.accountPwdVisibility.value;
              return TextField(
                autofocus: true,
                obscureText: !obscureText,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIconConstraints: const BoxConstraints(),
                  suffixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(
                      end:
                          (decorationTheme.contentPadding?.horizontal ?? 0) / 2,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        controller.accountPwdVisibility.value = !obscureText;
                      },
                      child: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
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
                controller: controller.passwordController,
              );
            },
          ),
        ),
      ],
    );
  }
}
