// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:flutter/material.dart' hide Action;
// import 'package:quliao/db/db.dart';
// import 'package:quliao/pages/friend/friend_info.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/models/user/friendInfo.dart';
// import 'action.dart';
// import 'state.dart';
//
// Effect<FriendListState> buildEffect() {
//   return combineEffects(<Object, Effect<FriendListState>>{
//     FriendListAction.action: _onAction,
//     FriendListAction.onOpenPrivateChat:_onOpenPrivateChat,
//     Lifecycle.initState:_onInitState,
//   });
// }
//
// void _onAction(Action action, Context<FriendListState> ctx) {
//   log("_onAction");
// }
//
// void _onInitState(Action action, Context<FriendListState> ctx)async {
//   // var rslt = dbMsg.query(
//   //     dbFriendInfo, limit: ctx.state.limit, offset: ctx.state.offSet);
//   // rslt.then((value) {
//   //   // log("db rslt: $value");
//   //   List<FriendInfo> lfInfo = List<FriendInfo>();
//   //   if (value.length > 0) {
//   //     for (var finfo in value) {
//   //       var fi = FriendInfo()..initFromMap(finfo);
//   //       lfInfo.add(fi);
//   //     }
//   //   }
//     GetFriends().then((value){
//       log("GetFriends:${value}");
//       if (value.length > 0) {
//         ctx.dispatch(FriendListActionCreator.updateList(value));
//       }
//     });
//
//   // });
// }
//
// void _onOpenPrivateChat(Action action, Context<FriendListState> ctx) {
//   // 切换窗口
//   FriendInfo finfo = action.payload;
//   log("finfo:${finfo} uinfo:${finfo.userInfo}");
//   Navigator.pushNamed(ctx.context, "FriendInfoV", arguments: finfo,);
//   // Navigator.pushNamed(ctx.context, "ChatPrivate", arguments:{"finfo":action.payload});
// }
