import 'package:objectbox/objectbox.dart';
import 'package:quliao/utils/safe_convert.dart';

@Entity()
class GroupModel {
  GroupModel({
    this.id = 0,
    this.ownerId = 0,
    this.inviteRoleLimit = 0,
    this.memberCountLimit = 0,
    this.memberChatBannedStatus = 0,
    this.newMemberRemindClosed = 0,
    this.scanCodeJoinGroupSwitchStatus = 0,
    this.memberCount = 0,
    this.noticeVersion = 0,
    this.groupType = 0,
    this.freeJoinStatus = 0,
    this.forbiddenAddFriends = 0,
    this.noDisturb = 0,
  });

  /// 群id
  @Id(assignable: true)
  int id;

  /// 群主id
  int ownerId;

  /// 群聊名称
  String? name;

  /// 是否置顶
  bool? top;
  int inviteRoleLimit;
  int memberCountLimit;
  String? notice;
  String? avatar;
  bool? disbanded;
  String? remark;
  int memberChatBannedStatus;
  int newMemberRemindClosed;
  int scanCodeJoinGroupSwitchStatus;
  String? scanCodeJoinGroupParam;
  bool? banned;
  int memberCount;
  int noticeVersion;
  bool? freeJoin;
  int groupType;
  String? backPic;
  int freeJoinStatus;
  int noDisturb;

  /// 是否允许互加好友
  int forbiddenAddFriends = 0;

  int get groupId => id;

  String get groupName => name ?? '';

  bool get isGroupBanned => banned ?? false;

  bool get isDisbanded => disbanded ?? false;

  /// 对普通用户来说，群聊已禁言
  bool get isBanned => memberChatBannedStatus > 0;

  /// 是否自由加群
  bool get freeJoinGroup => freeJoinStatus == 1;

  /// 是否开启新成员入群提醒
  bool get newMemberRemind => newMemberRemindClosed == 0;

  /// 扫码入群是否开启
  bool get scanCodeJoinGroup => scanCodeJoinGroupSwitchStatus == 1;

  factory GroupModel.fromJson(Map<String, dynamic> json) {
    final model = GroupModel();
    model.id = asT<int>(json, 'groupId');
    model.ownerId = asT<int>(json, 'ownerId');
    model.name = asT<String>(json, 'name');
    model.top = asT<bool>(json, 'top');
    model.inviteRoleLimit = asT<int>(json, 'inviteRoleLimit');
    model.memberCountLimit = asT<int>(json, 'memberCountLimit');
    model.notice = asT<String>(json, 'notice');
    model.avatar = asT<String>(json, 'avatar');
    model.disbanded = asT<bool>(json, 'disbanded');
    model.remark = asT<String>(json, 'remark');
    model.memberChatBannedStatus = asT<int>(json, 'memberChatBannedStatus');
    model.newMemberRemindClosed = asT<int>(json, 'newMemberRemindClosed');
    model.scanCodeJoinGroupSwitchStatus =
        asT<int>(json, 'scanCodeJoinGroupSwitchStatus');
    model.scanCodeJoinGroupParam = asT<String>(json, 'scanCodeJoinGroupParam');
    model.banned = asT<bool>(json, 'banned');
    model.memberCount = asT<int>(json, 'memberCount');
    model.noticeVersion = asT<int>(json, 'noticeVersion');
    model.freeJoin = asT<bool>(json, 'freeJoin');
    model.groupType = asT<int>(json, 'groupType');
    model.freeJoinStatus = asT<int>(json, 'freeJoinStatus');
    model.forbiddenAddFriends = asT<int>(json, 'forbiddenAddFriends');
    // model.backPic = asT<String>(json, 'backPic');
    return model;
  }

  @override
  String toString() {
    return 'GroupModel{id: $id, ownerId: $ownerId, name: $name, top: $top, inviteRoleLimit: $inviteRoleLimit, memberCountLimit: $memberCountLimit, notice: $notice, avatar: $avatar, disbanded: $disbanded, remark: $remark, memberChatBannedStatus: $memberChatBannedStatus, newMemberRemindClosed: $newMemberRemindClosed, scanCodeJoinGroupSwitchStatus: $scanCodeJoinGroupSwitchStatus, scanCodeJoinGroupParam: $scanCodeJoinGroupParam, banned: $banned, memberCount: $memberCount, noticeVersion: $noticeVersion, freeJoin: $freeJoin, groupType: $groupType, backPic: $backPic, freeJoinStatus: $freeJoinStatus, forbiddenAddFriends: $forbiddenAddFriends}';
  }
}
