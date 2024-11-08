//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/multi_pk.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mULTI_PK_STATEDescriptor instead')
const MULTI_PK_STATE$json = {
  '1': 'MULTI_PK_STATE',
  '2': [
    {'1': 'IDLING', '2': 0},
    {'1': 'COMPETING', '2': 1},
    {'1': 'PENALIZING', '2': 2},
  ],
};

/// Descriptor for `MULTI_PK_STATE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mULTI_PK_STATEDescriptor = $convert.base64Decode(
    'Cg5NVUxUSV9QS19TVEFURRIKCgZJRExJTkcQABINCglDT01QRVRJTkcQARIOCgpQRU5BTElaSU'
    '5HEAI=');

@$core.Deprecated('Use multiPKStartReqDescriptor instead')
const MultiPKStartReq$json = {
  '1': 'MultiPKStartReq',
  '2': [
    {'1': 'competeDuration', '3': 1, '4': 1, '5': 3, '10': 'competeDuration'},
    {'1': 'penalizeDuration', '3': 2, '4': 1, '5': 3, '10': 'penalizeDuration'},
  ],
};

/// Descriptor for `MultiPKStartReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiPKStartReqDescriptor = $convert.base64Decode(
    'Cg9NdWx0aVBLU3RhcnRSZXESKAoPY29tcGV0ZUR1cmF0aW9uGAEgASgDUg9jb21wZXRlRHVyYX'
    'Rpb24SKgoQcGVuYWxpemVEdXJhdGlvbhgCIAEoA1IQcGVuYWxpemVEdXJhdGlvbg==');

@$core.Deprecated('Use multiPKStartRspDescriptor instead')
const MultiPKStartRsp$json = {
  '1': 'MultiPKStartRsp',
};

/// Descriptor for `MultiPKStartRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiPKStartRspDescriptor = $convert.base64Decode(
    'Cg9NdWx0aVBLU3RhcnRSc3A=');

@$core.Deprecated('Use multiPKStopReqDescriptor instead')
const MultiPKStopReq$json = {
  '1': 'MultiPKStopReq',
};

/// Descriptor for `MultiPKStopReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiPKStopReqDescriptor = $convert.base64Decode(
    'Cg5NdWx0aVBLU3RvcFJlcQ==');

@$core.Deprecated('Use multiPKStopRspDescriptor instead')
const MultiPKStopRsp$json = {
  '1': 'MultiPKStopRsp',
};

/// Descriptor for `MultiPKStopRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiPKStopRspDescriptor = $convert.base64Decode(
    'Cg5NdWx0aVBLU3RvcFJzcA==');

@$core.Deprecated('Use multiPKInfoDescriptor instead')
const MultiPKInfo$json = {
  '1': 'MultiPKInfo',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_live_room.MULTI_PK_STATE', '10': 'state'},
    {'1': 'endTime', '3': 2, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'blueScore', '3': 3, '4': 1, '5': 3, '10': 'blueScore'},
    {'1': 'redScore', '3': 4, '4': 1, '5': 3, '10': 'redScore'},
  ],
};

/// Descriptor for `MultiPKInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiPKInfoDescriptor = $convert.base64Decode(
    'CgtNdWx0aVBLSW5mbxI2CgVzdGF0ZRgBIAEoDjIgLnBiX21zZ19saXZlX3Jvb20uTVVMVElfUE'
    'tfU1RBVEVSBXN0YXRlEhgKB2VuZFRpbWUYAiABKANSB2VuZFRpbWUSHAoJYmx1ZVNjb3JlGAMg'
    'ASgDUglibHVlU2NvcmUSGgoIcmVkU2NvcmUYBCABKANSCHJlZFNjb3Jl');

@$core.Deprecated('Use multiPKStateChangeNotifyDescriptor instead')
const MultiPKStateChangeNotify$json = {
  '1': 'MultiPKStateChangeNotify',
  '2': [
    {'1': 'fromState', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_live_room.MULTI_PK_STATE', '10': 'fromState'},
    {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_live_room.MultiPKInfo', '10': 'info'},
  ],
};

/// Descriptor for `MultiPKStateChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiPKStateChangeNotifyDescriptor = $convert.base64Decode(
    'ChhNdWx0aVBLU3RhdGVDaGFuZ2VOb3RpZnkSPgoJZnJvbVN0YXRlGAEgASgOMiAucGJfbXNnX2'
    'xpdmVfcm9vbS5NVUxUSV9QS19TVEFURVIJZnJvbVN0YXRlEjEKBGluZm8YAiABKAsyHS5wYl9t'
    'c2dfbGl2ZV9yb29tLk11bHRpUEtJbmZvUgRpbmZv');

@$core.Deprecated('Use multiPKScoreChangeNotifyDescriptor instead')
const MultiPKScoreChangeNotify$json = {
  '1': 'MultiPKScoreChangeNotify',
  '2': [
    {'1': 'actorId', '3': 1, '4': 1, '5': 3, '10': 'actorId'},
    {'1': 'score', '3': 2, '4': 1, '5': 3, '10': 'score'},
    {'1': 'blueScore', '3': 3, '4': 1, '5': 3, '10': 'blueScore'},
    {'1': 'redScore', '3': 4, '4': 1, '5': 3, '10': 'redScore'},
    {'1': 'timestamp', '3': 5, '4': 1, '5': 3, '10': 'timestamp'},
  ],
};

/// Descriptor for `MultiPKScoreChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiPKScoreChangeNotifyDescriptor = $convert.base64Decode(
    'ChhNdWx0aVBLU2NvcmVDaGFuZ2VOb3RpZnkSGAoHYWN0b3JJZBgBIAEoA1IHYWN0b3JJZBIUCg'
    'VzY29yZRgCIAEoA1IFc2NvcmUSHAoJYmx1ZVNjb3JlGAMgASgDUglibHVlU2NvcmUSGgoIcmVk'
    'U2NvcmUYBCABKANSCHJlZFNjb3JlEhwKCXRpbWVzdGFtcBgFIAEoA1IJdGltZXN0YW1w');

