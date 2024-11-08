import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/utils/screen.dart';

class SetPayPwdSuccessDialog extends StatelessWidget {
  const SetPayPwdSuccessDialog({super.key, this.onConfirm});

  final Function()? onConfirm;

  static Future<void> show({
    Function()? onConfirm,
  }) async {
    SmartDialog.show(
      builder: (_) {
        return SetPayPwdSuccessDialog(onConfirm: onConfirm);
      },
      backDismiss: false,
      useAnimation: false,
      clickMaskDismiss: false,
    );
  }

  static Future<void> dismiss() async {
    SmartDialog.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40.w,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: Dimens.gap_dp16,
              top: Dimens.gap_dp16,
            ),
            child: const Text(
              '提示',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.gap_dp16,
            ).copyWith(top: 10.h),
            child: Text(
              '支付密码设置成功',
              style: TextStyle(
                fontSize: Dimens.font_sp1 * 15,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          Gaps.vGap10,
          Row(
            children: [
              Expanded(child: Gaps.empty),
              TextButton(
                onPressed: () {
                  dismiss();
                  onConfirm?.call();
                },
                child: const Text(
                  '确认',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
