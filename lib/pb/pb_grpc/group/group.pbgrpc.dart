//
//  Generated code. Do not modify.
//  source: pb_grpc/group/group.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_msg/group/group.pb.dart' as $0;
import '../../pb_pub/comm.pb.dart' as $1;

export 'group.pb.dart';

@$pb.GrpcServiceName('pb_grpc_group.Group')
class GroupClient extends $grpc.Client {
  static final _$createGroup = $grpc.ClientMethod<$0.CreateGroupReq, $0.CreateGroupRsp>(
      '/pb_grpc_group.Group/CreateGroup',
      ($0.CreateGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateGroupRsp.fromBuffer(value));
  static final _$invite = $grpc.ClientMethod<$0.InviteReq, $0.InviteRsp>(
      '/pb_grpc_group.Group/Invite',
      ($0.InviteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InviteRsp.fromBuffer(value));
  static final _$inviteAnswer = $grpc.ClientMethod<$0.InviteAnswerReq, $0.InviteAnswerRsp>(
      '/pb_grpc_group.Group/InviteAnswer',
      ($0.InviteAnswerReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InviteAnswerRsp.fromBuffer(value));
  static final _$apply = $grpc.ClientMethod<$0.ApplyReq, $0.ApplyRsp>(
      '/pb_grpc_group.Group/Apply',
      ($0.ApplyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ApplyRsp.fromBuffer(value));
  static final _$applyAnswer = $grpc.ClientMethod<$0.ApplyAnswerReq, $0.ApplyAnswerRsp>(
      '/pb_grpc_group.Group/ApplyAnswer',
      ($0.ApplyAnswerReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ApplyAnswerRsp.fromBuffer(value));
  static final _$groups = $grpc.ClientMethod<$0.GroupsReq, $0.GroupsRsp>(
      '/pb_grpc_group.Group/Groups',
      ($0.GroupsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupsRsp.fromBuffer(value));
  static final _$groupIds = $grpc.ClientMethod<$0.GroupIdsReq, $0.GroupIdsRsp>(
      '/pb_grpc_group.Group/GroupIds',
      ($0.GroupIdsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupIdsRsp.fromBuffer(value));
  static final _$groupDetail = $grpc.ClientMethod<$0.GroupDetailReq, $0.GroupDetailRsp>(
      '/pb_grpc_group.Group/GroupDetail',
      ($0.GroupDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupDetailRsp.fromBuffer(value));
  static final _$members = $grpc.ClientMethod<$0.MembersReq, $0.MembersRsp>(
      '/pb_grpc_group.Group/Members',
      ($0.MembersReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MembersRsp.fromBuffer(value));
  static final _$findMembers = $grpc.ClientMethod<$0.FindMembersReq, $0.FindMembersRsp>(
      '/pb_grpc_group.Group/FindMembers',
      ($0.FindMembersReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FindMembersRsp.fromBuffer(value));
  static final _$memberDetail = $grpc.ClientMethod<$0.MemberDetailReq, $0.MemberDetailRsp>(
      '/pb_grpc_group.Group/MemberDetail',
      ($0.MemberDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MemberDetailRsp.fromBuffer(value));
  static final _$applications = $grpc.ClientMethod<$0.ApplicationsReq, $0.ApplicationsRsp>(
      '/pb_grpc_group.Group/Applications',
      ($0.ApplicationsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ApplicationsRsp.fromBuffer(value));
  static final _$invitations = $grpc.ClientMethod<$0.InvitationsReq, $0.InvitationsRsp>(
      '/pb_grpc_group.Group/Invitations',
      ($0.InvitationsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InvitationsRsp.fromBuffer(value));
  static final _$editName = $grpc.ClientMethod<$0.EditNameReq, $0.EditNameRsp>(
      '/pb_grpc_group.Group/EditName',
      ($0.EditNameReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditNameRsp.fromBuffer(value));
  static final _$editAvatar = $grpc.ClientMethod<$0.EditAvatarReq, $0.EditAvatarRsp>(
      '/pb_grpc_group.Group/EditAvatar',
      ($0.EditAvatarReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditAvatarRsp.fromBuffer(value));
  static final _$editNotice = $grpc.ClientMethod<$0.EditNoticeReq, $0.EditNoticeRsp>(
      '/pb_grpc_group.Group/EditNotice',
      ($0.EditNoticeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditNoticeRsp.fromBuffer(value));
  static final _$editRemark = $grpc.ClientMethod<$0.EditRemarkReq, $0.EditRemarkRsp>(
      '/pb_grpc_group.Group/EditRemark',
      ($0.EditRemarkReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditRemarkRsp.fromBuffer(value));
  static final _$editBGPic = $grpc.ClientMethod<$0.EditBGPicReq, $0.EditBGPicRsp>(
      '/pb_grpc_group.Group/EditBGPic',
      ($0.EditBGPicReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditBGPicRsp.fromBuffer(value));
  static final _$editInviteRoleLimit = $grpc.ClientMethod<$0.EditInviteRoleLimitReq, $0.EditInviteRoleLimitRsp>(
      '/pb_grpc_group.Group/EditInviteRoleLimit',
      ($0.EditInviteRoleLimitReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditInviteRoleLimitRsp.fromBuffer(value));
  static final _$addAdmins = $grpc.ClientMethod<$0.AddAdminsReq, $0.AddAdminsRsp>(
      '/pb_grpc_group.Group/AddAdmins',
      ($0.AddAdminsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddAdminsRsp.fromBuffer(value));
  static final _$removeAdmins = $grpc.ClientMethod<$0.RemoveAdminsReq, $0.RemoveAdminsRsp>(
      '/pb_grpc_group.Group/RemoveAdmins',
      ($0.RemoveAdminsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RemoveAdminsRsp.fromBuffer(value));
  static final _$groupTransfer = $grpc.ClientMethod<$0.GroupTransferReq, $0.GroupTransferRsp>(
      '/pb_grpc_group.Group/GroupTransfer',
      ($0.GroupTransferReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupTransferRsp.fromBuffer(value));
  static final _$banGroups = $grpc.ClientMethod<$0.BanGroupsReq, $0.BanGroupsRsp>(
      '/pb_grpc_group.Group/BanGroups',
      ($0.BanGroupsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BanGroupsRsp.fromBuffer(value));
  static final _$unbanGroups = $grpc.ClientMethod<$0.UnbanGroupsReq, $0.UnbanGroupsRsp>(
      '/pb_grpc_group.Group/UnbanGroups',
      ($0.UnbanGroupsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UnbanGroupsRsp.fromBuffer(value));
  static final _$disbandGroups = $grpc.ClientMethod<$0.DisbandGroupsReq, $0.DisbandGroupsRsp>(
      '/pb_grpc_group.Group/DisbandGroups',
      ($0.DisbandGroupsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DisbandGroupsRsp.fromBuffer(value));
  static final _$quit = $grpc.ClientMethod<$0.QuitReq, $0.QuitRsp>(
      '/pb_grpc_group.Group/Quit',
      ($0.QuitReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.QuitRsp.fromBuffer(value));
  static final _$banMember = $grpc.ClientMethod<$0.BanMemberReq, $0.BanMemberRsp>(
      '/pb_grpc_group.Group/BanMember',
      ($0.BanMemberReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BanMemberRsp.fromBuffer(value));
  static final _$unbanMember = $grpc.ClientMethod<$0.UnbanMemberReq, $0.UnbanMemberRsp>(
      '/pb_grpc_group.Group/UnbanMember',
      ($0.UnbanMemberReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UnbanMemberRsp.fromBuffer(value));
  static final _$kickout = $grpc.ClientMethod<$0.KickoutReq, $0.KickoutRsp>(
      '/pb_grpc_group.Group/Kickout',
      ($0.KickoutReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.KickoutRsp.fromBuffer(value));
  static final _$getOneGroupHistoryMsg = $grpc.ClientMethod<$0.OneGroupHistoryMsgReq, $0.OneGroupHistoryMsgRsp>(
      '/pb_grpc_group.Group/GetOneGroupHistoryMsg',
      ($0.OneGroupHistoryMsgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OneGroupHistoryMsgRsp.fromBuffer(value));
  static final _$delGroupHistoryMsg = $grpc.ClientMethod<$0.DelGroupHistoryMsgReq, $0.DelGroupHistoryMsgRsp>(
      '/pb_grpc_group.Group/DelGroupHistoryMsg',
      ($0.DelGroupHistoryMsgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DelGroupHistoryMsgRsp.fromBuffer(value));
  static final _$getGroupMsgReadList = $grpc.ClientMethod<$0.GroupMsgReadListReq, $0.GroupMsgReadListRsp>(
      '/pb_grpc_group.Group/GetGroupMsgReadList',
      ($0.GroupMsgReadListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupMsgReadListRsp.fromBuffer(value));
  static final _$msgRecall = $grpc.ClientMethod<$1.MsgRecallReq, $1.MsgRecallRsp>(
      '/pb_grpc_group.Group/MsgRecall',
      ($1.MsgRecallReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.MsgRecallRsp.fromBuffer(value));
  static final _$msgChange = $grpc.ClientMethod<$1.MsgChangeReq, $1.MsgChangeRsp>(
      '/pb_grpc_group.Group/MsgChange',
      ($1.MsgChangeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.MsgChangeRsp.fromBuffer(value));
  static final _$readyForGroupsNewMsgInfo = $grpc.ClientMethod<$0.ReadyForGroupsNewMsgInfoReq, $0.ReadyForGroupsNewMsgInfoRsp>(
      '/pb_grpc_group.Group/ReadyForGroupsNewMsgInfo',
      ($0.ReadyForGroupsNewMsgInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadyForGroupsNewMsgInfoRsp.fromBuffer(value));
  static final _$fetchGroupHistoryMsg = $grpc.ClientMethod<$0.FetchGroupHistoryMsgReq, $0.FetchGroupHistoryMsgRsp>(
      '/pb_grpc_group.Group/FetchGroupHistoryMsg',
      ($0.FetchGroupHistoryMsgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchGroupHistoryMsgRsp.fromBuffer(value));
  static final _$fetchGroupHistoryMsgFromGroupMsgSn = $grpc.ClientMethod<$0.FetchGroupHistoryMsgFromGroupMsgSnReq, $0.FetchGroupHistoryMsgFromGroupMsgSnRsp>(
      '/pb_grpc_group.Group/FetchGroupHistoryMsgFromGroupMsgSn',
      ($0.FetchGroupHistoryMsgFromGroupMsgSnReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchGroupHistoryMsgFromGroupMsgSnRsp.fromBuffer(value));
  static final _$groupTopSet = $grpc.ClientMethod<$0.GroupTopSetReq, $0.GroupTopSetRsp>(
      '/pb_grpc_group.Group/GroupTopSet',
      ($0.GroupTopSetReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupTopSetRsp.fromBuffer(value));
  static final _$editGroupRemark = $grpc.ClientMethod<$0.EditGroupRemarkReq, $0.EditGroupRemarkRsp>(
      '/pb_grpc_group.Group/EditGroupRemark',
      ($0.EditGroupRemarkReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditGroupRemarkRsp.fromBuffer(value));
  static final _$editMemberRemark = $grpc.ClientMethod<$0.EditMemberRemarkReq, $0.EditMemberRemarkRsp>(
      '/pb_grpc_group.Group/EditMemberRemark',
      ($0.EditMemberRemarkReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditMemberRemarkRsp.fromBuffer(value));
  static final _$isGroupMember = $grpc.ClientMethod<$0.IsGroupMemberReq, $0.IsGroupMemberRsp>(
      '/pb_grpc_group.Group/IsGroupMember',
      ($0.IsGroupMemberReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IsGroupMemberRsp.fromBuffer(value));
  static final _$setMemberChatBannedStatus = $grpc.ClientMethod<$0.SetMemberChatBannedStatusReq, $0.SetMemberChatBannedStatusRsp>(
      '/pb_grpc_group.Group/SetMemberChatBannedStatus',
      ($0.SetMemberChatBannedStatusReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetMemberChatBannedStatusRsp.fromBuffer(value));
  static final _$setNewMemberRemind = $grpc.ClientMethod<$0.SetNewMemberRemindReq, $0.SetNewMemberRemindRsp>(
      '/pb_grpc_group.Group/SetNewMemberRemind',
      ($0.SetNewMemberRemindReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetNewMemberRemindRsp.fromBuffer(value));
  static final _$setScanCodeJoinGroupSwitch = $grpc.ClientMethod<$0.SetScanCodeJoinGroupSwitchReq, $0.SetScanCodeJoinGroupSwitchRsp>(
      '/pb_grpc_group.Group/SetScanCodeJoinGroupSwitch',
      ($0.SetScanCodeJoinGroupSwitchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetScanCodeJoinGroupSwitchRsp.fromBuffer(value));
  static final _$clearHisMsg = $grpc.ClientMethod<$0.ClearHisMsgReq, $0.ClearHisMsgRsp>(
      '/pb_grpc_group.Group/ClearHisMsg',
      ($0.ClearHisMsgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ClearHisMsgRsp.fromBuffer(value));
  static final _$setFreeJoinStatus = $grpc.ClientMethod<$0.SetFreeJoinStatusReq, $0.SetFreeJoinStatusRsp>(
      '/pb_grpc_group.Group/SetFreeJoinStatus',
      ($0.SetFreeJoinStatusReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetFreeJoinStatusRsp.fromBuffer(value));
  static final _$setGroupProperty = $grpc.ClientMethod<$0.SetGroupPropReq, $1.CommRsp>(
      '/pb_grpc_group.Group/SetGroupProperty',
      ($0.SetGroupPropReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));

  GroupClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateGroupRsp> createGroup($0.CreateGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.InviteRsp> invite($0.InviteReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invite, request, options: options);
  }

  $grpc.ResponseFuture<$0.InviteAnswerRsp> inviteAnswer($0.InviteAnswerReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteAnswer, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApplyRsp> apply($0.ApplyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apply, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApplyAnswerRsp> applyAnswer($0.ApplyAnswerReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$applyAnswer, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupsRsp> groups($0.GroupsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groups, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupIdsRsp> groupIds($0.GroupIdsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupIds, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupDetailRsp> groupDetail($0.GroupDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupDetail, request, options: options);
  }

  $grpc.ResponseFuture<$0.MembersRsp> members($0.MembersReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$members, request, options: options);
  }

  $grpc.ResponseFuture<$0.FindMembersRsp> findMembers($0.FindMembersReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findMembers, request, options: options);
  }

  $grpc.ResponseFuture<$0.MemberDetailRsp> memberDetail($0.MemberDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$memberDetail, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApplicationsRsp> applications($0.ApplicationsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$applications, request, options: options);
  }

  $grpc.ResponseFuture<$0.InvitationsRsp> invitations($0.InvitationsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invitations, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditNameRsp> editName($0.EditNameReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editName, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditAvatarRsp> editAvatar($0.EditAvatarReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editAvatar, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditNoticeRsp> editNotice($0.EditNoticeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editNotice, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditRemarkRsp> editRemark($0.EditRemarkReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editRemark, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditBGPicRsp> editBGPic($0.EditBGPicReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editBGPic, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditInviteRoleLimitRsp> editInviteRoleLimit($0.EditInviteRoleLimitReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editInviteRoleLimit, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddAdminsRsp> addAdmins($0.AddAdminsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addAdmins, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveAdminsRsp> removeAdmins($0.RemoveAdminsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeAdmins, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupTransferRsp> groupTransfer($0.GroupTransferReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupTransfer, request, options: options);
  }

  $grpc.ResponseFuture<$0.BanGroupsRsp> banGroups($0.BanGroupsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$banGroups, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnbanGroupsRsp> unbanGroups($0.UnbanGroupsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unbanGroups, request, options: options);
  }

  $grpc.ResponseFuture<$0.DisbandGroupsRsp> disbandGroups($0.DisbandGroupsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disbandGroups, request, options: options);
  }

  $grpc.ResponseFuture<$0.QuitRsp> quit($0.QuitReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$quit, request, options: options);
  }

  $grpc.ResponseFuture<$0.BanMemberRsp> banMember($0.BanMemberReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$banMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnbanMemberRsp> unbanMember($0.UnbanMemberReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unbanMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.KickoutRsp> kickout($0.KickoutReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$kickout, request, options: options);
  }

  $grpc.ResponseFuture<$0.OneGroupHistoryMsgRsp> getOneGroupHistoryMsg($0.OneGroupHistoryMsgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOneGroupHistoryMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelGroupHistoryMsgRsp> delGroupHistoryMsg($0.DelGroupHistoryMsgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delGroupHistoryMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupMsgReadListRsp> getGroupMsgReadList($0.GroupMsgReadListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroupMsgReadList, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgRecallRsp> msgRecall($1.MsgRecallReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$msgRecall, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgChangeRsp> msgChange($1.MsgChangeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$msgChange, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadyForGroupsNewMsgInfoRsp> readyForGroupsNewMsgInfo($0.ReadyForGroupsNewMsgInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readyForGroupsNewMsgInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchGroupHistoryMsgRsp> fetchGroupHistoryMsg($0.FetchGroupHistoryMsgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchGroupHistoryMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchGroupHistoryMsgFromGroupMsgSnRsp> fetchGroupHistoryMsgFromGroupMsgSn($0.FetchGroupHistoryMsgFromGroupMsgSnReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchGroupHistoryMsgFromGroupMsgSn, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupTopSetRsp> groupTopSet($0.GroupTopSetReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupTopSet, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditGroupRemarkRsp> editGroupRemark($0.EditGroupRemarkReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editGroupRemark, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditMemberRemarkRsp> editMemberRemark($0.EditMemberRemarkReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editMemberRemark, request, options: options);
  }

  $grpc.ResponseFuture<$0.IsGroupMemberRsp> isGroupMember($0.IsGroupMemberReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isGroupMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetMemberChatBannedStatusRsp> setMemberChatBannedStatus($0.SetMemberChatBannedStatusReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setMemberChatBannedStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetNewMemberRemindRsp> setNewMemberRemind($0.SetNewMemberRemindReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setNewMemberRemind, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetScanCodeJoinGroupSwitchRsp> setScanCodeJoinGroupSwitch($0.SetScanCodeJoinGroupSwitchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setScanCodeJoinGroupSwitch, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClearHisMsgRsp> clearHisMsg($0.ClearHisMsgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$clearHisMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetFreeJoinStatusRsp> setFreeJoinStatus($0.SetFreeJoinStatusReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setFreeJoinStatus, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> setGroupProperty($0.SetGroupPropReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setGroupProperty, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_group.Group')
abstract class GroupServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_group.Group';

  GroupServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateGroupReq, $0.CreateGroupRsp>(
        'CreateGroup',
        createGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateGroupReq.fromBuffer(value),
        ($0.CreateGroupRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InviteReq, $0.InviteRsp>(
        'Invite',
        invite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InviteReq.fromBuffer(value),
        ($0.InviteRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InviteAnswerReq, $0.InviteAnswerRsp>(
        'InviteAnswer',
        inviteAnswer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InviteAnswerReq.fromBuffer(value),
        ($0.InviteAnswerRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApplyReq, $0.ApplyRsp>(
        'Apply',
        apply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApplyReq.fromBuffer(value),
        ($0.ApplyRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApplyAnswerReq, $0.ApplyAnswerRsp>(
        'ApplyAnswer',
        applyAnswer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApplyAnswerReq.fromBuffer(value),
        ($0.ApplyAnswerRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupsReq, $0.GroupsRsp>(
        'Groups',
        groups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupsReq.fromBuffer(value),
        ($0.GroupsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupIdsReq, $0.GroupIdsRsp>(
        'GroupIds',
        groupIds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupIdsReq.fromBuffer(value),
        ($0.GroupIdsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupDetailReq, $0.GroupDetailRsp>(
        'GroupDetail',
        groupDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupDetailReq.fromBuffer(value),
        ($0.GroupDetailRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MembersReq, $0.MembersRsp>(
        'Members',
        members_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MembersReq.fromBuffer(value),
        ($0.MembersRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindMembersReq, $0.FindMembersRsp>(
        'FindMembers',
        findMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FindMembersReq.fromBuffer(value),
        ($0.FindMembersRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MemberDetailReq, $0.MemberDetailRsp>(
        'MemberDetail',
        memberDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MemberDetailReq.fromBuffer(value),
        ($0.MemberDetailRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApplicationsReq, $0.ApplicationsRsp>(
        'Applications',
        applications_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApplicationsReq.fromBuffer(value),
        ($0.ApplicationsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InvitationsReq, $0.InvitationsRsp>(
        'Invitations',
        invitations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InvitationsReq.fromBuffer(value),
        ($0.InvitationsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditNameReq, $0.EditNameRsp>(
        'EditName',
        editName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditNameReq.fromBuffer(value),
        ($0.EditNameRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditAvatarReq, $0.EditAvatarRsp>(
        'EditAvatar',
        editAvatar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditAvatarReq.fromBuffer(value),
        ($0.EditAvatarRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditNoticeReq, $0.EditNoticeRsp>(
        'EditNotice',
        editNotice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditNoticeReq.fromBuffer(value),
        ($0.EditNoticeRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditRemarkReq, $0.EditRemarkRsp>(
        'EditRemark',
        editRemark_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditRemarkReq.fromBuffer(value),
        ($0.EditRemarkRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditBGPicReq, $0.EditBGPicRsp>(
        'EditBGPic',
        editBGPic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditBGPicReq.fromBuffer(value),
        ($0.EditBGPicRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditInviteRoleLimitReq, $0.EditInviteRoleLimitRsp>(
        'EditInviteRoleLimit',
        editInviteRoleLimit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditInviteRoleLimitReq.fromBuffer(value),
        ($0.EditInviteRoleLimitRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddAdminsReq, $0.AddAdminsRsp>(
        'AddAdmins',
        addAdmins_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddAdminsReq.fromBuffer(value),
        ($0.AddAdminsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveAdminsReq, $0.RemoveAdminsRsp>(
        'RemoveAdmins',
        removeAdmins_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveAdminsReq.fromBuffer(value),
        ($0.RemoveAdminsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupTransferReq, $0.GroupTransferRsp>(
        'GroupTransfer',
        groupTransfer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupTransferReq.fromBuffer(value),
        ($0.GroupTransferRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BanGroupsReq, $0.BanGroupsRsp>(
        'BanGroups',
        banGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BanGroupsReq.fromBuffer(value),
        ($0.BanGroupsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnbanGroupsReq, $0.UnbanGroupsRsp>(
        'UnbanGroups',
        unbanGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnbanGroupsReq.fromBuffer(value),
        ($0.UnbanGroupsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DisbandGroupsReq, $0.DisbandGroupsRsp>(
        'DisbandGroups',
        disbandGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DisbandGroupsReq.fromBuffer(value),
        ($0.DisbandGroupsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QuitReq, $0.QuitRsp>(
        'Quit',
        quit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QuitReq.fromBuffer(value),
        ($0.QuitRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BanMemberReq, $0.BanMemberRsp>(
        'BanMember',
        banMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BanMemberReq.fromBuffer(value),
        ($0.BanMemberRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnbanMemberReq, $0.UnbanMemberRsp>(
        'UnbanMember',
        unbanMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnbanMemberReq.fromBuffer(value),
        ($0.UnbanMemberRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KickoutReq, $0.KickoutRsp>(
        'Kickout',
        kickout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.KickoutReq.fromBuffer(value),
        ($0.KickoutRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OneGroupHistoryMsgReq, $0.OneGroupHistoryMsgRsp>(
        'GetOneGroupHistoryMsg',
        getOneGroupHistoryMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OneGroupHistoryMsgReq.fromBuffer(value),
        ($0.OneGroupHistoryMsgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelGroupHistoryMsgReq, $0.DelGroupHistoryMsgRsp>(
        'DelGroupHistoryMsg',
        delGroupHistoryMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelGroupHistoryMsgReq.fromBuffer(value),
        ($0.DelGroupHistoryMsgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupMsgReadListReq, $0.GroupMsgReadListRsp>(
        'GetGroupMsgReadList',
        getGroupMsgReadList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupMsgReadListReq.fromBuffer(value),
        ($0.GroupMsgReadListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgRecallReq, $1.MsgRecallRsp>(
        'MsgRecall',
        msgRecall_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgRecallReq.fromBuffer(value),
        ($1.MsgRecallRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgChangeReq, $1.MsgChangeRsp>(
        'MsgChange',
        msgChange_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgChangeReq.fromBuffer(value),
        ($1.MsgChangeRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadyForGroupsNewMsgInfoReq, $0.ReadyForGroupsNewMsgInfoRsp>(
        'ReadyForGroupsNewMsgInfo',
        readyForGroupsNewMsgInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadyForGroupsNewMsgInfoReq.fromBuffer(value),
        ($0.ReadyForGroupsNewMsgInfoRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchGroupHistoryMsgReq, $0.FetchGroupHistoryMsgRsp>(
        'FetchGroupHistoryMsg',
        fetchGroupHistoryMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchGroupHistoryMsgReq.fromBuffer(value),
        ($0.FetchGroupHistoryMsgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchGroupHistoryMsgFromGroupMsgSnReq, $0.FetchGroupHistoryMsgFromGroupMsgSnRsp>(
        'FetchGroupHistoryMsgFromGroupMsgSn',
        fetchGroupHistoryMsgFromGroupMsgSn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchGroupHistoryMsgFromGroupMsgSnReq.fromBuffer(value),
        ($0.FetchGroupHistoryMsgFromGroupMsgSnRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupTopSetReq, $0.GroupTopSetRsp>(
        'GroupTopSet',
        groupTopSet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupTopSetReq.fromBuffer(value),
        ($0.GroupTopSetRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditGroupRemarkReq, $0.EditGroupRemarkRsp>(
        'EditGroupRemark',
        editGroupRemark_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditGroupRemarkReq.fromBuffer(value),
        ($0.EditGroupRemarkRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditMemberRemarkReq, $0.EditMemberRemarkRsp>(
        'EditMemberRemark',
        editMemberRemark_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditMemberRemarkReq.fromBuffer(value),
        ($0.EditMemberRemarkRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IsGroupMemberReq, $0.IsGroupMemberRsp>(
        'IsGroupMember',
        isGroupMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IsGroupMemberReq.fromBuffer(value),
        ($0.IsGroupMemberRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetMemberChatBannedStatusReq, $0.SetMemberChatBannedStatusRsp>(
        'SetMemberChatBannedStatus',
        setMemberChatBannedStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetMemberChatBannedStatusReq.fromBuffer(value),
        ($0.SetMemberChatBannedStatusRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetNewMemberRemindReq, $0.SetNewMemberRemindRsp>(
        'SetNewMemberRemind',
        setNewMemberRemind_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetNewMemberRemindReq.fromBuffer(value),
        ($0.SetNewMemberRemindRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetScanCodeJoinGroupSwitchReq, $0.SetScanCodeJoinGroupSwitchRsp>(
        'SetScanCodeJoinGroupSwitch',
        setScanCodeJoinGroupSwitch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetScanCodeJoinGroupSwitchReq.fromBuffer(value),
        ($0.SetScanCodeJoinGroupSwitchRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClearHisMsgReq, $0.ClearHisMsgRsp>(
        'ClearHisMsg',
        clearHisMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ClearHisMsgReq.fromBuffer(value),
        ($0.ClearHisMsgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetFreeJoinStatusReq, $0.SetFreeJoinStatusRsp>(
        'SetFreeJoinStatus',
        setFreeJoinStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetFreeJoinStatusReq.fromBuffer(value),
        ($0.SetFreeJoinStatusRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetGroupPropReq, $1.CommRsp>(
        'SetGroupProperty',
        setGroupProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetGroupPropReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateGroupRsp> createGroup_Pre($grpc.ServiceCall call, $async.Future<$0.CreateGroupReq> request) async {
    return createGroup(call, await request);
  }

  $async.Future<$0.InviteRsp> invite_Pre($grpc.ServiceCall call, $async.Future<$0.InviteReq> request) async {
    return invite(call, await request);
  }

  $async.Future<$0.InviteAnswerRsp> inviteAnswer_Pre($grpc.ServiceCall call, $async.Future<$0.InviteAnswerReq> request) async {
    return inviteAnswer(call, await request);
  }

  $async.Future<$0.ApplyRsp> apply_Pre($grpc.ServiceCall call, $async.Future<$0.ApplyReq> request) async {
    return apply(call, await request);
  }

  $async.Future<$0.ApplyAnswerRsp> applyAnswer_Pre($grpc.ServiceCall call, $async.Future<$0.ApplyAnswerReq> request) async {
    return applyAnswer(call, await request);
  }

  $async.Future<$0.GroupsRsp> groups_Pre($grpc.ServiceCall call, $async.Future<$0.GroupsReq> request) async {
    return groups(call, await request);
  }

  $async.Future<$0.GroupIdsRsp> groupIds_Pre($grpc.ServiceCall call, $async.Future<$0.GroupIdsReq> request) async {
    return groupIds(call, await request);
  }

  $async.Future<$0.GroupDetailRsp> groupDetail_Pre($grpc.ServiceCall call, $async.Future<$0.GroupDetailReq> request) async {
    return groupDetail(call, await request);
  }

  $async.Future<$0.MembersRsp> members_Pre($grpc.ServiceCall call, $async.Future<$0.MembersReq> request) async {
    return members(call, await request);
  }

  $async.Future<$0.FindMembersRsp> findMembers_Pre($grpc.ServiceCall call, $async.Future<$0.FindMembersReq> request) async {
    return findMembers(call, await request);
  }

  $async.Future<$0.MemberDetailRsp> memberDetail_Pre($grpc.ServiceCall call, $async.Future<$0.MemberDetailReq> request) async {
    return memberDetail(call, await request);
  }

  $async.Future<$0.ApplicationsRsp> applications_Pre($grpc.ServiceCall call, $async.Future<$0.ApplicationsReq> request) async {
    return applications(call, await request);
  }

  $async.Future<$0.InvitationsRsp> invitations_Pre($grpc.ServiceCall call, $async.Future<$0.InvitationsReq> request) async {
    return invitations(call, await request);
  }

  $async.Future<$0.EditNameRsp> editName_Pre($grpc.ServiceCall call, $async.Future<$0.EditNameReq> request) async {
    return editName(call, await request);
  }

  $async.Future<$0.EditAvatarRsp> editAvatar_Pre($grpc.ServiceCall call, $async.Future<$0.EditAvatarReq> request) async {
    return editAvatar(call, await request);
  }

  $async.Future<$0.EditNoticeRsp> editNotice_Pre($grpc.ServiceCall call, $async.Future<$0.EditNoticeReq> request) async {
    return editNotice(call, await request);
  }

  $async.Future<$0.EditRemarkRsp> editRemark_Pre($grpc.ServiceCall call, $async.Future<$0.EditRemarkReq> request) async {
    return editRemark(call, await request);
  }

  $async.Future<$0.EditBGPicRsp> editBGPic_Pre($grpc.ServiceCall call, $async.Future<$0.EditBGPicReq> request) async {
    return editBGPic(call, await request);
  }

  $async.Future<$0.EditInviteRoleLimitRsp> editInviteRoleLimit_Pre($grpc.ServiceCall call, $async.Future<$0.EditInviteRoleLimitReq> request) async {
    return editInviteRoleLimit(call, await request);
  }

  $async.Future<$0.AddAdminsRsp> addAdmins_Pre($grpc.ServiceCall call, $async.Future<$0.AddAdminsReq> request) async {
    return addAdmins(call, await request);
  }

  $async.Future<$0.RemoveAdminsRsp> removeAdmins_Pre($grpc.ServiceCall call, $async.Future<$0.RemoveAdminsReq> request) async {
    return removeAdmins(call, await request);
  }

  $async.Future<$0.GroupTransferRsp> groupTransfer_Pre($grpc.ServiceCall call, $async.Future<$0.GroupTransferReq> request) async {
    return groupTransfer(call, await request);
  }

  $async.Future<$0.BanGroupsRsp> banGroups_Pre($grpc.ServiceCall call, $async.Future<$0.BanGroupsReq> request) async {
    return banGroups(call, await request);
  }

  $async.Future<$0.UnbanGroupsRsp> unbanGroups_Pre($grpc.ServiceCall call, $async.Future<$0.UnbanGroupsReq> request) async {
    return unbanGroups(call, await request);
  }

  $async.Future<$0.DisbandGroupsRsp> disbandGroups_Pre($grpc.ServiceCall call, $async.Future<$0.DisbandGroupsReq> request) async {
    return disbandGroups(call, await request);
  }

  $async.Future<$0.QuitRsp> quit_Pre($grpc.ServiceCall call, $async.Future<$0.QuitReq> request) async {
    return quit(call, await request);
  }

  $async.Future<$0.BanMemberRsp> banMember_Pre($grpc.ServiceCall call, $async.Future<$0.BanMemberReq> request) async {
    return banMember(call, await request);
  }

  $async.Future<$0.UnbanMemberRsp> unbanMember_Pre($grpc.ServiceCall call, $async.Future<$0.UnbanMemberReq> request) async {
    return unbanMember(call, await request);
  }

  $async.Future<$0.KickoutRsp> kickout_Pre($grpc.ServiceCall call, $async.Future<$0.KickoutReq> request) async {
    return kickout(call, await request);
  }

  $async.Future<$0.OneGroupHistoryMsgRsp> getOneGroupHistoryMsg_Pre($grpc.ServiceCall call, $async.Future<$0.OneGroupHistoryMsgReq> request) async {
    return getOneGroupHistoryMsg(call, await request);
  }

  $async.Future<$0.DelGroupHistoryMsgRsp> delGroupHistoryMsg_Pre($grpc.ServiceCall call, $async.Future<$0.DelGroupHistoryMsgReq> request) async {
    return delGroupHistoryMsg(call, await request);
  }

  $async.Future<$0.GroupMsgReadListRsp> getGroupMsgReadList_Pre($grpc.ServiceCall call, $async.Future<$0.GroupMsgReadListReq> request) async {
    return getGroupMsgReadList(call, await request);
  }

  $async.Future<$1.MsgRecallRsp> msgRecall_Pre($grpc.ServiceCall call, $async.Future<$1.MsgRecallReq> request) async {
    return msgRecall(call, await request);
  }

  $async.Future<$1.MsgChangeRsp> msgChange_Pre($grpc.ServiceCall call, $async.Future<$1.MsgChangeReq> request) async {
    return msgChange(call, await request);
  }

  $async.Future<$0.ReadyForGroupsNewMsgInfoRsp> readyForGroupsNewMsgInfo_Pre($grpc.ServiceCall call, $async.Future<$0.ReadyForGroupsNewMsgInfoReq> request) async {
    return readyForGroupsNewMsgInfo(call, await request);
  }

  $async.Future<$0.FetchGroupHistoryMsgRsp> fetchGroupHistoryMsg_Pre($grpc.ServiceCall call, $async.Future<$0.FetchGroupHistoryMsgReq> request) async {
    return fetchGroupHistoryMsg(call, await request);
  }

  $async.Future<$0.FetchGroupHistoryMsgFromGroupMsgSnRsp> fetchGroupHistoryMsgFromGroupMsgSn_Pre($grpc.ServiceCall call, $async.Future<$0.FetchGroupHistoryMsgFromGroupMsgSnReq> request) async {
    return fetchGroupHistoryMsgFromGroupMsgSn(call, await request);
  }

  $async.Future<$0.GroupTopSetRsp> groupTopSet_Pre($grpc.ServiceCall call, $async.Future<$0.GroupTopSetReq> request) async {
    return groupTopSet(call, await request);
  }

  $async.Future<$0.EditGroupRemarkRsp> editGroupRemark_Pre($grpc.ServiceCall call, $async.Future<$0.EditGroupRemarkReq> request) async {
    return editGroupRemark(call, await request);
  }

  $async.Future<$0.EditMemberRemarkRsp> editMemberRemark_Pre($grpc.ServiceCall call, $async.Future<$0.EditMemberRemarkReq> request) async {
    return editMemberRemark(call, await request);
  }

  $async.Future<$0.IsGroupMemberRsp> isGroupMember_Pre($grpc.ServiceCall call, $async.Future<$0.IsGroupMemberReq> request) async {
    return isGroupMember(call, await request);
  }

  $async.Future<$0.SetMemberChatBannedStatusRsp> setMemberChatBannedStatus_Pre($grpc.ServiceCall call, $async.Future<$0.SetMemberChatBannedStatusReq> request) async {
    return setMemberChatBannedStatus(call, await request);
  }

  $async.Future<$0.SetNewMemberRemindRsp> setNewMemberRemind_Pre($grpc.ServiceCall call, $async.Future<$0.SetNewMemberRemindReq> request) async {
    return setNewMemberRemind(call, await request);
  }

  $async.Future<$0.SetScanCodeJoinGroupSwitchRsp> setScanCodeJoinGroupSwitch_Pre($grpc.ServiceCall call, $async.Future<$0.SetScanCodeJoinGroupSwitchReq> request) async {
    return setScanCodeJoinGroupSwitch(call, await request);
  }

  $async.Future<$0.ClearHisMsgRsp> clearHisMsg_Pre($grpc.ServiceCall call, $async.Future<$0.ClearHisMsgReq> request) async {
    return clearHisMsg(call, await request);
  }

  $async.Future<$0.SetFreeJoinStatusRsp> setFreeJoinStatus_Pre($grpc.ServiceCall call, $async.Future<$0.SetFreeJoinStatusReq> request) async {
    return setFreeJoinStatus(call, await request);
  }

  $async.Future<$1.CommRsp> setGroupProperty_Pre($grpc.ServiceCall call, $async.Future<$0.SetGroupPropReq> request) async {
    return setGroupProperty(call, await request);
  }

  $async.Future<$0.CreateGroupRsp> createGroup($grpc.ServiceCall call, $0.CreateGroupReq request);
  $async.Future<$0.InviteRsp> invite($grpc.ServiceCall call, $0.InviteReq request);
  $async.Future<$0.InviteAnswerRsp> inviteAnswer($grpc.ServiceCall call, $0.InviteAnswerReq request);
  $async.Future<$0.ApplyRsp> apply($grpc.ServiceCall call, $0.ApplyReq request);
  $async.Future<$0.ApplyAnswerRsp> applyAnswer($grpc.ServiceCall call, $0.ApplyAnswerReq request);
  $async.Future<$0.GroupsRsp> groups($grpc.ServiceCall call, $0.GroupsReq request);
  $async.Future<$0.GroupIdsRsp> groupIds($grpc.ServiceCall call, $0.GroupIdsReq request);
  $async.Future<$0.GroupDetailRsp> groupDetail($grpc.ServiceCall call, $0.GroupDetailReq request);
  $async.Future<$0.MembersRsp> members($grpc.ServiceCall call, $0.MembersReq request);
  $async.Future<$0.FindMembersRsp> findMembers($grpc.ServiceCall call, $0.FindMembersReq request);
  $async.Future<$0.MemberDetailRsp> memberDetail($grpc.ServiceCall call, $0.MemberDetailReq request);
  $async.Future<$0.ApplicationsRsp> applications($grpc.ServiceCall call, $0.ApplicationsReq request);
  $async.Future<$0.InvitationsRsp> invitations($grpc.ServiceCall call, $0.InvitationsReq request);
  $async.Future<$0.EditNameRsp> editName($grpc.ServiceCall call, $0.EditNameReq request);
  $async.Future<$0.EditAvatarRsp> editAvatar($grpc.ServiceCall call, $0.EditAvatarReq request);
  $async.Future<$0.EditNoticeRsp> editNotice($grpc.ServiceCall call, $0.EditNoticeReq request);
  $async.Future<$0.EditRemarkRsp> editRemark($grpc.ServiceCall call, $0.EditRemarkReq request);
  $async.Future<$0.EditBGPicRsp> editBGPic($grpc.ServiceCall call, $0.EditBGPicReq request);
  $async.Future<$0.EditInviteRoleLimitRsp> editInviteRoleLimit($grpc.ServiceCall call, $0.EditInviteRoleLimitReq request);
  $async.Future<$0.AddAdminsRsp> addAdmins($grpc.ServiceCall call, $0.AddAdminsReq request);
  $async.Future<$0.RemoveAdminsRsp> removeAdmins($grpc.ServiceCall call, $0.RemoveAdminsReq request);
  $async.Future<$0.GroupTransferRsp> groupTransfer($grpc.ServiceCall call, $0.GroupTransferReq request);
  $async.Future<$0.BanGroupsRsp> banGroups($grpc.ServiceCall call, $0.BanGroupsReq request);
  $async.Future<$0.UnbanGroupsRsp> unbanGroups($grpc.ServiceCall call, $0.UnbanGroupsReq request);
  $async.Future<$0.DisbandGroupsRsp> disbandGroups($grpc.ServiceCall call, $0.DisbandGroupsReq request);
  $async.Future<$0.QuitRsp> quit($grpc.ServiceCall call, $0.QuitReq request);
  $async.Future<$0.BanMemberRsp> banMember($grpc.ServiceCall call, $0.BanMemberReq request);
  $async.Future<$0.UnbanMemberRsp> unbanMember($grpc.ServiceCall call, $0.UnbanMemberReq request);
  $async.Future<$0.KickoutRsp> kickout($grpc.ServiceCall call, $0.KickoutReq request);
  $async.Future<$0.OneGroupHistoryMsgRsp> getOneGroupHistoryMsg($grpc.ServiceCall call, $0.OneGroupHistoryMsgReq request);
  $async.Future<$0.DelGroupHistoryMsgRsp> delGroupHistoryMsg($grpc.ServiceCall call, $0.DelGroupHistoryMsgReq request);
  $async.Future<$0.GroupMsgReadListRsp> getGroupMsgReadList($grpc.ServiceCall call, $0.GroupMsgReadListReq request);
  $async.Future<$1.MsgRecallRsp> msgRecall($grpc.ServiceCall call, $1.MsgRecallReq request);
  $async.Future<$1.MsgChangeRsp> msgChange($grpc.ServiceCall call, $1.MsgChangeReq request);
  $async.Future<$0.ReadyForGroupsNewMsgInfoRsp> readyForGroupsNewMsgInfo($grpc.ServiceCall call, $0.ReadyForGroupsNewMsgInfoReq request);
  $async.Future<$0.FetchGroupHistoryMsgRsp> fetchGroupHistoryMsg($grpc.ServiceCall call, $0.FetchGroupHistoryMsgReq request);
  $async.Future<$0.FetchGroupHistoryMsgFromGroupMsgSnRsp> fetchGroupHistoryMsgFromGroupMsgSn($grpc.ServiceCall call, $0.FetchGroupHistoryMsgFromGroupMsgSnReq request);
  $async.Future<$0.GroupTopSetRsp> groupTopSet($grpc.ServiceCall call, $0.GroupTopSetReq request);
  $async.Future<$0.EditGroupRemarkRsp> editGroupRemark($grpc.ServiceCall call, $0.EditGroupRemarkReq request);
  $async.Future<$0.EditMemberRemarkRsp> editMemberRemark($grpc.ServiceCall call, $0.EditMemberRemarkReq request);
  $async.Future<$0.IsGroupMemberRsp> isGroupMember($grpc.ServiceCall call, $0.IsGroupMemberReq request);
  $async.Future<$0.SetMemberChatBannedStatusRsp> setMemberChatBannedStatus($grpc.ServiceCall call, $0.SetMemberChatBannedStatusReq request);
  $async.Future<$0.SetNewMemberRemindRsp> setNewMemberRemind($grpc.ServiceCall call, $0.SetNewMemberRemindReq request);
  $async.Future<$0.SetScanCodeJoinGroupSwitchRsp> setScanCodeJoinGroupSwitch($grpc.ServiceCall call, $0.SetScanCodeJoinGroupSwitchReq request);
  $async.Future<$0.ClearHisMsgRsp> clearHisMsg($grpc.ServiceCall call, $0.ClearHisMsgReq request);
  $async.Future<$0.SetFreeJoinStatusRsp> setFreeJoinStatus($grpc.ServiceCall call, $0.SetFreeJoinStatusReq request);
  $async.Future<$1.CommRsp> setGroupProperty($grpc.ServiceCall call, $0.SetGroupPropReq request);
}
