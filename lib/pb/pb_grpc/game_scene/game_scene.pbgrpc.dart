//
//  Generated code. Do not modify.
//  source: pb_grpc/game_scene/game_scene.proto
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

import '../../pb_msg/game_scene/game_scene.pb.dart' as $1;
import '../../pb_pub/comm.pb.dart' as $0;

export 'game_scene.pb.dart';

@$pb.GrpcServiceName('pb_grpc_game_scene.GameScene')
class GameSceneClient extends $grpc.Client {
  static final _$heartBeat = $grpc.ClientMethod<$0.HeartBeat, $0.HeartBeat>(
      '/pb_grpc_game_scene.GameScene/HeartBeat',
      ($0.HeartBeat value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HeartBeat.fromBuffer(value));
  static final _$gameInvite = $grpc.ClientMethod<$1.GameInviteReq, $1.GameInviteRsp>(
      '/pb_grpc_game_scene.GameScene/GameInvite',
      ($1.GameInviteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GameInviteRsp.fromBuffer(value));
  static final _$gameDisinvite = $grpc.ClientMethod<$1.GameDisinviteReq, $1.GameDisinviteRsp>(
      '/pb_grpc_game_scene.GameScene/GameDisinvite',
      ($1.GameDisinviteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GameDisinviteRsp.fromBuffer(value));
  static final _$gameAnswer = $grpc.ClientMethod<$1.GameAnswerReq, $1.GameAnswerRsp>(
      '/pb_grpc_game_scene.GameScene/GameAnswer',
      ($1.GameAnswerReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GameAnswerRsp.fromBuffer(value));
  static final _$gameOver = $grpc.ClientMethod<$1.GameOverReq, $1.GameOverRsp>(
      '/pb_grpc_game_scene.GameScene/GameOver',
      ($1.GameOverReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GameOverRsp.fromBuffer(value));

  GameSceneClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.HeartBeat> heartBeat($0.HeartBeat request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$heartBeat, request, options: options);
  }

  $grpc.ResponseFuture<$1.GameInviteRsp> gameInvite($1.GameInviteReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$gameInvite, request, options: options);
  }

  $grpc.ResponseFuture<$1.GameDisinviteRsp> gameDisinvite($1.GameDisinviteReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$gameDisinvite, request, options: options);
  }

  $grpc.ResponseFuture<$1.GameAnswerRsp> gameAnswer($1.GameAnswerReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$gameAnswer, request, options: options);
  }

  $grpc.ResponseFuture<$1.GameOverRsp> gameOver($1.GameOverReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$gameOver, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_game_scene.GameScene')
abstract class GameSceneServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_game_scene.GameScene';

  GameSceneServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HeartBeat, $0.HeartBeat>(
        'HeartBeat',
        heartBeat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HeartBeat.fromBuffer(value),
        ($0.HeartBeat value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GameInviteReq, $1.GameInviteRsp>(
        'GameInvite',
        gameInvite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GameInviteReq.fromBuffer(value),
        ($1.GameInviteRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GameDisinviteReq, $1.GameDisinviteRsp>(
        'GameDisinvite',
        gameDisinvite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GameDisinviteReq.fromBuffer(value),
        ($1.GameDisinviteRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GameAnswerReq, $1.GameAnswerRsp>(
        'GameAnswer',
        gameAnswer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GameAnswerReq.fromBuffer(value),
        ($1.GameAnswerRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GameOverReq, $1.GameOverRsp>(
        'GameOver',
        gameOver_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GameOverReq.fromBuffer(value),
        ($1.GameOverRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.HeartBeat> heartBeat_Pre($grpc.ServiceCall call, $async.Future<$0.HeartBeat> request) async {
    return heartBeat(call, await request);
  }

  $async.Future<$1.GameInviteRsp> gameInvite_Pre($grpc.ServiceCall call, $async.Future<$1.GameInviteReq> request) async {
    return gameInvite(call, await request);
  }

  $async.Future<$1.GameDisinviteRsp> gameDisinvite_Pre($grpc.ServiceCall call, $async.Future<$1.GameDisinviteReq> request) async {
    return gameDisinvite(call, await request);
  }

  $async.Future<$1.GameAnswerRsp> gameAnswer_Pre($grpc.ServiceCall call, $async.Future<$1.GameAnswerReq> request) async {
    return gameAnswer(call, await request);
  }

  $async.Future<$1.GameOverRsp> gameOver_Pre($grpc.ServiceCall call, $async.Future<$1.GameOverReq> request) async {
    return gameOver(call, await request);
  }

  $async.Future<$0.HeartBeat> heartBeat($grpc.ServiceCall call, $0.HeartBeat request);
  $async.Future<$1.GameInviteRsp> gameInvite($grpc.ServiceCall call, $1.GameInviteReq request);
  $async.Future<$1.GameDisinviteRsp> gameDisinvite($grpc.ServiceCall call, $1.GameDisinviteReq request);
  $async.Future<$1.GameAnswerRsp> gameAnswer($grpc.ServiceCall call, $1.GameAnswerReq request);
  $async.Future<$1.GameOverRsp> gameOver($grpc.ServiceCall call, $1.GameOverReq request);
}
