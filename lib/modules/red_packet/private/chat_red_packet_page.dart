import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/modules/red_packet/bill/bill_page.dart';
import 'package:quliao/modules/red_packet/red_packet_textfield.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/input.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

import '../red_packet_controller.dart';

/// 单聊发红包
class ChatRedPacketPage extends StatefulWidget {
  const ChatRedPacketPage({
    super.key,
    required this.userId,
    this.nickname,
  });

  final int userId;
  final String? nickname;

  @override
  State<StatefulWidget> createState() => _ChatRedPacketPageState();
}

class _ChatRedPacketPageState extends State<ChatRedPacketPage> {
  final _controller = Get.put(RedPacketController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F7F7),
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: const Text('发红包'),
          backgroundColor: const Color(0xFFF7F7F7),
          actionPadding: EdgeInsets.only(
            right: Dimens.gap_dp6,
          ),
          actions: [
            CustomTextButton(
              text: '查账单',
              onTap: () {
                Get.to(const BillPage());
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gaps.vGap20,
            RedPacketTextField(
              controller: _controller.amountController,
              hint: '请输入红包金额',
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9.]')),
                MyNumberTextInputFormatter(digit: 2),
              ],
            ),
            Gaps.vGap16,
            RedPacketTextField(
              controller: _controller.contentController,
              hint: '请输入红包文案',
            ),
            Expanded(child: Gaps.empty),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: Dimens.gap_dp10 * 26,
                  height: Dimens.gap_dp1 * 290,
                  margin: EdgeInsets.only(
                    bottom: Dimens.gap_dp30,
                  ),
                  child: Stack(
                    children: [
                      RHExtendedImage.asset(
                        Images.imgRedPacketAmount.assetName,
                        width: Dimens.gap_dp10 * 26,
                        height: Dimens.gap_dp1 * 290,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: Dimens.gap_dp80),
                          child: Obx(
                            () {
                              return Text(
                                _controller.amountValue.value,
                                style: TextStyle(
                                  color: const Color(0xFFCD1805),
                                  fontSize: Dimens.font_sp1 * 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(bottom: Dimens.gap_dp40),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFFF4D0E),
                    Color(0xFFFD234D),
                  ],
                ),
                borderRadius: BorderRadius.circular(Dimens.gap_dp10),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => _controller.sendPrivateRedPacket(
                    context,
                    widget.userId,
                    nickname: widget.nickname,
                  ),
                  borderRadius: BorderRadius.circular(Dimens.gap_dp10),
                  child: Container(
                    height: Dimens.gap_dp52,
                    alignment: Alignment.center,
                    child: Text(
                      '塞钱进红包',
                      style: TextStyle(
                        fontSize: Dimens.font_sp16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.onClose();
  }
}
