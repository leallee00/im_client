//
// import 'dart:async';
//
// import 'package:fixnum/fixnum.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:flutter_html/html_parser.dart';
// import 'package:flutter_html/style.dart';
// import 'package:imclient/event/event_bus.dart';
// import 'package:imclient/event/event_modul.dart';
// import 'package:imclient/models/service_keep_live.dart';
// import 'package:imclient/net/msg_handler_mgr.dart';
// import 'package:imclient/net/socket.dart';
// // import 'package:imclient/pb/pb_msg/live_room/live_room.pb.dart';
// import 'package:imclient/pb/pb_pub/comm.pb.dart';
// import 'package:imclient/pb/pb_pub/service.pb.dart';
// import 'package:imclient/pb/pb_pub/yx_msg.pb.dart';
// import 'package:imclient/pub/func.dart';
// import 'package:imclient/pub/log.dart';
// import 'package:imclient/pub/pub-def.dart';
// import 'package:imclient/models/user/myinfo.dart';
// import 'package:protobuf/protobuf.dart';
//
// const double _ITEM_HEIGHT = 70.0;
// class GMsg{
//   PBCommData pbCommData;
//   String pbName;
//   GeneratedMessage pbMsg;
//
// }
//
// class ChatRoom extends StatefulWidget {
//   ChatRoom({
//     Key key,
//     @required this.anchorId
//   }) : super(key: key);
//
//   final int anchorId;
//
//   @override
//   ChatRoomState createState() => new ChatRoomState()..anchorId = anchorId;
// }
//
// int i = 0;
//
// class ChatRoomState extends State<ChatRoom> {
//   int anchorId = 0;
//   RoomInfo roomInfo = RoomInfo();
//   // 聊天信息
//   List<GMsg> lsGroupMsg = List<GMsg>();
//   StreamSubscription<EventOnNetMsg> msgStreamSub;
//
//   // 消息处理器
//   var msgHandlerMgr = MsgHandlerMgr();
//
//   // 控制Listview
//   var _scrollController = new ScrollController();
// var svcKP = ServiceKeepLive();
//   @override
//   void initState() {
//     super.initState();
//
//     // 注册消息处理逻辑
//     RegMsgHandler();
//
//     // roomInfo = RoomInfo();
//     log("我来了，初始化消息监听 ChatRoomState", model: LOG_MODEL.LIVE);
//     msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
//       msgHandlerMgr.OnMsg(event.pbMsg);
//     });
//
//     // 开启业务检查
//     svcKP.groupId = anchorId;
//     svcKP.service = Service.live_room;
//     svcKP.heart_beat_type = HEART_BEAT_TYPE.LIVE_ROOM;
//     svcKP.Start();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     log("----------------------释放窗口 ChatListState",model: LOG_MODEL.LIVE);
//     msgStreamSub.cancel();
//     svcKP.Stop();
//   }
//
//   Widget MakeChat(index) {
//     var gmsg = lsGroupMsg[index];
//     var msg = gmsg.pbMsg;
//     // if (msg is RoomNormal) {
//     //   return Container(
//     //         margin: EdgeInsets.fromLTRB(10, 1, 1, 1),
//     //         decoration: BoxDecoration(
//     //           borderRadius:BorderRadius.all(Radius.circular(5.0)),
//     //           border: Border.all(color: Colors.grey, width: 1,),
//     //           color: Colors.lightGreen,
//     //         ),
//     //         child: Row(
//     //             mainAxisSize: MainAxisSize.min,
//     //           children: [
//     //             Text("普", style: TextStyle(color: Colors.orangeAccent, fontSize: 20)),
//     //             Container(
//     //               margin: EdgeInsets.fromLTRB(10, 1, 1, 1),
//     //               child: avatar(msg.userProp.headImg, 20, 20),
//     //             ),
//     //
//     //             Text(
//     //               "${msg.userProp.username}:", style: TextStyle(color: Colors.orangeAccent, fontSize: 20)),
//     //             Text("${msg.msg}", style: TextStyle(fontSize: 20,color: Colors.white),)
//     //           ],
//     //         ),
//     //       );
//     // } else if (msg is RoomBarrage) {
//     //   return  Container(
//     //         margin: EdgeInsets.fromLTRB(10, 1, 1, 1),
//     //         decoration: BoxDecoration(
//     //           borderRadius:BorderRadius.all(Radius.circular(5.0)),
//     //           color: msg.type == 1? Colors.blueGrey:Colors.brown,
//     //         ),
//     //         // color: Colors.grey,
//     //         child: Row(
//     //           mainAxisSize: MainAxisSize.min,
//     //           children: [
//     //             Text(msg.type == 1?"房":"服", style: TextStyle(color: Colors.orangeAccent, fontSize: 20)),
//     //             Container(
//     //               margin: EdgeInsets.fromLTRB(10, 1, 1, 1),
//     //               child: avatar(msg.userProp.headImg, 20, 20),
//     //             ),
//     //
//     //             Text("${msg.userProp.username}:",
//     //               style: TextStyle(color: Colors.yellow, fontSize: 20),),
//     //             Text("${msg.msg}", style: TextStyle(fontSize: 20),)
//     //           ],
//     //         ),
//     //       );
//     // }
//     if (msg is RoomNormal) {
//       return Container(
//                 margin: EdgeInsets.fromLTRB(10, 1, 1, 1),
//                 decoration: BoxDecoration(
//                   borderRadius:BorderRadius.all(Radius.circular(5.0)),
//                   color: Colors.black12,
//                 ),
//                 // color: Colors.grey,
//                 child: Text.rich(
//           TextSpan(
//               style: new TextStyle(
//                 color:Colors.deepOrange,
//                 fontSize: 20.0,
//               ),
//               children: [
//                 WidgetSpan(
//                   child: InkWell(child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius:BorderRadius.all(Radius.circular(5.0)),
//                       // border: BoxBorders,
//                       color: Colors.black12,
//                     ),
//                     width: 20,height: 20,
//                     child: Text("普"),
//                   ),
//                     onTap: (){
//                     log("click me");
//                     },
//                   )
//                 ),
//                 WidgetSpan(
//                     child: InkWell(child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius:BorderRadius.all(Radius.circular(5.0)),
//                         // border: BoxBorders,
//                         color: Colors.orange,
//                       ),
//                       child: Text("${msg.userProp.username}:"),
//                     ),
//                       onTap: (){
//                         log("click me");
//                       },
//                     )
//                 ),
//                       TextSpan(text: "${msg.msg}",
//                         style: new TextStyle(
//                         color: Colors.black,
//                         fontSize: 20.0,
//                       ),
//                       )
//
//
//               ]
//           )
//                 )
//       );
//     }else if (msg is RoomBarrage) {
//       Container(
//           margin: EdgeInsets.fromLTRB(10, 1, 1, 1),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(5.0)),
//             color: msg.type == 1 ? Colors.blueGrey : Colors.brown,
//           ),
//           // color: Colors.grey,
//           child: Text.rich(TextSpan(
//               text: msg.type == 1 ? "房" : "服",
//               style: new TextStyle(
//                 color: Colors.orangeAccent,
//                 fontSize: 20.0,
//               ),
//               children: <TextSpan>[
//                 TextSpan(text: "${msg.userProp.username}:",
//                     style: new TextStyle(
//                       color: Colors.yellow,
//                       fontSize: 20.0,
//                     ),
//                     children: <TextSpan>[
//                       TextSpan(text: "${msg.msg}")
//                     ]
//                 ),
//               ]
//           )
//           )
//       );
//     }
// //     const htmlData = """
// // <h1>Header 1</h1>
// // <h2>Header 2</h2>
// // <h3>Header 3</h3>
// // <h4>Header 4</h4>
// // <h5>Header 5</h5>
// // <h6>Header 6</h6>
// // <h3>Ruby Support:</h3>
// //       <p>
// //         <ruby>
// //           漢<rt>かん</rt>
// //           字<rt>じ</rt>
// //         </ruby>
// //         &nbsp;is Japanese Kanji.
// //       </p>
// //       <h3>Support for <code>sub</code>/<code>sup</code></h3>
// //       Solve for <var>x<sub>n</sub></var>: log<sub>2</sub>(<var>x</var><sup>2</sup>+<var>n</var>) = 9<sup>3</sup>
// //       <p>One of the most <span>common</span> equations in all of physics is <br /><var>E</var>=<var>m</var><var>c</var><sup>2</sup>.</p>
// //       <h3>Table support (with custom styling!):</h3>
// //       <p>
// //       <q>Famous quote...</q>
// //       </p>
// //       <table>
// //       <colgroup>
// //         <col width="50%" />
// //         <col width="25%" />
// //         <col width="25%" />
// //       </colgroup>
// //       <thead>
// //       <tr><th>One</th><th>Two</th><th>Three</th></tr>
// //       </thead>
// //       <tbody>
// //       <tr>
// //         <td>Data</td><td>Data</td><td>Data</td>
// //       </tr>
// //       <tr>
// //         <td>Data</td><td>Data</td><td>Data</td>
// //       </tr>
// //       </tbody>
// //       <tfoot>
// //       <tr><td>fData</td><td>fData</td><td>fData</td></tr>
// //       </tfoot>
// //       </table>
// //       <h3>Custom Element Support:</h3>
// //       <flutter></flutter>
// //       <flutter horizontal></flutter>
// //       <h3>SVG support:</h3>
// //       <svg id='svg1' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'>
// //             <circle r="32" cx="35" cy="65" fill="#F00" opacity="0.5"/>
// //             <circle r="32" cx="65" cy="65" fill="#0F0" opacity="0.5"/>
// //             <circle r="32" cx="50" cy="35" fill="#00F" opacity="0.5"/>
// //       </svg>
// //       <h3>List support:</h3>
// //       <ol>
// //             <li>This</li>
// //             <li><p>is</p></li>
// //             <li>an</li>
// //             <li>
// //             ordered
// //             <ul>
// //             <li>With<br /><br />...</li>
// //             <li>a</li>
// //             <li>nested</li>
// //             <li>unordered
// //             <ol>
// //             <li>With a nested</li>
// //             <li>ordered list.</li>
// //             </ol>
// //             </li>
// //             <li>list</li>
// //             </ul>
// //             </li>
// //             <li>list! Lorem ipsum dolor sit amet.</li>
// //             <li><h2>Header 2</h2></li>
// //             <h2><li>Header 2</li></h2>
// //       </ol>
// //       <h3>Link support:</h3>
// //       <p>
// //         Linking to <a href='https://github.com'>websites</a> has never been easier.
// //       </p>
// //       <h3>Image support:</h3>
// //       <p>
// //         <img alt='Google' src='https://www.google.cn/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' />
// //         <a href='https://google.com'><img alt='Google' src='https://www.google.cn/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' /></a>
// //         <img alt='Alt Text of an intentionally broken image' src='https://www.google.cn/images/branding/googlelogo/2x/googlelogo_color_92x30d' />
// //       </p>
// //       <!--
// //       <h3>Video support:</h3>
// //       <video controls>
// //         <source src="https://www.w3schools.com/html/mov_bbb.mp4" />
// //       </video>
// //       <h3>Audio support:</h3>
// //       <audio controls>
// //         <source src="https://www.w3schools.com/html/horse.mp3" />
// //       </audio>
// //       <h3>IFrame support:</h3>
// //       <iframe src="https://google.com"></iframe>
// //       -->
// // """;
// //     String hd = "";
// //   if (msg is RoomNormal){
// //     hd = """
// //       <span>普</span><a href='https://github.com'>${msg.userProp.username}</a>:<span style='color:white'>${msg.msg}</span><br>
// //     """;
// //   } else if (msg is RoomBarrage) {
// //     hd = """
// //       <p>${msg.type == 1 ? "房" : "服"}</p>${msg.userProp.username}:${msg.msg}
// //     """;
// //   }
// //     return Html(
// //       data: hd,
// //       //Optional parameters:
// //       style: {
// //         "html": Style(
// //           backgroundColor: Colors.black12,
// // //              color: Colors.white,
// //         ),
// // //            "h1": Style(
// // //              textAlign: TextAlign.center,
// // //            ),
// //         "table": Style(
// //           backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
// //         ),
// //         "tr": Style(
// //           border: Border(bottom: BorderSide(color: Colors.grey)),
// //         ),
// //         "th": Style(
// //           padding: EdgeInsets.all(6),
// //           backgroundColor: Colors.grey,
// //         ),
// //         "td": Style(
// //           padding: EdgeInsets.all(6),
// //         ),
// //         "var": Style(fontFamily: 'serif'),
// //       },
// //       customRender: {
// //         "flutter": (RenderContext context, Widget child, attributes, _) {
// //           return FlutterLogo(
// //             style: (attributes['horizontal'] != null)
// //                 ? FlutterLogoStyle.horizontal
// //                 : FlutterLogoStyle.markOnly,
// //             textColor: context.style.color,
// //             size: context.style.fontSize.size * 5,
// //           );
// //         },
// //       },
// //       onLinkTap: (url) {
// //         print("Opening $url...");
// //       },
// //       onImageTap: (src) {
// //         print(src);
// //       },
// //       onImageError: (exception, stackTrace) {
// //         print(exception);
// //       },
// //     );
//   }
//   Widget buildMsgList(BuildContext context, int index) {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//           flex: 4,
//           child:  Container(
//               constraints: BoxConstraints(
//                 maxWidth: MediaQuery
//                     .of(context)
//                     .size
//                     .width * 0.7,
//               ),
//               child: MakeChat(index),
//             ),
//           ),
//         Spacer(flex: 1),
//       ],
//     );
//   }
//
//   // 信息发送输入控制器
//   TextEditingController msgInputCtl = TextEditingController();
//   FocusNode msgInputFocus = FocusNode();
//
//   // 是否弹幕
//   bool isBarrageMsg = false;
//   int barrageType = 1; // 弹幕类型 1 房间弹幕 2 全站弹幕
//
//   @override
//   Widget build(BuildContext context) {
//     // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
//     SystemChrome.setEnabledSystemUIOverlays([]);
//     return Scaffold(
//         body: Container(
//           child: Column(
//             children: [
//               // 头部
//               Expanded(
//                 flex: 0,
//                 child:
//                 Row(
//                   children: [
//                     Container(
//                       color: Colors.grey,
//                       child: Row(
//                         children: [
//                           avatar(roomInfo.headerImageOriginal, 60, 60),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("${roomInfo.nickName}", style: TextStyle(
//                                   fontSize: 20, color: Colors.white),),
//                               Text("${roomInfo.actorCurrentExperience}",
//                                 style: TextStyle(
//                                     fontSize: 15, color: Colors.white),),
//                             ],
//                           ),
//                           TextButton(
//                             child: Text("关注"),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               // 聊天展示框
//               Expanded(
//                 flex: 10,
//                 child:
//                 // Container(
//                 //     height: 600,
//                 //     child: Column(
//                 //         children: [
//                 //           // 消息框
//                 //           Expanded(
//                 //             flex: 10,
//                 //             child:
//                 ListView.builder(
//                   itemCount: lsGroupMsg.length,
//                   shrinkWrap: true,
//                   itemBuilder: buildMsgList,
//
//                   // 控制滚动
//                   scrollDirection: Axis.vertical,
//                   controller: _scrollController,
//
//                 ),
//                 //       ),
//                 //     ]
//                 // )
//                 // )
//               ),
//               Expanded(
//                 flex: 0,
//                 child: Row(
//                   children: [
//                     Expanded(
//                         flex: 0,
//                         child: Row(children: [
//
//                           // 弹幕按钮
//                           Container(
//                             width: 30,
//                             height: 20,
//                             decoration: BoxDecoration(
//                               color: isBarrageMsg ? Colors.red : Colors.grey,
//                               borderRadius: BorderRadius.all(
//                                   Radius.circular(5.0)),
//                               border: Border.all(
//                                 color: Colors.grey, width: 1,),
//                             ),
//                             child: TextButton(
//                               onPressed: () {
//                                 isBarrageMsg = !isBarrageMsg;
//                                 setState(() {});
//                               },
//                               padding: EdgeInsets.all(1),
//                               child: Text("弹幕",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 10),),
//                             ),
//                           ),
//                           // 范围按钮
//                           Offstage(
//                             offstage: !isBarrageMsg,
//                             child:Container(
//                             width: 30,
//                             height: 20,
//                             decoration: BoxDecoration(
//                               color: Colors.lightGreen,
//                               borderRadius: BorderRadius.all(
//                                   Radius.circular(5.0)),
//                               border: Border.all(
//                                 color: Colors.grey, width: 1,),
//                             ),
//                             child: TextButton(
//                               onPressed: () {
//                                 barrageType = barrageType == 1 ? 2 : 1;
//                                 setState(() {
//
//                                 });
//                               },
//                               padding: EdgeInsets.all(1),
//                               child: Text(barrageType == 1 ? "房间" : "全站",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 10),),
//                             ),
//                           ),
//                               ),
//                         ],)),
//                     Expanded(
//                         flex: 5,
//                         child: Container(
//                           child: TextField(
//                             autofocus: false,
//                             decoration: InputDecoration(
// //                                labelText: "呵呵",
//                               hintText: "说点什么吧",
//                             ),
//                             controller: msgInputCtl,
//                             focusNode: msgInputFocus,
//                           ),
//                         )
// //
//                     ),
//                     Expanded(
//                         flex: 0,
//                         child: TextButton(
//                           child: Text("发送"),
//                           color: Colors.green,
//                           onPressed: () {
//                             if (msgInputCtl.text.length == 0) {
//                               showToast("还没有输入任何信息");
//                               return;
//                             }
//                             sendMsg();
//                           },
//                         ))
//                   ],
//                 ),
//               )
//             ],
//           ),
//         )
//     );
//   }
//
//   RegMsgHandler() {
//     //
//     msgHandlerMgr.RegMsgHandler(
//         HistoryYXCommMsgRsp(), (GeneratedMessage msg, PBMessage pbMessage) {
//       log("一个历史消息", model: LOG_MODEL.LIVE);
//       return true;
//     });
//     msgHandlerMgr.RegMsgHandler(ReloadYXCommMsgRsp(),(GeneratedMessage msg, PBMessage pbMessage){
//       log("场景恢复消息",model: LOG_MODEL.LIVE);
//       return true;
//     });
//     msgHandlerMgr.RegMsgHandler(RoomBarrage(), (GeneratedMessage msg, PBMessage pbMessage){
//       log("弹幕消息 ${msg}",model: LOG_MODEL.LIVE);
//       //
//       // 加入展示列表
//       lsGroupMsg.add(GMsg()
//         ..pbName = pbMessage.pbName
//         ..pbMsg = msg
//         ..pbCommData = pbMessage.pbCommData);
//       setState(() {
//         // 更新界面
//       });
//       return true;
//     });
//     msgHandlerMgr.RegMsgHandler(RoomNormal(), (GeneratedMessage msg, PBMessage pbMessage){
//       log("一个房间消息 ${msg}",model: LOG_MODEL.LIVE);
//       // 加入展示列表
//       lsGroupMsg.add(GMsg()
//         ..pbName = pbMessage.pbName
//         ..pbMsg = msg
//         ..pbCommData = pbMessage.pbCommData);
//       // 加入展现列表
//       setState(() {
//         // 更新一下页面
//       });
//       return true;
//     });
//     msgHandlerMgr.RegMsgHandler(EnterRoomRsp(), (GeneratedMessage msg, PBMessage pbMessage){
//       // 用户登录
//       log("进入房间成功 ${msg}",model: LOG_MODEL.LIVE);
//       return true;
//     });
//     // msgHandlerMgr.RegMsgHandler(HeartBeat(), (msg, pbMessage) => false);
//     msgHandlerMgr.RegMsgHandler(YXCommMsg(), (msg, pbMessage){
//       log("get msg YXCommMsg:${msg}");
//       return true;
//     });
//     msgHandlerMgr.RegMsgHandler(RoomInfo(), (GeneratedMessage msg, PBMessage pbMessage){
//       log("get msg ${pbMessage.pbName}:${msg}", model: LOG_MODEL.LIVE);
//       roomInfo = msg;
//       setState(() {
//         // 更新一下页面
//       });
//       return true;
//     });
//     msgHandlerMgr.RegMsgHandler(RoomAction(), (GeneratedMessage msg, PBMessage pbMessage) {
//       log("get msg RoomAction:${msg}");
//
//       return true;
//     });
//     msgHandlerMgr.RegMsgHandler(CommRsp(), (GeneratedMessage msg, PBMessage pbMessage) {
//       log("get msg CommRsp:${msg}");
//
//       return true;
//     });
//   }
//
//   void sendMsg() {
//     var user = AppUserInfo();
//     if (user.imId == null || user.imId == 0) {
//       // 跳转到登录页面
//       log("请先登录",model: LOG_MODEL.LIVE);
//       Navigator.pushNamed(context, "login");
//       return;
//     }
//     // 构造text消息
//     var text = msgInputCtl.text;
//     msgInputCtl.clear();
//     msgInputFocus.unfocus();
//
//     if (text.length == 0) {
//       showToast("请输入内容");
//       FocusScope.of(context).requestFocus(msgInputFocus);
//       return;
//     }
//     // @列表
//
//     // log("finfo:${finfo}");
//     var pbCommData = MakePBCommData(
//         aimId: Int64(anchorId), toService: Service.live_room);
//     GeneratedMessage pbMsg;
//     if (isBarrageMsg){
//       pbMsg = RoomBarrage()..msg = text
//           ..type = barrageType
//           ..headerImageOriginal = AppUserInfo.instance.appAvatar;
//
//     }else{
//       // 普通消息
//       pbMsg = RoomNormal()..msg = text;
//     }
//
//     Client().sendMsg(pbMsg, Int64(anchorId), pbCommData);
//   }
// }