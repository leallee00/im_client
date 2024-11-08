//
// import 'dart:ui';
//
// import 'package:fish_redux/fish_redux.dart';
// import 'package:quliao/pages/chat/chat.dart';
// import 'package:quliao/pb/pb_pub/comm.pb.dart';
// import 'package:quliao/pub/pub-def.dart';
//
// enum GlobalAction{
//   // 触发变化
//   changeThemeColor,
//   changeLocale,
//   changeFontFamily,
//
//   // 变化通知
//   onNetStateChange,
//   onNetMsg,
// }
//
// class GlobalActionCreator{
//   static Action onChangeThemeColor(Color themeColor){
//     return Action(GlobalAction.changeThemeColor, payload: themeColor);
//   }
//
//   static Action onChangeLocale(Locale localization){
//     return Action(GlobalAction.changeThemeColor, payload: localization);
//   }
//
//   static Action onChangeFontFamily(String fontFamily){
//     return Action(GlobalAction.changeThemeColor, payload: fontFamily);
//   }
//
//   static Action onNetStateChange(NET_STATE netState){
//     return Action(GlobalAction.onNetStateChange, payload:netState);
//   }
//
//   static Action onNetMsg(Map<String, dynamic> payload) {
//     return Action(GlobalAction.onNetMsg, payload: payload);
//   }
// }