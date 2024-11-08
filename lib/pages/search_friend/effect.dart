// import 'package:basic_utils/basic_utils.dart';
// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:quliao/db/db.dart';
// import 'package:quliao/pub/config.dart';
// import 'package:quliao/pub/func.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/models/user/friendInfo.dart';
// import 'package:quliao/models/user/myinfo.dart';
// import 'action.dart';
// import 'state.dart';
//
// Effect<search_friendState> buildEffect() {
//   return combineEffects(<Object, Effect<search_friendState>>{
//     search_friendAction.action: _onAction,
//     search_friendAction.searchFriend:_onSearchFriend,
//   });
// }
//
// void _onAction(Action action, Context<search_friendState> ctx) {
// }
//
// void _onSearchFriend(Action action, Context<search_friendState> ctx) async {
//   //search_friendState state, Action action
// //  log("_onSearchFriend->${action.payload["imId"]??0}->${state.finfo}");
// //  state.finfo.imId = action.payload["imId"]??Int64.ZERO;
// //  state.finfo.appId = action.payload["appId"]??0;
// //  state.finfo.appUid = action.payload["appUserId"]??"";
// //   var url = cfgAppUrl;
// // //  var imId = action.payload["imId"]??Int64.ZERO;
// //   if (action.payload["imId"] != null) {
// //     url += "/GetFriendInfo?imId=${action.payload["imId"]}";
// //   } else {
// //     url += "/GetFriendInfo?imId=?appUserId=${action
// //         .payload["appUserId"]}&appId=${action.payload["appId"]}";
// //   }
// //
// //   var rsp = await HttpUtils.getForJson(url);
// //   log(rsp);
// //   if (rsp["result"] != 0) {
// //     showToast("${rsp["msg"]}");
// //     return;
// //   }
// // //  action.payload = search_friendActionCreator.onSearchResult(rsp["data"]);
// // //  action.payload["imId"] = action.payload["imId"]??Int64.ZERO;
// // //  action.payload["appId"] = action.payload["appId"]??0;
// // //  action.payload["appUid"] = action.payload["appUserId"]??"";
// //   action.payload["data"] = rsp["data"];
//   var imId = action.payload["imId"]??Int64.ZERO;
//   if (imId < 1000){
//     showToast("请输入imid");
//     return;
//   }
//   GetFriendInfo(imId).then((value) => {
//     ctx.dispatch(search_friendActionCreator.onSearchResult({"finfo":value}))
//   });
//   //     .catchError((e){
//   //   log("catch err:${e}");
//   // });
// }