import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

enum DisplayType { desktop, pad, mobile }

const _desktopBreakpoint = 1024.0;
const _padBreakpoint = 768.0;

DisplayType displayTypeOf(BuildContext context) {
  if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
    return DisplayType.desktop;
  }

  final mediaQuery = WidgetsBinding.instance.window;
  final width = mediaQuery.physicalSize.width / mediaQuery.devicePixelRatio;
  final height = mediaQuery.physicalSize.height / mediaQuery.devicePixelRatio;

  final shortestSide = width >= height ? height : width;

  if (shortestSide >= _desktopBreakpoint) {
    return DisplayType.desktop;
  } else if (shortestSide < _desktopBreakpoint &&
      shortestSide >= _padBreakpoint) {
    // pad 暂时不单独适配适配，使用桌面和移动端的页面
    if (width > height) {
      return DisplayType.desktop;
    }

    return DisplayType.mobile;
  } else {
    return DisplayType.mobile;
  }
}

bool isDisplayDesktop(BuildContext context) {
  return displayTypeOf(context) == DisplayType.desktop;
}

bool isDisplayPad(BuildContext context) {
  return displayTypeOf(context) == DisplayType.pad;
}

bool isDisplayMobile(BuildContext context) {
  return displayTypeOf(context) == DisplayType.mobile;
}
