import 'dart:async';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_8.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/call.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/chat_private/wx_expression.dart';
import 'package:quliao/pb/pb_msg/call_scene/call_scene.pb.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/pub/pub-def.dart';

import '../../pub/textButtonStyle.dart';

const double _ITEM_HEIGHT = 70.0;

String GetGroupMsgStateName(MSG_STATE state) {
  // log("GetGroupMsgStateName->${state}");
  switch (state) {
    case MSG_STATE.INIT:
      return "发送中";
    case MSG_STATE.FAULT:
      return "发送失败";
    case MSG_STATE.SEND:
      return "已发";
    case MSG_STATE.RECEIVED:
      return "部分已收";
    case MSG_STATE.READ:
      return "部分已读";
    case MSG_STATE.END:
      return "全部已读";
    case MSG_STATE.IN_BLACK_LIST:
      return "限制发送";
    case MSG_STATE.FAULT:
      return "发送失败";
  }
  return "未知";
}

class ChatGroup extends StatefulWidget {
  static String name = "ChatGroup";
  ChatGroup({required this.groupId});

  Int64 groupId;

  @override
  ChatGroupState createState() => new ChatGroupState();
}

int i = 0;

class ChatGroupState extends State<ChatGroup> {
  // Int64 groupId;
  int msgCount = 0;
  int limit = 20;
  int offSet = 0;
  GroupInfo ginfo = GroupInfo();
  bool showMore = false; // 点击加号出来
  bool showEmoji = false; // 是否展示表情

  // 当jmpMsgCount不等于rcvMsgCount时跳转
  int jmpMsgCount = 0;
  int rcvMsgCount = 0;

  // List<ChatGroupData> lsGroupMsg = List<ChatGroupData>();
  // 控制Listview
  var _scrollController = new ScrollController();

  _controllerjumpTo() {
    Timer(Duration(milliseconds: 100), () {
      //List滑动到底部
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  PBCommData getPbCommData() {
    return MakePBCommData(
        aimId: widget.groupId,
        groupId: widget.groupId,
        toService: Service.group);
  }

  var isLoading = false;

  @override
  void initState() {
    super.initState();

    log("进入群${widget.groupId}");
    ginfo.groupId = widget.groupId;

    _scrollController.addListener(() {
      // 滑动到底部的判断
      if (!isLoading &&
          _scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent) {
        log("到底部了，加载更多");
        // 开始加载数据
        // setState(() {
        //   this.isLoading = true;
        //   this.loadMoreData();//加载数据
        // });
      }
    });

    // 处理网络消息
    _initHandleMsg();

    // ginfo.groupId = groupId;
    // ginfo.name = "测试群${groupId}";

    // log("我来了，初始化消息监听 ChatGroupState");
    // msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
    //   log('我是列表，我也通过消息总线接收到了消息 NetMsg ${event.pbMsg.pbName}');
    //   // 触发一个更新吧，触发到reducer去
    //   ShowMsgList();
    // });
  }

  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();
  var pbNameMsgReceipt = MsgReceipt().info_.qualifiedMessageName;
  // 消息处理句柄
  void _initHandleMsg() {
    // 获取群成员
    // 打开列表的时候再获取

    // 获取本地群消息
    ShowMsgList();
    DBClearNewMsgCount(widget.groupId.toInt(), CHAT_TYPE.GROUP);

    // 获取群离线

    // 注册消息回调
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      if (event.pbMsg.pbCommData.groupId != widget.groupId) {
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
      DBClearNewMsgCount(widget.groupId.toInt(), CHAT_TYPE.GROUP);
      var result = msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);

      // 已读标志
      if (event.pbMsg.pbName != pbNameMsgReceipt &&
          result == true &&
          event.pbMsg.pbCommData.srcId != AppUserInfo.instance.imId) {
        log(" 回执状态: ${MSG_STATE.READ} 为消息 sn:${event.pbMsg.pbCommData.srcId} name:${event.pbMsg.pbName} :srcId：${event.pbMsg.pbCommData.srcId} myId:${AppUserInfo.instance.imId} 发送的回执 ");
        sendReceiptMsg(event.pbMsg.pbCommData,
            state: MSG_STATE.READ, beginTime: Int64());

        // 更新数据
        // DBUpdateFriendGroupMsgState(event.pbMsg.pbCommData.msgSn, MSG_STATE.READ);
      }

      // if (result) {
      //   log("${event.pbMsg.pbName} 处理成功 ！！！！！！！！！！");
      // }else{
      //   log("${event.pbMsg.pbName} 处理失败 ！！！！！！！！！！ ");
      // }

      // if (event.pbMsg.pbName != )
      // // 刷新一下界面
      // setState(() {});

      // 这里处理了以后就是已读了
      // 如果需要回执就回一个
      // if (pbMsg.pbCommData.needReadReceipt && pbMsg.pbCommData.srcId != AppUserInfo.instance.imId) {
      //   log("网络层发送已收回执，收到的消息:sn->${pbMsg.pbCommData.msgSn} name->${pbMsg.pbName} Receipt state->${MSG_STATE.RECEIVED}");
      //   sendReceiptMsg(pbMsg.pbCommData, beginTime: Int64(0), state:MSG_STATE.RECEIVED);
      // }
      //
      // // 已读标志
      // if (d.pbHeadMsg.pbCommData.srcId != AppUserInfo.instance.imId
      //     && d.msgStatus.value < MSG_STATE.READ.value) {
      //   sendReceiptMsg(d.pbHeadMsg.pbCommData, state: MSG_STATE.READ,
      //       beginTime: Int64());
    });

    // 发送初始化消息
    // 获取群信息， 请求服务器
    Client.instance.sendMsg(GroupDetailReq(), widget.groupId, getPbCommData());

    // 注册消息处理句柄
    msgHandlerMgr.RegMsgHandler(GroupChat(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      if (msg is GroupChat) {
        // 把消息加入消息列表
        // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
        _addMsgToList(pbMessage);
      }
      return true;
    });

    msgHandlerMgr.RegMsgHandler(GroupDetailRsp(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      if (msg is GroupDetailRsp) {
        // 把消息加入消息列表
        ginfo.name = msg.name;
        ginfo.notice = msg.notice;
        ginfo.ownerId = msg.ownerId;

        setState(() {});
      }
      return true;
    });

    msgHandlerMgr.RegMsgHandler(InviteReq(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });
    msgHandlerMgr.RegMsgHandler(InviteAnswerReq(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(MembersRsp(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      if (msg is MembersRsp) {
        // 把消息加入消息列表
        setState(() {});
      }
      return true;
    });

    msgHandlerMgr.RegMsgHandler(MemberDetailRsp(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      if (msg is MemberDetailRsp) {
        // 把消息加入消息列表
        setState(() {});
      }
      return true;
    });

    msgHandlerMgr.RegMsgHandler(MsgReceipt(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      if (msg is MsgReceipt) {
        if (isMySendMsg(pbMessage.pbCommData.srcId) &&
            msg.state == MSG_STATE.END) {
          // 自己的回执消息，不改变
          return false;
        }

        for (var item in ginfo.lstMsg) {
          if (item.pbHeadMsg.pbCommData.msgSn == pbMessage.pbCommData.msgSn) {
            if (item.msgStatus.value < msg.state.value) {
              if (isMySendMsg(pbMessage.pbCommData.srcId)) {
                log("msg state change from :${item.msgStatus} to ${msg.state} ${AppUserInfo().imId} ${pbMessage.pbCommData.srcId}");
                item.msgStatus = msg.state;
              } else {
                var str = pbMessage.pbCommData.exp["GROUP_MSG_STATUS"];
                if (str != null && str.isNotEmpty) {
                  item.msgStatus = MSG_STATE.valueOf(int.parse(str))!;
                  log("msg state change from :${item.msgStatus} to ${MSG_STATE.valueOf(int.parse(str))!} ${AppUserInfo().imId} ${pbMessage.pbCommData.srcId}");
                }
              }
            }
            // 根据确认设置消息状态
            setState(() {});
            break;
          }
        }
      }
      return true;
    });

    msgHandlerMgr.RegMsgHandler(NameChangeNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      if (msg is NameChangeNotify) {
        // 根据确认设置消息状态
        ginfo.name = msg.name;
        // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
        _addMsgToList(pbMessage);
      }
      return true;
    });

    msgHandlerMgr.RegMsgHandler(GroupChat(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // var cd = ChatGroupData();
      // cd.initWithPBMsg(pbMessage).then((value){
      //   _addMsgToList(cd);
      //   setState(() {
      //   });
      // });
      _addMsgToList(pbMessage);
      return true;
    });
    msgHandlerMgr.RegMsgHandler(GroupEmoticon(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });
    msgHandlerMgr.RegMsgHandler(GroupMedia(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });
    msgHandlerMgr.RegMsgHandler(GroupGift(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(QuitRsp(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });
    msgHandlerMgr.RegMsgHandler(GroupDisbandedNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(QuitNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(NoticeChangeNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(AddAdminsNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(RemoveAdminsNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(RemarkChangeNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    // msgHandlerMgr.RegMsgHandler(
    // BanGroupsReq(), (GeneratedMessage msg, PBMessage pbMessage) {
    // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
    // return true;
    // });

    msgHandlerMgr.RegMsgHandler(GroupBannedNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(GroupUnbannedNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(BanMemberNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(UnbanMemberNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });

    msgHandlerMgr.RegMsgHandler(GroupTransferNotify(),
        (GeneratedMessage msg, PBMessage pbMessage,EnMsgFrom enMsgFrom) {
      // _addMsgToList(ChatGroupData()..initWithPBMsg(pbMessage));
      _addMsgToList(pbMessage);
      return true;
    });
  }

  // void _addMsgToList(ChatGroupData msg){
  void _addMsgToList(PBMessage pbMessage) {
    for (var item in ginfo.lstMsg) {
      log("add to list catchsn:${item.pbHeadMsg.pbCommData.msgSn} getsn:${pbMessage.pbCommData.msgSn}");
      if (item.pbHeadMsg.pbCommData.msgSn == pbMessage.pbCommData.msgSn) {
        // 已经有一个了，不再加入
        log("已经有一个了，不再加入");
        return;
      }
    }

    log("222222222222222222_addMsgToList of pbmsgsn=${pbMessage.pbCommData.msgSn}",
        deep: 2);
    var msg = ChatGroupData();
    msg.initWithPBMsg(pbMessage); //.then((value) {
    GetUserInfo(pbMessage.pbCommData.srcId.toInt()).then((value) {
      msg.uinfo = value;
    });
    log("add msg :${msg.pbHeadMsg.pbCommData.msgSn} to list");
    ginfo.lstMsg.add(msg);
    rcvMsgCount++;
    // if (needRefresh) {
    // setState(() {});
    // }
    // });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();

    log("----------------------释放窗口 ChatListState");
    msgStreamSub.cancel();
  }

  Widget createWithGMsg(ChatGroupData gmsg, bool isMine) {
    // log("show msg ${gmsg.pbHeadMsg.pbName}");
    var msg = gmsg.pbDataMsg;
    if (msg is CreateGroupReq) {
      return Text("abc 邀请 ${msg.name} 加入群聊 ");
    } else if (msg is GroupChat) {
      // return Text(msg.text);
      return ExpressionText(
        msg.text,
        TextStyle(color: isMine ? Colors.white : Colors.black),
      );
    } else if (msg is GroupEmoticon) {
      // 展示表情
      return Text("一个表情", style: TextStyle(color: Colors.black));
    } else if (msg is GroupMedia) {
      // 展示媒体
      return Text("一个媒体");
    } else if (msg is GroupGift) {
      // 展示图片
      return Text("一个图片");
    } else if (msg is InviteReq) {
      var info = "${gmsg.pbHeadMsg.pbCommData.srcId} 邀请 ";
      msg.inviteeIds.forEach((element) {
        info += "${element} ";
      });
      info += "进入群聊";

      return Text(info);
    } else if (msg is InviteAnswerReq) {
      //
      return Text(
          "${gmsg.pbHeadMsg.pbCommData.srcId} 由${gmsg.pbHeadMsg.pbCommData.aimId} 邀请入群");
    } else if (msg is NameChangeNotify) {
      //////// 群名称变更通知
      /// NameChangeNotify
      ginfo.name = msg.name;
      return Text("${gmsg.pbHeadMsg.pbCommData.srcId}将群名称更改为:${msg.name}");
      // }else if(msg is NoticeChangeNotify) {
      //   /// NoticeChangeNotify
      //   ginfo.notice = msg.notice;
      //   return Text("${gmsg.pbHeadMsg.pbCommData.srcId}发布了群公告:${msg.notice}");
    } else if (msg is AddAdminsNotify) {
      ///AddAdminsNotify
      return Text("${gmsg.pbHeadMsg.pbCommData.srcId}将${msg.memberIds} 设置为管理员");
    } else if (msg is RemoveAdminsNotify) {
      /// RemoveAdminsNotify
      return Text("${gmsg.pbHeadMsg.pbCommData.srcId}收回${msg.memberIds}的管理员权限");
    } else if (msg is GroupTransferNotify) {
      /// GroupTransferNotify
      return Text("${gmsg.pbHeadMsg.pbCommData.srcId}将群主转让给${msg.ownerId}");
    } else if (msg is GroupDisbandedNotify) {
      ///GroupDisbandedNotify
      return Text("${gmsg.pbHeadMsg.pbCommData.srcId}将群解散了");
    } else if (msg is QuitNotify) {
      return Text("${gmsg.pbHeadMsg.pbCommData.srcId}退出了群");
    } else if (msg is BanMemberNotify) {
      return Text(
          "${gmsg.pbHeadMsg.pbCommData.srcId}将${gmsg.pbHeadMsg.pbCommData.aimId}关进小黑屋");
    } else if (msg is UnbanMemberNotify) {
      return Text(
          "${gmsg.pbHeadMsg.pbCommData.srcId}将${gmsg.pbHeadMsg.pbCommData.aimId}从小黑屋请了出来");
    } else if (msg is KickoutReq) {
      return Text(
          "${gmsg.pbHeadMsg.pbCommData.srcId}将${gmsg.pbHeadMsg.pbCommData.aimId}请出了房间");
    } else if (msg is QuitReq) {
      // return Text("您退出了房间");
    } else if (msg is QuitRsp) {
      return Text("您退出了群");
    } else if (msg is NoticeChangeNotify) {
      return Column(
        children: [
          Text("${gmsg.pbHeadMsg.pbCommData.srcId} 修改了公告"),
          Card(
            child: Wrap(
              children: [
                Text("${msg.notice}"),
              ],
            ),
          ),
        ],
      );
    } else if (msg is NameChangeNotify) {
      return Text("${gmsg.pbHeadMsg.pbCommData.srcId} 把群名称改为 ${msg.name}");
    } else if (msg is RemarkChangeNotify) {
      if (gmsg.pbHeadMsg.pbCommData.srcId == gmsg.pbHeadMsg.pbCommData.aimId) {
        // 自己改的
        return Text("${gmsg.pbHeadMsg.pbCommData.srcId} 更改名称为 ${msg.remark}");
      } else {
        // 别人改的
        return Text(
            "${gmsg.pbHeadMsg.pbCommData.srcId} 更改 ${gmsg.pbHeadMsg.pbCommData.aimId} 的群名称为 ${msg.remark}");
      }
    } else if (msg is GroupBannedNotify) {
      // 被封禁
      return Text("${gmsg.pbHeadMsg.pbCommData.srcId} 封禁了该群");
    } else if (msg is GroupUnbannedNotify) {
      return Text("${gmsg.pbHeadMsg.pbCommData.srcId} 解禁了该群");
    }

    return Text("未知消息:${gmsg.pbHeadMsg.pbName}");
  }

// todo 列表改造到独立widget，进行局部刷新，提高效率, 每个消息也一样，独立组件，自我收消息完成刷新，提高效率
  Widget buildMsgList(BuildContext context, int index) {
    var msg = ginfo.lstMsg[index];
    // log("++++++++ build index:${index} sn:${msg.pbHeadMsg.pbCommData.msgSn}, status:${msg.msgStatus}");
    bool isOwner = msg.pbHeadMsg.pbCommData.srcId == AppUserInfo.instance.imId;
    if (ginfo.lstMsg.length > 0 && jmpMsgCount != rcvMsgCount) {
      _controllerjumpTo();
      jmpMsgCount = rcvMsgCount;
    }

    if (isOwner) {
      // 自己
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(flex: 1),
            Expanded(
              // flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    GetGroupMsgStateName(msg.msgStatus),
                    style: const TextStyle(fontSize: 8),
                  ),
                  ChatBubble(
                    clipper: ChatBubbleClipper8(type: BubbleType.sendBubble),
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.only(top: 20),
                    backGroundColor: Colors.blue,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: createWithGMsg(msg, true),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              // 头像
              flex: 0,
              child: Container(
                margin: const EdgeInsets.only(left: 4),
                child: avatar(AppUserInfo.instance.appAvatar, 60, 60),
              ),
            ),
          ],
        ),
      );
    } else {
      // 是别人
      var avatarUrl = "";
      // GetUserInfo(msg.pbHeadMsg.pbCommData.srcId.toInt()).then((value){
      //   avatarUrl = value.avatar;
      //   // setState(() {
      //   //
      //   // });
      // });
      // if (msg.uinfo.avatar)
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              // 头像
              flex: 0,
              child: avatar(msg.uinfo.avatar, 60, 60),
            ),
            Expanded(
              flex: 4,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    msg.uinfo.nickName,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  ChatBubble(
                    clipper: ChatBubbleClipper8(
                        type: BubbleType
                            .receiverBubble), //ChatBubbleClipper1(type: BubbleType.receiverBubble),
                    backGroundColor: Color(0xffE7E7ED),
                    // margin: EdgeInsets.only(top: 0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: createWithGMsg(msg, false),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      );
    }
  }

  // Widget buildMsgList(BuildContext context, int index) {
  //   if (lsPrivateMsg[index].isSplitLine){
  //     return Container(child: Text(GetChatTime(lsPrivateMsg[index].msgTime)),alignment: Alignment.center,) ;
  //   }
  //
  //   var pbMsg = PBMessage()..mergeFromBuffer(lsPrivateMsg[index].pbData);
  //   ChatText cmsg = ChatText.fromBuffer(pbMsg.pbData);
  //
  //   if (pbMsg.pbCommData.srcId == AppUserInfo().imId) {
  //     // 自己
  //     return Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       crossAxisAlignment: CrossAxisAlignment.end,
  //       children: [
  //         Text("${GetGroupMsgStateName(lsPrivateMsg[index].msgStatus)}"),
  //         ChatBubble(
  //           clipper: ChatBubbleClipper8(type: BubbleType.sendBubble),
  //           alignment: Alignment.topRight,
  //           margin: EdgeInsets.only(top: 20),
  //           backGroundColor: cmsg.chatType == TextChatType.TEXT? Colors.blue:Colors.white,
  //           child: Container(
  //             constraints: BoxConstraints(
  //               maxWidth: MediaQuery
  //                   .of(context)
  //                   .size
  //                   .width * 0.7,
  //             ),
  //             // child: Text(
  //             //   cmsg.text,
  //             //   style: TextStyle(color: Colors.white),
  //             // ),
  //             child: MakeChatMsgCard(cmsg, true),
  //           ),
  //         ),
  //       ],
  //     );
  //   }else{
  //     // 是别人
  //     return ChatBubble(
  //       clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
  //       backGroundColor: cmsg.chatType == TextChatType.TEXT? Color(0xffE7E7ED):Colors.white,
  //       margin: EdgeInsets.only(top: 20),
  //       child: Container(
  //         constraints: BoxConstraints(
  //           maxWidth: MediaQuery.of(context).size.width * 0.7,
  //         ),
  //         // child: Text(
  //         //   cmsg.text,
  //         //   style: TextStyle(color: Colors.black),
  //         // ),
  //         child: MakeChatMsgCard(cmsg, false),
  //       ),
  //     );
  //   }
  // }

  TextEditingController msgInputCtl = TextEditingController();
  FocusNode msgInputFocus = FocusNode();
  Widget build(BuildContext context) {
    // Map<String,dynamic> args=ModalRoute.of(context).settings.arguments;
    // finfo = args["finfo"];
    // log("finfo=${finfo}");

    // 滚动到指定条
    // for (int i = 0; i < lsGroupMsg.length; i++) {
    //   if (lsGroupMsg.elementAt(i).selected) {
    //     _scrollController.animateTo(i * _ITEM_HEIGHT,
    //         duration: new Duration(seconds: 2), curve: Curves.ease);
    //   }
    // }

    // log("on build view ChaPprivate finfo=${finfo}");
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white54,
        elevation: 0,
        leading: BackButton(
          color: Colors.black87,
        ),
        centerTitle: true,
        title: Text(
          '${ginfo.name}[${ginfo.groupId}](${ginfo.lstMsg.length})',
          style: TextStyle(
            color: Colors.black87,
          ),
        ), //${state.msgCount}
        actions: [
          // IconButton(
          //   onPressed: (){
          //     // 切换到群信息页面
          //     Navigator.pushNamed(context, "GroupInfoPage", arguments: widget.groupId);
          //   },
          //     icon:Icon(Icons.group_add,color: Colors.white,)
          // ),
          PopupMenuButton<int>(
            color: Colors.black87,
            // icon: Icon(Icons.add),
            onSelected: (int value) {
              log("select menu value:$value");
              switch (value) {
                case 0:
                  Navigator.pushNamed(context, "GroupInfoPage",
                      arguments: ginfo);
                  break;
                case 1:
                  Client.instance.sendMsg(
                      DisbandGroupsReq()..groupIds.add(widget.groupId),
                      widget.groupId,
                      MakePBCommData(
                          aimId: widget.groupId,
                          groupId: widget.groupId,
                          toService: Service.group));
                  showToast("您解散了群${widget.groupId}");
                  break;
                case 2:
                  var pbMsg = Client.instance.sendMsg(
                      QuitReq(),
                      widget.groupId,
                      MakePBCommData(
                          aimId: widget.groupId,
                          groupId: widget.groupId,
                          toService: Service.group));
                  showToast("您退出了群${widget.groupId}");
                  // // 删除群信息
                  // dbMsg?.delete(tbGroup, where: "groupId = ?", whereArgs: [widget.groupId.toInt()]);
                  // dbMsg?.delete(dbChatList, where: "userId = ? and chatId=? and chatType=${Config.chatTypeGroup.toInt()}", whereArgs: [AppUserInfo.instance.imId.toInt(), widget.groupId.toInt()] );
                  // ginfo.lstMsg.add(ChatGroupData()..initWithPBMsg(pbMsg));
                  // setState(() {
                  //
                  // });
                  break;
                case 3:
                default:
                  break;
              }
            },
            itemBuilder: (context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem<int>(
                  value: 0,
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      Text(
                        "群设置",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ), // Text('发起群聊'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.people_outline),
                      Text(
                        "解散群",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.people_outline),
                      Text(
                        "退出群",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ];
            },
          )
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
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white70,
                child: Column(
                  children: [
                    Expanded(
                      flex: 10,
                      child: RefreshIndicator(
                        onRefresh: onRefresh,
                        child: ListView.builder(
                          itemCount: ginfo.lstMsg.length,
                          shrinkWrap: true,
                          itemBuilder: buildMsgList,

                          // 控制滚动
                          scrollDirection: Axis.vertical,
                          controller: _scrollController,
                        ),
                      ),
                    ),
                    Offstage(
                      offstage: showMore,
                      // child: Expanded(
                      child: Container(
                        color: Colors.white70,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                alignment: Alignment.center,
                                height: 36.0,
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    border: new Border.all(
                                        color: Colors.white, width: 0),
                                    borderRadius:
                                        new BorderRadius.circular(3.0)),
                                child: new TextFormField(
                                  controller: msgInputCtl,
                                  decoration: InputDecoration.collapsed(
                                      hintText: '说点什么',
                                      hintStyle:
                                          TextStyle(color: Colors.black38)),
                                  onChanged: (value) {
                                    setState(() {});
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
                            SizedBox(
                              width: 5,
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.tag_faces,
                                color: Colors.black87,
                              ),
                              onPressed: () async {
                                showEmoji = !showEmoji;
                                setState(() {
                                  log("set state");
                                });
                                // SendImageMsg(widget.finfo.imId);
                              },
                            ),
                            msgInputCtl.text.length == 0
                                ? IconButton(
                                    icon: Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.black87,
                                    ),
                                    onPressed: () async {
                                      showMore = !showMore;
                                      showEmoji = false;
                                      setState(() {
                                        log("set state");
                                      });
                                      // SendImageMsg(widget.finfo.imId);
                                    },
                                  )
                                : TextButton(
                                    child: Text("发送"),
                                    // color: Colors.green,
                                    style: GetTextButtonStyle(),
                                    onPressed: () {
                                      if (msgInputCtl.text.length == 0) {
                                        showToast("还没有输入任何信息");
                                        return;
                                      }
                                      // // 发送消息
                                      // sendTextMsg(widget.finfo.userInfo.imId.toInt(), msgInputCtl.text);
                                      Client.instance.sendMsg(
                                          GroupChat()..text = msgInputCtl.text,
                                          widget.groupId,
                                          getPbCommData()
                                            ..needReadReceipt = true);
                                      // 重置输入框
                                      showEmoji = false;
                                      msgInputCtl.text = "";
                                      setState(() {});
                                      // msgInputCtl.clear();
                                      // msgInputFocus.unfocus();
                                    },
                                  ),
                            SizedBox(
                              width: 5,
                            ),
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
                          msgInputCtl.text =
                              msgInputCtl.text + '[${expression.name}]';

                          setState(() {});
                        }),
                      ),
                    ),
                    Offstage(
                        offstage: !showMore,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(Icons.photo),
                              onPressed: () {
                                // SendImageMsg(widget.finfo.userInfo.imId);
                                // Client.instance.sendMsg(GroupChat()..text = msgInputCtl.text, widget.groupId, getPbCommData());
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
                            IconButton(
                              icon: Icon(Icons.video_call),
                              onPressed: () {
                                // 发起视频通话
                                log("发起一个视频通话");
                                showMore = false;
                                setState(() {
                                  log("set state");
                                });

                                // 切换到视频通话界面
                                // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                //   return CallPage(callType:CALL_TYPE.CALL_TYPE_VIDEO, caller:Int64(AppUserInfo.instance.imId), callee:Int64(widget.finfo.userInfo.imId));
                                // },));
                              },
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 40,
            )
          ],
        ),
      ),
    );
  }

  ///////////////////////////////////////////
  Future<void> ShowMsgList() async {
    // log("=================userId=${AppUserInfo.instance.imId.toInt()}  and groupId=${ginfo.groupId.toInt()}");
    // dbMsg?.query(tbGroupMsgTable,  where: "userId=? and groupId=?",
    //     whereArgs:[AppUserInfo.instance.imId.toInt(), ginfo.groupId.toInt()]).then((value) => {log("get group msg :${value}")});
    // 获取历史消息
    // todo 改造为db读取制作初始化进行，其他刷新不读，消息直接构造插入列表即可
    dbMsg
        ?.query(tbGroupMsgTable,
            where: "groupId=?",
            whereArgs: [ginfo.groupId.toInt()],
            limit: limit,
            offset: offSet,
            orderBy: "msgTime desc")
        .then((value) async {
      // log("---------------get value:${value}");
      // 构建消息列表
      List<ChatGroupData> lsCPData = <ChatGroupData>[];
      for (var cpd in value) {
        var d = ChatGroupData();

        // 等待加载用户信息
        await d.initWithMap(cpd);
        lsCPData.insert(0, d);
        // log("msg:sn->${d.msgSn},msgTime->${d.msgTime},createTime->${d.createTime},imId->${d.srcId}");

        // 已读标志
        if (d.pbHeadMsg.pbCommData.srcId != AppUserInfo.instance.imId &&
            d.pbHeadMsg.pbName != pbNameMsgReceipt &&
            d.msgStatus.value < MSG_STATE.READ.value) {
          sendReceiptMsg(d.pbHeadMsg.pbCommData,
              state: MSG_STATE.READ, beginTime: Int64());

          // // todo 改造外服务端rsp收到再改状态
          // d.msgStatus = MSG_STATE.READ;
          //
          // var tempPbCommData = d.pbHeadMsg.pbCommData.clone();
          // tempPbCommData.srcId = Int64(AppUserInfo().imId);
          // tempPbCommData.aimId = tempPbCommData.srcId;
          // d.pbHeadMsg.pbCommData.exp[PCD_EXP_KEY.GROUP_MSG_STATUS.name] = MSG_STATE.READ.name;
          // DBUpdateGroupMsgState(tempPbCommData, d.pbHeadMsg.pbCommData.msgSn, MSG_STATE.READ);
        }
      }
      if (lsCPData.length > 0) {
        lsCPData[lsCPData.length - 1].selected = true;
      }
      setState(() {
        ginfo.lstMsg = lsCPData;
      });
    });
  }

  /////////////////////////////////
  // 控制滚动
  // void _scrollToKd() {
  //   setState(() {
  //     for (var item in ginfo.lstMsg) {
  //       if (item.msgSn == 11) {
  //         item.selected = true;
  //       } else {
  //         item.selected = false;
  //       }
  //     }
  //   });
  // }

  // void _scrollToKobe() {
  //   setState(() {
  //     for (var item in ginfo.lstMsg) {
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

  Future onRefresh() {
    //下拉刷新
    return Future.delayed(Duration(seconds: 1), () {
      print('当前已是最新数据');
      // 滚动到指定位置
      // controller.animateTo(
      //   0.0,
      //   duration: new Duration(milliseconds: 500),  // 500ms
      //   curve: Curves.bounceIn,                     // 动画方式
      // );
    });
  }

  // 到达底部加载更多控件
  Widget renderBottom() {
    if (this.isLoading) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '努力加载中...',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF111111),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 15)),
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 3),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: Text(
          '上拉加载更多',
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF111111),
          ),
        ),
      );
    }
  }
}
