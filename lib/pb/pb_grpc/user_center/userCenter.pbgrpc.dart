//
//  Generated code. Do not modify.
//  source: pb_grpc/user_center/userCenter.proto
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

import '../../pb_msg/gate/gate.pb.dart' as $0;
import '../../pb_msg/user_center/userCenter.pb.dart' as $3;
import '../../pb_pub/comm.pb.dart' as $2;
import 'userCenter.pb.dart' as $1;

export 'userCenter.pb.dart';

@$pb.GrpcServiceName('pb_grpc_userCenter.UserCenter')
class UserCenterClient extends $grpc.Client {
  static final _$userLogon = $grpc.ClientMethod<$0.LoginReq, $0.LoginRsp>(
      '/pb_grpc_userCenter.UserCenter/UserLogon',
      ($0.LoginReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginRsp.fromBuffer(value));
  static final _$userStateChange = $grpc.ClientMethod<$1.UserStateChangeReq, $2.CommRsp>(
      '/pb_grpc_userCenter.UserCenter/UserStateChange',
      ($1.UserStateChangeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CommRsp.fromBuffer(value));
  static final _$heartBeat = $grpc.ClientMethod<$2.HeartBeat, $2.HeartBeat>(
      '/pb_grpc_userCenter.UserCenter/HeartBeat',
      ($2.HeartBeat value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.HeartBeat.fromBuffer(value));
  static final _$getUserState = $grpc.ClientMethod<$1.UserStateReq, $1.UserStateRsp>(
      '/pb_grpc_userCenter.UserCenter/GetUserState',
      ($1.UserStateReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UserStateRsp.fromBuffer(value));
  static final _$getUserThirdInfo = $grpc.ClientMethod<$1.UserThirdInfoReq, $1.UserThirdInfoRsp>(
      '/pb_grpc_userCenter.UserCenter/GetUserThirdInfo',
      ($1.UserThirdInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UserThirdInfoRsp.fromBuffer(value));
  static final _$getFriendsInfo = $grpc.ClientMethod<$3.FriendInfoReq, $3.FriendInfoRsp>(
      '/pb_grpc_userCenter.UserCenter/GetFriendsInfo',
      ($3.FriendInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.FriendInfoRsp.fromBuffer(value));
  static final _$getUserInfo = $grpc.ClientMethod<$3.UsersInfoReq, $3.UsersInfoRsp>(
      '/pb_grpc_userCenter.UserCenter/GetUserInfo',
      ($3.UsersInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UsersInfoRsp.fromBuffer(value));
  static final _$appUidToImId = $grpc.ClientMethod<$3.AppUidToImIdReq, $3.AppUidToImIdRsp>(
      '/pb_grpc_userCenter.UserCenter/AppUidToImId',
      ($3.AppUidToImIdReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AppUidToImIdRsp.fromBuffer(value));
  static final _$redPacketHandOut = $grpc.ClientMethod<$3.RedPacketHandOutReq, $3.RedPacketHandOutRsp>(
      '/pb_grpc_userCenter.UserCenter/RedPacketHandOut',
      ($3.RedPacketHandOutReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RedPacketHandOutRsp.fromBuffer(value));
  static final _$redPacketReceive = $grpc.ClientMethod<$3.RedPacketReceiveReq, $3.RedPacketReceiveRsp>(
      '/pb_grpc_userCenter.UserCenter/RedPacketReceive',
      ($3.RedPacketReceiveReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RedPacketReceiveRsp.fromBuffer(value));
  static final _$redPacketInfo = $grpc.ClientMethod<$3.RedPacketInfoReq, $3.RedPacketInfoRsp>(
      '/pb_grpc_userCenter.UserCenter/RedPacketInfo',
      ($3.RedPacketInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RedPacketInfoRsp.fromBuffer(value));
  static final _$redPacketCurFlow = $grpc.ClientMethod<$3.RedPacketCurFlowReq, $3.RedPacketCurFlowRsp>(
      '/pb_grpc_userCenter.UserCenter/RedPacketCurFlow',
      ($3.RedPacketCurFlowReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RedPacketCurFlowRsp.fromBuffer(value));
  static final _$redPacketMyReceivedList = $grpc.ClientMethod<$3.RedPacketMyReceivedListReq, $3.RedPacketMyReceivedListRsp>(
      '/pb_grpc_userCenter.UserCenter/RedPacketMyReceivedList',
      ($3.RedPacketMyReceivedListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RedPacketMyReceivedListRsp.fromBuffer(value));
  static final _$redPacketMyHandedOutList = $grpc.ClientMethod<$3.RedPacketMyHandedOutListReq, $3.RedPacketMyHandedOutListRsp>(
      '/pb_grpc_userCenter.UserCenter/RedPacketMyHandedOutList',
      ($3.RedPacketMyHandedOutListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RedPacketMyHandedOutListRsp.fromBuffer(value));

  UserCenterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginRsp> userLogon($0.LoginReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userLogon, request, options: options);
  }

  $grpc.ResponseFuture<$2.CommRsp> userStateChange($1.UserStateChangeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userStateChange, request, options: options);
  }

  $grpc.ResponseFuture<$2.HeartBeat> heartBeat($2.HeartBeat request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$heartBeat, request, options: options);
  }

  $grpc.ResponseFuture<$1.UserStateRsp> getUserState($1.UserStateReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserState, request, options: options);
  }

  $grpc.ResponseFuture<$1.UserThirdInfoRsp> getUserThirdInfo($1.UserThirdInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserThirdInfo, request, options: options);
  }

  $grpc.ResponseFuture<$3.FriendInfoRsp> getFriendsInfo($3.FriendInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFriendsInfo, request, options: options);
  }

  $grpc.ResponseFuture<$3.UsersInfoRsp> getUserInfo($3.UsersInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserInfo, request, options: options);
  }

  $grpc.ResponseFuture<$3.AppUidToImIdRsp> appUidToImId($3.AppUidToImIdReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appUidToImId, request, options: options);
  }

  $grpc.ResponseFuture<$3.RedPacketHandOutRsp> redPacketHandOut($3.RedPacketHandOutReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$redPacketHandOut, request, options: options);
  }

  $grpc.ResponseFuture<$3.RedPacketReceiveRsp> redPacketReceive($3.RedPacketReceiveReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$redPacketReceive, request, options: options);
  }

  $grpc.ResponseFuture<$3.RedPacketInfoRsp> redPacketInfo($3.RedPacketInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$redPacketInfo, request, options: options);
  }

  $grpc.ResponseFuture<$3.RedPacketCurFlowRsp> redPacketCurFlow($3.RedPacketCurFlowReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$redPacketCurFlow, request, options: options);
  }

  $grpc.ResponseFuture<$3.RedPacketMyReceivedListRsp> redPacketMyReceivedList($3.RedPacketMyReceivedListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$redPacketMyReceivedList, request, options: options);
  }

  $grpc.ResponseFuture<$3.RedPacketMyHandedOutListRsp> redPacketMyHandedOutList($3.RedPacketMyHandedOutListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$redPacketMyHandedOutList, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_userCenter.UserCenter')
abstract class UserCenterServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_userCenter.UserCenter';

  UserCenterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginReq, $0.LoginRsp>(
        'UserLogon',
        userLogon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginReq.fromBuffer(value),
        ($0.LoginRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UserStateChangeReq, $2.CommRsp>(
        'UserStateChange',
        userStateChange_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UserStateChangeReq.fromBuffer(value),
        ($2.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.HeartBeat, $2.HeartBeat>(
        'HeartBeat',
        heartBeat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.HeartBeat.fromBuffer(value),
        ($2.HeartBeat value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UserStateReq, $1.UserStateRsp>(
        'GetUserState',
        getUserState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UserStateReq.fromBuffer(value),
        ($1.UserStateRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UserThirdInfoReq, $1.UserThirdInfoRsp>(
        'GetUserThirdInfo',
        getUserThirdInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UserThirdInfoReq.fromBuffer(value),
        ($1.UserThirdInfoRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FriendInfoReq, $3.FriendInfoRsp>(
        'GetFriendsInfo',
        getFriendsInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.FriendInfoReq.fromBuffer(value),
        ($3.FriendInfoRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UsersInfoReq, $3.UsersInfoRsp>(
        'GetUserInfo',
        getUserInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UsersInfoReq.fromBuffer(value),
        ($3.UsersInfoRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AppUidToImIdReq, $3.AppUidToImIdRsp>(
        'AppUidToImId',
        appUidToImId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AppUidToImIdReq.fromBuffer(value),
        ($3.AppUidToImIdRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RedPacketHandOutReq, $3.RedPacketHandOutRsp>(
        'RedPacketHandOut',
        redPacketHandOut_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RedPacketHandOutReq.fromBuffer(value),
        ($3.RedPacketHandOutRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RedPacketReceiveReq, $3.RedPacketReceiveRsp>(
        'RedPacketReceive',
        redPacketReceive_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RedPacketReceiveReq.fromBuffer(value),
        ($3.RedPacketReceiveRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RedPacketInfoReq, $3.RedPacketInfoRsp>(
        'RedPacketInfo',
        redPacketInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RedPacketInfoReq.fromBuffer(value),
        ($3.RedPacketInfoRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RedPacketCurFlowReq, $3.RedPacketCurFlowRsp>(
        'RedPacketCurFlow',
        redPacketCurFlow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RedPacketCurFlowReq.fromBuffer(value),
        ($3.RedPacketCurFlowRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RedPacketMyReceivedListReq, $3.RedPacketMyReceivedListRsp>(
        'RedPacketMyReceivedList',
        redPacketMyReceivedList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RedPacketMyReceivedListReq.fromBuffer(value),
        ($3.RedPacketMyReceivedListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RedPacketMyHandedOutListReq, $3.RedPacketMyHandedOutListRsp>(
        'RedPacketMyHandedOutList',
        redPacketMyHandedOutList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RedPacketMyHandedOutListReq.fromBuffer(value),
        ($3.RedPacketMyHandedOutListRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginRsp> userLogon_Pre($grpc.ServiceCall call, $async.Future<$0.LoginReq> request) async {
    return userLogon(call, await request);
  }

  $async.Future<$2.CommRsp> userStateChange_Pre($grpc.ServiceCall call, $async.Future<$1.UserStateChangeReq> request) async {
    return userStateChange(call, await request);
  }

  $async.Future<$2.HeartBeat> heartBeat_Pre($grpc.ServiceCall call, $async.Future<$2.HeartBeat> request) async {
    return heartBeat(call, await request);
  }

  $async.Future<$1.UserStateRsp> getUserState_Pre($grpc.ServiceCall call, $async.Future<$1.UserStateReq> request) async {
    return getUserState(call, await request);
  }

  $async.Future<$1.UserThirdInfoRsp> getUserThirdInfo_Pre($grpc.ServiceCall call, $async.Future<$1.UserThirdInfoReq> request) async {
    return getUserThirdInfo(call, await request);
  }

  $async.Future<$3.FriendInfoRsp> getFriendsInfo_Pre($grpc.ServiceCall call, $async.Future<$3.FriendInfoReq> request) async {
    return getFriendsInfo(call, await request);
  }

  $async.Future<$3.UsersInfoRsp> getUserInfo_Pre($grpc.ServiceCall call, $async.Future<$3.UsersInfoReq> request) async {
    return getUserInfo(call, await request);
  }

  $async.Future<$3.AppUidToImIdRsp> appUidToImId_Pre($grpc.ServiceCall call, $async.Future<$3.AppUidToImIdReq> request) async {
    return appUidToImId(call, await request);
  }

  $async.Future<$3.RedPacketHandOutRsp> redPacketHandOut_Pre($grpc.ServiceCall call, $async.Future<$3.RedPacketHandOutReq> request) async {
    return redPacketHandOut(call, await request);
  }

  $async.Future<$3.RedPacketReceiveRsp> redPacketReceive_Pre($grpc.ServiceCall call, $async.Future<$3.RedPacketReceiveReq> request) async {
    return redPacketReceive(call, await request);
  }

  $async.Future<$3.RedPacketInfoRsp> redPacketInfo_Pre($grpc.ServiceCall call, $async.Future<$3.RedPacketInfoReq> request) async {
    return redPacketInfo(call, await request);
  }

  $async.Future<$3.RedPacketCurFlowRsp> redPacketCurFlow_Pre($grpc.ServiceCall call, $async.Future<$3.RedPacketCurFlowReq> request) async {
    return redPacketCurFlow(call, await request);
  }

  $async.Future<$3.RedPacketMyReceivedListRsp> redPacketMyReceivedList_Pre($grpc.ServiceCall call, $async.Future<$3.RedPacketMyReceivedListReq> request) async {
    return redPacketMyReceivedList(call, await request);
  }

  $async.Future<$3.RedPacketMyHandedOutListRsp> redPacketMyHandedOutList_Pre($grpc.ServiceCall call, $async.Future<$3.RedPacketMyHandedOutListReq> request) async {
    return redPacketMyHandedOutList(call, await request);
  }

  $async.Future<$0.LoginRsp> userLogon($grpc.ServiceCall call, $0.LoginReq request);
  $async.Future<$2.CommRsp> userStateChange($grpc.ServiceCall call, $1.UserStateChangeReq request);
  $async.Future<$2.HeartBeat> heartBeat($grpc.ServiceCall call, $2.HeartBeat request);
  $async.Future<$1.UserStateRsp> getUserState($grpc.ServiceCall call, $1.UserStateReq request);
  $async.Future<$1.UserThirdInfoRsp> getUserThirdInfo($grpc.ServiceCall call, $1.UserThirdInfoReq request);
  $async.Future<$3.FriendInfoRsp> getFriendsInfo($grpc.ServiceCall call, $3.FriendInfoReq request);
  $async.Future<$3.UsersInfoRsp> getUserInfo($grpc.ServiceCall call, $3.UsersInfoReq request);
  $async.Future<$3.AppUidToImIdRsp> appUidToImId($grpc.ServiceCall call, $3.AppUidToImIdReq request);
  $async.Future<$3.RedPacketHandOutRsp> redPacketHandOut($grpc.ServiceCall call, $3.RedPacketHandOutReq request);
  $async.Future<$3.RedPacketReceiveRsp> redPacketReceive($grpc.ServiceCall call, $3.RedPacketReceiveReq request);
  $async.Future<$3.RedPacketInfoRsp> redPacketInfo($grpc.ServiceCall call, $3.RedPacketInfoReq request);
  $async.Future<$3.RedPacketCurFlowRsp> redPacketCurFlow($grpc.ServiceCall call, $3.RedPacketCurFlowReq request);
  $async.Future<$3.RedPacketMyReceivedListRsp> redPacketMyReceivedList($grpc.ServiceCall call, $3.RedPacketMyReceivedListReq request);
  $async.Future<$3.RedPacketMyHandedOutListRsp> redPacketMyHandedOutList($grpc.ServiceCall call, $3.RedPacketMyHandedOutListReq request);
}
