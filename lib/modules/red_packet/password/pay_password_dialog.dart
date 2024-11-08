import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/modules/red_packet/red_packet_controller.dart';
import 'package:quliao/modules/red_packet/widgets/pay_pwd/key_event.dart';
import 'package:quliao/modules/red_packet/widgets/pay_pwd/keyboard_item.dart';
import 'package:quliao/modules/red_packet/widgets/pay_pwd/pay_password_field.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/widgets/dialog/manager.dart';

class PayPasswordDialog extends StatefulWidget {
  const PayPasswordDialog({
    super.key,
    required this.amountValue,
    this.onKeyDown,
    this.onResult,
  });

  final String amountValue;
  final Function(KeyDownEvent)? onKeyDown;
  final Function(String)? onResult;

  static Future<void> show(
    BuildContext context,
    String amountValue, {
    Function(KeyDownEvent)? onKeyDown,
    Function(String)? onResult,
  }) async {
    SmartDialog.show(
      tag: 'pay_password',
      builder: (_) {
        return PayPasswordDialog(
          amountValue: amountValue,
          onKeyDown: onKeyDown,
          onResult: onResult,
        );
      },
      alignment: Alignment.bottomCenter,
    );
  }

  static Future<void> dismiss() async {
    SmartDialog.dismiss(tag: 'pay_password');
  }

  @override
  State<StatefulWidget> createState() => _PayPasswordDialogState();
}

class _PayPasswordDialogState extends State<PayPasswordDialog> {
  double keyHeight = 60.0;
  String data = '';

  final _controller = RedPacketController.to;

  bool hasPayPassword = RedPacketController.to.hasPayPassword;

  final List<String> keyList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '',
    '0',
    'del'
  ];

  Future<void> onKeyDown(BuildContext context, String text) async {
    if ("del" == text && data.isNotEmpty) {
      setState(() {
        data = data.substring(0, data.length - 1);
      });
    }
    if (data.length >= 6) {
      return;
    }
    setState(() {
      if ('del' != text) {
        data += text;
        if (null != widget.onKeyDown) {
          widget.onKeyDown!(KeyDownEvent(text));
        }
      }
    });
    if (data.length == 6 && null != widget.onResult) {
      if (hasPayPassword) {
        widget.onResult!(data);
      } else {
        setPayPassword(data, context);
      }
    }
  }

  Future<void> setPayPassword(
    String password,
    BuildContext context,
  ) async {
    _controller.setPayPassword(
      password,
      callback: () {
        showToast('支付密码设置成功');
        DialogManager.showSetPayPwdSuccessDialog(
          context,
          onConfirm: () {
            if (mounted) {
              setState(() {
                data = '';
                hasPayPassword = true;
                RedPacketController.to.hasPayPassword = true;
                MinePageController.to.getWalletInfo();
              });
            }
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(Dimens.gap_dp12),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gaps.vGap40,
              Text(
                '请输入支付密码',
                style: TextStyle(
                  color: const Color(0xFF6B6B6B),
                  fontSize: Dimens.font_sp18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.vGap10,
              Text(
                '红包金额',
                style: TextStyle(
                  color: const Color(0xFF6B6B6B),
                  fontSize: Dimens.font_sp13,
                ),
              ),
              Gaps.vGap10,
              Text(
                '¥ ${widget.amountValue} 元',
                style: TextStyle(
                  color: const Color(0xFF6B6B6B),
                  fontSize: Dimens.font_sp1 * 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                width: double.infinity,
                height: Dimens.gap_dp40,
                margin: EdgeInsets.symmetric(
                  vertical: Dimens.gap_dp10,
                  horizontal: Dimens.gap_dp16,
                ),
                child: PayPasswordField(
                  data: data,
                  pwdLength: 6,
                ),
              ),
              Text(
                hasPayPassword ? '输入支付密码' : '当前无支付密码，请先设置支付密码',
                style: TextStyle(
                  color: const Color(0xFFFF0016),
                  fontSize: Dimens.font_sp14,
                ),
              ),
              Gaps.vGap20,
              Container(
                width: double.infinity,
                color: Colors.white,
                height: keyList.length / 3 * keyHeight,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Wrap(
                        children: keyList.map((item) {
                          return KeyboardItem(
                            keyHeight: keyHeight,
                            text: item,
                            callback: () => onKeyDown(context, item),
                          );
                        }).toList(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: Dimens.gap_dp1 / 2,
                          height: double.infinity,
                          color: const Color(0xFFDDE1E5),
                        ),
                        Container(
                          width: Dimens.gap_dp1 / 2,
                          height: double.infinity,
                          color: const Color(0xFFDDE1E5),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: double.infinity,
                          height: Dimens.gap_dp1 / 2,
                          color: const Color(0xFFDDE1E5),
                        ),
                        Container(
                          width: double.infinity,
                          height: Dimens.gap_dp1 / 2,
                          color: const Color(0xFFDDE1E5),
                        ),
                        Container(
                          width: double.infinity,
                          height: Dimens.gap_dp1 / 2,
                          color: const Color(0xFFDDE1E5),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
