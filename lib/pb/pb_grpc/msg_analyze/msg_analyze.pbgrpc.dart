//
//  Generated code. Do not modify.
//  source: pb_grpc/msg_analyze/msg_analyze.proto
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

import '../../pb_msg/msg_analyze/msg_analyze.pb.dart' as $0;

export 'msg_analyze.pb.dart';

@$pb.GrpcServiceName('pb_grpc_msgAnalyze.msgAnalyze')
class msgAnalyzeClient extends $grpc.Client {
  static final _$readMsgHistory = $grpc.ClientMethod<$0.ReadMsgHistoryReq, $0.ReadMsgHistoryRsp>(
      '/pb_grpc_msgAnalyze.msgAnalyze/ReadMsgHistory',
      ($0.ReadMsgHistoryReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadMsgHistoryRsp.fromBuffer(value));
  static final _$chatSessions = $grpc.ClientMethod<$0.ChatSessionsReq, $0.ChatSessionsRsp>(
      '/pb_grpc_msgAnalyze.msgAnalyze/ChatSessions',
      ($0.ChatSessionsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatSessionsRsp.fromBuffer(value));
  static final _$chatHistories = $grpc.ClientMethod<$0.ChatHistoriesReq, $0.ChatHistoriesRsp>(
      '/pb_grpc_msgAnalyze.msgAnalyze/ChatHistories',
      ($0.ChatHistoriesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatHistoriesRsp.fromBuffer(value));
  static final _$chatStats = $grpc.ClientMethod<$0.ChatStatsReq, $0.ChatStatsRsp>(
      '/pb_grpc_msgAnalyze.msgAnalyze/ChatStats',
      ($0.ChatStatsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatStatsRsp.fromBuffer(value));

  msgAnalyzeClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ReadMsgHistoryRsp> readMsgHistory($0.ReadMsgHistoryReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readMsgHistory, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatSessionsRsp> chatSessions($0.ChatSessionsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chatSessions, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatHistoriesRsp> chatHistories($0.ChatHistoriesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chatHistories, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatStatsRsp> chatStats($0.ChatStatsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chatStats, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_msgAnalyze.msgAnalyze')
abstract class msgAnalyzeServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_msgAnalyze.msgAnalyze';

  msgAnalyzeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ReadMsgHistoryReq, $0.ReadMsgHistoryRsp>(
        'ReadMsgHistory',
        readMsgHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadMsgHistoryReq.fromBuffer(value),
        ($0.ReadMsgHistoryRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatSessionsReq, $0.ChatSessionsRsp>(
        'ChatSessions',
        chatSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChatSessionsReq.fromBuffer(value),
        ($0.ChatSessionsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatHistoriesReq, $0.ChatHistoriesRsp>(
        'ChatHistories',
        chatHistories_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChatHistoriesReq.fromBuffer(value),
        ($0.ChatHistoriesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatStatsReq, $0.ChatStatsRsp>(
        'ChatStats',
        chatStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChatStatsReq.fromBuffer(value),
        ($0.ChatStatsRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.ReadMsgHistoryRsp> readMsgHistory_Pre($grpc.ServiceCall call, $async.Future<$0.ReadMsgHistoryReq> request) async {
    return readMsgHistory(call, await request);
  }

  $async.Future<$0.ChatSessionsRsp> chatSessions_Pre($grpc.ServiceCall call, $async.Future<$0.ChatSessionsReq> request) async {
    return chatSessions(call, await request);
  }

  $async.Future<$0.ChatHistoriesRsp> chatHistories_Pre($grpc.ServiceCall call, $async.Future<$0.ChatHistoriesReq> request) async {
    return chatHistories(call, await request);
  }

  $async.Future<$0.ChatStatsRsp> chatStats_Pre($grpc.ServiceCall call, $async.Future<$0.ChatStatsReq> request) async {
    return chatStats(call, await request);
  }

  $async.Future<$0.ReadMsgHistoryRsp> readMsgHistory($grpc.ServiceCall call, $0.ReadMsgHistoryReq request);
  $async.Future<$0.ChatSessionsRsp> chatSessions($grpc.ServiceCall call, $0.ChatSessionsReq request);
  $async.Future<$0.ChatHistoriesRsp> chatHistories($grpc.ServiceCall call, $0.ChatHistoriesReq request);
  $async.Future<$0.ChatStatsRsp> chatStats($grpc.ServiceCall call, $0.ChatStatsReq request);
}
