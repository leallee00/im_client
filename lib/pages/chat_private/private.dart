import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_8.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/pages/chat_private/call.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/chat_set.dart';
import 'package:quliao/pages/chat_private/private_input_widget.dart';
import 'package:quliao/pages/chat_private/wx_expression.dart';
import 'package:quliao/pb/pb_msg/call_scene/call_scene.pb.dart';
import 'package:quliao/pb/pb_msg/gate/gate.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';

import '../../models/msg_struct.dart';
import '../../pb/pb_pub/error_code.pbenum.dart';
import '../../pub/pub-def.dart';
import '../../pub/textButtonStyle.dart';
import 'chat_events.dart';

const double _ITEM_HEIGHT = 70.0;

class ChatPrivate extends StatefulWidget {
  static const name = "ChatPrivate";
  ChatPrivate({super.key,
  required this.finfo
  });

  final FriendInfo finfo;
  @override
  ChatPrivateState createState() => new ChatPrivateState();
}

Widget MakeChatMsgCard(ChatText chat, bool isMine){
  // log("msg type:${chat.chatType}");
  switch(chat.chatType){
    case TextChatType.TEXT:
      // return Text(
      //   chat.text,
      //   style: TextStyle(color:isMine?Colors.white:Colors.black),
      // );

      return ExpressionText(
        chat.text,
        TextStyle(color:isMine?Colors.white:Colors.black),
      );
    case TextChatType.PIC:
      return Image.network(chat.data);
    case TextChatType.VIDEO:
      return Text(
        "一个视频",
        style: TextStyle(color:isMine?Colors.white:Colors.black),
      );
    case TextChatType.AUDIO:
      return Text(
        "一个音频",
        style: TextStyle(color:isMine?Colors.white:Colors.black),
      );
    case TextChatType.GIFT:
      return Image.network(chat.data);
    case TextChatType.PACT:// 合同
      log("合同消息 data: ${chat.data} text: ${chat.text}");
      return Text(
        "一个猫咖合同",
        style: TextStyle(color:isMine?Colors.white:Colors.black),
      );
    case TextChatType.VIDEO_INVITE:
      return Text(
        "一个视频邀请",
        style: TextStyle(color:isMine?Colors.white:Colors.black),
      );

    case TextChatType.CUSTOMIZE:
      // 需要自己处理
      return Text(
        "一个自定义消息",
        style: TextStyle(color:isMine?Colors.white:Colors.black),
      );
  }

  return Text(
    "未知消息",
    style: TextStyle(color:isMine?Colors.red:Colors.black),
  );
}

class ChatPrivateState extends State<ChatPrivate> {
  int msgCount = 0;
  int limit = 20;
  int offSet = 0;
  bool showMore = false; // 点击加号出来
  bool showEmoji = false; // 是否展示表情

  /// 私聊消息
  List<ChatPrivateData> lsPrivateMsg = <ChatPrivateData>[];
  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();

  /// 局部刷新
  GlobalKey<PrivateInputState> globalKey = GlobalKey();

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
    _initHandleMsg();
    log("ChatPrivateState init 完成");
  }

  Future<void> _initHandleMsg() async {
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) async {
      // log('我是列表，我也通过消息总线接收到了消息 NetMsg ${event.pbMsg.pbName}');
      if (event.pbMsg.pbName == 'pb_pub.HeartBeat') {
        // log('--------我是列表，我也通过消息总线接收到了消息 NetMsg ${event.pbMsg.pbName}');
        return;
      }

      if (event.pbMsg.pbCommData.groupId > 0){
        // log("get msg:${event.pbMsg.pbName} with group:${event.pbMsg.pbCommData.groupId} not my group:${widget.groupId}");
        // 不是我的消息， 直接返回
        return;
      }

      // log("获得一个消息:${event.pbMsg.pbName} groupid:${event.pbMsg.pbCommData.groupId} msgsn:${event.pbMsg.pbCommData.msgSn} is me send:${event.pbMsg.pbCommData.srcId==AppUserInfo().imId} ");
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        log("get a err msg  code:${event.pbMsg.errCode} desc:${event.pbMsg.errDesc} ${event.pbMsg}");
        showToast("code:${event.pbMsg.errCode} desc:${event.pbMsg.errDesc}");
        return;
      }

      // log("------------------get one group msg:${event.pbMsg.pbName}");

      // ShowMsgList();
      //
      // 更新未读条数Config.chatTypePrivate
      log("获得消息 ${event.pbMsg.pbName} ${event.pbMsg.pbCommData.msgSn} ${event.pbMsg.pbCommData.srcId}->${event.pbMsg.pbCommData.aimId} 派发处理");
      var result = await msgHandlerMgr.onMsg(event.pbMsg,event.enMsgFrom);
      if (result) {
        log("回调处理消息 ${event.pbMsg.pbName} 成功!! 清理一下新消息条数");
        DBClearNewMsgCount(widget.finfo.userInfo.imId, CHAT_TYPE.PRIVATE);
      }

    });

    // 注册消息处理句柄
    msgHandlerMgr.RegMsgHandler(
        ChatText(), (GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
      if (msg is ChatText) {
        log("得到一个chatText，添加进列表");
        // 把消息加入消息列表
        _addMsgToList(ChatPrivateData()..initWithPbMsg(pbMessage));
      }
      return true;
    });

    // 注册消息处理句柄
    msgHandlerMgr.RegMsgHandler(
        MsgReceipt(), (GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
          if (pbMessage.pbCommData.srcId == AppUserInfo().imId){
            // 自己发的不需处理
            return false;
          }
      if (msg is MsgReceipt) {
        bool needRefresh = false;
        log("得到一个确认消息，更新数据");
        // 找到消息并变更状态
          lsPrivateMsg.forEach((element) {
            // log("$element");
            if (!element.isSplitLine && element.msgSn == pbMessage.pbCommData.msgSn){
              if (element.msgStatus.value < msg.state.value){
                log("找到对应消息，并需要修改状态，${element.msgStatus}->${msg.state}");
                element.msgStatus = msg.state;
                needRefresh = true;
              }
            }
          }
          );

        // _addMsgToList(ChatPrivateData()..initWithPbMsg(pbMessage));
        if (needRefresh){
          setState(() {

          });
        }
      }
      return true;
    });

    DBClearNewMsgCount(widget.finfo.userInfo.imId, CHAT_TYPE.PRIVATE);

    // 获取本地群消息
    LoadMsgList();
  }

    @override
  void dispose() {
    msgStreamSub.cancel();

    // 触发一个更新消息条数的通知
    eventBus.fire(EventMsgCountClear()
      ..imId = widget.finfo.userInfo.imId);
    // eventBus.fire(EventNotify()..eventNotifyType = EVENT_NOTIFY_TYPE.NEW_MSG_COUNT_CLEAR..data=widget.finfo.userInfo.imId);
    _scrollController?.dispose();
    super.dispose();
  }

  // todo 列表改造到独立widget，进行局部刷新，提高效率, 每个消息也一样，独立组件，自我收消息完成刷新，提高效率
  Widget buildMsgList(BuildContext context, int index) {
    if (lsPrivateMsg[index].isSplitLine) {
      return Container(child: Text(GetChatTime(lsPrivateMsg[index].msgTime)),
        alignment: Alignment.center,);
    }

    // var pbMsg = PBMessage()
    //   ..mergeFromBuffer(lsPrivateMsg[index].pbData);
    ChatText cmsg = lsPrivateMsg[index].pbServiceMsg! as ChatText;//ChatText.fromBuffer(lsPrivateMsg[index].pbMsg.pbData);
    // log("show msg:${cmsg.text} of index[$index]");
    // log("1pbMsg.pbCommData.srcId:${pbMsg.pbCommData.srcId} == AppUserInfo().imId:${AppUserInfo().imId}");
    if (lsPrivateMsg[index].pbMsg.pbCommData.srcId == AppUserInfo().imId) {
      // log("2pbMsg.pbCommData.srcId:${pbMsg.pbCommData.srcId} == AppUserInfo().imId:${AppUserInfo().imId}");
      // 自己
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("${GetMsgState(lsPrivateMsg[index].msgStatus)}",
            style: TextStyle(fontSize: 12),),
          ChatBubble(
            clipper: ChatBubbleClipper8(type: BubbleType.sendBubble),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 20),
            backGroundColor: cmsg.chatType == TextChatType.TEXT
                ? Colors.blue
                : Colors.white,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery
                    .of(context)
                    .size
                    .width * 0.7,
              ),
              // child: Text(
              //   cmsg.text,
              //   style: TextStyle(color: Colors.white),
              // ),
              child: MakeChatMsgCard(cmsg, true),
            ),
          ),
        ],
      );
    } else {
      // 是别人
      return ChatBubble(
        clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
        backGroundColor: cmsg.chatType == TextChatType.TEXT
            ? Color(0xffE7E7ED)
            : Colors.white,
        margin: EdgeInsets.only(top: 20),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery
                .of(context)
                .size
                .width * 0.7,
          ),
          // child: Text(
          //   cmsg.text,
          //   style: TextStyle(color: Colors.black),
          // ),
          child: MakeChatMsgCard(cmsg, false),
        ),
      );
    }
  }

  TextEditingController msgInputCtl = TextEditingController();
  FocusNode msgInputFocus = FocusNode();
  bool sendButtonIsShow = false; // 控制是否显示发送按钮

  // void changeSendButton()async{
  //   setState(() {
  //
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    // 滚动到底部, 要在界面展示后才滚动，因此加个延时
    if (lsPrivateMsg.length > 0)
      _controllerjumpTo();

    var v = Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black87,
          ),
          backgroundColor: Colors.white54,
          elevation: 0,
          centerTitle: true,
          title: Text(
            '${widget.finfo.userInfo.nickName}',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          //${state.msgCount}
          actions: [
            IconButton(
              icon: Icon(Icons.more_horiz),
              color: Colors.black87,
              onPressed: () {
                // 打开添加朋友页面
                Navigator.push(
                    context, MaterialPageRoute(builder: (BuildContext context) {
                  return ChatSet(finfo: widget.finfo);
                }));
              },
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            msgInputFocus.unfocus();
            // log("lala");
            if (showMore) {
              showMore = false;
              setState(() {
                log("set state");
              });
            }
            if (showEmoji) {
              showEmoji = false;
              setState(() {
                log("set state");
              });
            }
          },
          child:
          Stack(
            children: [
              /// test
              PrivateInputWidget(globalKey, (){
                return Text(msgInputCtl.text);
              }),
              // Image.file(File(widget.finfo.userInfo.fpMsgSet.backPic),fit: BoxFit.fitWidth,),
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: widget.finfo.fpMsgSet.backPic == "" ? Text("") : Image
                    .memory(base64.decode(widget.finfo.fpMsgSet.backPic), fit: BoxFit.cover,),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black12,
                child: Text(""),
              ),
              Container(
                  color: Colors.white70,
                  child:
                  Column(
                      children: [
                        Expanded(
                          flex: 10,
                          child:
                          ListView.builder(
                            itemCount: lsPrivateMsg.length,
                            shrinkWrap: true,
                            itemBuilder: buildMsgList,

                            // 控制滚动
                            scrollDirection: Axis.vertical,
                            controller: _scrollController,

                          ),
                        ),
                        Offstage(
                          offstage: showMore,
                          // child: Expanded(
                          child:
                          Container(
                            color: Colors.white70,
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        5, 0, 5, 0),
                                    alignment: Alignment.center,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.white, width: 0),
                                        borderRadius: BorderRadius.circular(
                                            3.0)),
                                    child: TextFormField(
                                      focusNode: msgInputFocus,
                                      controller: msgInputCtl,
                                      decoration: const InputDecoration.collapsed(
                                          hintText: '说点什么',
                                          hintStyle: TextStyle(
                                              color: Colors.black38)),
                                      onChanged: (value){
                                        // log("value.isNotEmpty=${value.isNotEmpty} && sendButtonIsShow=${sendButtonIsShow}");
                                        /// todo 改成局部刷新，提高效率
                                        if (value.isNotEmpty==true && sendButtonIsShow==false){
                                          sendButtonIsShow = true;
                                          setState(() {

                                          });
                                          // changeSendButton();
                                        }else if (value.isEmpty==true && sendButtonIsShow==true){
                                          sendButtonIsShow = false;
                                          setState(() {

                                          });
                                          // changeSendButton();
                                        }

                                        /// 局部刷新, 不刷新输入框应该就可以
                                        // globalKey.currentState?.update();

                                        // log("value.isNotEmpty=${value.isNotEmpty} && sendButtonIsShow=${sendButtonIsShow}");
                                        // msgInputCtl.
                                        // log("$value + ${msgInputCtl.text.isEmpty}");
                                        // setState(() {
                                        //
                                        // });

                                      },
                                    ),
                                  ),
//                                     TextField(
//                                       autofocus: false,
//                                       decoration: InputDecoration(
// //                                labelText: "呵呵",
//                                         hintText: "说点什么吧",
//                                       ),
//                                       controller: msgInputCtl,
//                                       focusNode: msgInputFocus,
//                                       onChanged: (value) {
//                                         setState(() {
//
//                                         });
//                                       },
//                                     ),
                                ),
                                const SizedBox(width: 5,),
                                IconButton(
                                  icon: const Icon(
                                    Icons.tag_faces, color: Colors.black87,),
                                  onPressed: () async {
                                    showEmoji = !showEmoji;
                                    setState(() {
                                      log("set state");
                                    });
                                    // SendImageMsg(widget.finfo.imId);
                                  },
                                ),
                                //msgInputCtl.text.isEmpty
                                !sendButtonIsShow ? IconButton(
                                  icon: const Icon(Icons.add_circle_outline,
                                    color: Colors.black87,),
                                  onPressed: () async {
                                    showMore = !showMore;
                                    showEmoji = false;
                                    setState(() {
                                      log("set state");
                                    });
                                    // SendImageMsg(widget.finfo.imId);
                                  },
                                ) : TextButton(
                                  style: GetTextButtonStyle(),
                                  onPressed: () {
                                    if (msgInputCtl.text.isEmpty) {
                                      showToast("还没有输入任何信息");
                                      return;
                                    }
                                    // // 发送消息
                                    sendTextMsg(
                                        widget.finfo.userInfo.imId.toInt(),
                                        msgInputCtl.text);
                                    // 重置输入框
                                    showEmoji = false;
                                    msgInputCtl.text = "";
                                    sendButtonIsShow = false;
                                    setState(() {

                                    });
                                    // msgInputCtl.clear();
                                    // msgInputFocus.unfocus();
                                  },
                                  child: const Text("发送"),
                                ),
                                const SizedBox(width: 5,),
                              ],
                            ),
                          ),
                          // ),
                        ),
                        Offstage(
                          offstage: !showEmoji,
                          child: Container(
                            height: 200,
                            child: WeChatExpression((Expression expression) {
                              msgInputCtl.text = msgInputCtl.text +
                                  '[${expression.name}]';

                              setState(() {

                              });
                            }),
                          ),
                        ),
                        Offstage(
                            offstage: !showMore,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.photo),
                                  onPressed: () {
                                    SendImageMsg(widget.finfo.userInfo.imId, context);
                                    showMore = false;
                                    setState(() {
                                      log("set state");
                                    });
                                    log("发送图片");
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.voice_chat),
                                  onPressed: () {
                                    // 发起语音通话
                                    log("发起一个语音通话");
                                    showMore = false;
                                    setState(() {
                                      log("set state");
                                    });
                                  },
                                ),

                                IconButton(icon: Icon(Icons.video_call),
                                  onPressed: () {
                                    // 发起视频通话
                                    log("发起一个视频通话");
                                    showMore = false;
                                    setState(() {
                                      log("set state");
                                    });

                                    // 切换到视频通话界面
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return CallPage(
                                            callType: CALL_TYPE.CALL_TYPE_VIDEO,
                                            caller: Int64(
                                                AppUserInfo.instance.imId),
                                            callee: Int64(
                                                widget.finfo.userInfo.imId));
                                      },));
                                  },),
                              ],
                            )
                        ),
                      ]
                  )
              ),
            ],),

        )
    );
    return v;
  }

  Future<void> _addMsgToList(ChatPrivateData cpData, {bool freshView = true}) async {
    log("msg state=${cpData.msgStatus.value} ${GetMsgState(
        cpData.msgStatus)} sn:${cpData.msgSn} ${(cpData
        .pbServiceMsg as ChatText).text}");

    // 先找到位置
    if (lsPrivateMsg.isEmpty) {
      lsPrivateMsg.add(cpData);
    }
    else {
      // var tmpMsg = lsPrivateMsg.last;
      // 倒序遍历，更容易找到
      var i = lsPrivateMsg.length - 1;
      for (; i >= 0; i --) {
        if (cpData.msgTime.microsecondsSinceEpoch >=
            lsPrivateMsg[i].msgTime.microsecondsSinceEpoch) {
          // 找到了
          break;
        }
      }

      if (i == -1) {
        // 没有找到
        // 看看后面要不要加分割线
        if (!lsPrivateMsg.first.isSplitLine && lsPrivateMsg.first.msgTime
            .difference(cpData.msgTime)
            .inMinutes > 2) {
          lsPrivateMsg.insert(0, ChatPrivateData()
            ..isSplitLine = true
            ..msgTime = lsPrivateMsg.first.msgTime);
        }
        // 放到最前面
        lsPrivateMsg.insert(0, cpData);
        i = 0;
      }
      else if (i == lsPrivateMsg.length - 1) {
        // 放到最后面
        if (!lsPrivateMsg.last.isSplitLine && lsPrivateMsg.last.msgTime
            .difference(cpData.msgTime)
            .inMinutes > 2) {
          lsPrivateMsg.add(ChatPrivateData()
            ..isSplitLine = true
            ..msgTime = lsPrivateMsg.last.msgTime);
        }
        lsPrivateMsg.add(cpData);
        i ++;
      }
      else {
        //在中间部分
        // 看看前面要不要加分割线
        if (!lsPrivateMsg[i].isSplitLine && lsPrivateMsg[i].msgTime
            .difference(cpData.msgTime)
            .inMinutes > 2) {
          lsPrivateMsg.insert(i + 1, ChatPrivateData()
            ..isSplitLine = true
            ..msgTime = lsPrivateMsg.last.msgTime);
          i ++;
        }
        lsPrivateMsg.insert(i + 1, cpData);
        i++;
        // 看看后面要不要加分割线
        if (!lsPrivateMsg[i + 1].isSplitLine && lsPrivateMsg[i + 1].msgTime
            .difference(cpData.msgTime)
            .inMinutes > 2) {
          lsPrivateMsg.insert(i + 1, ChatPrivateData()
            ..isSplitLine = true
            ..msgTime = lsPrivateMsg.last.msgTime);
        }
      }

      lsPrivateMsg[i].selected = true;
    }
    if (cpData.srcId != AppUserInfo.instance.imId
        && cpData.pbMsg.pbName != pbNameMsgReceipt
        && cpData.msgStatus.value < MSG_STATE.READ.value) {
      // 已读通知
      sendReceiptMsg(
          cpData.pbMsg.pbCommData, state: MSG_STATE.READ, beginTime: Int64());

      // todo 改造外服务端rsp收到再改状态
      cpData.msgStatus = MSG_STATE.READ;
      DBUpdateMsgState(cpData.msgSn, MSG_STATE.READ,EnMsgFrom.local);
    }
    // }
    // if (lsCPData.length > 0) {
    // lsPrivateMsg.last.selected = true;
    // if (preData != null) {
    //   lsCPData.insert(0, ChatPrivateData()
    //     ..isSplitLine = true
    //     ..msgTime = lsCPData.first.msgTime);
    //   // log("分割线，时间：${lsCPData.first.msgTime}");
    // }
    if (freshView) {
      setState(() {
        // 刷新
      });
    }
  }
  // }

  ///////////////////////////////////////////
  void LoadMsgList() async {
    // 获取历史消息
    // todo 改造为db读取制作初始化进行，其他刷新不读，消息直接构造插入列表即可
    dbMsg?.query(tbPrivateMsgTable,
        // where: "userId=? and friendId=?",
        // whereArgs:[AppUserInfo.instance.imId.toInt(), widget.finfo.userInfo.imId.toInt()],
        where: "friendId=?",
        whereArgs: [
          widget.finfo.userInfo.imId.toInt()
        ],
        limit: limit,
        offset: offSet,
        orderBy: "msgTime desc").then((value) async {
      log("---------------------get value my imid:${AppUserInfo.instance.imId
          .toInt()} friend imid:${widget.finfo.userInfo.imId
          .toInt()}:${value}");
      // 构建消息列表
      // List<ChatPrivateData> lsCPData = <ChatPrivateData>[];
      // ChatPrivateData? preData;
      for (var cpd in value) {
        // log("${cpd}");
        var d = ChatPrivateData()
          ..initWithMap(cpd);
        log("从数据库加载的消息:${(d.pbServiceMsg as ChatText).text} 是否自己发的:${d.srcId == AppUserInfo().imId}");
        await _addMsgToList(d,freshView:false);
        // preData = d;
        // log("===================msg state=${d.msgStatus.value} ${GetMsgState(d.msgStatus)} sn:${d.msgSn}");
        // // log("msg:sn->${d.msgSn},msgTime->${d.msgTime},createTime->${d.createTime},imId->${d.srcId}");
        // if (preData != null) {
        //   if (preData.msgTime
        //       .difference(d.msgTime)
        //       .inMinutes > 2) {
        //     lsCPData.insert(0, ChatPrivateData()
        //       ..isSplitLine = true
        //       ..msgTime = preData.msgTime);
        //     // log("分割线，时间：${preData.msgTime}");
        //   }
        // }
        //
        // lsCPData.insert(0, d);
        // preData = d;
        //
        // if (d.srcId != AppUserInfo.instance.imId
        //     && d.pbMsg.pbName != pbNameMsgReceipt
        //     && d.msgStatus.value < MSG_STATE.READ.value) {
        //   // 已读通知
        //   sendReceiptMsg(d.pbMsg.pbCommData, state: MSG_STATE.READ, beginTime: Int64());
        //
        //   // todo 改造外服务端rsp收到再改状态
        //   d.msgStatus = MSG_STATE.READ;
        //   DBUpdateMsgState(d.msgSn, MSG_STATE.READ);
        // }

      }
      // if (lsPrivateMsg.length > 0) {
      //   lsPrivateMsg.last[lsPrivateMsg.length - 1].selected = true;
      //   if (preData != null) {
      //     lsPrivateMsg.insert(0, ChatPrivateData()
      //       ..isSplitLine = true
      //       ..msgTime = lsPrivateMsg.first.msgTime);
      //     // log("分割线，时间：${lsCPData.first.msgTime}");
      //   }
      // }
      setState(() {
        // lsPrivateMsg = lsCPData;
      });

      // 更新未读条数Config.chatTypePrivate
      DBClearNewMsgCount(widget.finfo.userInfo.imId, CHAT_TYPE.PRIVATE);
    });
  }
}