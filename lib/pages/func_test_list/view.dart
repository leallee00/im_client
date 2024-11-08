// import 'package:fish_redux/fish_redux.dart';
// import 'package:fixnum/fixnum.dart';
// import 'package:flutter/material.dart';
// import 'package:quliao/net/socket.dart';
// import 'package:quliao/pages/live/chattest/chatRoom.dart';
// import 'package:quliao/pages/live/zego/init_sdk_page.dart';
// import 'package:quliao/pages/test/imagepicker.dart';
// import 'package:quliao/pb/pb_pub/comm.pb.dart';
// import 'package:quliao/pub/log.dart';
// import 'package:quliao/pub/pub-def.dart';
// import 'package:quliao/models/user/myinfo.dart';
//
// import 'action.dart';
// import 'state.dart';
//
// Color netColor(homeState state){
//   Color c = Colors.grey;
//   switch(state.netState){
//     case NET_STATE.NET_STATE_INIT: c = Colors.grey; break; // 初始状态
//     case NET_STATE.NET_STATE_PREPARING:c = Colors.orange; break; // 准备中
//     case NET_STATE.NET_STATE_AUTHING:c = Colors.greenAccent; break; // 认证中
//     case NET_STATE.NET_STATE_CLOSED:c = Colors.red; break; // 手动关闭，不希望再连接了
//     case NET_STATE.NET_STATE_AUTHED:c = Colors.green; break; // 认证成功，意外断网或心跳超时状态转到init
//   }
// //  log("----------netstate:${state.netState}, color:${c}");
//   return c;
// }
//   TextEditingController msgInputCtl = TextEditingController(text:"10266");
// Widget buildView(homeState state, Dispatch dispatch, ViewService viewService) {
//   var buttons = [
//     TextButton(
//       onPressed: () {
//         log("clicked me!!!");
//       },
//       child: Text("网络状态 ${state.netState}"),
//       // color: netColor(state), //state.netStateColor,
//     ),
//     Center(
//         child: TextButton(
//           // padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
//           // color: Colors.green,
//           //color: state.netStateColor,
//           child: Text(
//             "进入",
//             style: TextStyle(color: Colors.white),
//           ),
//           onPressed: () {
//             // todo 点击事件
//             log("clicked me!!!");
//             dispatch(homeActionCreator.onOpenLogin({"a": "b"}));
//           },
//         )
//     ),
//     TextButton(onPressed: () {
//       log("click 重置网络");
//       Client().Start();
//     },
//       child: Text("重置网络"),
//     ),
//
//     TextButton(
//       onPressed: () {
//         Navigator.pushNamed(viewService.context, "LogSet");
//       },
//       child: Text("设置日志级别"),
//     ),
//     TextButton(
//       onPressed: () {
//         dispatch(homeActionCreator.onOpenChatList({}));
//       },
//       child: Text("到聊天列表"),
//     ),
//     TextButton(
//       onPressed: () {
//         Navigator.pushNamed(viewService.context, "room_listPage");
//       },
//       child: Text("主播测试"),
//     ),
//     TextButton(
//       onPressed: () {
//         dispatch(homeActionCreator.onOpenPage({"page": "search_friend"}));
//       },
//       child: Text("查找好友"),
//     ),
//     TextButton(
//       onPressed: () {
// //                Navigator.push(viewService.context, MaterialPageRoute(builder: (BuildContext context) {return Echo(text: "hello world");}));
//         Navigator.pushNamed(viewService.context, "echo");
//       },
//       child: Text("非fish redux窗口"),
//     ),
//     TextButton(
//       onPressed: () {
//         dispatch(homeActionCreator.onAction("我是参数"));
//       },
//       child: Text("事件传递"),
//     ),
//     TextButton(
//       onPressed: () {
//         dispatch(homeActionCreator.onDbTest({"payload": ""}));
//       },
//       child: Text("dbsqlite 测试"),
//     ),
//     TextButton(
//       onPressed: () {
//         dispatch(homeActionCreator.onOpenLogin({"payload": ""}));
//       },
//       child: Text("登录 测试"),
//     ),
//     TextButton(
//       onPressed: () {
//         Navigator.of(viewService.context).push(
//             MaterialPageRoute(builder: (BuildContext context) {
//               return InitPage(false);
//             }));
//       },
//       child: Text("直播-观众"),
//     ),
//     TextButton(
//       onPressed: () {
//         Navigator.of(viewService.context).push(
//             MaterialPageRoute(builder: (BuildContext context) {
//               return InitPage(true);
//             }));
//       },
//       child: Text("直播-主播"),
//     ),
//     TextButton(
//       onPressed: () {
//         var msg = ClientBFSwitchReq()
//           ..switchToBack = true;
//         Client.instance.sendMsg(
//             msg, Int64(AppUserInfo.instance.imId), MakePBCommData());
//       },
//       child: Text("发送退后台操作"),
//     ),
//
//     TextButton(
//       onPressed: () {
//         sendLoginMsg();
//       },
//       child: Text("发送登录消息"),
//     ),
//
//     TextButton(
//       onPressed: () {
//         Navigator.of(viewService.context).push(
//             MaterialPageRoute(builder: (BuildContext context) {
//               return HeadImageUploadPage();
//             }));
//       },
//       child: Text("图片选择测试页"),
//     ),
//
//     Row(
//       children: [
//         Expanded(
//           flex: 1,
//           child: TextField(
//           autofocus: false,
//           decoration: InputDecoration(
//             hintText: "要进入的房间号",
//           ),
//           controller: msgInputCtl,
//           // focusNode: msgInputFocus,
//         ),
//         ),
//
//         Expanded(
//           flex: 1,
//           child: TextButton(
//             onPressed: () {
//               // var roomInfo = LiveRoomInfo()..roomId = Int64(10259)
//               // ..ownerId=Int64(10259)
//               // ..roomName="abc"
//               // ..facePic=""
//               // ..notice="abc";
//               // int roomId = int.parse(msgInputCtl.text);
//               // var anchorId = roomId; //Int64(10260);//10259);
//               Navigator.pushNamed(
//                   viewService.context, "ChatRoom",
//                   arguments: Int64.parseInt(msgInputCtl.text));
//             },
//
//             child: Text("直播间聊天测试"),
//           ),
//         ),
//
//       ],
//     ),
//
//   ];
//
//   // var _selectedIndex = 0;
//   return WillPopScope(
//       onWillPop: () async { return  true; },
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           leading: IconButton(
//               icon: Icon(Icons.menu, color: Colors.black54), tooltip: '菜单', onPressed: () {
//             log("press 菜单");
//           }),
//           //标题左侧按钮
//           // iconTheme: IconThemeData(color: Colors.amberAccent,opacity: 30,size: 25),//icon的主题，会作用到AppBar上的所有Icon(不包含IconButton，因为IconButton是个button)
//           title: Center(child: Text('yzim 入口页面',
//             style: TextStyle(color: Colors.black54, fontSize: 20),)),
//           //标题文案及字体样式设置
//           backgroundColor: Colors.white,
//           actions: <Widget>[
//             IconButton(icon: Icon(Icons.search, color: Colors.black54,), tooltip: '搜索', onPressed: () {
//               log("press 搜索");
//             }), //标题右侧按钮
//             IconButton(icon: Icon(Icons.add, color: Colors.black54), tooltip: '添加', onPressed: () {
//               log("press 添加");
//             }) //标题右侧按钮
//           ],
//         ),
//         body: //bottomPages[state.selectedIndex],
//         Container(
//           child: ListView(
//             shrinkWrap: true,
//             padding: const EdgeInsets.all(20.0),
//             children: buttons,
//           ),
//         ),
//       )
//   );
// }