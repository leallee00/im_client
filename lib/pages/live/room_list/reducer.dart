// import 'dart:convert';
//
// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:quliao/pub/log.dart';
//
// import '../roomStruct.dart';
// import 'action.dart';
// import 'state.dart';
//
// Reducer<room_listState> buildReducer() {
//   return asReducer(
//     <Object, Reducer<room_listState>>{
//       room_listAction.action: _onAction,
//       room_listAction.onLiveRoomListUpdate:_onLiveRoomListUpdate,
//     },
//   );
// }
//
// room_listState _onAction(room_listState state, Action action) {
//   final room_listState newState = state.clone();
//   return newState;
// }
//
// room_listState _onLiveRoomListUpdate(room_listState state, Action action) {
//   final room_listState newState = state.clone();
//
//   // 更新房间列表
//   var roomList = action.payload["value"];
//   if (roomList["result"] != 0){
//     log("获取直播列表失败 ${roomList}");
//     return state;
//   }
//
//   for (var data in roomList["data"]["lists"]){
//     newState.roomList.add(LiveRoom()..initWithMap(data));
//   }
//
//   return newState;
// }