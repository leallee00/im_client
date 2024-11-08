import 'dart:async';
import 'dart:io';

import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpinyin/lpinyin.dart';
import 'package:oktoast/oktoast.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/contacts/models/contact_info.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group.dart';
import 'package:quliao/pages/chat_index/conversation_controller.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/log/manager.dart';

import '../../../../models/user/friendInfo.dart';
import '../../../../pb/pb_pub/comm.pb.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';

class InviteFriendController extends GetxController {
  // final RxList<FriendInfo> contacts = RxList();
  final Rx<Color> indexBarBg = Rx(Colors.transparent);
  final RxString currentLetter = RxString('');

  final ScrollController scrollController = ScrollController();

  StreamSubscription<DeleteFriendEvent>? deleteFriendStreamSub;

  final Map letterPosMap = {Config.INDEX_BAR_WORDS[0]: 0.0};
  final RxMap<int, FriendInfo> groupMemberMap = RxMap(<int, FriendInfo>{});
  final RxMap<int, FriendInfo> selectedMemberMap = RxMap(<int, FriendInfo>{});

  final RxBool isCheckAll = RxBool(false);
  int length = 0;
  final RxBool enable = RxBool(false);

  final RxList<ContactInfo> dataList = RxList();
  final List<ContactInfo> contactList = <ContactInfo>[];

  void loadContacts(
    List<FriendInfo> memberList, {
    int? groupId,
  }) async {
    for (final member in memberList) {
      groupMemberMap[member.userInfo.imId] = member;
      debugPrint('invite user id: ${member.userInfo.imId} ${member.nickname}');
    }
    final value = await GlobalController.to.getContacts();
    for (final item in value) {
      if (null != groupId) {
        if (groupMemberMap.containsKey(item.userInfo.imId)) {
          length++;
        }
      } else {
        selectedMemberMap[item.userInfo.imId] = item;
        length++;
      }
    }

    for (final item in value) {
      final data = contactList.firstWhereOrNull(
        (e) => e.data?.friendId == item.friendId,
      );
      if (null == data) {
        contactList.add(
          ContactInfo(name: item.nickname, data: item),
        );
      }
    }

    if (contactList.isNotEmpty) {
      for (final item in contactList) {
        String pinyin = PinyinHelper.getPinyinE(item.name);
        String tag = pinyin.substring(0, 1).toUpperCase();
        item.namePinyin = pinyin;
        if (RegExp('[A-Z]').hasMatch(tag)) {
          item.tagIndex = tag;
        } else {
          item.tagIndex = "#";
        }
      }
    }

    /// A-Z sort.
    SuspensionUtil.sortListBySuspensionTag(contactList);

    /// show sus tag.
    SuspensionUtil.setShowSuspensionStatus(contactList);

    dataList.value = contactList;
    if (null == groupId) {
      isCheckAll.value = true;
      enable.value = selectedMemberMap.isNotEmpty;
      debugPrint('loadContacts ======> $length');
    }
  }

  void selectContact(
    FriendInfo contact,
  ) {
    final key = contact.userInfo.imId;
    if (selectedMemberMap.containsKey(key)) {
      selectedMemberMap.removeWhere(
        (key, value) => key == contact.userInfo.imId,
      );
      length -= 1;
    } else {
      length += 1;
      selectedMemberMap[contact.userInfo.imId] = contact;
    }
    debugPrint('length ======> $length contacts length: ${dataList.length}');
    isCheckAll.value = length == dataList.length;
    enable.value = selectedMemberMap.isNotEmpty;
  }

  void checkAll() {
    final value = !isCheckAll.value;
    isCheckAll.value = value;
    if (value) {
      for (final item in dataList) {
        if (!groupMemberMap.containsKey(item.data!.userInfo.imId)) {
          selectedMemberMap[item.data!.userInfo.imId] = item.data!;
        }
      }
    } else {
      selectedMemberMap.clear();
    }
    enable.value = selectedMemberMap.isNotEmpty;
  }

  Future<void> inviteToGroup(
    BuildContext context, {
    required int groupId,
  }) async {
    final req = InviteReq.create();

    for (final item in selectedMemberMap.values) {
      req.inviteeIds.add(
        Int64(item.friendId),
      );
    }

    Client.instance.sendMsg(
      req,
      Int64(AppUserInfo.instance.imId),
      MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId),
        toService: Service.group,
        groupId: Int64(groupId),
      ),
    );
    Navigator.pop(context);
    showToast("已发送群聊邀请");
  }

  Future<void> createGroupChat(
    BuildContext context,
  ) async {
    final req = CreateGroupReq(
      memberCountLimit: 100,
    );
    for (final item in selectedMemberMap.values) {
      req.memberIds.add(
        Int64(item.friendId),
      );
      if (req.name.isNotEmpty) req.name += "、";
      req.name += item.userInfo.nickName;
    }
    if (req.memberIds.isNotEmpty) {
      Client.instance.sendMsg(
        req,
        Int64(AppUserInfo.instance.imId),
        MakePBCommData(
          aimId: Int64(AppUserInfo.instance.imId),
          toService: Service.group,
        ),
      );
    } else {
      showToast('请选择群成员');
    }
  }

  @override
  void onClose() {
    super.onClose();
    length = 0;
    groupMemberMap.clear();
    selectedMemberMap.clear();
    deleteFriendStreamSub?.cancel();
  }
}
