// import 'package:fish_redux/fish_redux.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/models/user/friendInfo.dart';
//
// //TODO replace with your own action
// enum search_friendAction {
//   action ,
//   searchFriend,
//   addFriend,
//   searchResult,
// }
//
// class search_friendActionCreator {
//   static Action onAction() {
//     return const Action(search_friendAction.action);
//   }
//
//   static Action onSearchFriend(Map<String, dynamic> payload) {
//     log("onSearchFriend payload:$payload");
//     return Action(search_friendAction.searchFriend,payload: payload);
//   }
//
//   static Action onAddFriend(FriendInfo finfo) {
//     return Action(search_friendAction.addFriend, payload: finfo);
//   }
//
//   static Action onSearchResult(Map<String, dynamic> payload) {
//     return Action(search_friendAction.searchResult, payload: payload);
//   }
// }
