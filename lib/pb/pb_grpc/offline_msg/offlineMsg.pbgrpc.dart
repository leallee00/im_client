//
//  Generated code. Do not modify.
//  source: pb_grpc/offline_msg/offlineMsg.proto
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

import '../../pb_msg/offline_msg/offlineMsg.pb.dart' as $0;

export 'offlineMsg.pb.dart';

@$pb.GrpcServiceName('pb_grpc_offlineMsg.OfflineMsg')
class OfflineMsgClient extends $grpc.Client {
  static final _$saveOfflineMsg = $grpc.ClientMethod<$0.SaveOfflineMsgReq, $0.SaveOfflineMsgRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/SaveOfflineMsg',
      ($0.SaveOfflineMsgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SaveOfflineMsgRsp.fromBuffer(value));
  static final _$fetchHistoryMsg = $grpc.ClientMethod<$0.FetchHistoryMsgReq, $0.FetchHistoryMsgRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/FetchHistoryMsg',
      ($0.FetchHistoryMsgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchHistoryMsgRsp.fromBuffer(value));
  static final _$fetchNewHistoryMsg = $grpc.ClientMethod<$0.FetchNewHistoryMsgReq, $0.FetchNewHistoryMsgRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/FetchNewHistoryMsg',
      ($0.FetchNewHistoryMsgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchNewHistoryMsgRsp.fromBuffer(value));
  static final _$fetchOneHistoryMsg = $grpc.ClientMethod<$0.FetchOneHistoryMsgReq, $0.FetchOneHistoryMsgRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/FetchOneHistoryMsg',
      ($0.FetchOneHistoryMsgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchOneHistoryMsgRsp.fromBuffer(value));
  static final _$delHistoryMsg = $grpc.ClientMethod<$0.DelHistoryMsgReq, $0.DelHistoryMsgRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/DelHistoryMsg',
      ($0.DelHistoryMsgReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DelHistoryMsgRsp.fromBuffer(value));
  static final _$readyForSyncOfflineMsgStatus = $grpc.ClientMethod<$0.ReadyForSyncOfflineMsgStatusReq, $0.ReadyForSyncOfflineMsgStatusRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/ReadyForSyncOfflineMsgStatus',
      ($0.ReadyForSyncOfflineMsgStatusReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadyForSyncOfflineMsgStatusRsp.fromBuffer(value));
  static final _$offlineMsgStatueChangeNotifyReceived = $grpc.ClientMethod<$0.OfflineMsgStatueChangeNotifyReceived, $0.OfflineMsgStatueChangeNotifyReceived>(
      '/pb_grpc_offlineMsg.OfflineMsg/OfflineMsgStatueChangeNotifyReceived',
      ($0.OfflineMsgStatueChangeNotifyReceived value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OfflineMsgStatueChangeNotifyReceived.fromBuffer(value));
  static final _$fetchChatSessions = $grpc.ClientMethod<$0.FetchChatSessionsReq, $0.FetchChatSessionsRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/FetchChatSessions',
      ($0.FetchChatSessionsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchChatSessionsRsp.fromBuffer(value));
  static final _$fetchChatHisMsgListOfSession = $grpc.ClientMethod<$0.FetchChatHisMsgListOfSessionReq, $0.FetchChatHisMsgListOfSessionRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/FetchChatHisMsgListOfSession',
      ($0.FetchChatHisMsgListOfSessionReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchChatHisMsgListOfSessionRsp.fromBuffer(value));
  static final _$delChatSessions = $grpc.ClientMethod<$0.DelChatSessionsReq, $0.DelChatSessionsRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/DelChatSessions',
      ($0.DelChatSessionsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DelChatSessionsRsp.fromBuffer(value));
  static final _$clearMsgOfSession = $grpc.ClientMethod<$0.ClearMsgOfSessionReq, $0.ClearMsgOfSessionRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/ClearMsgOfSession',
      ($0.ClearMsgOfSessionReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ClearMsgOfSessionRsp.fromBuffer(value));
  static final _$fetchSysNotifyMsgList = $grpc.ClientMethod<$0.FetchSysNotifyMsgListReq, $0.FetchSysNotifyMsgListRsp>(
      '/pb_grpc_offlineMsg.OfflineMsg/FetchSysNotifyMsgList',
      ($0.FetchSysNotifyMsgListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchSysNotifyMsgListRsp.fromBuffer(value));

  OfflineMsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.SaveOfflineMsgRsp> saveOfflineMsg($0.SaveOfflineMsgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveOfflineMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchHistoryMsgRsp> fetchHistoryMsg($0.FetchHistoryMsgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchHistoryMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchNewHistoryMsgRsp> fetchNewHistoryMsg($0.FetchNewHistoryMsgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchNewHistoryMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchOneHistoryMsgRsp> fetchOneHistoryMsg($0.FetchOneHistoryMsgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchOneHistoryMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelHistoryMsgRsp> delHistoryMsg($0.DelHistoryMsgReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delHistoryMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadyForSyncOfflineMsgStatusRsp> readyForSyncOfflineMsgStatus($0.ReadyForSyncOfflineMsgStatusReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readyForSyncOfflineMsgStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.OfflineMsgStatueChangeNotifyReceived> offlineMsgStatueChangeNotifyReceived($0.OfflineMsgStatueChangeNotifyReceived request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$offlineMsgStatueChangeNotifyReceived, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchChatSessionsRsp> fetchChatSessions($0.FetchChatSessionsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchChatSessions, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchChatHisMsgListOfSessionRsp> fetchChatHisMsgListOfSession($0.FetchChatHisMsgListOfSessionReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchChatHisMsgListOfSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelChatSessionsRsp> delChatSessions($0.DelChatSessionsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delChatSessions, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClearMsgOfSessionRsp> clearMsgOfSession($0.ClearMsgOfSessionReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$clearMsgOfSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchSysNotifyMsgListRsp> fetchSysNotifyMsgList($0.FetchSysNotifyMsgListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchSysNotifyMsgList, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_offlineMsg.OfflineMsg')
abstract class OfflineMsgServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_offlineMsg.OfflineMsg';

  OfflineMsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SaveOfflineMsgReq, $0.SaveOfflineMsgRsp>(
        'SaveOfflineMsg',
        saveOfflineMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SaveOfflineMsgReq.fromBuffer(value),
        ($0.SaveOfflineMsgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchHistoryMsgReq, $0.FetchHistoryMsgRsp>(
        'FetchHistoryMsg',
        fetchHistoryMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchHistoryMsgReq.fromBuffer(value),
        ($0.FetchHistoryMsgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchNewHistoryMsgReq, $0.FetchNewHistoryMsgRsp>(
        'FetchNewHistoryMsg',
        fetchNewHistoryMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchNewHistoryMsgReq.fromBuffer(value),
        ($0.FetchNewHistoryMsgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchOneHistoryMsgReq, $0.FetchOneHistoryMsgRsp>(
        'FetchOneHistoryMsg',
        fetchOneHistoryMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchOneHistoryMsgReq.fromBuffer(value),
        ($0.FetchOneHistoryMsgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelHistoryMsgReq, $0.DelHistoryMsgRsp>(
        'DelHistoryMsg',
        delHistoryMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelHistoryMsgReq.fromBuffer(value),
        ($0.DelHistoryMsgRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadyForSyncOfflineMsgStatusReq, $0.ReadyForSyncOfflineMsgStatusRsp>(
        'ReadyForSyncOfflineMsgStatus',
        readyForSyncOfflineMsgStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadyForSyncOfflineMsgStatusReq.fromBuffer(value),
        ($0.ReadyForSyncOfflineMsgStatusRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OfflineMsgStatueChangeNotifyReceived, $0.OfflineMsgStatueChangeNotifyReceived>(
        'OfflineMsgStatueChangeNotifyReceived',
        offlineMsgStatueChangeNotifyReceived_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OfflineMsgStatueChangeNotifyReceived.fromBuffer(value),
        ($0.OfflineMsgStatueChangeNotifyReceived value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchChatSessionsReq, $0.FetchChatSessionsRsp>(
        'FetchChatSessions',
        fetchChatSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchChatSessionsReq.fromBuffer(value),
        ($0.FetchChatSessionsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchChatHisMsgListOfSessionReq, $0.FetchChatHisMsgListOfSessionRsp>(
        'FetchChatHisMsgListOfSession',
        fetchChatHisMsgListOfSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchChatHisMsgListOfSessionReq.fromBuffer(value),
        ($0.FetchChatHisMsgListOfSessionRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelChatSessionsReq, $0.DelChatSessionsRsp>(
        'DelChatSessions',
        delChatSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelChatSessionsReq.fromBuffer(value),
        ($0.DelChatSessionsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClearMsgOfSessionReq, $0.ClearMsgOfSessionRsp>(
        'ClearMsgOfSession',
        clearMsgOfSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ClearMsgOfSessionReq.fromBuffer(value),
        ($0.ClearMsgOfSessionRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchSysNotifyMsgListReq, $0.FetchSysNotifyMsgListRsp>(
        'FetchSysNotifyMsgList',
        fetchSysNotifyMsgList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchSysNotifyMsgListReq.fromBuffer(value),
        ($0.FetchSysNotifyMsgListRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.SaveOfflineMsgRsp> saveOfflineMsg_Pre($grpc.ServiceCall call, $async.Future<$0.SaveOfflineMsgReq> request) async {
    return saveOfflineMsg(call, await request);
  }

  $async.Future<$0.FetchHistoryMsgRsp> fetchHistoryMsg_Pre($grpc.ServiceCall call, $async.Future<$0.FetchHistoryMsgReq> request) async {
    return fetchHistoryMsg(call, await request);
  }

  $async.Future<$0.FetchNewHistoryMsgRsp> fetchNewHistoryMsg_Pre($grpc.ServiceCall call, $async.Future<$0.FetchNewHistoryMsgReq> request) async {
    return fetchNewHistoryMsg(call, await request);
  }

  $async.Future<$0.FetchOneHistoryMsgRsp> fetchOneHistoryMsg_Pre($grpc.ServiceCall call, $async.Future<$0.FetchOneHistoryMsgReq> request) async {
    return fetchOneHistoryMsg(call, await request);
  }

  $async.Future<$0.DelHistoryMsgRsp> delHistoryMsg_Pre($grpc.ServiceCall call, $async.Future<$0.DelHistoryMsgReq> request) async {
    return delHistoryMsg(call, await request);
  }

  $async.Future<$0.ReadyForSyncOfflineMsgStatusRsp> readyForSyncOfflineMsgStatus_Pre($grpc.ServiceCall call, $async.Future<$0.ReadyForSyncOfflineMsgStatusReq> request) async {
    return readyForSyncOfflineMsgStatus(call, await request);
  }

  $async.Future<$0.OfflineMsgStatueChangeNotifyReceived> offlineMsgStatueChangeNotifyReceived_Pre($grpc.ServiceCall call, $async.Future<$0.OfflineMsgStatueChangeNotifyReceived> request) async {
    return offlineMsgStatueChangeNotifyReceived(call, await request);
  }

  $async.Future<$0.FetchChatSessionsRsp> fetchChatSessions_Pre($grpc.ServiceCall call, $async.Future<$0.FetchChatSessionsReq> request) async {
    return fetchChatSessions(call, await request);
  }

  $async.Future<$0.FetchChatHisMsgListOfSessionRsp> fetchChatHisMsgListOfSession_Pre($grpc.ServiceCall call, $async.Future<$0.FetchChatHisMsgListOfSessionReq> request) async {
    return fetchChatHisMsgListOfSession(call, await request);
  }

  $async.Future<$0.DelChatSessionsRsp> delChatSessions_Pre($grpc.ServiceCall call, $async.Future<$0.DelChatSessionsReq> request) async {
    return delChatSessions(call, await request);
  }

  $async.Future<$0.ClearMsgOfSessionRsp> clearMsgOfSession_Pre($grpc.ServiceCall call, $async.Future<$0.ClearMsgOfSessionReq> request) async {
    return clearMsgOfSession(call, await request);
  }

  $async.Future<$0.FetchSysNotifyMsgListRsp> fetchSysNotifyMsgList_Pre($grpc.ServiceCall call, $async.Future<$0.FetchSysNotifyMsgListReq> request) async {
    return fetchSysNotifyMsgList(call, await request);
  }

  $async.Future<$0.SaveOfflineMsgRsp> saveOfflineMsg($grpc.ServiceCall call, $0.SaveOfflineMsgReq request);
  $async.Future<$0.FetchHistoryMsgRsp> fetchHistoryMsg($grpc.ServiceCall call, $0.FetchHistoryMsgReq request);
  $async.Future<$0.FetchNewHistoryMsgRsp> fetchNewHistoryMsg($grpc.ServiceCall call, $0.FetchNewHistoryMsgReq request);
  $async.Future<$0.FetchOneHistoryMsgRsp> fetchOneHistoryMsg($grpc.ServiceCall call, $0.FetchOneHistoryMsgReq request);
  $async.Future<$0.DelHistoryMsgRsp> delHistoryMsg($grpc.ServiceCall call, $0.DelHistoryMsgReq request);
  $async.Future<$0.ReadyForSyncOfflineMsgStatusRsp> readyForSyncOfflineMsgStatus($grpc.ServiceCall call, $0.ReadyForSyncOfflineMsgStatusReq request);
  $async.Future<$0.OfflineMsgStatueChangeNotifyReceived> offlineMsgStatueChangeNotifyReceived($grpc.ServiceCall call, $0.OfflineMsgStatueChangeNotifyReceived request);
  $async.Future<$0.FetchChatSessionsRsp> fetchChatSessions($grpc.ServiceCall call, $0.FetchChatSessionsReq request);
  $async.Future<$0.FetchChatHisMsgListOfSessionRsp> fetchChatHisMsgListOfSession($grpc.ServiceCall call, $0.FetchChatHisMsgListOfSessionReq request);
  $async.Future<$0.DelChatSessionsRsp> delChatSessions($grpc.ServiceCall call, $0.DelChatSessionsReq request);
  $async.Future<$0.ClearMsgOfSessionRsp> clearMsgOfSession($grpc.ServiceCall call, $0.ClearMsgOfSessionReq request);
  $async.Future<$0.FetchSysNotifyMsgListRsp> fetchSysNotifyMsgList($grpc.ServiceCall call, $0.FetchSysNotifyMsgListReq request);
}
