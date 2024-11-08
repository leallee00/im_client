// import 'package:fish_redux/fish_redux.dart';
// import 'package:quliao/event/event_bus.dart';
// import 'package:quliao/event/event_modul.dart';
// import 'package:quliao/models/user/myinfo.dart';
//
// import 'effect.dart';
// import 'reducer.dart';
// import 'state.dart';
// import 'view.dart';
//
// // ignore: camel_case_types
// class homePage extends Page<homeState, Map<String, dynamic>> {
//
//   var user = AppUserInfo();
//
//   homePage()
//       : super(
//             initState: initState,
//             effect: buildEffect(),
//             reducer: buildReducer(),
//             view: buildView,
//             dependencies: Dependencies<homeState>(
//                 adapter: null,
//                 slots: <String, Dependent<homeState>>{
//                 }),
//             middleware: <Middleware<homeState>>[
//             ],){
//
//     // 测试，接收全局消息
// //    eventBus.on<EventOnNetMsg>().listen((event) {
// //      print('接收到的 NetMsg ${event.pbMsg.pbName}');
// //    });
//   }
// }
