import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/index/widgets/verify_code.dart';
import 'package:quliao/modules/red_packet/password/reset/reset_pay_pwd_controller.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/countdown/countdown.dart';
import 'package:quliao/widgets/verifycode.dart';

class ResetPayPasswordPage extends StatefulWidget {
  const ResetPayPasswordPage({super.key});

  @override
  State<StatefulWidget> createState() => _ResetPayPasswordPageState();
}

class _ResetPayPasswordPageState extends State<ResetPayPasswordPage> {
  final _controller = Get.put(ResetPayPwdController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: const Text('忘记支付密码'),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: GetBuilder<ResetPayPwdController>(
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
                            controller: _controller.mobileController,
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
                                  controller: _controller.codeController,
                                ),
                              ),
                              Gaps.hGap12,
                              CountdownWidget(
                                onComplete: () {},
                                childBuilder: (context, seconds) {
                                  bool idleState =
                                      seconds == 60 || seconds == 0;
                                  final cubit =
                                      BlocProvider.of<CountdownCubit>(context);
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
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp16,
                          ).copyWith(top: Dimens.gap_dp38),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp36,
                    vertical: Dimens.gap_dp30,
                  ),
                  child: CustomButton(
                    width: double.infinity,
                    height: Dimens.gap_dp48,
                    size: CustomButtonSize.large,
                    shape: CustomButtonShape.stadium,
                    onPressed: () => _controller.reset(),
                    child: Text(
                      '确认',
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
