//
//  Generated code. Do not modify.
//  source: pb_grpc/lucky/lucky.proto
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

import '../../pb_msg/lucky/lucky.pb.dart' as $0;

export 'lucky.pb.dart';

@$pb.GrpcServiceName('pb_grpc_lucky.Lucky')
class LuckyClient extends $grpc.Client {
  static final _$doLucky = $grpc.ClientMethod<$0.LuckyReq, $0.LuckyRsp>(
      '/pb_grpc_lucky.Lucky/DoLucky',
      ($0.LuckyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LuckyRsp.fromBuffer(value));

  LuckyClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.LuckyRsp> doLucky($0.LuckyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$doLucky, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_lucky.Lucky')
abstract class LuckyServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_lucky.Lucky';

  LuckyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LuckyReq, $0.LuckyRsp>(
        'DoLucky',
        doLucky_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LuckyReq.fromBuffer(value),
        ($0.LuckyRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.LuckyRsp> doLucky_Pre($grpc.ServiceCall call, $async.Future<$0.LuckyReq> request) async {
    return doLucky(call, await request);
  }

  $async.Future<$0.LuckyRsp> doLucky($grpc.ServiceCall call, $0.LuckyReq request);
}
