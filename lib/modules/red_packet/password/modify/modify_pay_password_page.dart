import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/modules/red_packet/password/reset/reset_pay_password_page.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/verifycode.dart';

import 'modify_pay_pwd_controller.dart';

class ModifyPayPasswordPage extends StatefulWidget {
  const ModifyPayPasswordPage({super.key});

  @override
  State<StatefulWidget> createState() => _ModifyPayPasswordPageState();
}

class _ModifyPayPasswordPageState extends State<ModifyPayPasswordPage> {
  final _controller = Get.put(ModifyPayPwdController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: const Text('修改支付密码'),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: GetBuilder<ModifyPayPwdController>(
          init: _controller,
          builder: (_) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp16,
                          ).copyWith(top: Dimens.gap_dp20),
                          child: Text(
                            '输入原支付密码',
                            style: TextStyle(
                              fontSize: Dimens.font_sp16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp16,
                          ).copyWith(top: Dimens.gap_dp10),
                          child: VerifyCode(
                            size: Dimens.gap_dp48,
                            margin: 0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(Dimens.gap_dp4),
                            ),
                            fontSize: Dimens.font_sp20,
                            borderColor: const Color(0xFFDCECFF),
                            strokeColor: Theme.of(context).colorScheme.primary,
                            backgroundColor:
                                Theme.of(context).colorScheme.surface,
                            controller: _controller.oldPwdController,
                            autofocus: true,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp16,
                          ).copyWith(top: Dimens.gap_dp20),
                          child: Text(
                            '输入新支付密码',
                            style: TextStyle(
                              fontSize: Dimens.font_sp16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp16,
                          ).copyWith(top: Dimens.gap_dp10),
                          child: VerifyCode(
                            size: Dimens.gap_dp48,
                            margin: 0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(Dimens.gap_dp4),
                            ),
                            fontSize: Dimens.font_sp20,
                            borderColor: const Color(0xFFDCECFF),
                            strokeColor: Theme.of(context).colorScheme.primary,
                            backgroundColor:
                                Theme.of(context).colorScheme.surface,
                            controller: _controller.newPwdController,
                            autofocus: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp36,
                  ).copyWith(top: Dimens.gap_dp24),
                  child: CustomButton(
                    width: double.infinity,
                    height: Dimens.gap_dp48,
                    size: CustomButtonSize.large,
                    shape: CustomButtonShape.stadium,
                    onPressed: () => _controller.modify(),
                    child: Text(
                      '确认修改',
                      style: TextStyle(
                        fontSize: Dimens.font_sp16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: Dimens.gap_dp10,
                    bottom: Dimens.gap_dp20,
                  ),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(const ResetPayPasswordPage())?.then((value) {
                        if (value == true) {
                          Get.back();
                        }
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimens.gap_dp10,
                        vertical: Dimens.gap_dp6,
                      ),
                      child: Text(
                        '忘记支付密码重置',
                        style: TextStyle(
                          fontSize: Dimens.font_sp14,
                          color: const Color(0xFF868686),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
