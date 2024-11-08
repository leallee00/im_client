//
//  Generated code. Do not modify.
//  source: pb_grpc/pk_room/pk_room.proto
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

import '../../pb_msg/pk_room/pk_room.pb.dart' as $1;
import '../../pb_pub/comm.pb.dart' as $0;
import 'pk_room.pb.dart' as $2;

export 'pk_room.pb.dart';

@$pb.GrpcServiceName('pb_grpc_pk_room.PKRoom')
class PKRoomClient extends $grpc.Client {
  static final _$heartBeat = $grpc.ClientMethod<$0.HeartBeat, $0.HeartBeat>(
      '/pb_grpc_pk_room.PKRoom/HeartBeat',
      ($0.HeartBeat value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HeartBeat.fromBuffer(value));
  static final _$pKEnqueue = $grpc.ClientMethod<$1.PKEnqueueReq, $1.PKEnqueueRsp>(
      '/pb_grpc_pk_room.PKRoom/PKEnqueue',
      ($1.PKEnqueueReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PKEnqueueRsp.fromBuffer(value));
  static final _$pKDequeue = $grpc.ClientMethod<$1.PKDequeueReq, $1.PKDequeueRsp>(
      '/pb_grpc_pk_room.PKRoom/PKDequeue',
      ($1.PKDequeueReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PKDequeueRsp.fromBuffer(value));
  static final _$pKEscape = $grpc.ClientMethod<$1.PKEscapeReq, $1.PKEscapeRsp>(
      '/pb_grpc_pk_room.PKRoom/PKEscape',
      ($1.PKEscapeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PKEscapeRsp.fromBuffer(value));
  static final _$pKAnswer = $grpc.ClientMethod<$1.PKAnswerReq, $1.PKAnswerRsp>(
      '/pb_grpc_pk_room.PKRoom/PKAnswer',
      ($1.PKAnswerReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PKAnswerRsp.fromBuffer(value));
  static final _$pKInvite = $grpc.ClientMethod<$1.PKInviteReq, $1.PKInviteRsp>(
      '/pb_grpc_pk_room.PKRoom/PKInvite',
      ($1.PKInviteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PKInviteRsp.fromBuffer(value));
  static final _$pKInviteStop = $grpc.ClientMethod<$1.PKInviteStopReq, $1.PKInviteStopRsp>(
      '/pb_grpc_pk_room.PKRoom/PKInviteStop',
      ($1.PKInviteStopReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PKInviteStopRsp.fromBuffer(value));
  static final _$createRandRoom = $grpc.ClientMethod<$2.CreateRandRoomReq, $2.CreateRandRoomRsp>(
      '/pb_grpc_pk_room.PKRoom/CreateRandRoom',
      ($2.CreateRandRoomReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateRandRoomRsp.fromBuffer(value));
  static final _$manualMatch = $grpc.ClientMethod<$2.ManualMatchReq, $2.ManualMatchRsp>(
      '/pb_grpc_pk_room.PKRoom/ManualMatch',
      ($2.ManualMatchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ManualMatchRsp.fromBuffer(value));
  static final _$pKSwitchPassive = $grpc.ClientMethod<$1.PKSwitchPassiveReq, $0.CommRsp>(
      '/pb_grpc_pk_room.PKRoom/PKSwitchPassive',
      ($1.PKSwitchPassiveReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommRsp.fromBuffer(value));

  PKRoomClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.HeartBeat> heartBeat($0.HeartBeat request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$heartBeat, request, options: options);
  }

  $grpc.ResponseFuture<$1.PKEnqueueRsp> pKEnqueue($1.PKEnqueueReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKEnqueue, request, options: options);
  }

  $grpc.ResponseFuture<$1.PKDequeueRsp> pKDequeue($1.PKDequeueReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKDequeue, request, options: options);
  }

  $grpc.ResponseFuture<$1.PKEscapeRsp> pKEscape($1.PKEscapeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKEscape, request, options: options);
  }

  $grpc.ResponseFuture<$1.PKAnswerRsp> pKAnswer($1.PKAnswerReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKAnswer, request, options: options);
  }

  $grpc.ResponseFuture<$1.PKInviteRsp> pKInvite($1.PKInviteReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKInvite, request, options: options);
  }

  $grpc.ResponseFuture<$1.PKInviteStopRsp> pKInviteStop($1.PKInviteStopReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKInviteStop, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateRandRoomRsp> createRandRoom($2.CreateRandRoomReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRandRoom, request, options: options);
  }

  $grpc.ResponseFuture<$2.ManualMatchRsp> manualMatch($2.ManualMatchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$manualMatch, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommRsp> pKSwitchPassive($1.PKSwitchPassiveReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pKSwitchPassive, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_pk_room.PKRoom')
abstract class PKRoomServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_pk_room.PKRoom';

  PKRoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HeartBeat, $0.HeartBeat>(
        'HeartBeat',
        heartBeat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HeartBeat.fromBuffer(value),
        ($0.HeartBeat value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKEnqueueReq, $1.PKEnqueueRsp>(
        'PKEnqueue',
        pKEnqueue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKEnqueueReq.fromBuffer(value),
        ($1.PKEnqueueRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKDequeueReq, $1.PKDequeueRsp>(
        'PKDequeue',
        pKDequeue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKDequeueReq.fromBuffer(value),
        ($1.PKDequeueRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKEscapeReq, $1.PKEscapeRsp>(
        'PKEscape',
        pKEscape_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKEscapeReq.fromBuffer(value),
        ($1.PKEscapeRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKAnswerReq, $1.PKAnswerRsp>(
        'PKAnswer',
        pKAnswer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKAnswerReq.fromBuffer(value),
        ($1.PKAnswerRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKInviteReq, $1.PKInviteRsp>(
        'PKInvite',
        pKInvite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKInviteReq.fromBuffer(value),
        ($1.PKInviteRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKInviteStopReq, $1.PKInviteStopRsp>(
        'PKInviteStop',
        pKInviteStop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKInviteStopReq.fromBuffer(value),
        ($1.PKInviteStopRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateRandRoomReq, $2.CreateRandRoomRsp>(
        'CreateRandRoom',
        createRandRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateRandRoomReq.fromBuffer(value),
        ($2.CreateRandRoomRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ManualMatchReq, $2.ManualMatchRsp>(
        'ManualMatch',
        manualMatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ManualMatchReq.fromBuffer(value),
        ($2.ManualMatchRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PKSwitchPassiveReq, $0.CommRsp>(
        'PKSwitchPassive',
        pKSwitchPassive_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PKSwitchPassiveReq.fromBuffer(value),
        ($0.CommRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.HeartBeat> heartBeat_Pre($grpc.ServiceCall call, $async.Future<$0.HeartBeat> request) async {
    return heartBeat(call, await request);
  }

  $async.Future<$1.PKEnqueueRsp> pKEnqueue_Pre($grpc.ServiceCall call, $async.Future<$1.PKEnqueueReq> request) async {
    return pKEnqueue(call, await request);
  }

  $async.Future<$1.PKDequeueRsp> pKDequeue_Pre($grpc.ServiceCall call, $async.Future<$1.PKDequeueReq> request) async {
    return pKDequeue(call, await request);
  }

  $async.Future<$1.PKEscapeRsp> pKEscape_Pre($grpc.ServiceCall call, $async.Future<$1.PKEscapeReq> request) async {
    return pKEscape(call, await request);
  }

  $async.Future<$1.PKAnswerRsp> pKAnswer_Pre($grpc.ServiceCall call, $async.Future<$1.PKAnswerReq> request) async {
    return pKAnswer(call, await request);
  }

  $async.Future<$1.PKInviteRsp> pKInvite_Pre($grpc.ServiceCall call, $async.Future<$1.PKInviteReq> request) async {
    return pKInvite(call, await request);
  }

  $async.Future<$1.PKInviteStopRsp> pKInviteStop_Pre($grpc.ServiceCall call, $async.Future<$1.PKInviteStopReq> request) async {
    return pKInviteStop(call, await request);
  }

  $async.Future<$2.CreateRandRoomRsp> createRandRoom_Pre($grpc.ServiceCall call, $async.Future<$2.CreateRandRoomReq> request) async {
    return createRandRoom(call, await request);
  }

  $async.Future<$2.ManualMatchRsp> manualMatch_Pre($grpc.ServiceCall call, $async.Future<$2.ManualMatchReq> request) async {
    return manualMatch(call, await request);
  }

  $async.Future<$0.CommRsp> pKSwitchPassive_Pre($grpc.ServiceCall call, $async.Future<$1.PKSwitchPassiveReq> request) async {
    return pKSwitchPassive(call, await request);
  }

  $async.Future<$0.HeartBeat> heartBeat($grpc.ServiceCall call, $0.HeartBeat request);
  $async.Future<$1.PKEnqueueRsp> pKEnqueue($grpc.ServiceCall call, $1.PKEnqueueReq request);
  $async.Future<$1.PKDequeueRsp> pKDequeue($grpc.ServiceCall call, $1.PKDequeueReq request);
  $async.Future<$1.PKEscapeRsp> pKEscape($grpc.ServiceCall call, $1.PKEscapeReq request);
  $async.Future<$1.PKAnswerRsp> pKAnswer($grpc.ServiceCall call, $1.PKAnswerReq request);
  $async.Future<$1.PKInviteRsp> pKInvite($grpc.ServiceCall call, $1.PKInviteReq request);
  $async.Future<$1.PKInviteStopRsp> pKInviteStop($grpc.ServiceCall call, $1.PKInviteStopReq request);
  $async.Future<$2.CreateRandRoomRsp> createRandRoom($grpc.ServiceCall call, $2.CreateRandRoomReq request);
  $async.Future<$2.ManualMatchRsp> manualMatch($grpc.ServiceCall call, $2.ManualMatchReq request);
  $async.Future<$0.CommRsp> pKSwitchPassive($grpc.ServiceCall call, $1.PKSwitchPassiveReq request);
}
