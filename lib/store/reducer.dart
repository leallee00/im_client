// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:flutter/material.dart' hide Action;
// import 'package:quliao/db/db.dart';
// import 'package:quliao/pages/chat/chat.dart';
// import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
// import 'package:quliao/pb/pb_pub/comm.pb.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/store/action.dart';
// import 'package:quliao/store/state.dart';
// import 'package:quliao/models/user/myinfo.dart';
//
// Reducer<GlobalState> buildReducer(){
//   return asReducer(
//     <Object, Reducer<GlobalState>>{
//       GlobalAction.changeThemeColor: _onChangeThemeColor,
//       GlobalAction.changeLocale: _onChangeLocale,
//       GlobalAction.changeFontFamily:_onChangeFontFamily,
//       GlobalAction.onNetStateChange:_onNetStateChange,
//       GlobalAction.onNetMsg:_onNetMsg,
//
//     },
//   );
// }
//
// GlobalState _onDispos(GlobalState state, Action action){
//   log("_onChangeThemeColor");
//
//   return state;//.clone()..themeColor = color;
// }
//
// GlobalState _onChangeThemeColor(GlobalState state, Action action){
//   log("_onChangeThemeColor");
//   final Color color = state.themeColor == Colors.green ? Colors.blue:Colors.green;
//   return state.clone()..themeColor = color;
// }
//
// GlobalState _onChangeLocale(GlobalState state, Action action){
//   log("_onChangeLocale");
//   return state.clone()..localization = action.payload;
// }
//
// GlobalState _onChangeFontFamily(GlobalState state, Action action){
//   log("onChangeFontFamily");
//   return state.clone()..fontFamily = action.payload;
// }
//
// GlobalState _onNetStateChange(GlobalState state, Action action){
//   log("GlobalState _onNetStateChange");
//   return state.clone()..netState = action.payload;
// }
//
// GlobalState _onNetMsg(GlobalState state, Action action){
//   log("============GlobalState... onNetMsg");
//   var newState = state.clone();
//   if (newState.pbPrivateMsgList == null){
//     newState.pbPrivateMsgList = Map<Int64,List<ChatPrivateData>>();
//     log("newState.pbPrivateMsgList 是空的，生成一个");
//   }
//   // newState.pbMsg = action.payload;
//   // log("_onNetMsg:${action.payload}");
//   var userId = AppUserInfo.instance.imId;
//   var friendId = action.payload["friendId"];//newState.pbMsg.pbCommData.srcId == userId ?newState.pbMsg.pbCommData.aimId:newState.pbMsg.pbCommData.srcId;
//   //
//   // dbMsg.query(dbPrivateMsgTable, where: "userId=? and friendId=?", whereArgs:[userId.toInt(), friendId.toInt()],limit:8, offset: 0, orderBy:"msgTime desc").then((value)  {
//   //   // log("get value:${value}");
//   //   // 构建消息列表
//   //   List<ChatPrivateData> lsCPData = List<ChatPrivateData>();
//   //   for (var cpd in value){
//   //     var d = ChatPrivateData()..initWithMap(cpd);
//   //     lsCPData.add(d);
//   //   }
//   //   // ctx.dispatch(ChatPrivateActionCreator.onNetMsg(lsCPData));
//   //   newState.pbPrivateMsgList[friendId] = lsCPData;
//   //   // log("--------newer msg=${value[0]["msgTime"]}");
//   //   log("+++++++show from db: msgsn:${value[0]["msgSn"]}");
//   // });
//   newState.pbPrivateMsgList[friendId] = action.payload["lsCPData"];
//   return newState;
// }
// // var msgNameChatText = ChatText().info_.qualifiedMessageName;
// // GlobalState _onNetMsg(GlobalState state, Action action){
// //   var newState = state.clone();
// //   // 如果是chatmsg插入消息列表
// //   PBMessage pbMsg = action.payload;
// // //  log("get a msg : ${pbMsg.pbName}");
// //   if (pbMsg.pbName == msgNameChatText){
// // //    if (newState.pbPrivateMsgList == null){
// // //      newState.pbPrivateMsgList = Map<Int64,List<PBMessage>>();//new List<PBMessage>();
// // //    }
// // //
// // //    var ulist =  newState.pbPrivateMsgList[pbMsg.pbCommData.srcId];
// // //    if (ulist == null){
// // //      ulist = List<PBMessage>();
// // //      newState.pbPrivateMsgList[pbMsg.pbCommData.srcId] = ulist;
// // //    }
// // //
// // //    log("get a msg : ${pbMsg.pbName} is chat msg add to list");
// // ////    newState.pbPrivateMsgList.add(pbMsg);
// // //    ulist.add(pbMsg);
// // //    log("1================================================>ulist:${ulist.length}");
// // //    log("2=================================================>mlist:${newState.pbPrivateMsgList[pbMsg.pbCommData.srcId].length}");
// //     var userId = pbMsg.pbCommData.srcId == AppUserInfo().imId ? pbMsg.pbCommData.aimId:pbMsg.pbCommData.srcId;
// //     getMsgListOfUser(newState, userId).add(pbMsg);
// //     log(" msg len of user:$userId = ${getMsgListOfUser(newState, userId).length}");
// //   }
// //
// //
// //   return newState;
// // }
