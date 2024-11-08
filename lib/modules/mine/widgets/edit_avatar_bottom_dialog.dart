import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:quliao/config/dimens.dart';

class EditAvatarBottomDialog extends StatelessWidget {
  const EditAvatarBottomDialog({
    super.key,
    required this.callback,
  });

  final Function(int) callback;

  static Future<void> show(
    BuildContext context,
    Function(int) callback,
  ) async {
    SmartDialog.show(
      builder: (_) {
        return EditAvatarBottomDialog(
          callback: callback,
        );
      },
      alignment: Alignment.bottomCenter,
    );
  }

  static Future<void> dismiss() async {
    SmartDialog.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Dimens.gap_dp10),
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                callback(1);
                dismiss();
              },
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(Dimens.gap_dp10),
              ),
              child: Container(
                height: Dimens.gap_dp50,
                alignment: Alignment.center,
                child: Text(
                  '从手机相册选择',
                  style: TextStyle(
                    fontSize: Dimens.font_sp1 * 15,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: Dimens.gap_dp1 / 2,
            color: Theme.of(context).dividerColor,
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                callback(2);
                dismiss();
              },
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(Dimens.gap_dp10),
              ),
              child: Container(
                height: Dimens.gap_dp50,
                alignment: Alignment.center,
                child: Text(
                  '拍照',
                  style: TextStyle(
                    fontSize: Dimens.font_sp1 * 15,
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: Dimens.gap_dp1 / 2,
          //   color: Theme.of(context).dividerColor,
          // ),
          // Material(
          //   color: Colors.transparent,
          //   child: InkWell(
          //     onTap: () {
          //       callback(3);
          //       dismiss();
          //     },
          //     borderRadius: BorderRadius.vertical(
          //       top: Radius.circular(Dimens.gap_dp10),
          //     ),
          //     child: Container(
          //       height: Dimens.gap_dp50,
          //       alignment: Alignment.center,
          //       child: Text(
          //         '保存到手机',
          //         style: TextStyle(
          //           fontSize: Dimens.font_sp1 * 15,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            height: Dimens.gap_dp8,
            color: const Color(0xFFF4F4F4),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                dismiss();
              },
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(Dimens.gap_dp10),
              ),
              child: Container(
                height: Dimens.gap_dp50,
                alignment: Alignment.center,
                child: Text(
                  '取消',
                  style: TextStyle(
                    fontSize: Dimens.font_sp1 * 15,
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
