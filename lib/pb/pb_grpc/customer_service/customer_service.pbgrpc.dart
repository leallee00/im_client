//
//  Generated code. Do not modify.
//  source: pb_grpc/customer_service/customer_service.proto
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

import '../../pb_msg/customer_service/customer_service.pb.dart' as $0;
import '../../pb_pub/comm.pb.dart' as $1;

export 'customer_service.pb.dart';

@$pb.GrpcServiceName('pb_grpc_customer_service.CustomerService')
class CustomerServiceClient extends $grpc.Client {
  static final _$chat = $grpc.ClientMethod<$0.KefuMessage, $0.KefuReceipt>(
      '/pb_grpc_customer_service.CustomerService/Chat',
      ($0.KefuMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.KefuReceipt.fromBuffer(value));
  static final _$receipt = $grpc.ClientMethod<$0.KefuReceipt, $1.CommRsp>(
      '/pb_grpc_customer_service.CustomerService/Receipt',
      ($0.KefuReceipt value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommRsp.fromBuffer(value));
  static final _$answer = $grpc.ClientMethod<$0.AnswerReq, $0.AnswerRsp>(
      '/pb_grpc_customer_service.CustomerService/Answer',
      ($0.AnswerReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AnswerRsp.fromBuffer(value));
  static final _$fetchWaitList = $grpc.ClientMethod<$0.FetchWaitCustomers, $0.WaitCustomers>(
      '/pb_grpc_customer_service.CustomerService/FetchWaitList',
      ($0.FetchWaitCustomers value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WaitCustomers.fromBuffer(value));
  static final _$histories = $grpc.ClientMethod<$0.HistoriesReq, $0.HistoriesRsp>(
      '/pb_grpc_customer_service.CustomerService/Histories',
      ($0.HistoriesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HistoriesRsp.fromBuffer(value));
  static final _$sessions = $grpc.ClientMethod<$0.SessionsReq, $0.SessionsRsp>(
      '/pb_grpc_customer_service.CustomerService/Sessions',
      ($0.SessionsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SessionsRsp.fromBuffer(value));
  static final _$deleteSession = $grpc.ClientMethod<$0.DeleteSessionReq, $0.DeleteSessionRsp>(
      '/pb_grpc_customer_service.CustomerService/DeleteSession',
      ($0.DeleteSessionReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteSessionRsp.fromBuffer(value));
  static final _$addKefu = $grpc.ClientMethod<$0.AddKefuReq, $0.AddKefuRsp>(
      '/pb_grpc_customer_service.CustomerService/AddKefu',
      ($0.AddKefuReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddKefuRsp.fromBuffer(value));
  static final _$updateKefu = $grpc.ClientMethod<$0.UpdateKefuReq, $0.UpdateKefuRsp>(
      '/pb_grpc_customer_service.CustomerService/UpdateKefu',
      ($0.UpdateKefuReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateKefuRsp.fromBuffer(value));
  static final _$deleteKefu = $grpc.ClientMethod<$0.DeleteKefuReq, $0.DeleteKefuRsp>(
      '/pb_grpc_customer_service.CustomerService/DeleteKefu',
      ($0.DeleteKefuReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteKefuRsp.fromBuffer(value));
  static final _$getKefu = $grpc.ClientMethod<$0.GetKefuReq, $0.GetKefuRsp>(
      '/pb_grpc_customer_service.CustomerService/GetKefu',
      ($0.GetKefuReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetKefuRsp.fromBuffer(value));
  static final _$getKefus = $grpc.ClientMethod<$0.GetKefusReq, $0.GetKefusRsp>(
      '/pb_grpc_customer_service.CustomerService/GetKefus',
      ($0.GetKefusReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetKefusRsp.fromBuffer(value));
  static final _$getKefuRoles = $grpc.ClientMethod<$0.GetKefuRolesReq, $0.GetKefuRolesRsp>(
      '/pb_grpc_customer_service.CustomerService/GetKefuRoles',
      ($0.GetKefuRolesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetKefuRolesRsp.fromBuffer(value));
  static final _$addKefuGroup = $grpc.ClientMethod<$0.AddKefuGroupReq, $0.AddKefuGroupRsp>(
      '/pb_grpc_customer_service.CustomerService/AddKefuGroup',
      ($0.AddKefuGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddKefuGroupRsp.fromBuffer(value));
  static final _$updateKefuGroup = $grpc.ClientMethod<$0.UpdateKefuGroupReq, $0.UpdateKefuGroupRsp>(
      '/pb_grpc_customer_service.CustomerService/UpdateKefuGroup',
      ($0.UpdateKefuGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateKefuGroupRsp.fromBuffer(value));
  static final _$deleteKefuGroup = $grpc.ClientMethod<$0.DeleteKefuGroupReq, $0.DeleteKefuGroupRsp>(
      '/pb_grpc_customer_service.CustomerService/DeleteKefuGroup',
      ($0.DeleteKefuGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteKefuGroupRsp.fromBuffer(value));
  static final _$getKefuGroup = $grpc.ClientMethod<$0.GetKefuGroupReq, $0.GetKefuGroupRsp>(
      '/pb_grpc_customer_service.CustomerService/GetKefuGroup',
      ($0.GetKefuGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetKefuGroupRsp.fromBuffer(value));
  static final _$getKefuGroups = $grpc.ClientMethod<$0.GetKefuGroupsReq, $0.GetKefuGroupsRsp>(
      '/pb_grpc_customer_service.CustomerService/GetKefuGroups',
      ($0.GetKefuGroupsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetKefuGroupsRsp.fromBuffer(value));

  CustomerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.KefuReceipt> chat($0.KefuMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chat, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommRsp> receipt($0.KefuReceipt request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receipt, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnswerRsp> answer($0.AnswerReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$answer, request, options: options);
  }

  $grpc.ResponseFuture<$0.WaitCustomers> fetchWaitList($0.FetchWaitCustomers request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchWaitList, request, options: options);
  }

  $grpc.ResponseFuture<$0.HistoriesRsp> histories($0.HistoriesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$histories, request, options: options);
  }

  $grpc.ResponseFuture<$0.SessionsRsp> sessions($0.SessionsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sessions, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteSessionRsp> deleteSession($0.DeleteSessionReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddKefuRsp> addKefu($0.AddKefuReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addKefu, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateKefuRsp> updateKefu($0.UpdateKefuReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateKefu, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteKefuRsp> deleteKefu($0.DeleteKefuReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteKefu, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetKefuRsp> getKefu($0.GetKefuReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getKefu, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetKefusRsp> getKefus($0.GetKefusReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getKefus, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetKefuRolesRsp> getKefuRoles($0.GetKefuRolesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getKefuRoles, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddKefuGroupRsp> addKefuGroup($0.AddKefuGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addKefuGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateKefuGroupRsp> updateKefuGroup($0.UpdateKefuGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateKefuGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteKefuGroupRsp> deleteKefuGroup($0.DeleteKefuGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteKefuGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetKefuGroupRsp> getKefuGroup($0.GetKefuGroupReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getKefuGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetKefuGroupsRsp> getKefuGroups($0.GetKefuGroupsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getKefuGroups, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_customer_service.CustomerService')
abstract class CustomerServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_customer_service.CustomerService';

  CustomerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.KefuMessage, $0.KefuReceipt>(
        'Chat',
        chat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.KefuMessage.fromBuffer(value),
        ($0.KefuReceipt value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KefuReceipt, $1.CommRsp>(
        'Receipt',
        receipt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.KefuReceipt.fromBuffer(value),
        ($1.CommRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnswerReq, $0.AnswerRsp>(
        'Answer',
        answer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AnswerReq.fromBuffer(value),
        ($0.AnswerRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchWaitCustomers, $0.WaitCustomers>(
        'FetchWaitList',
        fetchWaitList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchWaitCustomers.fromBuffer(value),
        ($0.WaitCustomers value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HistoriesReq, $0.HistoriesRsp>(
        'Histories',
        histories_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HistoriesReq.fromBuffer(value),
        ($0.HistoriesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SessionsReq, $0.SessionsRsp>(
        'Sessions',
        sessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SessionsReq.fromBuffer(value),
        ($0.SessionsRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteSessionReq, $0.DeleteSessionRsp>(
        'DeleteSession',
        deleteSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteSessionReq.fromBuffer(value),
        ($0.DeleteSessionRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddKefuReq, $0.AddKefuRsp>(
        'AddKefu',
        addKefu_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddKefuReq.fromBuffer(value),
        ($0.AddKefuRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateKefuReq, $0.UpdateKefuRsp>(
        'UpdateKefu',
        updateKefu_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateKefuReq.fromBuffer(value),
        ($0.UpdateKefuRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteKefuReq, $0.DeleteKefuRsp>(
        'DeleteKefu',
        deleteKefu_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteKefuReq.fromBuffer(value),
        ($0.DeleteKefuRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetKefuReq, $0.GetKefuRsp>(
        'GetKefu',
        getKefu_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetKefuReq.fromBuffer(value),
        ($0.GetKefuRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetKefusReq, $0.GetKefusRsp>(
        'GetKefus',
        getKefus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetKefusReq.fromBuffer(value),
        ($0.GetKefusRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetKefuRolesReq, $0.GetKefuRolesRsp>(
        'GetKefuRoles',
        getKefuRoles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetKefuRolesReq.fromBuffer(value),
        ($0.GetKefuRolesRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddKefuGroupReq, $0.AddKefuGroupRsp>(
        'AddKefuGroup',
        addKefuGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddKefuGroupReq.fromBuffer(value),
        ($0.AddKefuGroupRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateKefuGroupReq, $0.UpdateKefuGroupRsp>(
        'UpdateKefuGroup',
        updateKefuGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateKefuGroupReq.fromBuffer(value),
        ($0.UpdateKefuGroupRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteKefuGroupReq, $0.DeleteKefuGroupRsp>(
        'DeleteKefuGroup',
        deleteKefuGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteKefuGroupReq.fromBuffer(value),
        ($0.DeleteKefuGroupRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetKefuGroupReq, $0.GetKefuGroupRsp>(
        'GetKefuGroup',
        getKefuGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetKefuGroupReq.fromBuffer(value),
        ($0.GetKefuGroupRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetKefuGroupsReq, $0.GetKefuGroupsRsp>(
        'GetKefuGroups',
        getKefuGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetKefuGroupsReq.fromBuffer(value),
        ($0.GetKefuGroupsRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.KefuReceipt> chat_Pre($grpc.ServiceCall call, $async.Future<$0.KefuMessage> request) async {
    return chat(call, await request);
  }

  $async.Future<$1.CommRsp> receipt_Pre($grpc.ServiceCall call, $async.Future<$0.KefuReceipt> request) async {
    return receipt(call, await request);
  }

  $async.Future<$0.AnswerRsp> answer_Pre($grpc.ServiceCall call, $async.Future<$0.AnswerReq> request) async {
    return answer(call, await request);
  }

  $async.Future<$0.WaitCustomers> fetchWaitList_Pre($grpc.ServiceCall call, $async.Future<$0.FetchWaitCustomers> request) async {
    return fetchWaitList(call, await request);
  }

  $async.Future<$0.HistoriesRsp> histories_Pre($grpc.ServiceCall call, $async.Future<$0.HistoriesReq> request) async {
    return histories(call, await request);
  }

  $async.Future<$0.SessionsRsp> sessions_Pre($grpc.ServiceCall call, $async.Future<$0.SessionsReq> request) async {
    return sessions(call, await request);
  }

  $async.Future<$0.DeleteSessionRsp> deleteSession_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteSessionReq> request) async {
    return deleteSession(call, await request);
  }

  $async.Future<$0.AddKefuRsp> addKefu_Pre($grpc.ServiceCall call, $async.Future<$0.AddKefuReq> request) async {
    return addKefu(call, await request);
  }

  $async.Future<$0.UpdateKefuRsp> updateKefu_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateKefuReq> request) async {
    return updateKefu(call, await request);
  }

  $async.Future<$0.DeleteKefuRsp> deleteKefu_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteKefuReq> request) async {
    return deleteKefu(call, await request);
  }

  $async.Future<$0.GetKefuRsp> getKefu_Pre($grpc.ServiceCall call, $async.Future<$0.GetKefuReq> request) async {
    return getKefu(call, await request);
  }

  $async.Future<$0.GetKefusRsp> getKefus_Pre($grpc.ServiceCall call, $async.Future<$0.GetKefusReq> request) async {
    return getKefus(call, await request);
  }

  $async.Future<$0.GetKefuRolesRsp> getKefuRoles_Pre($grpc.ServiceCall call, $async.Future<$0.GetKefuRolesReq> request) async {
    return getKefuRoles(call, await request);
  }

  $async.Future<$0.AddKefuGroupRsp> addKefuGroup_Pre($grpc.ServiceCall call, $async.Future<$0.AddKefuGroupReq> request) async {
    return addKefuGroup(call, await request);
  }

  $async.Future<$0.UpdateKefuGroupRsp> updateKefuGroup_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateKefuGroupReq> request) async {
    return updateKefuGroup(call, await request);
  }

  $async.Future<$0.DeleteKefuGroupRsp> deleteKefuGroup_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteKefuGroupReq> request) async {
    return deleteKefuGroup(call, await request);
  }

  $async.Future<$0.GetKefuGroupRsp> getKefuGroup_Pre($grpc.ServiceCall call, $async.Future<$0.GetKefuGroupReq> request) async {
    return getKefuGroup(call, await request);
  }

  $async.Future<$0.GetKefuGroupsRsp> getKefuGroups_Pre($grpc.ServiceCall call, $async.Future<$0.GetKefuGroupsReq> request) async {
    return getKefuGroups(call, await request);
  }

  $async.Future<$0.KefuReceipt> chat($grpc.ServiceCall call, $0.KefuMessage request);
  $async.Future<$1.CommRsp> receipt($grpc.ServiceCall call, $0.KefuReceipt request);
  $async.Future<$0.AnswerRsp> answer($grpc.ServiceCall call, $0.AnswerReq request);
  $async.Future<$0.WaitCustomers> fetchWaitList($grpc.ServiceCall call, $0.FetchWaitCustomers request);
  $async.Future<$0.HistoriesRsp> histories($grpc.ServiceCall call, $0.HistoriesReq request);
  $async.Future<$0.SessionsRsp> sessions($grpc.ServiceCall call, $0.SessionsReq request);
  $async.Future<$0.DeleteSessionRsp> deleteSession($grpc.ServiceCall call, $0.DeleteSessionReq request);
  $async.Future<$0.AddKefuRsp> addKefu($grpc.ServiceCall call, $0.AddKefuReq request);
  $async.Future<$0.UpdateKefuRsp> updateKefu($grpc.ServiceCall call, $0.UpdateKefuReq request);
  $async.Future<$0.DeleteKefuRsp> deleteKefu($grpc.ServiceCall call, $0.DeleteKefuReq request);
  $async.Future<$0.GetKefuRsp> getKefu($grpc.ServiceCall call, $0.GetKefuReq request);
  $async.Future<$0.GetKefusRsp> getKefus($grpc.ServiceCall call, $0.GetKefusReq request);
  $async.Future<$0.GetKefuRolesRsp> getKefuRoles($grpc.ServiceCall call, $0.GetKefuRolesReq request);
  $async.Future<$0.AddKefuGroupRsp> addKefuGroup($grpc.ServiceCall call, $0.AddKefuGroupReq request);
  $async.Future<$0.UpdateKefuGroupRsp> updateKefuGroup($grpc.ServiceCall call, $0.UpdateKefuGroupReq request);
  $async.Future<$0.DeleteKefuGroupRsp> deleteKefuGroup($grpc.ServiceCall call, $0.DeleteKefuGroupReq request);
  $async.Future<$0.GetKefuGroupRsp> getKefuGroup($grpc.ServiceCall call, $0.GetKefuGroupReq request);
  $async.Future<$0.GetKefuGroupsRsp> getKefuGroups($grpc.ServiceCall call, $0.GetKefuGroupsReq request);
}
