import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/group_repository.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/widgets/loading.dart';

class GroupActionController extends GetxController {
  final RefreshController refreshController = RefreshController();

  final GroupRepository _repository = GroupRepository();

  int page = 1;
  bool hasNextPage = false;

  bool get isRefresh => page == 1;

  RxList<Member> memberList = RxList();
  Rx<LoadState> loadState = Rx(LoadState.loading);

  Map<int, Member> memberMap = {};

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
      if (member.userId.toInt() == userId) {
        member.banned = true;
      }
    }
    update();
  }

  Future<void> updateMemberUnBanStatus(int userId) async {
    for (final member in memberList) {
      if (member.userId.toInt() == userId) {
        member.banned = false;
      }
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

  void load(int groupId) async {
    final members =
        await _repository.fetchGroupMembers(groupId: groupId, page: page);

    if (isRefresh) {
      memberList.clear();
      refreshController.refreshCompleted(resetFooterState: true);
    }

    memberList.addAll(members);

    memberList.removeWhere((element) => element.userId == AppUserInfo().imId);

    for (final item in memberList) {
      memberMap[item.userId.toInt()] = item;
      _asyncUserInfo(item);
    }

    hasNextPage = members.length >= 100;

    if (members.isEmpty) {
      if (isRefresh) {
        loadState.value = LoadState.empty;
      } else {
        loadState.value = LoadState.successful;
      }
      if (hasNextPage) {
        refreshController.loadComplete();
      } else {
        refreshController.loadNoData();
      }
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
