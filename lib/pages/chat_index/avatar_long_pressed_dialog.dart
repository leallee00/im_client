import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:quliao/config/size_extension.dart';

class AvatarLongPressedDialog extends StatelessWidget {
  const AvatarLongPressedDialog({
    super.key,
    required this.callback,
  });

  final Function(int) callback;

  static void show(
    BuildContext context,
    Function(int) callback,
  ) {
    SmartDialog.show(
      builder: (context) {
        return AvatarLongPressedDialog(
          callback: callback,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      padding: EdgeInsets.symmetric(vertical: 6.h),
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _buildItem(context, 0, '设置封禁', callback),
            ),
            Expanded(
              child: _buildItem(context, 1, '取消封禁', callback),
            ),
            Expanded(
              child: _buildItem(context, 2, '踢出群组', callback),
            ),
            Expanded(
              child: _buildItem(context, 3, '@他', callback),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(
      BuildContext context, int action, String text, Function(int) callback) {
    BorderRadius borderRadius = BorderRadius.zero;
    if (action == 1) {
      borderRadius = BorderRadius.vertical(
        top: Radius.circular(10.r),
      );
    } else if (action == 3) {
      borderRadius = BorderRadius.vertical(
        bottom: Radius.circular(10.r),
      );
    }
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          SmartDialog.dismiss();
          callback(action);
        },
        borderRadius: borderRadius,
        child: Container(
          height: 46.h,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15.sp,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
