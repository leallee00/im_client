// import 'package:fish_redux/fish_redux.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pages/live/chattest/chatRoom.dart';
import 'package:quliao/pages/live/zego/init_sdk_page.dart';
import 'package:quliao/pages/test/imagepicker.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/models/user/myinfo.dart';

import '../../best_flutter_ui_templates/navigation_home_screen.dart';
import '../../models/msg_struct.dart';
import '../../net/net_state_view.dart';
import '../auth/sign_in_screen.dart';
import '../dbopt/dbopt_page.dart';
import '../login/login_page.dart';

// import 'action.dart';
// import 'state.dart';

class FuncTestListPage extends StatefulWidget {
  static const name = "FuncTestListPage";
  @override
  _FuncTestListPageState createState() => _FuncTestListPageState();
}

class _FuncTestListPageState extends State<FuncTestListPage> {
  @override
  void initState() {
    super.initState();
  }

  // 状态数据 登录状态  网络状态 用户信息 用户位置等
  // late String name ;
  //  Color netStateColor;

  late Locale localization;
  late NET_STATE netState = Client().enNetState;
  late PBMessage pbMsg;
  late Map<Int64, List<ChatPrivateData>> pbPrivateMsgList;
  TextEditingController msgInputCtl = TextEditingController(text: "10266");

  @override
  Widget build(BuildContext ctx) {
    var buttons = [
      NetStateViewPage(),
      TextButton(
        onPressed: () {
          log("clicked me!!!");
        },
        child: Text("网络状态 $netState"),
        // color: netColor(state), //state.netStateColor,
      ),
      TextButton(
        onPressed: () {
          log("click 重置网络");
          Client().Start();
        },
        child: Text("重置网络"),
      ),
      TextButton(
        onPressed: () {
          // dispatch(homeActionCreator.onOpenLogin({"payload": ""}));
          log("home effect open login page....");
          Navigator.of(ctx).pushNamed(LoginPage.name, arguments: null);
        },
        child: Text("登录 测试"),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(ctx).pushNamed(SignInScreen.name);
        },
        child: Text("新登录页面"),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(ctx).push(MaterialPageRoute(builder: (BuildContext ctx) {
            return NavigationHomeScreen();
          }));
        },
        child: Text("best flutter ui templates"),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(ctx).push(MaterialPageRoute(builder: (BuildContext ctx) {
            return ChatPage(
              finfo: FriendInfo(),
            );
          }));
        },
        child: Text("flyer chat ui"),
      ),
      TextButton(
        onPressed: () {
          // Navigator.pushNamed(viewService.context, "LogSet");
        },
        child: Text("设置日志级别"),
      ),
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "ChatListPage");
          // dispatch(homeActionCreator.onOpenChatList({}));
        },
        child: Text("到聊天列表"),
      ),
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "FriendListPageState");
          // dispatch(homeActionCreator.onOpenChatList({}));
        },
        child: Text("到朋友列表"),
      ),
      TextButton(
        onPressed: () {
          // Navigator.pushNamed(viewService.context, "room_listPage");
        },
        child: Text("主播测试"),
      ),
      TextButton(
        onPressed: () {
          // dispatch(homeActionCreator.onOpenPage({"page": "search_friend"}));
        },
        child: Text("查找好友"),
      ),
      TextButton(
        onPressed: () {
          // dispatch(homeActionCreator.onAction("我是参数"));
        },
        child: Text("事件传递"),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(DBOptPage.name);
        },
        child: Text("dbsqlite 测试"),
      ),
      TextButton(
        onPressed: () {
          // Navigator.of(viewService.context).push(
          // MaterialPageRoute(builder: (BuildContext context) {
          // return InitPage(false);
          // }));
        },
        child: Text("直播-观众"),
      ),
      TextButton(
        onPressed: () {
          // Navigator.of(viewService.context).push(
          // MaterialPageRoute(builder: (BuildContext context) {
          // return InitPage(true);
          // }));
        },
        child: Text("直播-主播"),
      ),
      TextButton(
        onPressed: () {
          var msg = ClientBFSwitchReq()..switchToBack = true;
          Client.instance
              .sendMsg(msg, Int64(AppUserInfo.instance.imId), MakePBCommData());
        },
        child: Text("发送退后台操作"),
      ),
      TextButton(
        onPressed: () {
          sendLoginMsg();
        },
        child: Text("发送登录消息"),
      ),
      TextButton(
        onPressed: () {
          // Navigator.of(viewService.context).push(
          // MaterialPageRoute(builder: (BuildContext context) {
          // return HeadImageUploadPage();
          // }));
        },
        child: Text("图片选择测试页"),
      ),
      Row(children: [
        Expanded(
          flex: 1,
          child: TextField(
            autofocus: false,
            decoration: InputDecoration(
              hintText: "要进入的房间号",
            ),
            controller: msgInputCtl,
            // focusNode: msgInputFocus,
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton(
            onPressed: () {
              // var roomInfo = LiveRoomInfo()..roomId = Int64(10259)
              // ..ownerId=Int64(10259)
              // ..roomName="abc"
              // ..facePic=""
              // ..notice="abc";
              // int roomId = int.parse(msgInputCtl.text);
              // var anchorId = roomId; //Int64(10260);//10259);
              // Navigator.pu?shNamed(
              // viewService.context, "ChatRoom",
              // arguments: Int64.parseInt(msgInputCtl.text));
            },
            child: Text("直播间聊天测试"),
          ),
        ),
      ])
    ];
//   }
// }
//
//
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
    // var _selectedIndex = 0;
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.black54),
                tooltip: '菜单',
                onPressed: () {
                  // log("press 菜单");
                  Navigator.pop(ctx);
                }),
            //标题左侧按钮
            // iconTheme: IconThemeData(color: Colors.amberAccent,opacity: 30,size: 25),//icon的主题，会作用到AppBar上的所有Icon(不包含IconButton，因为IconButton是个button)
            title: Center(
                child: Text(
              '测试入口页面',
              style: TextStyle(color: Colors.black54, fontSize: 20),
            )),
            //标题文案及字体样式设置
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  tooltip: '搜索',
                  onPressed: () {
                    log("press 搜索");
                  }), //标题右侧按钮
              IconButton(
                  icon: Icon(Icons.add, color: Colors.black54),
                  tooltip: '添加',
                  onPressed: () {
                    log("press 添加");
                  }) //标题右侧按钮
            ],
          ),
          body: //bottomPages[state.selectedIndex],
              Container(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: buttons,
            ),
          ),
        ));
  }
}
