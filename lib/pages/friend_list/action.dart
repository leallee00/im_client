// import 'package:fish_redux/fish_redux.dart';
// import 'package:quliao/pages/chat_private/chat.dart';
// import 'package:quliao/pages/chat_msg_list/state.dart';
// import 'package:quliao/models/user/friendInfo.dart';
// import 'package:quliao/models/user/myinfo.dart';
//
// //TODO replace with your own action
// enum FriendListAction {
//   action,
//   onOpenPrivateChat,
//   onOpenGroupChat,
//   updateList,
// }
//
// class FriendListActionCreator {
//   static Action onAction() {
//     return const Action(FriendListAction.action);
//   }
//
//   static Action onOpenPrivateChat(FriendInfo finfo) {
//     return Action(FriendListAction.onOpenPrivateChat, payload: finfo);
//   }
//
//   static Action onOpenGroupChat(Map<String, Object> payload) {
//     return const Action(FriendListAction.onOpenGroupChat);
//   }
//
//   // static Action updateList(List<FriendInfo> lfInfo) {
//   //   return Action(FriendListAction.updateList,payload: lfInfo);
//   // }
//
//   static Action updateList(List<FriendInfo> lfInfo) {
//     return Action(FriendListAction.updateList,payload: lfInfo);
//   }
//
// }
