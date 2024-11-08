import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/utils/screen.dart';

class CustomActionDialog extends StatelessWidget {
  const CustomActionDialog({
    super.key,
    required this.text,
    this.body,
    this.style,
  });

  final String text;
  final Widget? body;
  final TextStyle? style;

  static Future<void> show(
    BuildContext context, {
    required String text,
    Widget? title,
    String? actionConfirmText,
    String? actionCancelText,
    Function()? onConfirm,
    Function()? onCancel,
    bool showCancel = true,
    bool clickBack = true,
  }) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          child: AlertDialog(
            title: const Text(
              '提示',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            titlePadding: EdgeInsets.only(
              left: Dimens.gap_dp16,
              top: Dimens.gap_dp16,
            ),
            contentPadding: EdgeInsets.zero,
            content: CustomActionDialog(
              text: text,
              body: title,
            ),
            actions: [
              showCancel
                  ? TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        if (null != onCancel) {
                          onCancel();
                        }
                      },
                      child: Text(
                        actionCancelText ?? '取消',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                        ),
                      ),
                    )
                  : Gaps.empty,
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  if (null != onConfirm) {
                    onConfirm();
                  }
                },
                child: Text(
                  actionConfirmText ?? '确认',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          onWillPop: () async {
            return clickBack;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Screen.width * 0.4,
      // constraints: const BoxConstraints(
      //   // minHeight: 80,
      //   maxHeight: 100,
      // ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap_dp16,
      ).copyWith(
        top: Dimens.gap_dp10,
      ),
      child: body ??
          Text(
            text,
            style: style ??
                TextStyle(
                  height: 1.8,
                  fontSize: Dimens.font_sp1 * 15,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
    );
  }
}
