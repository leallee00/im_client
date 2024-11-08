// import 'package:fish_redux/fish_redux.dart';
// import 'package:quliao/db/db.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/pub/pub-def.dart';
// import 'package:quliao/store/action.dart';
// import 'package:sqflite/sqflite.dart';
//
// import 'action.dart';
// import 'state.dart';
//
// Reducer<homeState> buildReducer() {
//   return asReducer(
//     <Object, Reducer<homeState>>{
// //      homeAction.action: _Action,
//       homeAction.setData: _setData,
//       homeAction.dbTest:_onDbTest,
//       homeAction.onAction:_onAction,
//     },
//   );
// }
//
// homeState _onAction(homeState state, Action action) {
//   log("reducer也处理了action 牛x, 参数:${action.payload}");
//   return state;
// }
//
// //homeState _onAction(homeState state, Action action) {
// //  log('home reducer action');
// //  final homeState newState = state.clone();
// //  return newState;
// //}
//
// homeState _setData(homeState state, Action action){
//   log('home reducer 进入打开登录页面reducer');
//   final homeState newState = state.clone();
//   newState.name = action.payload;
//   return newState;
// }
//
// //homeState _onNetStateChange(homeState state, Action action){
// //  log('home reducer 收到网络变更通知 ${action.payload}');
// //  var ns = state.clone();
// //  ns.netState = action.payload;
// //  return state;
// //}
//
// homeState _onDbTest(homeState state, Action action){
//
//   log('home reducer db test');
//
//   /// 初始化用户表
//   // dbMsg.insert("$dbFriendInfo", <String, dynamic>{
//   //   'frendId': 30124798,
//   //   'nick':"游客30124798",
//   //   'avatar':"",
//   //   'level':1,
//   //   'signName':"有一个人",
//   // });
//   // dbMsg.insert("$dbFriendInfo", <String, dynamic>{
//   //   'frendId': 30124799,
//   //   'nick':"游客30124799",
//   //   'avatar':"",
//   //   'level':1,
//   //   'signName':"有一个人2",
//   // });
//   // dbMsg.insert("$dbFriendInfo", <String, dynamic>{
//   //   'frendId': 30124801,
//   //   'nick':"游客30124801",
//   //   'avatar':"",
//   //   'level':1,
//   //   'signName':"有一个人4",
//   // });
//
//   final homeState newState = state.clone();
// //  newState.name = action.payload;
//   return newState;
// }
