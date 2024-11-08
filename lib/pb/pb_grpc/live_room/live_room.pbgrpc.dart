//
//  Generated code. Do not modify.
//  source: pb_grpc/live_room/live_room.proto
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

import '../../pb_msg/live_room/live_room.pb.dart' as $4;
import '../../pb_msg/pk_room/pk_room.pb.dart' as $1;
import '../../pb_pub/comm.pb.dart' as $0;
import '../../pb_pub/service_notify.pb.dart' as $3;
import 'live_room.pb.dart' as $2;

export 'live_room.pb.dart';

@$pb.GrpcServiceName('pb_grpc_liveRoom.LiveRoom')
class LiveRoomClient extends $grpc.Client {
  static final _$logonSuccessNotify = $grpc.ClientMethod<$0.LogonSuccessNotifyNsq, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/LogonSuccessNotify',
      ($0.LogonSuccessNotifyNsq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));
  static final _$pKPeer = $grpc.ClientMethod<$1.PKUser, $1.PKUser>(
      '/pb_grpc_liveRoom.LiveRoom/PKPeer',
      ($1.PKUser value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PKUser.fromBuffer(value));
  static final _$pKLock = $grpc.ClientMethod<$2.PKLockReq, $2.PKLockRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PKLock',
      ($2.PKLockReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PKLockRsp.fromBuffer(value));
  static final _$pKUnlock = $grpc.ClientMethod<$2.PKUnlockReq, $2.PKUnlockRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PKUnlock',
      ($2.PKUnlockReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PKUnlockRsp.fromBuffer(value));
  static final _$pKLocking = $grpc.ClientMethod<$2.PKLockingReq, $2.PKLockingRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PKLocking',
      ($2.PKLockingReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PKLockingRsp.fromBuffer(value));
  static final _$pKMatched = $grpc.ClientMethod<$1.PKMatchedNotify, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PKMatched',
      ($1.PKMatchedNotify value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));
  static final _$pKPeerRefused = $grpc.ClientMethod<$1.PKPeerRefusedNotify, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PKPeerRefused',
      ($1.PKPeerRefusedNotify value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));
  static final _$pKStart = $grpc.ClientMethod<$1.PKStartNotify, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PKStart',
      ($1.PKStartNotify value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));
  static final _$pKGameOver = $grpc.ClientMethod<$1.PKGameOverNotify, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PKGameOver',
      ($1.PKGameOverNotify value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));
  static final _$pKOver = $grpc.ClientMethod<$1.PKOverNotify, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PKOver',
      ($1.PKOverNotify value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));
  static final _$passivePKRefuse = $grpc.ClientMethod<$1.PassivePKRefuseReq, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PassivePKRefuse',
      ($1.PassivePKRefuseReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));
  static final _$pKQualifyChange = $grpc.ClientMethod<$3.PKQualifyChangeNotify, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/PKQualifyChange',
      ($3.PKQualifyChangeNotify value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));
  static final _$canJoinPkTournament = $grpc.ClientMethod<$1.CanJoinPkTournamentReq, $1.CanJoinPkTournamentRsp>(
      '/pb_grpc_liveRoom.LiveRoom/CanJoinPkTournament',
      ($1.CanJoinPkTournamentReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CanJoinPkTournamentRsp.fromBuffer(value));
  static final _$tTTPushRtmpCB = $grpc.ClientMethod<$2.TTTCallBackParamReq, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/TTTPushRtmpCB',
      ($2.TTTCallBackParamReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));
  static final _$jSONCall = $grpc.ClientMethod<$0.JSONCallReq, $0.JSONCallRsp>(
      '/pb_grpc_liveRoom.LiveRoom/JSONCall',
      ($0.JSONCallReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.JSONCallRsp.fromBuffer(value));
  static final _$setRoomFansTop1Status = $grpc.ClientMethod<$4.SetRoomFansTop1StatusNotify, $0.CommRsp>(
      '/pb_grpc_liveRoom.LiveRoom/SetRoomFansTop1Status',
      ($4.SetRoomFansTop1StatusNotify value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));

  LiveRoomClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CommRsp> logonSuccessNotify($0.LogonSuccessNotifyNsq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logonSuccessNotify, request, options: options);
  }

  $grpc.ResponseFuture<$1.PKUser> pKPeer($1.PKUser request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKPeer, request, options: options);
  }

  $grpc.ResponseFuture<$2.PKLockRsp> pKLock($2.PKLockReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKLock, request, options: options);
  }

  $grpc.ResponseFuture<$2.PKUnlockRsp> pKUnlock($2.PKUnlockReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKUnlock, request, options: options);
  }

  $grpc.ResponseFuture<$2.PKLockingRsp> pKLocking($2.PKLockingReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKLocking, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> pKMatched($1.PKMatchedNotify request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKMatched, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> pKPeerRefused($1.PKPeerRefusedNotify request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKPeerRefused, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> pKStart($1.PKStartNotify request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKStart, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> pKGameOver($1.PKGameOverNotify request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKGameOver, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> pKOver($1.PKOverNotify request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKOver, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> passivePKRefuse($1.PassivePKRefuseReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$passivePKRefuse, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> pKQualifyChange($3.PKQualifyChangeNotify request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKQualifyChange, request, options: options);
  }

  $grpc.ResponseFuture<$1.CanJoinPkTournamentRsp> canJoinPkTournament($1.CanJoinPkTournamentReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$canJoinPkTournament, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> tTTPushRtmpCB($2.TTTCallBackParamReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tTTPushRtmpCB, request, options: options);
  }

  $grpc.ResponseFuture<$0.JSONCallRsp> jSONCall($0.JSONCallReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$jSONCall, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> setRoomFansTop1Status($4.SetRoomFansTop1StatusNotify request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setRoomFansTop1Status, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_liveRoom.LiveRoom')
abstract class LiveRoomServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_liveRoom.LiveRoom';

  LiveRoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LogonSuccessNotifyNsq, $0.CommRsp>(
        'LogonSuccessNotify',
        logonSuccessNotify_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LogonSuccessNotifyNsq.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKUser, $1.PKUser>(
        'PKPeer',
        pKPeer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKUser.fromBuffer(value),
        ($1.PKUser value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PKLockReq, $2.PKLockRsp>(
        'PKLock',
        pKLock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PKLockReq.fromBuffer(value),
        ($2.PKLockRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PKUnlockReq, $2.PKUnlockRsp>(
        'PKUnlock',
        pKUnlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PKUnlockReq.fromBuffer(value),
        ($2.PKUnlockRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PKLockingReq, $2.PKLockingRsp>(
        'PKLocking',
        pKLocking_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PKLockingReq.fromBuffer(value),
        ($2.PKLockingRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKMatchedNotify, $0.CommRsp>(
        'PKMatched',
        pKMatched_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKMatchedNotify.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKPeerRefusedNotify, $0.CommRsp>(
        'PKPeerRefused',
        pKPeerRefused_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKPeerRefusedNotify.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKStartNotify, $0.CommRsp>(
        'PKStart',
        pKStart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKStartNotify.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKGameOverNotify, $0.CommRsp>(
        'PKGameOver',
        pKGameOver_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKGameOverNotify.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKOverNotify, $0.CommRsp>(
        'PKOver',
        pKOver_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKOverNotify.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PassivePKRefuseReq, $0.CommRsp>(
        'PassivePKRefuse',
        passivePKRefuse_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PassivePKRefuseReq.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.PKQualifyChangeNotify, $0.CommRsp>(
        'PKQualifyChange',
        pKQualifyChange_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PKQualifyChangeNotify.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CanJoinPkTournamentReq, $1.CanJoinPkTournamentRsp>(
        'CanJoinPkTournament',
        canJoinPkTournament_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CanJoinPkTournamentReq.fromBuffer(value),
        ($1.CanJoinPkTournamentRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TTTCallBackParamReq, $0.CommRsp>(
        'TTTPushRtmpCB',
        tTTPushRtmpCB_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TTTCallBackParamReq.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.JSONCallReq, $0.JSONCallRsp>(
        'JSONCall',
        jSONCall_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.JSONCallReq.fromBuffer(value),
        ($0.JSONCallRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SetRoomFansTop1StatusNotify, $0.CommRsp>(
        'SetRoomFansTop1Status',
        setRoomFansTop1Status_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.SetRoomFansTop1StatusNotify.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.CommRsp> logonSuccessNotify_Pre($grpc.ServiceCall call, $async.Future<$0.LogonSuccessNotifyNsq> request) async {
    return logonSuccessNotify(call, await request);
  }

  $async.Future<$1.PKUser> pKPeer_Pre($grpc.ServiceCall call, $async.Future<$1.PKUser> request) async {
    return pKPeer(call, await request);
  }

  $async.Future<$2.PKLockRsp> pKLock_Pre($grpc.ServiceCall call, $async.Future<$2.PKLockReq> request) async {
    return pKLock(call, await request);
  }

  $async.Future<$2.PKUnlockRsp> pKUnlock_Pre($grpc.ServiceCall call, $async.Future<$2.PKUnlockReq> request) async {
    return pKUnlock(call, await request);
  }

  $async.Future<$2.PKLockingRsp> pKLocking_Pre($grpc.ServiceCall call, $async.Future<$2.PKLockingReq> request) async {
    return pKLocking(call, await request);
  }

  $async.Future<$0.CommRsp> pKMatched_Pre($grpc.ServiceCall call, $async.Future<$1.PKMatchedNotify> request) async {
    return pKMatched(call, await request);
  }

  $async.Future<$0.CommRsp> pKPeerRefused_Pre($grpc.ServiceCall call, $async.Future<$1.PKPeerRefusedNotify> request) async {
    return pKPeerRefused(call, await request);
  }

  $async.Future<$0.CommRsp> pKStart_Pre($grpc.ServiceCall call, $async.Future<$1.PKStartNotify> request) async {
    return pKStart(call, await request);
  }

  $async.Future<$0.CommRsp> pKGameOver_Pre($grpc.ServiceCall call, $async.Future<$1.PKGameOverNotify> request) async {
    return pKGameOver(call, await request);
  }

  $async.Future<$0.CommRsp> pKOver_Pre($grpc.ServiceCall call, $async.Future<$1.PKOverNotify> request) async {
    return pKOver(call, await request);
  }

  $async.Future<$0.CommRsp> passivePKRefuse_Pre($grpc.ServiceCall call, $async.Future<$1.PassivePKRefuseReq> request) async {
    return passivePKRefuse(call, await request);
  }

  $async.Future<$0.CommRsp> pKQualifyChange_Pre($grpc.ServiceCall call, $async.Future<$3.PKQualifyChangeNotify> request) async {
    return pKQualifyChange(call, await request);
  }

  $async.Future<$1.CanJoinPkTournamentRsp> canJoinPkTournament_Pre($grpc.ServiceCall call, $async.Future<$1.CanJoinPkTournamentReq> request) async {
    return canJoinPkTournament(call, await request);
  }

  $async.Future<$0.CommRsp> tTTPushRtmpCB_Pre($grpc.ServiceCall call, $async.Future<$2.TTTCallBackParamReq> request) async {
    return tTTPushRtmpCB(call, await request);
  }

  $async.Future<$0.JSONCallRsp> jSONCall_Pre($grpc.ServiceCall call, $async.Future<$0.JSONCallReq> request) async {
    return jSONCall(call, await request);
  }

  $async.Future<$0.CommRsp> setRoomFansTop1Status_Pre($grpc.ServiceCall call, $async.Future<$4.SetRoomFansTop1StatusNotify> request) async {
    return setRoomFansTop1Status(call, await request);
  }

  $async.Future<$0.CommRsp> logonSuccessNotify($grpc.ServiceCall call, $0.LogonSuccessNotifyNsq request);
  $async.Future<$1.PKUser> pKPeer($grpc.ServiceCall call, $1.PKUser request);
  $async.Future<$2.PKLockRsp> pKLock($grpc.ServiceCall call, $2.PKLockReq request);
  $async.Future<$2.PKUnlockRsp> pKUnlock($grpc.ServiceCall call, $2.PKUnlockReq request);
  $async.Future<$2.PKLockingRsp> pKLocking($grpc.ServiceCall call, $2.PKLockingReq request);
  $async.Future<$0.CommRsp> pKMatched($grpc.ServiceCall call, $1.PKMatchedNotify request);
  $async.Future<$0.CommRsp> pKPeerRefused($grpc.ServiceCall call, $1.PKPeerRefusedNotify request);
  $async.Future<$0.CommRsp> pKStart($grpc.ServiceCall call, $1.PKStartNotify request);
  $async.Future<$0.CommRsp> pKGameOver($grpc.ServiceCall call, $1.PKGameOverNotify request);
  $async.Future<$0.CommRsp> pKOver($grpc.ServiceCall call, $1.PKOverNotify request);
  $async.Future<$0.CommRsp> passivePKRefuse($grpc.ServiceCall call, $1.PassivePKRefuseReq request);
  $async.Future<$0.CommRsp> pKQualifyChange($grpc.ServiceCall call, $3.PKQualifyChangeNotify request);
  $async.Future<$1.CanJoinPkTournamentRsp> canJoinPkTournament($grpc.ServiceCall call, $1.CanJoinPkTournamentReq request);
  $async.Future<$0.CommRsp> tTTPushRtmpCB($grpc.ServiceCall call, $2.TTTCallBackParamReq request);
  $async.Future<$0.JSONCallRsp> jSONCall($grpc.ServiceCall call, $0.JSONCallReq request);
  $async.Future<$0.CommRsp> setRoomFansTop1Status($grpc.ServiceCall call, $4.SetRoomFansTop1StatusNotify request);
}
