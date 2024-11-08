//
//  Generated code. Do not modify.
//  source: pb_grpc/followship/followship.proto
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

import '../../pb_msg/followship/followship.pb.dart' as $0;

export 'followship.pb.dart';

@$pb.GrpcServiceName('pb_grpc_followship.Followship')
class FollowshipClient extends $grpc.Client {
  static final _$follow = $grpc.ClientMethod<$0.FollowReq, $0.FollowRsp>(
      '/pb_grpc_followship.Followship/Follow',
      ($0.FollowReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FollowRsp.fromBuffer(value));
  static final _$unfollow = $grpc.ClientMethod<$0.UnfollowReq, $0.UnfollowRsp>(
      '/pb_grpc_followship.Followship/Unfollow',
      ($0.UnfollowReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UnfollowRsp.fromBuffer(value));
  static final _$followers = $grpc.ClientMethod<$0.FollowersReq, $0.FollowersRsp>(
      '/pb_grpc_followship.Followship/Followers',
      ($0.FollowersReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FollowersRsp.fromBuffer(value));
  static final _$followees = $grpc.ClientMethod<$0.FolloweesReq, $0.FolloweesRsp>(
      '/pb_grpc_followship.Followship/Followees',
      ($0.FolloweesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FolloweesRsp.fromBuffer(value));

  FollowshipClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.FollowRsp> follow($0.FollowReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$follow, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnfollowRsp> unfollow($0.UnfollowReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unfollow, request, options: options);
  }

  $grpc.ResponseFuture<$0.FollowersRsp> followers($0.FollowersReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$followers, request, options: options);
  }

  $grpc.ResponseFuture<$0.FolloweesRsp> followees($0.FolloweesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$followees, request, options: options);
  }
}

@$pb.GrpcServiceName('pb_grpc_followship.Followship')
abstract class FollowshipServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_followship.Followship';

  FollowshipServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FollowReq, $0.FollowRsp>(
        'Follow',
        follow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FollowReq.fromBuffer(value),
        ($0.FollowRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnfollowReq, $0.UnfollowRsp>(
        'Unfollow',
        unfollow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnfollowReq.fromBuffer(value),
        ($0.UnfollowRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FollowersReq, $0.FollowersRsp>(
        'Followers',
        followers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FollowersReq.fromBuffer(value),
        ($0.FollowersRsp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FolloweesReq, $0.FolloweesRsp>(
        'Followees',
        followees_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FolloweesReq.fromBuffer(value),
        ($0.FolloweesRsp value) => value.writeToBuffer()));
  }

  $async.Future<$0.FollowRsp> follow_Pre($grpc.ServiceCall call, $async.Future<$0.FollowReq> request) async {
    return follow(call, await request);
  }

  $async.Future<$0.UnfollowRsp> unfollow_Pre($grpc.ServiceCall call, $async.Future<$0.UnfollowReq> request) async {
    return unfollow(call, await request);
  }

  $async.Future<$0.FollowersRsp> followers_Pre($grpc.ServiceCall call, $async.Future<$0.FollowersReq> request) async {
    return followers(call, await request);
  }

  $async.Future<$0.FolloweesRsp> followees_Pre($grpc.ServiceCall call, $async.Future<$0.FolloweesReq> request) async {
    return followees(call, await request);
  }

  $async.Future<$0.FollowRsp> follow($grpc.ServiceCall call, $0.FollowReq request);
  $async.Future<$0.UnfollowRsp> unfollow($grpc.ServiceCall call, $0.UnfollowReq request);
  $async.Future<$0.FollowersRsp> followers($grpc.ServiceCall call, $0.FollowersReq request);
  $async.Future<$0.FolloweesRsp> followees($grpc.ServiceCall call, $0.FolloweesReq request);
}
