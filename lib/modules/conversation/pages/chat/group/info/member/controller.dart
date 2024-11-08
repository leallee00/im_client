import 'dart:async';

import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/pages/chat_group/group_repository.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;

class GroupMemberController extends GetxController {
  static GroupMemberController to(String tag) => Get.find(tag: tag);

  final RefreshController refreshController = RefreshController();

  final GroupRepository _repository = GroupRepository();

  int page = 1;
  bool hasNextPage = false;

  bool get isRefresh => page == 1;

  RxList<Member> memberList = RxList();
  Rx<LoadState> loadState = Rx(LoadState.loading);

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
    update();
  }

  void load(int groupId) async {
    final members =
        await _repository.fetchGroupMembers(groupId: groupId, page: page);

    if (isRefresh) {
      memberList.clear();
      refreshController.refreshCompleted(resetFooterState: true);
    }

    memberList.addAll(members);

    for (final item in memberList) {
      _asyncUserInfo(item);
    }

    hasNextPage = members.length >= 100;

    if (members.isEmpty) {
      if (isRefresh) {
        loadState.value = LoadState.empty;
      } else {
        loadState.value = LoadState.successful;
      }
      refreshController.loadNoData();
    } else {
      loadState.value = LoadState.successful;
      if (hasNextPage) {
        refreshController.loadComplete();
      } else {
        refreshController.loadNoData();
      }
    }

    update();
  }

  void onRefresh(int groupId) async {
    page = 1;
    load(groupId);
  }

  void onLoad(int groupId) async {
    if (hasNextPage) {
      page += 1;
      load(groupId);
    } else {
      refreshController.loadNoData();
    }
  }
}
