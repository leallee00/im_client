//
//  Generated code. Do not modify.
//  source: pb_grpc/msg_sender/msgSender.proto
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

import '../../pb_pub/comm.pb.dart' as $1;
import '../pub/grpc_pub.pb.dart' as $0;

export 'msgSender.pb.dart';

@$pb.GrpcServiceName('pb_grpc_msgSender.MsgSender')
class MsgSenderClient extends $grpc.Client {
  static final _$sendToAimUser = $grpc.ClientMethod<$0.SendToAimUserReq, $1.CommRsp>(
      '/pb_grpc_msgSender.MsgSender/SendToAimUser',
      ($0.SendToAimUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendToAimGroup = $grpc.ClientMethod<$0.SendToAimGroupReq, $1.CommRsp>(
      '/pb_grpc_msgSender.MsgSender/SendToAimGroup',
      ($0.SendToAimGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendToAllUser = $grpc.ClientMethod<$0.SendToAllUserReq, $1.CommRsp>(
      '/pb_grpc_msgSender.MsgSender/SendToAllUser',
      ($0.SendToAllUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendToAllGroup = $grpc.ClientMethod<$0.SendToAllGroupReq, $1.CommRsp>(
      '/pb_grpc_msgSender.MsgSender/SendToAllGroup',
      ($0.SendToAllGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));

  MsgSenderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.CommRsp> sendToAimUser($0.SendToAimUserReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAimUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendToAimGroup($0.SendToAimGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAimGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendToAllUser($0.SendToAllUserReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAllUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendToAllGroup($0.SendToAllGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAllGroup, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_msgSender.MsgSender')
abstract class MsgSenderServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_msgSender.MsgSender';

  MsgSenderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SendToAimUserReq, $1.CommRsp>(
        'SendToAimUser',
        sendToAimUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendToAimUserReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendToAimGroupReq, $1.CommRsp>(
        'SendToAimGroup',
        sendToAimGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendToAimGroupReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendToAllUserReq, $1.CommRsp>(
        'SendToAllUser',
        sendToAllUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendToAllUserReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendToAllGroupReq, $1.CommRsp>(
        'SendToAllGroup',
        sendToAllGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendToAllGroupReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
  }

  $async.Future<$1.CommRsp> sendToAimUser_Pre($grpc.ServiceCall call, $async.Future<$0.SendToAimUserReq> request) async {
    return sendToAimUser(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAimGroup_Pre($grpc.ServiceCall call, $async.Future<$0.SendToAimGroupReq> request) async {
    return sendToAimGroup(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAllUser_Pre($grpc.ServiceCall call, $async.Future<$0.SendToAllUserReq> request) async {
    return sendToAllUser(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAllGroup_Pre($grpc.ServiceCall call, $async.Future<$0.SendToAllGroupReq> request) async {
    return sendToAllGroup(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAimUser($grpc.ServiceCall call, $0.SendToAimUserReq request);
  $async.Future<$1.CommRsp> sendToAimGroup($grpc.ServiceCall call, $0.SendToAimGroupReq request);
  $async.Future<$1.CommRsp> sendToAllUser($grpc.ServiceCall call, $0.SendToAllUserReq request);
  $async.Future<$1.CommRsp> sendToAllGroup($grpc.ServiceCall call, $0.SendToAllGroupReq request);
}
