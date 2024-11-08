// import 'package:basic_utils/basic_utils.dart';
// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:quliao/db/db.dart';
// import 'package:quliao/pub/config.dart';
// import 'package:quliao/pub/func.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/models/user/friendInfo.dart';
//
// import 'action.dart';
// import 'state.dart';
//
// Reducer<search_friendState> buildReducer() {
//   return asReducer(
//     <Object, Reducer<search_friendState>>{
//       search_friendAction.action: _onAction,
//       search_friendAction.searchResult:_onSearchResult,
//       search_friendAction.addFriend:_onAddFriend,
//     },
//   );
// }
//
// search_friendState _onAction(search_friendState state, Action action) {
//   final search_friendState newState = state.clone();
//   return newState;
// }
//
// //30125042
// search_friendState _onSearchResult(search_friendState state, Action action) {
//   log("------------${action.payload}");
//   var data = action.payload["data"];
//   final search_friendState newState = state.clone();
//   // newState.finfo.appUserName = data["nickname"]!=""?data["nickname"]:"游客${action.payload["imId"]}";
//   // newState.finfo.appAvatar = data["headerImageOriginal"] != ""?data["headerImageOriginal"]:"${defaultAvatar}";
//   // newState.finfo.imId = action.payload["imId"]??Int64.ZERO;
//   // newState.finfo.appId = action.payload["appId"]??0;
//   // newState.finfo.appUid = action.payload["appUserId"]??"";
//   // log("new state ${newState.finfo}  name->${newState.finfo.appUserName}");
//   newState.finfo = action.payload["finfo"];
//   return newState;
// }
//
// search_friendState _onAddFriend(search_friendState state, Action action) {
//   FriendInfo finfo = action.payload;
//   // dbAddFriend(finfo);
//   finfo.SaveToDB();
//   final search_friendState newState = state.clone();
//   newState.finfo = finfo;
//   return newState;
// }