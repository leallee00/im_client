import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/global/controller/global_controller.dart';

import '../state/inherited_chat_theme.dart';

/// A class that represents system message widget.
class SystemMessage extends StatelessWidget {
  const SystemMessage({
    super.key,
    required this.message,
    this.hasBackground = false,
  });

  /// System message.
  final String message;
  final bool hasBackground;

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        margin: InheritedChatTheme.of(context).theme.systemMessageTheme.margin,
        child: Container(
          padding: hasBackground
              ? EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 4.h,
                )
              : EdgeInsets.zero,
          decoration: hasBackground
              ? BoxDecoration(
                  color: Colors.black54.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8.r),
                )
              : null,
          child: Text(
            message,
            style: hasBackground
                ? InheritedChatTheme.of(context)
                    .theme
                    .systemMessageTheme
                    .textStyle
                    .copyWith(
                      color: Colors.white,
                      fontSize: GlobalController.to.textFontSize(),
                    )
                : InheritedChatTheme.of(context)
                    .theme
                    .systemMessageTheme
                    .textStyle
                    .copyWith(
                      fontSize: GlobalController.to.textFontSize(),
                    ),
          ),
        ),
      );
}

@immutable
class SystemMessageTheme {
  const SystemMessageTheme({
    required this.margin,
    required this.textStyle,
  });

  /// Margin around the system message.
  final EdgeInsets margin;

  /// Text style for the system message.
  final TextStyle textStyle;
}
