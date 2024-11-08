// import 'package:fish_redux/fish_redux.dart';
// import 'package:quliao/pub/log.dart';
//
// import 'action.dart';
// import 'state.dart';
//
// Reducer<FriendListState> buildReducer() {
//   return asReducer(
//     <Object, Reducer<FriendListState>>{
//       FriendListAction.action: _onAction,
//       FriendListAction.updateList: _onUpdateList,
//
//     },
//   );
// }
//
// FriendListState _onAction(FriendListState state, Action action) {
//   final FriendListState newState = state.clone();
//   return newState;
// }
//
// FriendListState _onUpdateList(FriendListState state, Action action) {
//   // log("_onUpdateList----> newState.lfInfo");
//   final FriendListState newState = state.clone();
//   newState.lfInfo = action.payload;
//   return newState;
// }
