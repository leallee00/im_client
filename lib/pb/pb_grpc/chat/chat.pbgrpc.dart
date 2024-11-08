//
//  Generated code. Do not modify.
//  source: pb_grpc/chat/chat.proto
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

export 'chat.pb.dart';

@$pb.GrpcServiceName('pb_grpc_chat.Chat')
class ChatClient extends $grpc.Client {
  static final _$chat = $grpc.ClientMethod<$0.ChatText, $1.CommRsp>(
      '/pb_grpc_chat.Chat/Chat',
      ($0.ChatText value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));

  ChatClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.CommRsp> chat($0.ChatText request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chat, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_chat.Chat')
abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_chat.Chat';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ChatText, $1.CommRsp>(
        'Chat',
        chat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChatText.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
  }

  $async.Future<$1.CommRsp> chat_Pre($grpc.ServiceCall call, $async.Future<$0.ChatText> request) async {
    return chat(call, await request);
  }

  $async.Future<$1.CommRsp> chat($grpc.ServiceCall call, $0.ChatText request);
}
