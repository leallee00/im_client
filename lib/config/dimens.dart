import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore_for_file: non_constant_identifier_names
class Dimens {

  ///设备为pad时，需要像mobile一样按比例缩放字体、组件等
  ///设备为desktop时，改变窗口大小无需缩放大部分组件，个别需要缩放的点可以人为控制
  static bool isDesktop() {
    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      return true;
    } else {
      return false;
    }
  }

  ///已有公用组件，在desktop下无需根据窗口大小而放缩尺寸，比如按钮和文字
  static double get font_sp1 =>
      isDesktop() ? 1 : ScreenUtil().setSp(1.0);
  static double get font_sp10 =>
      isDesktop() ? 10 : ScreenUtil().setSp(10.0);
  static double get font_sp11 =>
      isDesktop() ? 11 : ScreenUtil().setSp(11.0);
  static double get font_sp12 =>
      isDesktop() ? 12 : ScreenUtil().setSp(12.0);
  static double get font_sp13 =>
      isDesktop() ? 13 : ScreenUtil().setSp(13.0);
  static double get font_sp14 =>
      isDesktop() ? 14 : ScreenUtil().setSp(14.0);
  static double get font_sp16 =>
      isDesktop() ? 16 : ScreenUtil().setSp(16.0);
  static double get font_sp18 =>
      isDesktop() ? 18 : ScreenUtil().setSp(18.0);
  static double get font_sp20 =>
      isDesktop() ? 20 : ScreenUtil().setSp(20.0);
  static double get font_sp22 =>
      isDesktop() ? 22 : ScreenUtil().setSp(22.0);
  static double get font_sp24 =>
      isDesktop() ? 24 : ScreenUtil().setSp(24.0);

  static double get gap_dp1 =>
      isDesktop() ? 1 : ScreenUtil().setWidth(1.0);
  static double get gap_dp2 =>
      isDesktop() ? 2 : ScreenUtil().setWidth(2.0);
  static double get gap_dp4 =>
      isDesktop() ? 4 : ScreenUtil().setWidth(4.0);
  static double get gap_dp6 =>
      isDesktop() ? 6 : ScreenUtil().setWidth(6.0);
  static double get gap_dp8 =>
      isDesktop() ? 8 : ScreenUtil().setWidth(8.0);
  static double get gap_dp10 =>
      isDesktop() ? 10 : ScreenUtil().setWidth(10.0);
  static double get gap_dp12 =>
      isDesktop() ? 12 : ScreenUtil().setWidth(12.0);
  static double get gap_dp14 =>
      isDesktop() ? 14 : ScreenUtil().setWidth(14.0);
  static double get gap_dp16 =>
      isDesktop() ? 16 : ScreenUtil().setWidth(16.0);
  static double get gap_dp18 =>
      isDesktop() ? 18 : ScreenUtil().setWidth(18.0);
  static double get gap_dp20 =>
      isDesktop() ? 20 : ScreenUtil().setWidth(20.0);
  static double get gap_dp22 =>
      isDesktop() ? 22 : ScreenUtil().setWidth(22.0);
  static double get gap_dp24 =>
      isDesktop() ? 24 : ScreenUtil().setWidth(24.0);
  static double get gap_dp26 =>
      isDesktop() ? 26 : ScreenUtil().setWidth(26.0);
  static double get gap_dp28 =>
      isDesktop() ? 28 : ScreenUtil().setWidth(28.0);
  static double get gap_dp30 =>
      isDesktop() ? 30 : ScreenUtil().setWidth(30.0);
  static double get gap_dp32 =>
      isDesktop() ? 32 : ScreenUtil().setWidth(32.0);
  static double get gap_dp34 =>
      isDesktop() ? 34 : ScreenUtil().setWidth(34.0);
  static double get gap_dp36 =>
      isDesktop() ? 36 : ScreenUtil().setWidth(36.0);
  static double get gap_dp38 =>
      isDesktop() ? 38 : ScreenUtil().setWidth(38.0);
  static double get gap_dp40 =>
      isDesktop() ? 40 : ScreenUtil().setWidth(40.0);
  static double get gap_dp44 =>
      isDesktop() ? 44 : ScreenUtil().setWidth(44.0);
  static double get gap_dp46 =>
      isDesktop() ? 46 : ScreenUtil().setWidth(46.0);
  static double get gap_dp48 =>
      isDesktop() ? 48 : ScreenUtil().setWidth(48.0);
  static double get gap_dp50 =>
      isDesktop() ? 50 : ScreenUtil().setWidth(50.0);
  static double get gap_dp52 =>
      isDesktop() ? 52 : ScreenUtil().setWidth(52.0);
  static double get gap_dp54 =>
      isDesktop() ? 54 : ScreenUtil().setWidth(54.0);
  static double get gap_dp56 =>
      isDesktop() ? 56 : ScreenUtil().setWidth(56.0);
  static double get gap_dp60 =>
      isDesktop() ? 60 : ScreenUtil().setWidth(60.0);
  static double get gap_dp64 =>
      isDesktop() ? 64 : ScreenUtil().setWidth(64.0);
  static double get gap_dp80 =>
      isDesktop() ? 80 : ScreenUtil().setWidth(80.0);
  static double get gap_dp92 =>
      isDesktop() ? 92 : ScreenUtil().setWidth(92.0);

  ///用于desktop需要根据窗口放缩大小的布局，主要用于空间
  static double get desktop_gap_dp1 =>ScreenUtil().setWidth(1);
  static double get desktop_vGap_dp1 =>ScreenUtil().setHeight(1);
  static double get vGap_dp1 =>
      isDesktop() ? 1 : ScreenUtil().setHeight(1.0);
}
