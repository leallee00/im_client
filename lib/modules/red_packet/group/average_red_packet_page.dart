import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/modules/red_packet/red_packet_controller.dart';
import 'package:quliao/modules/red_packet/red_packet_textfield.dart';
import 'package:quliao/widgets/input.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class AverageRedPacketPage extends StatefulWidget {
  const AverageRedPacketPage({
    super.key,
    this.groupName,
  });

  final String? groupName;

  @override
  State<StatefulWidget> createState() => _AverageRedPacketPageState();
}

class _AverageRedPacketPageState extends State<AverageRedPacketPage> {
  final _controller = RedPacketController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF7F7F7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Gaps.vGap20,
          RedPacketTextField(
            controller: _controller.numberController2,
            hint: '请输入红包个数',
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9]')),
            ],
          ),
          Gaps.vGap16,
          RedPacketTextField(
            controller: _controller.amountController2,
            hint: '请输入单个红包金额',
            keyboardType: const TextInputType.numberWithOptions(
              decimal: true,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9.]')),
              MyNumberTextInputFormatter(digit: 2),
            ],
          ),
          Gaps.vGap8,
          Container(
            alignment: Alignment.center,
            child: Text(
              '单红包最低价格不低于0.01元',
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                color: const Color(0xFFFF0016),
              ),
            ),
          ),
          Gaps.vGap16,
          RedPacketTextField(
            controller: _controller.contentController2,
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
                              _controller.amountValue1.value,
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
                onTap: () => _controller.sendGroupAverageRedPacket(
                  context,
                  groupName: widget.groupName,
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
    );
  }
}
