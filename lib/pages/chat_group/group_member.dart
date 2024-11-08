import 'dart:async';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/group/group.pbserver.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/custom_alert.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/avatar.dart';

import '../../models/user/userinfo.dart';
import '../chat_index/conversation_avatar.dart';

enum GroupMemberOperate {
  /// 转让
  transference,

  /// 管理员
  administrator,

  /// 封禁
  ban,

  /// 踢出
  kickout,

  /// 编辑群成员备注
  editRemark,
}

class GroupMemberPage extends StatefulWidget {
  final List<Member> memberList; // 群成员列表
  final int groupId;
  final GroupMemberOperate type;
  final String title;

  const GroupMemberPage({
    super.key,
    required this.memberList,
    required this.groupId,
    required this.type,
    required this.title,
  });

  @override
  GroupMemberPageState createState() => GroupMemberPageState();
}

// Widget

class GroupMemberPageState extends State<GroupMemberPage> {
  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  List handlerList = [
    MembersRsp(),
  ];
  var msgHandlerMgr = MsgHandlerMgr();
  final RefreshController refresh = RefreshController(initialRefresh: false);
  var page = 1;

  List<Member> showMeberList = []; // 群成员列表
  List<Member> allMeberList = []; // 群成员列表

  @override
  void initState() {
    super.initState();
    showMeberList = widget.memberList;
    allMeberList = widget.memberList;
    // 处理网络消息
    handleMsg();
    getMemberList(false);
  }

  @override
  void dispose() {
    // 取消消息处理
    // msgHandlerMgr.removeMsgHandler(GroupTransferRsp());
    msgStreamSub.cancel();
    super.dispose();
  }

// 消息处理句柄
  void handleMsg() {
    // 注册消息回调
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      log("group member 获得一个消息:${event.pbMsg.pbName}");
      msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);
    });

    for (final item in handlerList) {
      msgHandlerMgr.RegMsgHandler(item, (msg, pbMessage, enMsgFrom) {
        log("group member handler 获得一个消息:${pbMessage.pbName}");
        if (msg is MembersRsp) {
          MembersRsp membersRsp = MembersRsp()..mergeFromBuffer(pbMessage.pbData);
          for (final item in membersRsp.members) {
            LoggerManager().debug('item user info ======> username: ${item.username} banned: ${item.banned}');
          }
        }
        return true;
      });
    }

    // 注册消息处理句柄
    // msgHandlerMgr.RegMsgHandler(MemberDetailRsp(),(GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
    //   if(page==1){
    //     allMeberList.clear();
    //     showMeberList.clear();
    //   }
    //   MembersRsp membersRsp = MembersRsp()..mergeFromBuffer(pbMessage.pbData);
    //   for (final item in membersRsp.members) {
    //     LoggerManager().debug('item user info ======> username: ${item.username} banned: ${item.banned}');
    //   }
    //   allMeberList.addAll(membersRsp.members);
    //   membersRsp.members.removeWhere((element) => element.userId == AppUserInfo().imId);
    //   for (var element in membersRsp.members) {
    //     LoggerManager().debug('用户信息 ===> ${element.writeToJsonMap().toString()}');
    //     _asyncUserInfo(element);
    //   }
    //   showMeberList.addAll(allMeberList);
    //   // 把消息加入消息列表
    //   setState(() {});
    //
    //   return true;
    // });
  }

  Future<void> _asyncUserInfo(Member member) async {
    $locUinfo.UserInfo userInfo = await $locUinfo.GetUserInfo(member.userId.toInt());
    member.avatar = userInfo.avatar;
    member.username = userInfo.nickName;
    allMeberList.add(member);
  }

  void getMemberList(bool loadMore) {
     if(loadMore){
       page++;
       refresh.loadComplete();
     }else{
       page=1;
       refresh.refreshCompleted();
     }

    Client.instance.sendMsg(MembersReq(pageSize: 100, page: page), Int64(widget.groupId), MakePBCommData(aimId: Int64(widget.groupId), groupId: Int64(widget.groupId), toService: Service.group));



  }

  TextEditingController searchEditCtrl = TextEditingController();

  void searchMember(String inputText) {
    List<Member> lists = [];
    for (var element in allMeberList) {
      if (inputText.isNotEmpty) {
        var isAdd = false;
        if (element.username.isNotEmpty && element.username.contains(inputText)) {
          isAdd = true;
        }
        if (element.userId.toString().isNotEmpty && element.userId.toInt().toString().contains(inputText)) {
          isAdd = true;
        }
        if (isAdd) {
          lists.add(element);
        }
        showMeberList = lists;
      } else {
        showMeberList = allMeberList;
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // Widget divider = Divider(color: Colors.blue,);
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(244, 244, 244, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                controller: searchEditCtrl,
                textInputAction: TextInputAction.search,
                onChanged: (value) {
                  log("onChanged:value:${value} text:${searchEditCtrl.text}");
                  searchMember(value);
                },
                autofocus: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "请输入成员昵称",
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 10),
                color: const Color.fromRGBO(244, 244, 244, 1),
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 0),
                child: Text(
                  "群成员(${showMeberList.length})",
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                )),
            // 群成员列表
            Expanded(
              child: showMeberList.isNotEmpty
                  ? SmartRefresher(
                      controller: refresh,
                      physics: const BouncingScrollPhysics(),
                      enablePullDown: true,
                      enablePullUp: true,
                      onRefresh: () {getMemberList(false);},
                      onLoading: () {getMemberList(true);},
                      child: ListView.builder(
                        itemBuilder: listBuilder,
                        itemCount: showMeberList.length,
                      ))
                  : const Center(
                      child: Text("暂无成员信息"),
                    ),
            ),
            const SizedBox(height: 20),
          ],
        ));
  }

  Widget listBuilder(BuildContext context, int index) {
    var item = showMeberList[index];

    List<Widget> items = [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
            child: UserAvatar(
              size: Dimens.gap_dp40,
              avatar: item.avatar,
              name: (item.username.isNotEmpty ? item.username : "${item.userId}"),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 1, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  (item.username.isNotEmpty ? item.username : "${item.userId}"),
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                if (mapUserInfo.containsKey(item.userId.toInt()) && GlobalController.to.systemConfig.value?.hideUserSign == false)
                  Text(
                    (mapUserInfo[item.userId.toInt()]!.signName),
                    style: const TextStyle(fontSize: 9, color: Colors.black54),
                  ),
              ],
            ),
          ),
        ],
      ),
    ];
    if (widget.type == GroupMemberOperate.administrator) {
      items.add(Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
          height: 40,
          child: Text(
            item.role == 1 ? "取消管理员" : "设置管理员",
            style: const TextStyle(fontSize: 14, color: Colors.blue),
          )));
    } else if (widget.type == GroupMemberOperate.ban) {
      items.add(Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
          height: 40,
          child: Text(
            item.banned == true ? "取消封禁" : "设置封禁",
            style: const TextStyle(fontSize: 14, color: Colors.blue),
          )));
    } else if (widget.type == GroupMemberOperate.kickout) {
      items.add(Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
          height: 40,
          child: const Text(
            "踢出群组",
            style: TextStyle(fontSize: 14, color: Colors.blue),
          )));
    }

    return InkWell(
      onTap: () {
        if (widget.type == GroupMemberOperate.transference) {
          showAlertView(
            "转让群",
            "${(item.username.isNotEmpty ? item.username : "${item.userId}")}将成为该群群主，确定后你将立即失去群主身份",
            context,
            callBack: (index) {
              if (index == 1) {
                // 确定
                Client.instance.sendMsg(GroupTransferReq(), Int64(widget.groupId), MakePBCommData(aimId: item.userId, groupId: Int64(widget.groupId), toService: Service.group));
                showToast("您将群转让给了${(item.username.isNotEmpty ? item.username : "${item.userId}")}");
              }
              Navigator.pop(context);
            },
          );
        } else if (widget.type == GroupMemberOperate.administrator) {
          // 设置管理员     1 管理员 0 非管理员 其他 群主
          int role = item.role;
          GeneratedMessage pbOutMsg;
          if (item.role == 1) {
            role = 0;
            pbOutMsg = RemoveAdminsReq()..memberIds.add(item.userId);
          } else if (item.role == 0) {
            role = 1;
            pbOutMsg = AddAdminsReq()..memberIds.add(item.userId);
          } else {
            showToast("无法取消群主的管理员身份");
            return;
          }

          Client.instance.sendMsg(
            pbOutMsg,
            Int64(widget.groupId),
            MakePBCommData(
              aimId: item.userId,
              groupId: Int64(widget.groupId),
              toService: Service.group,
            ),
          );
          if (role == 1) {
            showToast("您将${(item.username.isNotEmpty ? item.username : "${item.userId}")}设置为管理员");
          } else {
            showToast("已移除${(item.username.isNotEmpty ? item.username : "${item.userId}")}管理员身份");
          }
          item.role = role;
          showMeberList.removeAt(index);
          showMeberList.insert(index, item);
          setState(() {});
        } else if (widget.type == GroupMemberOperate.ban) {
          bool banned = item.banned;
          GeneratedMessage pbOutMsg;
          if (banned == true) {
            pbOutMsg = UnbanMemberReq();
          } else {
            pbOutMsg = BanMemberReq();
          }

          banned = !banned;

          Client.instance.sendMsg(
            pbOutMsg,
            Int64(widget.groupId),
            MakePBCommData(
              aimId: item.userId,
              groupId: Int64(widget.groupId),
              toService: Service.group,
            ),
          );

          if (banned == true) {
            showToast("您将${(item.username.isNotEmpty ? item.username : "${item.userId}")}设置封禁");
          } else {
            showToast("已移除${(item.username.isNotEmpty ? item.username : "${item.userId}")}封禁");
          }
          item.banned = banned;
          showMeberList.removeAt(index);
          showMeberList.insert(index, item);
          setState(() {});
        } else if (widget.type == GroupMemberOperate.kickout) {
          showAlertView(
            "群成员管理",
            "您将${(item.username.isNotEmpty ? item.username : "${item.userId}")}移除群组",
            context,
            callBack: (index) {
              if (index == 1) {
                Client.instance.sendMsg(KickoutReq(), Int64(widget.groupId), MakePBCommData(aimId: item.userId, groupId: Int64(widget.groupId), toService: Service.group));
              }
              showToast('操作成功');
              showMeberList.removeWhere((element) => element.userId == item.userId);
              setState(() {});
            },
          );
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
    );
  }
}
