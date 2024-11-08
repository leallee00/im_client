//
//  Generated code. Do not modify.
//  source: pb_grpc/msg_pusher/msgPusher.proto
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

import '../../pb_msg/msg_pusher/msgPusher.pb.dart' as $2;
import '../../pb_pub/comm.pb.dart' as $1;
import '../pub/grpc_pub.pb.dart' as $0;

export 'msgPusher.pb.dart';

@$pb.GrpcServiceName('pb_grpc_msgPusher.MsgPusher')
class MsgPusherClient extends $grpc.Client {
  static final _$sendToAimListUser = $grpc.ClientMethod<$0.SendToAimUserListReq, $1.CommRsp>(
      '/pb_grpc_msgPusher.MsgPusher/SendToAimListUser',
      ($0.SendToAimUserListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$pushReceipt = $grpc.ClientMethod<$2.PushReceiptReq, $1.CommRsp>(
      '/pb_grpc_msgPusher.MsgPusher/PushReceipt',
      ($2.PushReceiptReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$pushTokenSync = $grpc.ClientMethod<$2.PushTokenSyncReq, $1.CommRsp>(
      '/pb_grpc_msgPusher.MsgPusher/PushTokenSync',
      ($2.PushTokenSyncReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));

  MsgPusherClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.CommRsp> sendToAimListUser($0.SendToAimUserListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendToAimListUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> pushReceipt($2.PushReceiptReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pushReceipt, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> pushTokenSync($2.PushTokenSyncReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pushTokenSync, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_msgPusher.MsgPusher')
abstract class MsgPusherServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_msgPusher.MsgPusher';

  MsgPusherServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SendToAimUserListReq, $1.CommRsp>(
        'SendToAimListUser',
        sendToAimListUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendToAimUserListReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PushReceiptReq, $1.CommRsp>(
        'PushReceipt',
        pushReceipt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PushReceiptReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PushTokenSyncReq, $1.CommRsp>(
        'PushTokenSync',
        pushTokenSync_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PushTokenSyncReq.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
  }

  $async.Future<$1.CommRsp> sendToAimListUser_Pre($grpc.ServiceCall call, $async.Future<$0.SendToAimUserListReq> request) async {
    return sendToAimListUser(call, await request);
  }

  $async.Future<$1.CommRsp> pushReceipt_Pre($grpc.ServiceCall call, $async.Future<$2.PushReceiptReq> request) async {
    return pushReceipt(call, await request);
  }

  $async.Future<$1.CommRsp> pushTokenSync_Pre($grpc.ServiceCall call, $async.Future<$2.PushTokenSyncReq> request) async {
    return pushTokenSync(call, await request);
  }

  $async.Future<$1.CommRsp> sendToAimListUser($grpc.ServiceCall call, $0.SendToAimUserListReq request);
  $async.Future<$1.CommRsp> pushReceipt($grpc.ServiceCall call, $2.PushReceiptReq request);
  $async.Future<$1.CommRsp> pushTokenSync($grpc.ServiceCall call, $2.PushTokenSyncReq request);
}
