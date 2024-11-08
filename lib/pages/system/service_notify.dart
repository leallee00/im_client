// 获取系统消息条
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pub/view.dart';

import '../../models/msg_struct.dart';

class ServiceNotifyPage extends StatefulWidget {
  static const name = "ServiceNotifyPage";
  ServiceNotifyPage({super.key});

  @override
  // ServiceNotifyPageState createState() => new ServiceNotifyPageState()..finfo = params["finfo"];
  ServiceNotifyPageState createState() => new ServiceNotifyPageState();
}

class ServiceNotifyPageState extends State<ServiceNotifyPage> {
  int msgCount = 0;
  int limit = 20;
  int offSet = 0;
  // FriendInfo finfo=FriendInfo();
  bool showMore = false; // 点击加号出来

  List<ChatPrivateData> lsPrivateMsg = [];
  late StreamSubscription<EventOnNetMsg> msgStreamSub;

  // 控制Listview
  var _scrollController = ScrollController();
  _controllerjumpTo() {
    Timer(Duration(milliseconds: 100), () {
      //List滑动到底部
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  void initState() {
    super.initState();

    log("我来了，初始化消息监听 ChatPrivateState");
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      // log('我是列表，我也通过消息总线接收到了消息 NetMsg ${event.pbMsg.pbName}');
      if (event.pbMsg.pbName == 'pb_pub.HeartBeat') {
        // log('--------我是列表，我也通过消息总线接收到了消息 NetMsg ${event.pbMsg.pbName}');
        return;
      }
      // 触发一个更新吧，触发到reducer去
      ShowMsgList();
    });

    ShowMsgList();
  }

  @override
  void dispose() {
    msgStreamSub.cancel();

    // 触发一个更新消息条数的通知
    // eventBus.fire(EventNotify()..eventNotifyType = EVENT_NOTIFY_TYPE.NEW_MSG_COUNT_CLEAR..data=widget.finfo.userInfo.imId);
    // _scrollController?.dispose();
    super.dispose();
  }

// todo 列表改造到独立widget，进行局部刷新，提高效率, 每个消息也一样，独立组件，自我收消息完成刷新，提高效率
  Widget buildMsgList(BuildContext context, int index) {
    if (lsPrivateMsg[index].isSplitLine) {
      return Container(
        child: Text(GetChatTime(lsPrivateMsg[index].msgTime)),
        alignment: Alignment.center,
      );
    }

    // 跟进消息类型构建不同面板
    return Container(
      child: Text("——☺——"),
      alignment: Alignment.center,
    );
  }

  Widget build(BuildContext context) {
    // 滚动到底部, 要在界面展示后才滚动，因此加个延时
    if (lsPrivateMsg.length > 0) _controllerjumpTo();
    var v = Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          elevation: 0,
          centerTitle: true,
          leading: const BackButton(
            color: Colors.black87,
          ),
          title: Row(
            children: [
              officialTag(),
              Container(
                margin: const EdgeInsets.only(left: 4),
                child: const Text(
                  "系统通知",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            if (showMore) {
              showMore = false;
              setState(() {
                log("set state");
              });
            }
          },
          child: Stack(
            children: [
              lsPrivateMsg.isEmpty
                  ?
                  // ? Container(
                  //     width: double.infinity,
                  //     height: double.infinity,
                  //     color: const Color.fromRGBO(244, 244, 244, 0),
                  //     child:
                  //   )
                  const Center(
                      child: Text("暂无消息"),
                    )
                  : Container(
                      child: Column(children: [
                      Expanded(
                        flex: 10,
                        child: ListView.builder(
                          itemCount: lsPrivateMsg.length,
                          shrinkWrap: true,
                          itemBuilder: buildMsgList,

                          // 控制滚动
                          scrollDirection: Axis.vertical,
                          controller: _scrollController,
                        ),
                      ),
                    ])),
            ],
          ),
        ));
    return v;
  }

  ///////////////////////////////////////////
  void ShowMsgList() {
    // 获取历史消息
    // todo 改造为db读取制作初始化进行，其他刷新不读，消息直接构造插入列表即可
    dbMsg
        ?.query(tbPrivateMsgTable,
            // where: "userId=? and friendId=?",
            // whereArgs:[AppUserInfo.instance.imId.toInt(), widget.finfo.userInfo.imId.toInt()]
            limit: limit,
            offset: offSet,
            orderBy: "msgTime desc")
        .then((value) {
      // log("---------------------get value my imid:${AppUserInfo.instance.imId.toInt()} friend imid:${widget.finfo.userInfo.imId.toInt()}:${value}");
      // 构建消息列表
      List<ChatPrivateData> lsCPData = <ChatPrivateData>[];
      late ChatPrivateData preData;
      for (var cpd in value) {
        log("${cpd}");
        var d = ChatPrivateData()..initWithMap(cpd);

        // log("msg:sn->${d.msgSn},msgTime->${d.msgTime},createTime->${d.createTime},imId->${d.srcId}");
        if (preData != null) {
          if (preData.msgTime.difference(d.msgTime).inMinutes > 2) {
            lsCPData.insert(
                0,
                ChatPrivateData()
                  ..isSplitLine = true
                  ..msgTime = preData.msgTime);
            // log("分割线，时间：${preData.msgTime}");
          }
        }

        lsCPData.insert(0, d);
        preData = d;

        if (d.srcId != AppUserInfo.instance.imId &&
            d.pbMsg.pbName != pbNameMsgReceipt &&
            d.msgStatus.value < MSG_STATE.READ.value) {
          // 已读通知
          sendReceiptMsg(d.pbMsg.pbCommData,
              state: MSG_STATE.END, beginTime: Int64(0));

          // todo 改造外服务端rsp收到再改状态
          DBUpdateMsgState(d.msgSn, MSG_STATE.READ,EnMsgFrom.local);
        }
      }
      if (lsCPData.length > 0) {
        lsCPData[lsCPData.length - 1].selected = true;
        if (preData != null) {
          lsCPData.insert(
              0,
              ChatPrivateData()
                ..isSplitLine = true
                ..msgTime = lsCPData.first.msgTime);
          // log("分割线，时间：${lsCPData.first.msgTime}");
        }
      }
      // log("set state", deap: 3);
      setState(() {
        lsPrivateMsg = lsCPData;
        // log("set state", deap: 0);
      });

      // 更新未读条数Config.chatTypePrivate
      // DBClearNewMsgCount(widget.finfo.userInfo.imId, Config.chatTypePrivate);
    });
  }

/////////////////////////////////
// 控制滚动
// void _scrollToKd() {
//   setState(() {
//     for (var item in lsPrivateMsg) {
//       if (item.msgSn == 11) {
//         item.selected = true;
//       } else {
//         item.selected = false;
//       }
//     }
//   });
// }
//
// void _scrollToKobe() {
//   setState(() {
//     for (var item in lsPrivateMsg) {
//       if (item.msgSn == 222) {
//         item.selected = true;
//       } else {
//         item.selected = false;
//       }
//     }
//   });
// }
// 控制滚动
//////////////////////////////////
}
