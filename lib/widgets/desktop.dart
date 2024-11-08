import 'dart:math';

import 'package:flutter/material.dart';

class DesktopWidget {
  static OverlayEntry? entry;
  static bool isShow = false;

  static Future<void> showDesktopPopupWindow({
    required BuildContext context,
    required Widget Function(VoidCallback closeFunc) child,
    required double width,
    required double height,
    Function()? onClose,
    String? target,
  }) async {
    if (isShow) {
      return;
    }
    isShow = true;

    final Widget contentWidget = Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        color: const Color(0xFFffffff),
        border: Border.all(
          width: 2,
          color: const Color(0xFFbebebe),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xFFf5f6f7),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '发送给${target ?? '对方'}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF444444),
                  ),
                ),
                InkWell(
                  onTap: () {
                    isShow = false;
                    onClose?.call();
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close),
                )
              ],
            ),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: const Color(0xFFE5E6E9),
            ),
          ),
          Expanded(
            child: child(
              () {
                isShow = false;
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );

    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return WillPopScope(
          child: AlertDialog(
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            titlePadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            contentPadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            content: contentWidget,
          ),
          onWillPop: () {
            return Future.value(false);
          },
        );
      },
    );
  }

  static Future<void> showPopupWindow({
    required BuildContext context,
    required Widget Function(VoidCallback closeFunc) child,
    required double width,
    required double height,
    Function()? onClose,
  }) async {
    if (isShow) {
      return;
    }
    isShow = true;

    final Widget contentWidget = Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        color: const Color(0xFFffffff),
        border: Border.all(
          width: 2,
          color: const Color(0xFFbebebe),
        ),
      ),
      child: child(
        () {
          isShow = false;
          Navigator.pop(context);
        },
      ),
    );

    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return WillPopScope(
          child: AlertDialog(
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            titlePadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            contentPadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            content: contentWidget,
          ),
          onWillPop: () {
            return Future.value(false);
          },
        );
      },
    );
  }
}
