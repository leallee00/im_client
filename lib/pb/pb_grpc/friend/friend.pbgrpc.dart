//
//  Generated code. Do not modify.
//  source: pb_grpc/friend/friend.proto
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

import '../../pb_msg/friend/friend.pb.dart' as $0;

export 'friend.pb.dart';

@$pb.GrpcServiceName('pb_grpc_friend.Friend')
class FriendClient extends $grpc.Client {
  static final _$apply = $grpc.ClientMethod<$0.ApplyReq, $0.ApplyRsp>(
      '/pb_grpc_friend.Friend/Apply',
      ($0.ApplyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ApplyRsp.fromBuffer(value));
  static final _$applyAnswer = $grpc.ClientMethod<$0.ApplyAnswerReq, $0.ApplyAnswerRsp>(
      '/pb_grpc_friend.Friend/ApplyAnswer',
      ($0.ApplyAnswerReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ApplyAnswerRsp.fromBuffer(value));
  static final _$friends = $grpc.ClientMethod<$0.FriendsReq, $0.FriendsRsp>(
      '/pb_grpc_friend.Friend/Friends',
      ($0.FriendsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FriendsRsp.fromBuffer(value));
  static final _$friendDetail = $grpc.ClientMethod<$0.FriendDetailReq, $0.FriendDetailRsp>(
      '/pb_grpc_friend.Friend/FriendDetail',
      ($0.FriendDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FriendDetailRsp.fromBuffer(value));
  static final _$applications = $grpc.ClientMethod<$0.ApplicationsReq, $0.ApplicationsRsp>(
      '/pb_grpc_friend.Friend/Applications',
      ($0.ApplicationsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ApplicationsRsp.fromBuffer(value));
  static final _$updateFriend = $grpc.ClientMethod<$0.UpdateFriendReq, $0.UpdateFriendRsp>(
      '/pb_grpc_friend.Friend/UpdateFriend',
      ($0.UpdateFriendReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateFriendRsp.fromBuffer(value));
  static final _$deleteFriend = $grpc.ClientMethod<$0.DeleteFriendReq, $0.DeleteFriendRsp>(
      '/pb_grpc_friend.Friend/DeleteFriend',
      ($0.DeleteFriendReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteFriendRsp.fromBuffer(value));
  static final _$gmMakeFriendRelation = $grpc.ClientMethod<$0.GmMakeFriendRelationReq, $0.GmMakeFriendRelationRsp>(
      '/pb_grpc_friend.Friend/GmMakeFriendRelation',
      ($0.GmMakeFriendRelationReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GmMakeFriendRelationRsp.fromBuffer(value));
  static final _$isFriend = $grpc.ClientMethod<$0.IsFriendReq, $0.IsFriendRsp>(
      '/pb_grpc_friend.Friend/IsFriend',
      ($0.IsFriendReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IsFriendRsp.fromBuffer(value));
  static final _$readBlackList = $grpc.ClientMethod<$0.ReadBlackListReq, $0.ReadBlackListRsp>(
      '/pb_grpc_friend.Friend/ReadBlackList',
      ($0.ReadBlackListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadBlackListRsp.fromBuffer(value));
  static final _$isInBlackList = $grpc.ClientMethod<$0.IsInBlackListReq, $0.IsInBlackListRsp>(
      '/pb_grpc_friend.Friend/IsInBlackList',
      ($0.IsInBlackListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IsInBlackListRsp.fromBuffer(value));

  FriendClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ApplyRsp> apply($0.ApplyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apply, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApplyAnswerRsp> applyAnswer($0.ApplyAnswerReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$applyAnswer, request, options: options);
  }

  $grpc.ResponseFuture<$0.FriendsRsp> friends($0.FriendsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$friends, request, options: options);
  }

  $grpc.ResponseFuture<$0.FriendDetailRsp> friendDetail($0.FriendDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$friendDetail, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApplicationsRsp> applications($0.ApplicationsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$applications, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateFriendRsp> updateFriend($0.UpdateFriendReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateFriend, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteFriendRsp> deleteFriend($0.DeleteFriendReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFriend, request, options: options);
  }

  $grpc.ResponseFuture<$0.GmMakeFriendRelationRsp> gmMakeFriendRelation($0.GmMakeFriendRelationReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$gmMakeFriendRelation, request, options: options);
  }

  $grpc.ResponseFuture<$0.IsFriendRsp> isFriend($0.IsFriendReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isFriend, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadBlackListRsp> readBlackList($0.ReadBlackListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readBlackList, request, options: options);
  }

  $grpc.ResponseFuture<$0.IsInBlackListRsp> isInBlackList($0.IsInBlackListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isInBlackList, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_friend.Friend')
abstract class FriendServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_friend.Friend';

  FriendServiceBase() {
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
    $addMethod($grpc.ServiceMethod<$0.FriendsReq, $0.FriendsRsp>(
        'Friends',
        friends_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FriendsReq.fromBuffer(value),
        ($0.FriendsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FriendDetailReq, $0.FriendDetailRsp>(
        'FriendDetail',
        friendDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FriendDetailReq.fromBuffer(value),
        ($0.FriendDetailRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApplicationsReq, $0.ApplicationsRsp>(
        'Applications',
        applications_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApplicationsReq.fromBuffer(value),
        ($0.ApplicationsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateFriendReq, $0.UpdateFriendRsp>(
        'UpdateFriend',
        updateFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateFriendReq.fromBuffer(value),
        ($0.UpdateFriendRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteFriendReq, $0.DeleteFriendRsp>(
        'DeleteFriend',
        deleteFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteFriendReq.fromBuffer(value),
        ($0.DeleteFriendRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GmMakeFriendRelationReq, $0.GmMakeFriendRelationRsp>(
        'GmMakeFriendRelation',
        gmMakeFriendRelation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GmMakeFriendRelationReq.fromBuffer(value),
        ($0.GmMakeFriendRelationRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IsFriendReq, $0.IsFriendRsp>(
        'IsFriend',
        isFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IsFriendReq.fromBuffer(value),
        ($0.IsFriendRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadBlackListReq, $0.ReadBlackListRsp>(
        'ReadBlackList',
        readBlackList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadBlackListReq.fromBuffer(value),
        ($0.ReadBlackListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IsInBlackListReq, $0.IsInBlackListRsp>(
        'IsInBlackList',
        isInBlackList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IsInBlackListReq.fromBuffer(value),
        ($0.IsInBlackListRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.ApplyRsp> apply_Pre($grpc.ServiceCall call, $async.Future<$0.ApplyReq> request) async {
    return apply(call, await request);
  }

  $async.Future<$0.ApplyAnswerRsp> applyAnswer_Pre($grpc.ServiceCall call, $async.Future<$0.ApplyAnswerReq> request) async {
    return applyAnswer(call, await request);
  }

  $async.Future<$0.FriendsRsp> friends_Pre($grpc.ServiceCall call, $async.Future<$0.FriendsReq> request) async {
    return friends(call, await request);
  }

  $async.Future<$0.FriendDetailRsp> friendDetail_Pre($grpc.ServiceCall call, $async.Future<$0.FriendDetailReq> request) async {
    return friendDetail(call, await request);
  }

  $async.Future<$0.ApplicationsRsp> applications_Pre($grpc.ServiceCall call, $async.Future<$0.ApplicationsReq> request) async {
    return applications(call, await request);
  }

  $async.Future<$0.UpdateFriendRsp> updateFriend_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateFriendReq> request) async {
    return updateFriend(call, await request);
  }

  $async.Future<$0.DeleteFriendRsp> deleteFriend_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteFriendReq> request) async {
    return deleteFriend(call, await request);
  }

  $async.Future<$0.GmMakeFriendRelationRsp> gmMakeFriendRelation_Pre($grpc.ServiceCall call, $async.Future<$0.GmMakeFriendRelationReq> request) async {
    return gmMakeFriendRelation(call, await request);
  }

  $async.Future<$0.IsFriendRsp> isFriend_Pre($grpc.ServiceCall call, $async.Future<$0.IsFriendReq> request) async {
    return isFriend(call, await request);
  }

  $async.Future<$0.ReadBlackListRsp> readBlackList_Pre($grpc.ServiceCall call, $async.Future<$0.ReadBlackListReq> request) async {
    return readBlackList(call, await request);
  }

  $async.Future<$0.IsInBlackListRsp> isInBlackList_Pre($grpc.ServiceCall call, $async.Future<$0.IsInBlackListReq> request) async {
    return isInBlackList(call, await request);
  }

  $async.Future<$0.ApplyRsp> apply($grpc.ServiceCall call, $0.ApplyReq request);
  $async.Future<$0.ApplyAnswerRsp> applyAnswer($grpc.ServiceCall call, $0.ApplyAnswerReq request);
  $async.Future<$0.FriendsRsp> friends($grpc.ServiceCall call, $0.FriendsReq request);
  $async.Future<$0.FriendDetailRsp> friendDetail($grpc.ServiceCall call, $0.FriendDetailReq request);
  $async.Future<$0.ApplicationsRsp> applications($grpc.ServiceCall call, $0.ApplicationsReq request);
  $async.Future<$0.UpdateFriendRsp> updateFriend($grpc.ServiceCall call, $0.UpdateFriendReq request);
  $async.Future<$0.DeleteFriendRsp> deleteFriend($grpc.ServiceCall call, $0.DeleteFriendReq request);
  $async.Future<$0.GmMakeFriendRelationRsp> gmMakeFriendRelation($grpc.ServiceCall call, $0.GmMakeFriendRelationReq request);
  $async.Future<$0.IsFriendRsp> isFriend($grpc.ServiceCall call, $0.IsFriendReq request);
  $async.Future<$0.ReadBlackListRsp> readBlackList($grpc.ServiceCall call, $0.ReadBlackListReq request);
  $async.Future<$0.IsInBlackListRsp> isInBlackList($grpc.ServiceCall call, $0.IsInBlackListReq request);
}
