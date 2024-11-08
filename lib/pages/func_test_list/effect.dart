// import 'dart:async';
// import 'dart:math';
//
// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:flutter/widgets.dart' hide Action;
// import 'package:quliao/event/event_bus.dart';
// import 'package:quliao/event/event_modul.dart';
// import 'package:quliao/net/socket.dart';
// import 'package:quliao/pb/pb_pub/comm.pb.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/pub/pub-def.dart';
// import 'package:quliao/store/action.dart';
// import 'package:quliao/store/store.dart';
// import 'package:quliao/models/user/myinfo.dart';
// import 'action.dart';
// import 'state.dart';
//
// // 事件先被effect处理，被effect处理后不会再到reducer
// // effect不处理的事件才到reducer
// Effect<homeState> buildEffect() {
//   return combineEffects(<Object, Effect<homeState>>{
//     Lifecycle.initState: _onInitState,
//     Lifecycle.dispose: _onDispose,
//     homeAction.onAction: _onAction,
//     homeAction.onOpenLogin: _onOpenLogin,
//     ///    homeAction.showData: _onShowData, // 让reducer接收该事件
//     ///    homeAction.gChangeThemeColor: _onChangeThemeColor,
//     homeAction.userLogin: _onUserLogin,
//     homeAction.openChatList:_onOpenChatList,
//     homeAction.dbTest:_onDbTest,
//     homeAction.openPage: _onpenPage,
//     homeAction.onOpenLive:_onOpenLive,
//     // GlobalAction.onNetMsg:_onNetMsg,
//   });
// }
// late StreamSubscription<EventOnNetMsg> msgStreamSub;
// void _onNetMsg(Action action, Context<homeState> ctx) {
//   log("获得一个全局的网络消息");
// }
//
// void _onInitState(Action action, Context<homeState> ctx) {
//   log("我来了，初始化消息监听");
//   msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
//       // log('我通过消息总线接收到了消息 NetMsg ${event.pbMsg.pbName}');
//       // 触发一个更新吧，触发到reducer去
//     });
// }
//
// void _onDispose(Action action, Context<homeState> ctx) {
//   log("我走了，注销监听，886");
//   msgStreamSub.cancel();
// }
//
// bool _onAction(Action action, Context<homeState> ctx) {
//   log("effect处理了action，返回false 参数:${action.payload}");
//   return false;
// }
//
// void _onOpenLogin(Action action, Context<homeState> ctx){
//   log("home effect open login page....");
//   Navigator.of(ctx.context).pushNamed('login', arguments: null);
// }
//
// //homeState _onShowData(Action action, Context<homeState> ctx){
// //  log('home effect 进入打开登录页面reducer');
// //
// //}
//
// //void _onChangeThemeColor(Action action, Context<homeState> ctx){
// //  log('_onChangeThemeColor');
// //  GlobalStore.store.dispatch(GlobalActionCreator.onChangeThemeColor());
// //  Client.instance.SetNetState(NET_STATE.NET_STATE_INIT);
// ////  GlobalStore.store.dispatch(GlobalActionCreator.onNetStateChange(NET_STATE.NET_STATE_CLOSED));
// //}
//
// void _onUserLogin(Action action, Context<homeState> ctx){
//   // 登录操作
//   var user = AppUserInfo();
//   user.appUid = action.payload["appUid"];
//   user.imId = action.payload["imId"];
//   user.imToken = action.payload["imToken"];
//   user.appAvatar = action.payload["appAvatar"];
//   user.saveToSp();
//   Client().Start();
//
//   // 进入指定页面
//   log(user);
// }
//
// void _onOpenChatList(Action action, Context<homeState> ctx){
//   log("--------------goto chat list");
//   Navigator.of(ctx.context).pushNamed("chat_list", arguments: action.payload);
// }
//
// void _onDbTest(Action action, Context<homeState> ctx){
//   log("--------------goto db test");
//   Navigator.of(ctx.context).pushNamed("dbopt", arguments: action.payload);
// }
//
// void _onpenPage(Action action, Context<homeState> ctx){
//   log("--------------open page");
//   Navigator.of(ctx.context).pushNamed(action.payload["page"], arguments: action.payload);
// }
//
// void _onOpenLive(Action action, Context<homeState> ctx){
//   log("--------------open page ${action.payload}");
//   Navigator.of(ctx.context).pushNamed(action.payload["page"], arguments: action.payload);
// }
