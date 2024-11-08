//
//  Generated code. Do not modify.
//  source: pb_grpc/ttk_game/ttk_game.proto
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

import '../../pb_msg/ttk_game/ttk_game.pb.dart' as $0;

export 'ttk_game.pb.dart';

@$pb.GrpcServiceName('pb_grpc_ttk_game.TTKGame')
class TTKGameClient extends $grpc.Client {
  static final _$tTKGameState = $grpc.ClientMethod<$0.TTKGameStateReq, $0.TTKGameStateRsp>(
      '/pb_grpc_ttk_game.TTKGame/TTKGameState',
      ($0.TTKGameStateReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TTKGameStateRsp.fromBuffer(value));

  TTKGameClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.TTKGameStateRsp> tTKGameState($0.TTKGameStateReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tTKGameState, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_ttk_game.TTKGame')
abstract class TTKGameServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_ttk_game.TTKGame';

  TTKGameServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TTKGameStateReq, $0.TTKGameStateRsp>(
        'TTKGameState',
        tTKGameState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TTKGameStateReq.fromBuffer(value),
        ($0.TTKGameStateRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.TTKGameStateRsp> tTKGameState_Pre($grpc.ServiceCall call, $async.Future<$0.TTKGameStateReq> request) async {
    return tTKGameState(call, await request);
  }

  $async.Future<$0.TTKGameStateRsp> tTKGameState($grpc.ServiceCall call, $0.TTKGameStateReq request);
}
