
import 'dart:async';
import 'dart:developer';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/pages/chat_index/conversation_controller.dart';
import 'package:quliao/utils/log/manager.dart';
import '../../../event/event_bus.dart';
import '../../../event/event_modul.dart';
import '../../../models/user/myinfo.dart';
import '../../../net/msg_handler_mgr.dart';
import '../../../net/socket.dart';
import '../../../pb/pb_msg/group/group.pb.dart';
import '../../../pb/pb_pub/comm.pb.dart';
import '../../../pb/pb_pub/error_code.pbenum.dart';
import '../../../pb/pb_pub/service.pbenum.dart';
import '../../../pub/func.dart';
import '../../chat_private/chat.dart';

class GroupListController extends GetxController {
  static GroupListController get to => Get.find();



  late StreamSubscription<EventOnNetMsg> msgStreamSub;
  var msgHandlerMgr = MsgHandlerMgr();

  var lGroupList = <GroupInfo>[].obs;



  // 消息处理句柄
  void HandleMsg() {
    // 注册消息回调
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen((event) {
      // log("获得一个消息:${event.pbMsg.pbName}");
      if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
        // showToast("收到错误消息 ${event.pbMsg.pbName} ${event.pbMsg.errCode} ${event.pbMsg.errDesc}");
        // log("get a err msg ${event.pbMsg.pbName} ${event.pbMsg.errCode} ${event.pbMsg.errDesc}");
        return;
      }
      if (event.pbMsg.pbName != "pb_pub.HeartBeat") {
        log("get a msg ${event.pbMsg.pbName} ${event.pbMsg.pbCommData.msgSn}");
      }
      msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);
    });

    // 获取群列表
    Client.instance.sendMsg(GroupsReq(), Int64(AppUserInfo.instance.imId), MakePBCommData(toService: Service.group));

    // 注册消息处理句柄
    msgHandlerMgr.RegMsgHandler(GroupsRsp(), (GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
      if (msg is GroupsRsp) {
        log("$msg");
        // 维护群列表
        // 去除db数据
        List<GroupInfo> groups = <GroupInfo>[];

        for (var element in msg.groups) {
          log("群聊列表信息 ${element.name}");
          // var inList = false;

          final GroupInfo groupInfo = GroupInfo();
          groupInfo.groupId = element.groupId;
          groupInfo.avatar = element.avatar;
          groupInfo.name = element.name;

          groupInfo.fetchGroupData(element.groupId.toInt());

          groups.add(groupInfo);

          final isRegistered = Get.isRegistered(tag: '${element.groupId.toInt()}',);
          if (!isRegistered) {
            Get.put(
              ConversationController(),
              tag: 'conversation_${element.groupId.toInt()}',
            );
          }

          // try {
          //   final conversationController = ConversationController.to(element.groupId.toInt());
          //   LoggerManager().debug('initialized ===========> ${conversationController.initialized}');
          // } catch (error) {
          //   Get.put(
          //     ConversationController(),
          //     tag: 'conversation_${element.groupId.toInt()}',
          //   );
          // }

          // Get.put(
          //   ConversationController(),
          //   tag: 'conversation_${chatItem.chatItem.chatId}',
          // );

        }
        lGroupList.value = groups;
      }
      return true;
    });


    msgHandlerMgr.RegMsgHandler(QuitRsp(), (GeneratedMessage msg, PBMessage pbMessage, EnMsgFrom enMsgFrom) {
      if (msg is QuitRsp) {
        // 刷新
        // refreshList();
        for (var ginfo in lGroupList) {
          if (ginfo.groupId == pbMessage.pbCommData.groupId) {
            lGroupList.remove(ginfo);
            break;
          }
        }
      }
      return true;
    });
  }



  final RxList<GroupInfo> groups = RxList();
  final Map letterPosMap = {Config.INDEX_BAR_WORDS[0]: 0.0};

  Future<List<GroupInfo>> getGroups() async {
    // if (groups.isNotEmpty) {
    //   return groups;
    // }
    lGroupList.sort(
          (GroupInfo a, GroupInfo b) => a.nameIndex!.compareTo(b.nameIndex!),
    );

    var totalPos = Dimens.gap_dp60 + 400;
    for (int i = 0; i < lGroupList.length; i++) {
      bool hasGroupTitle = true;
      if (i > 0 &&
          lGroupList[i].nameIndex!.compareTo(lGroupList[i - 1].nameIndex!) == 0) {
        hasGroupTitle = false;
      }

      if (hasGroupTitle) letterPosMap[lGroupList[i].nameIndex!] = totalPos;

      totalPos += Dimens.gap_dp60;
    }

    groups.value = lGroupList;
    for (final item in lGroupList) {
      LoggerManager().debug(
        'group name: ${item.name} nameIndex: ${item.nameIndex}',
      );
    }
    return groups;
  }




  @override
  void onClose() {
    msgStreamSub.cancel();
    super.onClose();
  }



}
