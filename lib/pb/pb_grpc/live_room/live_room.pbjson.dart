//
//  Generated code. Do not modify.
//  source: pb_grpc/live_room/live_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eVENTDescriptor instead')
const EVENT$json = {
  '1': 'EVENT',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'LIVE_START', '2': 1},
    {'1': 'LIVE_STOP', '2': 2},
    {'1': 'ENTER_ROOM', '2': 3},
    {'1': 'EXIT_ROOM', '2': 4},
    {'1': 'ROOM_TIME_OUT', '2': 5},
    {'1': 'USER_TIME_OUT', '2': 6},
  ],
};

/// Descriptor for `EVENT`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eVENTDescriptor = $convert.base64Decode(
    'CgVFVkVOVBILCgdVTktOT1dOEAASDgoKTElWRV9TVEFSVBABEg0KCUxJVkVfU1RPUBACEg4KCk'
    'VOVEVSX1JPT00QAxINCglFWElUX1JPT00QBBIRCg1ST09NX1RJTUVfT1VUEAUSEQoNVVNFUl9U'
    'SU1FX09VVBAG');

@$core.Deprecated('Use tTTCallBackParamReqDescriptor instead')
const TTTCallBackParamReq$json = {
  '1': 'TTTCallBackParamReq',
  '2': [
    {'1': 'Channel', '3': 1, '4': 1, '5': 9, '10': 'Channel'},
    {'1': 'Code', '3': 2, '4': 1, '5': 5, '10': 'Code'},
    {'1': 'Stream', '3': 3, '4': 1, '5': 9, '10': 'Stream'},
  ],
};

/// Descriptor for `TTTCallBackParamReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tTTCallBackParamReqDescriptor = $convert.base64Decode(
    'ChNUVFRDYWxsQmFja1BhcmFtUmVxEhgKB0NoYW5uZWwYASABKAlSB0NoYW5uZWwSEgoEQ29kZR'
    'gCIAEoBVIEQ29kZRIWCgZTdHJlYW0YAyABKAlSBlN0cmVhbQ==');

@$core.Deprecated('Use anchorInfoReqDescriptor instead')
const AnchorInfoReq$json = {
  '1': 'AnchorInfoReq',
};

/// Descriptor for `AnchorInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List anchorInfoReqDescriptor = $convert.base64Decode(
    'Cg1BbmNob3JJbmZvUmVx');

@$core.Deprecated('Use anchorInfoRspDescriptor instead')
const AnchorInfoRsp$json = {
  '1': 'AnchorInfoRsp',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
    {'1': 'Username', '3': 2, '4': 1, '5': 9, '10': 'Username'},
    {'1': 'HeaderImageOriginal', '3': 3, '4': 1, '5': 9, '10': 'HeaderImageOriginal'},
    {'1': 'Rank', '3': 4, '4': 1, '5': 3, '10': 'Rank'},
    {'1': 'VictoryTimes', '3': 5, '4': 1, '5': 3, '10': 'VictoryTimes'},
    {'1': 'PullStreamAddress', '3': 6, '4': 1, '5': 9, '10': 'PullStreamAddress'},
  ],
};

/// Descriptor for `AnchorInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List anchorInfoRspDescriptor = $convert.base64Decode(
    'Cg1BbmNob3JJbmZvUnNwEg4KAklEGAEgASgDUgJJRBIaCghVc2VybmFtZRgCIAEoCVIIVXNlcm'
    '5hbWUSMAoTSGVhZGVySW1hZ2VPcmlnaW5hbBgDIAEoCVITSGVhZGVySW1hZ2VPcmlnaW5hbBIS'
    'CgRSYW5rGAQgASgDUgRSYW5rEiIKDFZpY3RvcnlUaW1lcxgFIAEoA1IMVmljdG9yeVRpbWVzEi'
    'wKEVB1bGxTdHJlYW1BZGRyZXNzGAYgASgJUhFQdWxsU3RyZWFtQWRkcmVzcw==');

@$core.Deprecated('Use listenerDescriptor instead')
const Listener$json = {
  '1': 'Listener',
  '2': [
    {'1': 'service', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.Service', '10': 'service'},
    {'1': 'fullMethod', '3': 2, '4': 1, '5': 9, '10': 'fullMethod'},
    {'1': 'hashKey', '3': 3, '4': 1, '5': 3, '10': 'hashKey'},
    {'1': 'deadline', '3': 4, '4': 1, '5': 3, '10': 'deadline'},
    {'1': 'data', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'data'},
  ],
};

/// Descriptor for `Listener`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenerDescriptor = $convert.base64Decode(
    'CghMaXN0ZW5lchIpCgdzZXJ2aWNlGAEgASgOMg8ucGJfcHViLlNlcnZpY2VSB3NlcnZpY2USHg'
    'oKZnVsbE1ldGhvZBgCIAEoCVIKZnVsbE1ldGhvZBIYCgdoYXNoS2V5GAMgASgDUgdoYXNoS2V5'
    'EhoKCGRlYWRsaW5lGAQgASgDUghkZWFkbGluZRIoCgRkYXRhGAUgASgLMhQuZ29vZ2xlLnByb3'
    'RvYnVmLkFueVIEZGF0YQ==');

@$core.Deprecated('Use noticeDescriptor instead')
const Notice$json = {
  '1': 'Notice',
  '2': [
    {'1': 'event', '3': 1, '4': 1, '5': 14, '6': '.pb_grpc_liveRoom.EVENT', '10': 'event'},
    {'1': 'in', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'in'},
    {'1': 'data', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'data'},
  ],
};

/// Descriptor for `Notice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeDescriptor = $convert.base64Decode(
    'CgZOb3RpY2USLQoFZXZlbnQYASABKA4yFy5wYl9ncnBjX2xpdmVSb29tLkVWRU5UUgVldmVudB'
    'IkCgJpbhgCIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSAmluEigKBGRhdGEYAyABKAsyFC5n'
    'b29nbGUucHJvdG9idWYuQW55UgRkYXRh');

@$core.Deprecated('Use fieldsDescriptor instead')
const Fields$json = {
  '1': 'Fields',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'data'},
  ],
};

/// Descriptor for `Fields`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldsDescriptor = $convert.base64Decode(
    'CgZGaWVsZHMSKAoEZGF0YRgBIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSBGRhdGE=');

@$core.Deprecated('Use pKLockReqDescriptor instead')
const PKLockReq$json = {
  '1': 'PKLockReq',
};

/// Descriptor for `PKLockReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKLockReqDescriptor = $convert.base64Decode(
    'CglQS0xvY2tSZXE=');

@$core.Deprecated('Use pKLockRspDescriptor instead')
const PKLockRsp$json = {
  '1': 'PKLockRsp',
};

/// Descriptor for `PKLockRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKLockRspDescriptor = $convert.base64Decode(
    'CglQS0xvY2tSc3A=');

@$core.Deprecated('Use pKUnlockReqDescriptor instead')
const PKUnlockReq$json = {
  '1': 'PKUnlockReq',
};

/// Descriptor for `PKUnlockReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKUnlockReqDescriptor = $convert.base64Decode(
    'CgtQS1VubG9ja1JlcQ==');

@$core.Deprecated('Use pKUnlockRspDescriptor instead')
const PKUnlockRsp$json = {
  '1': 'PKUnlockRsp',
};

/// Descriptor for `PKUnlockRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKUnlockRspDescriptor = $convert.base64Decode(
    'CgtQS1VubG9ja1JzcA==');

@$core.Deprecated('Use pKLockingReqDescriptor instead')
const PKLockingReq$json = {
  '1': 'PKLockingReq',
};

/// Descriptor for `PKLockingReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKLockingReqDescriptor = $convert.base64Decode(
    'CgxQS0xvY2tpbmdSZXE=');

@$core.Deprecated('Use pKLockingRspDescriptor instead')
const PKLockingRsp$json = {
  '1': 'PKLockingRsp',
};

/// Descriptor for `PKLockingRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKLockingRspDescriptor = $convert.base64Decode(
    'CgxQS0xvY2tpbmdSc3A=');

