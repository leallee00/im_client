//
//  Generated code. Do not modify.
//  source: pb_grpc/black_list/blackList.proto
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

import '../../pb_msg/black_list/blackList.pb.dart' as $0;

export 'blackList.pb.dart';

@$pb.GrpcServiceName('pb_grpc_blackList.BlackList')
class BlackListClient extends $grpc.Client {
  static final _$saveBlackList = $grpc.ClientMethod<$0.SaveBlackListReq, $0.SaveBlackListRsp>(
      '/pb_grpc_blackList.BlackList/SaveBlackList',
      ($0.SaveBlackListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SaveBlackListRsp.fromBuffer(value));
  static final _$readBlackList = $grpc.ClientMethod<$0.ReadBlackListReq, $0.ReadBlackListRsp>(
      '/pb_grpc_blackList.BlackList/ReadBlackList',
      ($0.ReadBlackListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadBlackListRsp.fromBuffer(value));
  static final _$deleteBlackList = $grpc.ClientMethod<$0.DeleteBlackListReq, $0.DeleteBlackListRsp>(
      '/pb_grpc_blackList.BlackList/DeleteBlackList',
      ($0.DeleteBlackListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteBlackListRsp.fromBuffer(value));
  static final _$judgeBlackList = $grpc.ClientMethod<$0.JudgeBlackListReq, $0.JudgeBlackListRsp>(
      '/pb_grpc_blackList.BlackList/JudgeBlackList',
      ($0.JudgeBlackListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.JudgeBlackListRsp.fromBuffer(value));

  BlackListClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.SaveBlackListRsp> saveBlackList($0.SaveBlackListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveBlackList, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadBlackListRsp> readBlackList($0.ReadBlackListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readBlackList, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteBlackListRsp> deleteBlackList($0.DeleteBlackListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBlackList, request, options: options);
  }

  $grpc.ResponseFuture<$0.JudgeBlackListRsp> judgeBlackList($0.JudgeBlackListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$judgeBlackList, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_blackList.BlackList')
abstract class BlackListServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_blackList.BlackList';

  BlackListServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SaveBlackListReq, $0.SaveBlackListRsp>(
        'SaveBlackList',
        saveBlackList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SaveBlackListReq.fromBuffer(value),
        ($0.SaveBlackListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadBlackListReq, $0.ReadBlackListRsp>(
        'ReadBlackList',
        readBlackList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadBlackListReq.fromBuffer(value),
        ($0.ReadBlackListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteBlackListReq, $0.DeleteBlackListRsp>(
        'DeleteBlackList',
        deleteBlackList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteBlackListReq.fromBuffer(value),
        ($0.DeleteBlackListRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.JudgeBlackListReq, $0.JudgeBlackListRsp>(
        'JudgeBlackList',
        judgeBlackList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.JudgeBlackListReq.fromBuffer(value),
        ($0.JudgeBlackListRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.SaveBlackListRsp> saveBlackList_Pre($grpc.ServiceCall call, $async.Future<$0.SaveBlackListReq> request) async {
    return saveBlackList(call, await request);
  }

  $async.Future<$0.ReadBlackListRsp> readBlackList_Pre($grpc.ServiceCall call, $async.Future<$0.ReadBlackListReq> request) async {
    return readBlackList(call, await request);
  }

  $async.Future<$0.DeleteBlackListRsp> deleteBlackList_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteBlackListReq> request) async {
    return deleteBlackList(call, await request);
  }

  $async.Future<$0.JudgeBlackListRsp> judgeBlackList_Pre($grpc.ServiceCall call, $async.Future<$0.JudgeBlackListReq> request) async {
    return judgeBlackList(call, await request);
  }

  $async.Future<$0.SaveBlackListRsp> saveBlackList($grpc.ServiceCall call, $0.SaveBlackListReq request);
  $async.Future<$0.ReadBlackListRsp> readBlackList($grpc.ServiceCall call, $0.ReadBlackListReq request);
  $async.Future<$0.DeleteBlackListRsp> deleteBlackList($grpc.ServiceCall call, $0.DeleteBlackListReq request);
  $async.Future<$0.JudgeBlackListRsp> judgeBlackList($grpc.ServiceCall call, $0.JudgeBlackListReq request);
}
