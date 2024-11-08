//
//  Generated code. Do not modify.
//  source: pb_grpc/gate/gate.proto
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
import '../../pb_pub/comm.pb.dart' as $1;
import '../pub/grpc_pub.pb.dart' as $2;

export 'gate.pb.dart';

@$pb.GrpcServiceName('pb_grpc_gate.Gate')
class GateClient extends $grpc.Client {
  static final _$kickOffUser = $grpc.ClientMethod<$0.KickOffUser, $1.CommRsp>(
      '/pb_grpc_gate.Gate/KickOffUser',
      ($0.KickOffUser value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendToAimUser = $grpc.ClientMethod<$2.SendToAimUserReq, $1.CommRsp>(
      '/pb_grpc_gate.Gate/SendToAimUser',
      ($2.SendToAimUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendToAimGroup = $grpc.ClientMethod<$2.SendToAimGroupReq, $1.CommRsp>(
      '/pb_grpc_gate.Gate/SendToAimGroup',
      ($2.SendToAimGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendToAllUser = $grpc.ClientMethod<$2.SendToAllUserReq, $1.CommRsp>(
      '/pb_grpc_gate.Gate/SendToAllUser',
      ($2.SendToAllUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendToAllGroup = $grpc.ClientMethod<$2.SendToAllGroupReq, $1.CommRsp>(
      '/pb_grpc_gate.Gate/SendToAllGroup',
      ($2.SendToAllGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendToAimClients = $grpc.ClientMethod<$2.SendToAimClientsReq, $1.CommRsp>(
      '/pb_grpc_gate.Gate/SendToAimClients',
      ($2.SendToAimClientsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$msgReceipt = $grpc.ClientMethod<$1.MsgReceipt, $1.CommRsp>(
      '/pb_grpc_gate.Gate/MsgReceipt',
      ($1.MsgReceipt value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$removeUserFromGateRoom = $grpc.ClientMethod<$0.RemoveUserFromGateRoomReq, $1.CommRsp>(
      '/pb_grpc_gate.Gate/RemoveUserFromGateRoom',
      ($0.RemoveUserFromGateRoomReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$sendMsgFromServer = $grpc.ClientMethod<$1.PBMessage, $1.PBMessage>(
      '/pb_grpc_gate.Gate/SendMsgFromServer',
      ($1.PBMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PBMessage.fromBuffer(value));

  GateClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.CommRsp> kickOffUser($0.KickOffUser request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$kickOffUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendToAimUser($2.SendToAimUserReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAimUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendToAimGroup($2.SendToAimGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAimGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendToAllUser($2.SendToAllUserReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAllUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendToAllGroup($2.SendToAllGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAllGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> sendToAimClients($2.SendToAimClientsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAimClients, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> msgReceipt($1.MsgReceipt request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$msgReceipt, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> removeUserFromGateRoom($0.RemoveUserFromGateRoomReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeUserFromGateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$1.PBMessage> sendMsgFromServer($1.PBMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMsgFromServer, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_gate.Gate')
abstract class GateServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_gate.Gate';

  GateServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.KickOffUser, $1.CommRsp>(
        'KickOffUser',
        kickOffUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.KickOffUser.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SendToAimUserReq, $1.CommRsp>(
        'SendToAimUser',
        sendToAimUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SendToAimUserReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SendToAimGroupReq, $1.CommRsp>(
        'SendToAimGroup',
        sendToAimGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SendToAimGroupReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SendToAllUserReq, $1.CommRsp>(
        'SendToAllUser',
        sendToAllUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SendToAllUserReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SendToAllGroupReq, $1.CommRsp>(
        'SendToAllGroup',
        sendToAllGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SendToAllGroupReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SendToAimClientsReq, $1.CommRsp>(
        'SendToAimClients',
        sendToAimClients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SendToAimClientsReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgReceipt, $1.CommRsp>(
        'MsgReceipt',
        msgReceipt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgReceipt.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveUserFromGateRoomReq, $1.CommRsp>(
        'RemoveUserFromGateRoom',
        removeUserFromGateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveUserFromGateRoomReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PBMessage, $1.PBMessage>(
        'SendMsgFromServer',
        sendMsgFromServer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PBMessage.fromBuffer(value),
        ($1.PBMessage value) => value.writeToBuffer()));
  }

  $async.Future<$1.CommRsp> kickOffUser_Pre($grpc.ServiceCall call, $async.Future<$0.KickOffUser> request) async {
    return kickOffUser(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAimUser_Pre($grpc.ServiceCall call, $async.Future<$2.SendToAimUserReq> request) async {
    return sendToAimUser(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAimGroup_Pre($grpc.ServiceCall call, $async.Future<$2.SendToAimGroupReq> request) async {
    return sendToAimGroup(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAllUser_Pre($grpc.ServiceCall call, $async.Future<$2.SendToAllUserReq> request) async {
    return sendToAllUser(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAllGroup_Pre($grpc.ServiceCall call, $async.Future<$2.SendToAllGroupReq> request) async {
    return sendToAllGroup(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAimClients_Pre($grpc.ServiceCall call, $async.Future<$2.SendToAimClientsReq> request) async {
    return sendToAimClients(call, await request);
  }

  $async.Future<$1.CommRsp> msgReceipt_Pre($grpc.ServiceCall call, $async.Future<$1.MsgReceipt> request) async {
    return msgReceipt(call, await request);
  }

  $async.Future<$1.CommRsp> removeUserFromGateRoom_Pre($grpc.ServiceCall call, $async.Future<$0.RemoveUserFromGateRoomReq> request) async {
    return removeUserFromGateRoom(call, await request);
  }

  $async.Future<$1.PBMessage> sendMsgFromServer_Pre($grpc.ServiceCall call, $async.Future<$1.PBMessage> request) async {
    return sendMsgFromServer(call, await request);
  }

  $async.Future<$1.CommRsp> kickOffUser($grpc.ServiceCall call, $0.KickOffUser request);
  $async.Future<$1.CommRsp> sendToAimUser($grpc.ServiceCall call, $2.SendToAimUserReq request);
  $async.Future<$1.CommRsp> sendToAimGroup($grpc.ServiceCall call, $2.SendToAimGroupReq request);
  $async.Future<$1.CommRsp> sendToAllUser($grpc.ServiceCall call, $2.SendToAllUserReq request);
  $async.Future<$1.CommRsp> sendToAllGroup($grpc.ServiceCall call, $2.SendToAllGroupReq request);
  $async.Future<$1.CommRsp> sendToAimClients($grpc.ServiceCall call, $2.SendToAimClientsReq request);
  $async.Future<$1.CommRsp> msgReceipt($grpc.ServiceCall call, $1.MsgReceipt request);
  $async.Future<$1.CommRsp> removeUserFromGateRoom($grpc.ServiceCall call, $0.RemoveUserFromGateRoomReq request);
  $async.Future<$1.PBMessage> sendMsgFromServer($grpc.ServiceCall call, $1.PBMessage request);
}
