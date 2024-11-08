//
//  Generated code. Do not modify.
//  source: pb_grpc/call_scene/call_scene.proto
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

import '../../pb_msg/call_scene/call_scene.pb.dart' as $0;
import '../../pb_pub/comm.pb.dart' as $1;

export 'call_scene.pb.dart';

@$pb.GrpcServiceName('pb_grpc_call_scene.CallScene')
class CallSceneClient extends $grpc.Client {
  static final _$dial = $grpc.ClientMethod<$0.DialReq, $0.DialRsp>(
      '/pb_grpc_call_scene.CallScene/Dial',
      ($0.DialReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DialRsp.fromBuffer(value));
  static final _$doCall = $grpc.ClientMethod<$0.WaitForCalleeAnswerNotifyToServer, $1.CommRsp>(
      '/pb_grpc_call_scene.CallScene/DoCall',
      ($0.WaitForCalleeAnswerNotifyToServer value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$answerCall = $grpc.ClientMethod<$0.AnswerCallReq, $0.AnswerCallRsp>(
      '/pb_grpc_call_scene.CallScene/AnswerCall',
      ($0.AnswerCallReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AnswerCallRsp.fromBuffer(value));
  static final _$heartBeat = $grpc.ClientMethod<$1.HeartBeat, $1.HeartBeat>(
      '/pb_grpc_call_scene.CallScene/HeartBeat',
      ($1.HeartBeat value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.HeartBeat.fromBuffer(value));
  static final _$hangUp = $grpc.ClientMethod<$0.HangUpReq, $0.HangUpRsp>(
      '/pb_grpc_call_scene.CallScene/HangUp',
      ($0.HangUpReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HangUpRsp.fromBuffer(value));

  CallSceneClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.DialRsp> dial($0.DialReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dial, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> doCall($0.WaitForCalleeAnswerNotifyToServer request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$doCall, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnswerCallRsp> answerCall($0.AnswerCallReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$answerCall, request, options: options);
  }

  $grpc.ResponseFuture<$1.HeartBeat> heartBeat($1.HeartBeat request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$heartBeat, request, options: options);
  }

  $grpc.ResponseFuture<$0.HangUpRsp> hangUp($0.HangUpReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$hangUp, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_call_scene.CallScene')
abstract class CallSceneServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_call_scene.CallScene';

  CallSceneServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DialReq, $0.DialRsp>(
        'Dial',
        dial_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DialReq.fromBuffer(value),
        ($0.DialRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WaitForCalleeAnswerNotifyToServer, $1.CommRsp>(
        'DoCall',
        doCall_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WaitForCalleeAnswerNotifyToServer.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnswerCallReq, $0.AnswerCallRsp>(
        'AnswerCall',
        answerCall_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AnswerCallReq.fromBuffer(value),
        ($0.AnswerCallRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.HeartBeat, $1.HeartBeat>(
        'HeartBeat',
        heartBeat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.HeartBeat.fromBuffer(value),
        ($1.HeartBeat value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HangUpReq, $0.HangUpRsp>(
        'HangUp',
        hangUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HangUpReq.fromBuffer(value),
        ($0.HangUpRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.DialRsp> dial_Pre($grpc.ServiceCall call, $async.Future<$0.DialReq> request) async {
    return dial(call, await request);
  }

  $async.Future<$1.CommRsp> doCall_Pre($grpc.ServiceCall call, $async.Future<$0.WaitForCalleeAnswerNotifyToServer> request) async {
    return doCall(call, await request);
  }

  $async.Future<$0.AnswerCallRsp> answerCall_Pre($grpc.ServiceCall call, $async.Future<$0.AnswerCallReq> request) async {
    return answerCall(call, await request);
  }

  $async.Future<$1.HeartBeat> heartBeat_Pre($grpc.ServiceCall call, $async.Future<$1.HeartBeat> request) async {
    return heartBeat(call, await request);
  }

  $async.Future<$0.HangUpRsp> hangUp_Pre($grpc.ServiceCall call, $async.Future<$0.HangUpReq> request) async {
    return hangUp(call, await request);
  }

  $async.Future<$0.DialRsp> dial($grpc.ServiceCall call, $0.DialReq request);
  $async.Future<$1.CommRsp> doCall($grpc.ServiceCall call, $0.WaitForCalleeAnswerNotifyToServer request);
  $async.Future<$0.AnswerCallRsp> answerCall($grpc.ServiceCall call, $0.AnswerCallReq request);
  $async.Future<$1.HeartBeat> heartBeat($grpc.ServiceCall call, $1.HeartBeat request);
  $async.Future<$0.HangUpRsp> hangUp($grpc.ServiceCall call, $0.HangUpReq request);
}
