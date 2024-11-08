import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/group_repository.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/widgets/loading.dart';

class SearchMemberController extends GetxController {
  final TextEditingController keywordInput = TextEditingController();

  RxList<Member> memberList = RxList();
  Rx<LoadState> loadState = Rx(LoadState.loading);

  Map<int, Member> memberMap = {};

  final GroupRepository _repository = GroupRepository();

  @override
  Future<void> onInit() async {
    super.onInit();
    loadState.value = LoadState.empty;
    update();
  }

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  Future<void> transfer(int groupId, Member member) async {
    LoadingDialog.show();
    Client.instance.sendMsg(
      GroupTransferReq(),
      Int64(groupId),
      MakePBCommData(
        aimId: member.userId,
        groupId: Int64(groupId),
        toService: Service.group,
      ),
    );
  }

  Future<void> addAdmin(int groupId, Member member) async {
    LoadingDialog.show();
    final req = AddAdminsReq();
    req.memberIds.add(member.userId);
    Client.instance.sendMsg(
      req,
      Int64(groupId),
      MakePBCommData(
        aimId: member.userId,
        groupId: Int64(groupId),
        toService: Service.group,
      ),
    );
  }

  Future<void> removeAdmin(int groupId, Member member) async {
    LoadingDialog.show();
    final req = RemoveAdminsReq();
    req.memberIds.add(member.userId);
    Client.instance.sendMsg(
      req,
      Int64(groupId),
      MakePBCommData(
        aimId: member.userId,
        groupId: Int64(groupId),
        toService: Service.group,
      ),
    );
  }

  Future<void> banMember(int groupId, Member member) async {
    LoadingDialog.show();
    Client.instance.sendMsg(
      BanMemberReq(),
      Int64(groupId),
      MakePBCommData(
        aimId: member.userId,
        groupId: Int64(groupId),
        toService: Service.group,
      ),
    );
  }

  Future<void> unbanMember(int groupId, Member member) async {
    LoadingDialog.show();
    Client.instance.sendMsg(
      UnbanMemberReq(),
      Int64(groupId),
      MakePBCommData(
        aimId: member.userId,
        groupId: Int64(groupId),
        toService: Service.group,
      ),
    );
  }

  Future<void> kickOutMember(int groupId, Member member) async {
    LoadingDialog.show();
    Client.instance.sendMsg(
      KickoutReq(),
      Int64(groupId),
      MakePBCommData(
        aimId: member.userId,
        groupId: Int64(groupId),
        toService: Service.group,
      ),
    );
  }

  Future<void> updateMember(Member member) async {
    for (final item in memberList) {
      if (item.userId == member.userId) {
        item.role = member.role;
      }
    }
    update();
  }

  Future<void> updateMemberBanStatus(int userId) async {
    for (final member in memberList) {
      member.banned = true;
    }
    update();
  }

  Future<void> updateMemberUnBanStatus(int userId) async {
    for (final member in memberList) {
      member.banned = false;
    }
    update();
  }

  Future<void> removeMember(int userId) async {
    memberList.removeWhere((element) => element.userId == userId);
    if (memberList.isEmpty) {
      loadState.value = LoadState.empty;
    } else {
      loadState.value = LoadState.successful;
    }
    update();
  }

  Future<void> _asyncUserInfo(Member member) async {
    $locUinfo.UserInfo userInfo = await $locUinfo.GetUserInfo(
      member.userId.toInt(),
    );
    member.avatar = userInfo.avatar;
    member.username = userInfo.nickName;
    final FriendInfo friendInfo = await GetFriendInfo(
      member.userId.toInt(),
    );
    if (friendInfo.friendRelation == enFriendRelation.friend) {
      member.remark = friendInfo.remark;
    }
    memberMap[member.userId.toInt()] = member;
    update();
  }

  void load(
    int groupId, {
    String keywords = '',
  }) async {
    final members = await _repository.findMember(
      groupId: groupId,
      keywords: keywords,
    );

    memberList.clear();
    memberList.addAll(members);

    memberList.removeWhere((element) => element.userId == AppUserInfo().imId);

    for (final item in memberList) {
      memberMap[item.userId.toInt()] = item;
      _asyncUserInfo(item);
    }

    if (members.isEmpty) {
      loadState.value = LoadState.empty;
    } else {
      loadState.value = LoadState.successful;
    }



    update();
  }
}
