// import 'dart:ui';
//
// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:flutter/material.dart';
// import 'package:quliao/pages/chat_private/chat.dart';
// import 'package:quliao/pb/pb_pub/comm.pb.dart';
// import 'package:quliao/pub/pub-def.dart';
// import 'package:quliao/store/state.dart';
//
// class homeState implements Cloneable<homeState>, GlobalBaseState{// {
//
//   // 状态数据 登录状态  网络状态 用户信息 用户位置等
//   late String name ;
// //  Color netStateColor;
//
//   @override
//   late String fontFamily;
//
//   @override
//   late Locale localization;
//
//   @override
//   late NET_STATE netState;
//
//   @override
//   late PBMessage pbMsg;
//
//   @override
//   late Map<Int64, List<ChatPrivateData>> pbPrivateMsgList;
//
//   @override
//   late Color themeColor;
//   @override
//   homeState clone() {
//     return homeState()..name = name
//       ..fontFamily = fontFamily
//       ..localization = localization
//       ..netState = netState
//       ..pbMsg = pbMsg
//       ..pbPrivateMsgList = pbPrivateMsgList
//       ..themeColor = themeColor;
//   }
//
// }
//
// homeState initState(Map<String, dynamic> args) {
//   return homeState();
// }
