//
//  Generated code. Do not modify.
//  source: pb_grpc/groups/groups.proto
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

import '../../pb_msg/groups/groups.pb.dart' as $0;

export 'groups.pb.dart';

@$pb.GrpcServiceName('pb_grpc_groups.Groups')
class GroupsClient extends $grpc.Client {
  static final _$createGroup = $grpc.ClientMethod<$0.CreateGroupReq, $0.CreateGroupRsp>(
      '/pb_grpc_groups.Groups/CreateGroup',
      ($0.CreateGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateGroupRsp.fromBuffer(value));
  static final _$deleteGroup = $grpc.ClientMethod<$0.DeleteGroupReq, $0.DeleteGroupRsp>(
      '/pb_grpc_groups.Groups/DeleteGroup',
      ($0.DeleteGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteGroupRsp.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$0.AddMemberReq, $0.AddMemberRsp>(
      '/pb_grpc_groups.Groups/AddMember',
      ($0.AddMemberReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddMemberRsp.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$0.RemoveMemberReq, $0.RemoveMemberRsp>(
      '/pb_grpc_groups.Groups/RemoveMember',
      ($0.RemoveMemberReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RemoveMemberRsp.fromBuffer(value));
  static final _$groupMembers = $grpc.ClientMethod<$0.GroupMembersReq, $0.GroupMembersRsp>(
      '/pb_grpc_groups.Groups/GroupMembers',
      ($0.GroupMembersReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupMembersRsp.fromBuffer(value));
  static final _$memberGroups = $grpc.ClientMethod<$0.MemberGroupsReq, $0.MemberGroupsRsp>(
      '/pb_grpc_groups.Groups/MemberGroups',
      ($0.MemberGroupsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MemberGroupsRsp.fromBuffer(value));
  static final _$groupMessage = $grpc.ClientMethod<$0.GroupMessageReq, $0.GroupMessageRsp>(
      '/pb_grpc_groups.Groups/GroupMessage',
      ($0.GroupMessageReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupMessageRsp.fromBuffer(value));
  static final _$fastMessage = $grpc.ClientMethod<$0.GroupMessageReq, $0.GroupMessageRsp>(
      '/pb_grpc_groups.Groups/FastMessage',
      ($0.GroupMessageReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupMessageRsp.fromBuffer(value));
  static final _$updateMember = $grpc.ClientMethod<$0.UpdateMemberReq, $0.UpdateMemberRsp>(
      '/pb_grpc_groups.Groups/UpdateMember',
      ($0.UpdateMemberReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateMemberRsp.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$0.UpdateUserReq, $0.UpdateUserRsp>(
      '/pb_grpc_groups.Groups/UpdateUser',
      ($0.UpdateUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateUserRsp.fromBuffer(value));

  GroupsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateGroupRsp> createGroup($0.CreateGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteGroupRsp> deleteGroup($0.DeleteGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddMemberRsp> addMember($0.AddMemberReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveMemberRsp> removeMember($0.RemoveMemberReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupMembersRsp> groupMembers($0.GroupMembersReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupMembers, request, options: options);
  }

  $grpc.ResponseFuture<$0.MemberGroupsRsp> memberGroups($0.MemberGroupsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$memberGroups, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupMessageRsp> groupMessage($0.GroupMessageReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupMessageRsp> fastMessage($0.GroupMessageReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fastMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateMemberRsp> updateMember($0.UpdateMemberReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateUserRsp> updateUser($0.UpdateUserReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_groups.Groups')
abstract class GroupsServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_groups.Groups';

  GroupsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateGroupReq, $0.CreateGroupRsp>(
        'CreateGroup',
        createGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateGroupReq.fromBuffer(value),
        ($0.CreateGroupRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteGroupReq, $0.DeleteGroupRsp>(
        'DeleteGroup',
        deleteGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteGroupReq.fromBuffer(value),
        ($0.DeleteGroupRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddMemberReq, $0.AddMemberRsp>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddMemberReq.fromBuffer(value),
        ($0.AddMemberRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveMemberReq, $0.RemoveMemberRsp>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveMemberReq.fromBuffer(value),
        ($0.RemoveMemberRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupMembersReq, $0.GroupMembersRsp>(
        'GroupMembers',
        groupMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupMembersReq.fromBuffer(value),
        ($0.GroupMembersRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MemberGroupsReq, $0.MemberGroupsRsp>(
        'MemberGroups',
        memberGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MemberGroupsReq.fromBuffer(value),
        ($0.MemberGroupsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupMessageReq, $0.GroupMessageRsp>(
        'GroupMessage',
        groupMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupMessageReq.fromBuffer(value),
        ($0.GroupMessageRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupMessageReq, $0.GroupMessageRsp>(
        'FastMessage',
        fastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupMessageReq.fromBuffer(value),
        ($0.GroupMessageRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateMemberReq, $0.UpdateMemberRsp>(
        'UpdateMember',
        updateMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateMemberReq.fromBuffer(value),
        ($0.UpdateMemberRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserReq, $0.UpdateUserRsp>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserReq.fromBuffer(value),
        ($0.UpdateUserRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateGroupRsp> createGroup_Pre($grpc.ServiceCall call, $async.Future<$0.CreateGroupReq> request) async {
    return createGroup(call, await request);
  }

  $async.Future<$0.DeleteGroupRsp> deleteGroup_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteGroupReq> request) async {
    return deleteGroup(call, await request);
  }

  $async.Future<$0.AddMemberRsp> addMember_Pre($grpc.ServiceCall call, $async.Future<$0.AddMemberReq> request) async {
    return addMember(call, await request);
  }

  $async.Future<$0.RemoveMemberRsp> removeMember_Pre($grpc.ServiceCall call, $async.Future<$0.RemoveMemberReq> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$0.GroupMembersRsp> groupMembers_Pre($grpc.ServiceCall call, $async.Future<$0.GroupMembersReq> request) async {
    return groupMembers(call, await request);
  }

  $async.Future<$0.MemberGroupsRsp> memberGroups_Pre($grpc.ServiceCall call, $async.Future<$0.MemberGroupsReq> request) async {
    return memberGroups(call, await request);
  }

  $async.Future<$0.GroupMessageRsp> groupMessage_Pre($grpc.ServiceCall call, $async.Future<$0.GroupMessageReq> request) async {
    return groupMessage(call, await request);
  }

  $async.Future<$0.GroupMessageRsp> fastMessage_Pre($grpc.ServiceCall call, $async.Future<$0.GroupMessageReq> request) async {
    return fastMessage(call, await request);
  }

  $async.Future<$0.UpdateMemberRsp> updateMember_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateMemberReq> request) async {
    return updateMember(call, await request);
  }

  $async.Future<$0.UpdateUserRsp> updateUser_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateUserReq> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.CreateGroupRsp> createGroup($grpc.ServiceCall call, $0.CreateGroupReq request);
  $async.Future<$0.DeleteGroupRsp> deleteGroup($grpc.ServiceCall call, $0.DeleteGroupReq request);
  $async.Future<$0.AddMemberRsp> addMember($grpc.ServiceCall call, $0.AddMemberReq request);
  $async.Future<$0.RemoveMemberRsp> removeMember($grpc.ServiceCall call, $0.RemoveMemberReq request);
  $async.Future<$0.GroupMembersRsp> groupMembers($grpc.ServiceCall call, $0.GroupMembersReq request);
  $async.Future<$0.MemberGroupsRsp> memberGroups($grpc.ServiceCall call, $0.MemberGroupsReq request);
  $async.Future<$0.GroupMessageRsp> groupMessage($grpc.ServiceCall call, $0.GroupMessageReq request);
  $async.Future<$0.GroupMessageRsp> fastMessage($grpc.ServiceCall call, $0.GroupMessageReq request);
  $async.Future<$0.UpdateMemberRsp> updateMember($grpc.ServiceCall call, $0.UpdateMemberReq request);
  $async.Future<$0.UpdateUserRsp> updateUser($grpc.ServiceCall call, $0.UpdateUserReq request);
}
