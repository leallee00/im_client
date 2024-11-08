//
//  Generated code. Do not modify.
//  source: pb_grpc/room_explain/roomExplain.proto
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

import '../../pb_msg/room_explain/room_explain.pb.dart' as $0;

export 'roomExplain.pb.dart';

@$pb.GrpcServiceName('pb_grpc_roomExplain.RoomExplain')
class RoomExplainClient extends $grpc.Client {
  static final _$getRoomExplain = $grpc.ClientMethod<$0.RoomExplainReq, $0.RoomExplainRsp>(
      '/pb_grpc_roomExplain.RoomExplain/GetRoomExplain',
      ($0.RoomExplainReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RoomExplainRsp.fromBuffer(value));
  static final _$getSrcUserExplain = $grpc.ClientMethod<$0.SrcUserExplainReq, $0.SrcUserExplainRsp>(
      '/pb_grpc_roomExplain.RoomExplain/GetSrcUserExplain',
      ($0.SrcUserExplainReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SrcUserExplainRsp.fromBuffer(value));

  RoomExplainClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.RoomExplainRsp> getRoomExplain($0.RoomExplainReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomExplain, request, options: options);
  }

  $grpc.ResponseFuture<$0.SrcUserExplainRsp> getSrcUserExplain($0.SrcUserExplainReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSrcUserExplain, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_roomExplain.RoomExplain')
abstract class RoomExplainServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_roomExplain.RoomExplain';

  RoomExplainServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RoomExplainReq, $0.RoomExplainRsp>(
        'GetRoomExplain',
        getRoomExplain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RoomExplainReq.fromBuffer(value),
        ($0.RoomExplainRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SrcUserExplainReq, $0.SrcUserExplainRsp>(
        'GetSrcUserExplain',
        getSrcUserExplain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SrcUserExplainReq.fromBuffer(value),
        ($0.SrcUserExplainRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.RoomExplainRsp> getRoomExplain_Pre($grpc.ServiceCall call, $async.Future<$0.RoomExplainReq> request) async {
    return getRoomExplain(call, await request);
  }

  $async.Future<$0.SrcUserExplainRsp> getSrcUserExplain_Pre($grpc.ServiceCall call, $async.Future<$0.SrcUserExplainReq> request) async {
    return getSrcUserExplain(call, await request);
  }

  $async.Future<$0.RoomExplainRsp> getRoomExplain($grpc.ServiceCall call, $0.RoomExplainReq request);
  $async.Future<$0.SrcUserExplainRsp> getSrcUserExplain($grpc.ServiceCall call, $0.SrcUserExplainReq request);
}
