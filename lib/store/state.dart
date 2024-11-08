// //import 'dart:async';
//
// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:quliao/pages/chat/chat.dart';
// import 'package:quliao/pb/pb_pub/comm.pb.dart';
// //import 'package:quliao/pub/log.dart';
// //import 'package:wechat_kit/wechat_kit.dart';
//
// import '../pub/pub-def.dart';
// import 'dart:ui';
//
// //////////////////////////////////////////////////////////////
// /// 微信认证 begin
// const String WECHAT_APPID = 'your wechat appId';
// const String WECHAT_UNIVERSAL_LINK = 'your wechat universal link'; // iOS 请配置
// const String WECHAT_APPSECRET = 'your wechat appSecret';
// const String WECHAT_MINIAPPID = 'your wechat miniAppId';
// /// 微信认证 end
// //////////////////////////////////////////////////////////////
//
// // List<PBMessage> getMsgListOfUser(GlobalBaseState state, Int64 userId) {
// //   if (state.pbPrivateMsgList == null) {
// //     state.pbPrivateMsgList = Map<Int64, List<PBMessage>>();
// //   }
// //
// //   if (state.pbPrivateMsgList[userId] == null) {
// //     state.pbPrivateMsgList[userId] = List<PBMessage>();
// //   }
// // //  log("getMsgListOfUser-------${userId}-------------len:${state.pbPrivateMsgList[userId].length}");
// //   return state.pbPrivateMsgList[userId];
// // }
//
// abstract class GlobalBaseState{
//   Color get themeColor;
//   set themeColor(Color color);
//
//   Locale get localization;
//   set localization(Locale locale);
//
//   String get fontFamily;
//   set fontFamily(String fontFamily);
//
//   PBMessage get pbMsg;
//   set pbMsg(PBMessage pbMsg);
//
//   // 私聊消息
//   Map<Int64,List<ChatPrivateData>> get pbPrivateMsgList;
//   set pbPrivateMsgList(Map<Int64,List<ChatPrivateData>> pbPrivateMsgList);
//
//   NET_STATE get netState; /// 网络状态
//   set netState(NET_STATE netState);
// }
//
// class GlobalState implements GlobalBaseState, Cloneable<GlobalState>{
//   @override
//   late Color themeColor;
//
//   @override
//   late Locale localization;
//
//   @override
//   late String fontFamily;
//
//   @override
//   NET_STATE netState = NET_STATE.NET_STATE_INIT;
//
//   @override
//   late PBMessage pbMsg;
//
//   @override
//   late Map<Int64,List<ChatPrivateData>> pbPrivateMsgList;
//
// //  Wechat _wechat = Wechat()
// //    ..registerApp(
// //      appId: WECHAT_APPID,
// //      universalLink: WECHAT_UNIVERSAL_LINK,
// //    );
// //
// //  StreamSubscription<WechatAuthResp> _auth;
// //  StreamSubscription<WechatSdkResp> _share;
// //  StreamSubscription<WechatPayResp> _pay;
// //  StreamSubscription<WechatLaunchMiniProgramResp> _miniProgram;
//
// //  WechatAuthResp _authResp;
//
//   @override
//   GlobalState clone(){
//     return GlobalState()
//       ..themeColor = themeColor
//         ..pbMsg = pbMsg
//         .. netState = netState
//       ..pbPrivateMsgList = pbPrivateMsgList
//         ..localization = localization
//         ..fontFamily = fontFamily;
//   }
// }
