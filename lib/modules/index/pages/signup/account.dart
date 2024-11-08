import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/themes/theme.dart';

import 'signup_controller.dart';

/// 注册信息
class AccountSignUpWidget extends StatelessWidget {
  const AccountSignUpWidget({super.key});

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
              labelText: '您的昵称',
              hintText: '请输入昵称',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x19000000),
                ),
              ),
              prefixIcon: Icon(
                Icons.supervisor_account,
              ),
            ),
            controller: controller.nicknameController,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: AppTheme.margin,
          ).copyWith(top: Dimens.gap_dp12),
          child: TextField(
            autofocus: true,
            decoration: const InputDecoration(
              labelText: '设置账号',
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
        // Obx(
        //   () {
        //     if (controller.systemConfig.value?.showInvite == false) {
        //       return Gaps.empty;
        //     }
        //     final forceInvite =
        //         controller.systemConfig.value?.forceInvite ?? false;
        //     return Container(
        //       margin: const EdgeInsets.symmetric(
        //         horizontal: AppTheme.margin,
        //       ).copyWith(top: Dimens.gap_dp12),
        //       child: TextField(
        //         autofocus: true,
        //         keyboardType: TextInputType.number,
        //         decoration: InputDecoration(
        //           labelText: forceInvite ? '邀请码' : '邀请码（非必填）',
        //           hintText: '请输入邀请码',
        //           enabledBorder: const UnderlineInputBorder(
        //             borderSide: BorderSide(
        //               color: Color(0x19000000),
        //             ),
        //           ),
        //           prefixIcon: const Icon(
        //             Icons.insert_invitation,
        //           ),
        //         ),
        //         controller: controller.inviteCodeController,
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }
}
