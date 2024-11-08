// import 'package:basic_utils/basic_utils.dart';
// import 'package:dio/dio.dart';
// import 'package:fish_redux/fish_redux.dart';
// import 'package:quliao/pub/config.dart';
// import 'action.dart';
// import 'state.dart';
//
// Effect<room_listState> buildEffect() {
//   return combineEffects(<Object, Effect<room_listState>>{
//     room_listAction.action: _onAction,
//     Lifecycle.initState:_onInitState,
//   });
// }
//
// void _onAction(Action action, Context<room_listState> ctx) {
// }
//
//
// void _onInitState(Action action, Context<room_listState> ctx) {
//   // 请求一下列表
//   var dio = Dio();
//   var url = LiveRoomHost + LiveRoomListUri;
//   dio.post(url, queryParameters:{"page":1}).then(
//           (value) => {
//             ctx.dispatch(room_listActionCreator.onLiveRoomListUpdate({"value":value}))
//           });//.catchError((e){
// }