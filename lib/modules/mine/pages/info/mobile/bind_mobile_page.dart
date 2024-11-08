import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/index/widgets/verify_code.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/countdown/countdown.dart';

import 'bind_mobile_page_controller.dart';

class BindMobilePage extends StatefulWidget {
  const BindMobilePage({super.key});

  @override
  State<StatefulWidget> createState() => _BindMobilePageState();
}

class _BindMobilePageState extends State<BindMobilePage> {
  final _controller = Get.put(BindMobilePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: const Text('绑定手机号'),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: GetBuilder<BindMobilePageController>(
          init: _controller,
          builder: (_) {
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
                      labelText: '手机号码',
                      hintText: '请输入手机号码',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x19000000),
                        ),
                      ),
                      prefixIcon: Icon(Icons.phone),
                    ),
                    controller: _controller.phoneCtl,
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
                              _controller.sendPhoneCode(cubit);
                            }
                                : null,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(child: Gaps.empty),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp36,
                  ).copyWith(bottom: Dimens.gap_dp44),
                  child: CustomButton(
                    width: double.infinity,
                    height: Dimens.gap_dp48,
                    size: CustomButtonSize.large,
                    shape: CustomButtonShape.stadium,
                    onPressed: () => _controller.bindMobile(),
                    child: Text(
                      '确定',
                      style: TextStyle(
                        fontSize: Dimens.font_sp16,
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
