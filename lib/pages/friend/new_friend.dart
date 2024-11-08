// 新的朋友列表
import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/friend.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/modules/contacts/contacts_page_controller.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/view.dart';
import 'package:quliao/widgets/avatar.dart';

import '../../net/msg_handler_mgr.dart';

class NewFriend extends StatefulWidget {
  static const name = "NewFriend";
  NewFriend({super.key});

  @override
  NewFriendState createState() => NewFriendState();
}

class NewFriendState extends State<NewFriend> {
  var lFriendApply = <FriendApply>[];

  @override
  void initState() {
    super.initState();
    eventBus.fire(FriendApplyBus(false));
    // GetApplyList().then((value) {
    //   lFriendApply = value;
    //   setState(() {});
    // });
    fetchApplyFriends();

    // 处理网络消息
    _initHandleMsg();

    // 清理新朋友数据
    UnReadMessageController.to.clearUnReadMsgCount(type: ENMsgCountType.friendList);
  }

  @override
  void dispose() {
    msgStreamSub.cancel();
    super.dispose();
  }

  // 接收一个消息  FriendApply
  late StreamSubscription<FriendApplyDbUpdateNotify> msgStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();

  // 消息处理句柄
  void _initHandleMsg() {
    // 注册消息回调
    msgStreamSub = eventBus.on<FriendApplyDbUpdateNotify>().listen((event) {
      // 收到这个消息后直接刷新页面
      GetApplyList().then((value) {
        lFriendApply = value;
      });
      setState(() {});
    });
  }

  Widget OptionButton(FriendApply finfo) {
    log("展示按钮 申请id:${finfo.applyId} fid:${finfo.friendId} --- ${finfo.applyState} ");

    if (AppUserInfo.instance.imId == finfo.applyId) {
      // 自己发出的申请
      switch (finfo.applyState) {
        case FRIEND_APPLY_STATE.Init:
          return TextButton(
            // color: Colors.green,
            child: const Text(
              "发送好友申请",
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
            onPressed: () {
              Client.instance.sendMsg(
                  ApplyReq(),
                  Int64(AppUserInfo.instance.imId),
                  MakePBCommData(
                      aimId: Int64(finfo.friendId), toService: Service.friend));
              showToast("申请已发出，等待确认");

              // setState(() {});
            },
          );
        case FRIEND_APPLY_STATE.Request: //0:发起,
          return TextButton(
            // color: Colors.green,
            child: const Text(
              "请求已发送,请耐心等待",
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
            onPressed: () {
              Client.instance.sendMsg(
                  ApplyReq(),
                  Int64(AppUserInfo.instance.imId),
                  MakePBCommData(
                      aimId: Int64(finfo.friendId), toService: Service.friend));
              showToast("申请已再次发出，等待确认");

              setState(() {});
            },
          );

          break;
        case FRIEND_APPLY_STATE.Agree: //1:同意,
          return TextButton(
            // color: Colors.green,
            onPressed: () async {
              GetFriendInfo(finfo.friendId).then((value) {
                // return Navigator.pushNamed(context, "ChatPrivate",
                //     arguments: value);

                return Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext ctx) {
                  return ChatPage(
                    finfo: value,
                  );
                }));
              }); //{"finfo": value}));
            },
            child: Column(children: [
              Text(
                "好友已接受您的申请",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              Text(
                "发起会话",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ]),
          );
        case FRIEND_APPLY_STATE.Reject: //2:拒绝,
          return const Text(
            "对方已拒绝您的申请",
            style: TextStyle(color: Colors.blue, fontSize: 14),
          );
          break;
        case FRIEND_APPLY_STATE.OverTime: //3:超时,
          return const Text(
            "对方超时未操作",
            style: TextStyle(color: Colors.blue, fontSize: 14),
          );
          break;
      }
    } else {
      // 别人发起的
      switch (finfo.applyState) {
        // case FRIEND_APPLY_STATE.Init:
        //   return TextButton(
        //     // color: Colors.green,
        //     child: const Text(
        //       "发送申请",
        //       style: TextStyle(color: Colors.blue, fontSize: 14),
        //     ),
        //     onPressed: () {
        //       Client.instance.sendMsg(
        //           ApplyReq(),
        //           Int64(AppUserInfo.instance.imId),
        //           MakePBCommData(
        //               aimId: Int64(finfo.friendId), toService: Service.friend));
        //       showToast("申请已发出，等待确认");
        //
        //       setState(() {});
        //     },
        //   );
        case FRIEND_APPLY_STATE.Init:
        case FRIEND_APPLY_STATE.Request: //0:发起,
          return TextButton(
              // color: Colors.green,
              child: const Text(
                "通过验证",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
              onPressed: () {
                Client.instance.sendMsg(
                    ApplyAnswerReq()..agree = true,
                    Int64(AppUserInfo.instance.imId),
                    MakePBCommData(
                        aimId: Int64(finfo.friendId),
                        toService: Service.friend));
                showToast("已通过验证");
                // 更新状态
                // todo 消息返回后再更新好友状态
                finfo.applyState = FRIEND_APPLY_STATE.Agree;
                AddFriendToDB(finfo.friendId, enFriendRelation.friend);
                UpdateApplyFriendState(finfo.friendId, FRIEND_APPLY_STATE.Agree)
                    .then((value) {
                  setState(() {});
                });
              });
          break;
        case FRIEND_APPLY_STATE.Agree: //1:同意,
          return TextButton(
            // color: Colors.green,
            onPressed: () async {
              GetFriendInfo(finfo.friendId).then((value) {
                // Navigator.pushNamed(context, "ChatPrivate", arguments: value);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext ctx) {
                  return ChatPage(
                    finfo: value,
                  );
                }));
              }); //{"finfo": value}));
            },
            child: Column(children: const [
              Text(
                "您已接受好友申请",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              Text(
                "发起会话",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ]),
          ); //Text("对方已通过");
        case FRIEND_APPLY_STATE.Reject: //2:拒绝,
          return const Text(
            "您已拒绝好友申请",
            style: TextStyle(color: Colors.blue, fontSize: 12),
          );
          break;
        case FRIEND_APPLY_STATE.OverTime: //3:超时,
          return const Text(
            "您超时未操作",
            style: TextStyle(color: Colors.blue, fontSize: 14),
          );
          break;
      }
    }
    return Text("unknown");
  }
  // button option

  ListTile ListBuilder(BuildContext context, int index) {
    //var item = lFriendInfo[index];
    var item = lFriendApply[index];
    return ListTile(
        leading: UserAvatar(
          size: Dimens.gap_dp40,
          avatar: item.avatar,
          name: item.nick,
        ),
        selectedColor: Colors.blue,
        splashColor:Colors.lightBlueAccent,
        selected: AppUserInfo.instance.imId != item.applyId && item.applyState == FRIEND_APPLY_STATE.Request,
        title: Text(
          "${item.nick}",
          style: const TextStyle(color: Colors.black87, fontSize: 16),
        ),
        subtitle: Text(
          (item.applyMsg),
          style: const TextStyle(color: Colors.black38, fontSize: 12),
        ),
        trailing: Container(
          child: OptionButton(item),
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "新的朋友",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          actions: [
            TextButton(
              child: const Text(
                "添加朋友",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "AddFriend");
              },
            ),
          ],
        ),
        // backgroundColor: Colors.white10,
        body: Column(
          children: [
            Expanded(
              flex: 0,
              child: SearchFriendButton(context),
            ),

            // 请求列表
            Expanded(
              flex: 1,
              child: ListView.separated(
                itemCount: lFriendApply.length,
                itemBuilder: ListBuilder,
                //分割器构造器
                separatorBuilder: (BuildContext context, int index) {
                  return Container(height: 0.5, color: Colors.grey);
                },
              ),
            ),
          ],
        ));
  }

  /// 获取申请好友列表数据
  Future<void> fetchApplyFriends() async {
    // var req = $pbCommunity.ApplicationsReq();
    var req = ApplicationsReq();

    var response = await RpcCallImOuterApi(
        "/pb_grpc_friend.Friend/Applications",
        req,
        MakePBCommData(
            aimId: Int64(AppUserInfo.instance.imId),
            toService: Service.friend));

    if (response.statusCode != 200) {
      // 出错了
      // 处理错误
      log("query error ${response.body}");
      return;
    }
    // 更新一下
    var rsp = ApplicationsRsp();
    rsp.mergeFromBuffer(response.bodyBytes);
    log("query success ${rsp.applications}");

    _onApplicationsRsp(rsp);
  }

  Future<void> _onApplicationsRsp(ApplicationsRsp rsp) async {
    if (rsp.applications.isNotEmpty) {
      for (Application element in rsp.applications) {
        bool needInsert = true;
        // 去重
        var friendId = AppUserInfo().imId == element.applicantId.toInt()
            ? element.respondentId.toInt()
            : element.applicantId.toInt();

        for (FriendApply fa in lFriendApply) {
          log("--fa.applyId:${fa.applyId} == element.applicantId:${element.applicantId}");
          if (fa.friendId == friendId &&
              fa.applyId == element.applicantId.toInt()) {
            // 同一条数据不在插入
            log("同一条数据不在插入，applyId:${fa.applyId}");
            needInsert = false;
            break;
          }
        }
        if (!needInsert) continue;

        // //
        // var friendId = AppUserInfo().imId == element.applicantId.toInt()
        //     ? element.respondentId.toInt()
        //     : element.applicantId.toInt();
        UserInfo friendUserInfo =
            // await GetUserInfo(element.applicantId.toInt());
            await GetUserInfo(friendId);
        var friend = FriendApply()
          // ..userId = AppUserInfo().imId
          ..applyId = element.applicantId.toInt()
          // ..friendId = element.applicantId.toInt()
          ..friendId = friendId
          ..applyState = FRIEND_APPLY_STATE
              .values[element.status] //FRIEND_APPLY_STATE.Request
          ..nick = friendUserInfo.nickName
          ..avatar = friendUserInfo.avatar
          ..applyMsg = AppUserInfo().imId == element.applicantId.toInt()
              ? "您申请加${friendUserInfo.signName}-ID${friendId}为好友"
              : "${friendUserInfo.signName}-ID${friendId}申请加您为好友";
        lFriendApply.add(friend);
        log("-------------------------------- $friendUserInfo ");
        // 更新到db， 从网上获取的状态更新
        AddApplyFriend(FriendInfo()..userInfo = friendUserInfo, friend.applyMsg,
            friend.applyId, friend.applyState);
      }
      setState(() {});
    }
  }
}
