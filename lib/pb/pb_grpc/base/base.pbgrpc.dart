//
//  Generated code. Do not modify.
//  source: pb_grpc/base/base.proto
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

import '../../pb_pub/comm.pb.dart' as $0;

export 'base.pb.dart';

@$pb.GrpcServiceName('pb_grpc_base.Base')
class BaseClient extends $grpc.Client {
  static final _$commCall = $grpc.ClientMethod<$0.CommCallReq, $0.CommCallRsp>(
      '/pb_grpc_base.Base/CommCall',
      ($0.CommCallReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommCallRsp.fromBuffer(value));

  BaseClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CommCallRsp> commCall($0.CommCallReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$commCall, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_base.Base')
abstract class BaseServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_base.Base';

  BaseServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CommCallReq, $0.CommCallRsp>(
        'CommCall',
        commCall_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommCallReq.fromBuffer(value),
        ($0.CommCallRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.CommCallRsp> commCall_Pre($grpc.ServiceCall call, $async.Future<$0.CommCallReq> request) async {
    return commCall(call, await request);
  }

  $async.Future<$0.CommCallRsp> commCall($grpc.ServiceCall call, $0.CommCallReq request);
}
