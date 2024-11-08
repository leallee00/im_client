//
//  Generated code. Do not modify.
//  source: pb_grpc/call/call.proto
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

import '../../pb_msg/call/call.pb.dart' as $0;

export 'call.pb.dart';

@$pb.GrpcServiceName('pb_grpc_call.Call')
class CallClient extends $grpc.Client {
  static final _$makeCall = $grpc.ClientMethod<$0.CallReq, $0.CallRsp>(
      '/pb_grpc_call.Call/MakeCall',
      ($0.CallReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CallRsp.fromBuffer(value));
  static final _$accept = $grpc.ClientMethod<$0.AcceptReq, $0.AcceptRsp>(
      '/pb_grpc_call.Call/Accept',
      ($0.AcceptReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AcceptRsp.fromBuffer(value));
  static final _$decline = $grpc.ClientMethod<$0.DeclineReq, $0.DeclineRsp>(
      '/pb_grpc_call.Call/Decline',
      ($0.DeclineReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeclineRsp.fromBuffer(value));
  static final _$zegoRecordOver = $grpc.ClientMethod<$0.ZegoRecordOverReq, $0.ZegoRecordOverRsp>(
      '/pb_grpc_call.Call/ZegoRecordOver',
      ($0.ZegoRecordOverReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ZegoRecordOverRsp.fromBuffer(value));

  CallClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CallRsp> makeCall($0.CallReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$makeCall, request, options: options);
  }

  $grpc.ResponseFuture<$0.AcceptRsp> accept($0.AcceptReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accept, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeclineRsp> decline($0.DeclineReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$decline, request, options: options);
  }

  $grpc.ResponseFuture<$0.ZegoRecordOverRsp> zegoRecordOver($0.ZegoRecordOverReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$zegoRecordOver, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_call.Call')
abstract class CallServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_call.Call';

  CallServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CallReq, $0.CallRsp>(
        'MakeCall',
        makeCall_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CallReq.fromBuffer(value),
        ($0.CallRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AcceptReq, $0.AcceptRsp>(
        'Accept',
        accept_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AcceptReq.fromBuffer(value),
        ($0.AcceptRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeclineReq, $0.DeclineRsp>(
        'Decline',
        decline_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeclineReq.fromBuffer(value),
        ($0.DeclineRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ZegoRecordOverReq, $0.ZegoRecordOverRsp>(
        'ZegoRecordOver',
        zegoRecordOver_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ZegoRecordOverReq.fromBuffer(value),
        ($0.ZegoRecordOverRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.CallRsp> makeCall_Pre($grpc.ServiceCall call, $async.Future<$0.CallReq> request) async {
    return makeCall(call, await request);
  }

  $async.Future<$0.AcceptRsp> accept_Pre($grpc.ServiceCall call, $async.Future<$0.AcceptReq> request) async {
    return accept(call, await request);
  }

  $async.Future<$0.DeclineRsp> decline_Pre($grpc.ServiceCall call, $async.Future<$0.DeclineReq> request) async {
    return decline(call, await request);
  }

  $async.Future<$0.ZegoRecordOverRsp> zegoRecordOver_Pre($grpc.ServiceCall call, $async.Future<$0.ZegoRecordOverReq> request) async {
    return zegoRecordOver(call, await request);
  }

  $async.Future<$0.CallRsp> makeCall($grpc.ServiceCall call, $0.CallReq request);
  $async.Future<$0.AcceptRsp> accept($grpc.ServiceCall call, $0.AcceptReq request);
  $async.Future<$0.DeclineRsp> decline($grpc.ServiceCall call, $0.DeclineReq request);
  $async.Future<$0.ZegoRecordOverRsp> zegoRecordOver($grpc.ServiceCall call, $0.ZegoRecordOverReq request);
}
