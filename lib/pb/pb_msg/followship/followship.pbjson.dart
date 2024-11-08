//
//  Generated code. Do not modify.
//  source: pb_msg/followship/followship.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use followReqDescriptor instead')
const FollowReq$json = {
  '1': 'FollowReq',
};

/// Descriptor for `FollowReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followReqDescriptor = $convert.base64Decode(
    'CglGb2xsb3dSZXE=');

@$core.Deprecated('Use followRspDescriptor instead')
const FollowRsp$json = {
  '1': 'FollowRsp',
};

/// Descriptor for `FollowRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followRspDescriptor = $convert.base64Decode(
    'CglGb2xsb3dSc3A=');

@$core.Deprecated('Use unfollowReqDescriptor instead')
const UnfollowReq$json = {
  '1': 'UnfollowReq',
};

/// Descriptor for `UnfollowReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unfollowReqDescriptor = $convert.base64Decode(
    'CgtVbmZvbGxvd1JlcQ==');

@$core.Deprecated('Use unfollowRspDescriptor instead')
const UnfollowRsp$json = {
  '1': 'UnfollowRsp',
};

/// Descriptor for `UnfollowRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unfollowRspDescriptor = $convert.base64Decode(
    'CgtVbmZvbGxvd1JzcA==');

@$core.Deprecated('Use followerDescriptor instead')
const Follower$json = {
  '1': 'Follower',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `Follower`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followerDescriptor = $convert.base64Decode(
    'CghGb2xsb3dlchIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIaCgh1c2VybmFtZRgCIAEoCVIIdX'
    'Nlcm5hbWUSFgoGYXZhdGFyGAMgASgJUgZhdmF0YXI=');

@$core.Deprecated('Use followersReqDescriptor instead')
const FollowersReq$json = {
  '1': 'FollowersReq',
};

/// Descriptor for `FollowersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followersReqDescriptor = $convert.base64Decode(
    'CgxGb2xsb3dlcnNSZXE=');

@$core.Deprecated('Use followersRspDescriptor instead')
const FollowersRsp$json = {
  '1': 'FollowersRsp',
  '2': [
    {'1': 'followers', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_followship.Follower', '10': 'followers'},
  ],
};

/// Descriptor for `FollowersRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followersRspDescriptor = $convert.base64Decode(
    'CgxGb2xsb3dlcnNSc3ASOQoJZm9sbG93ZXJzGAEgAygLMhsucGJfbXNnX2ZvbGxvd3NoaXAuRm'
    '9sbG93ZXJSCWZvbGxvd2Vycw==');

@$core.Deprecated('Use followeeDescriptor instead')
const Followee$json = {
  '1': 'Followee',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `Followee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followeeDescriptor = $convert.base64Decode(
    'CghGb2xsb3dlZRIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIaCgh1c2VybmFtZRgCIAEoCVIIdX'
    'Nlcm5hbWUSFgoGYXZhdGFyGAMgASgJUgZhdmF0YXI=');

@$core.Deprecated('Use followeesReqDescriptor instead')
const FolloweesReq$json = {
  '1': 'FolloweesReq',
};

/// Descriptor for `FolloweesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followeesReqDescriptor = $convert.base64Decode(
    'CgxGb2xsb3dlZXNSZXE=');

@$core.Deprecated('Use followeesRspDescriptor instead')
const FolloweesRsp$json = {
  '1': 'FolloweesRsp',
  '2': [
    {'1': 'followees', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_followship.Followee', '10': 'followees'},
  ],
};

/// Descriptor for `FolloweesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followeesRspDescriptor = $convert.base64Decode(
    'CgxGb2xsb3dlZXNSc3ASOQoJZm9sbG93ZWVzGAEgAygLMhsucGJfbXNnX2ZvbGxvd3NoaXAuRm'
    '9sbG93ZWVSCWZvbGxvd2Vlcw==');

