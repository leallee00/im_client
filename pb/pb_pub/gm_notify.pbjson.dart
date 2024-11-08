//
//  Generated code. Do not modify.
//  source: pb_pub/gm_notify.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use iM_TYPEDescriptor instead')
const IM_TYPE$json = {
  '1': 'IM_TYPE',
  '2': [
    {'1': 'IM_TYPE_YZIM', '2': 0},
    {'1': 'IM_TYPE_YXIM', '2': 1},
  ],
};

/// Descriptor for `IM_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List iM_TYPEDescriptor = $convert.base64Decode(
    'CgdJTV9UWVBFEhAKDElNX1RZUEVfWVpJTRAAEhAKDElNX1RZUEVfWVhJTRAB');

@$core.Deprecated('Use gMChangeIMNotifyDescriptor instead')
const GMChangeIMNotify$json = {
  '1': 'GMChangeIMNotify',
  '2': [
    {'1': 'imType', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.IM_TYPE', '10': 'imType'},
    {'1': 'optUser', '3': 2, '4': 1, '5': 3, '10': 'optUser'},
    {'1': 'optTime', '3': 3, '4': 1, '5': 3, '10': 'optTime'},
    {'1': 'resion', '3': 4, '4': 1, '5': 9, '10': 'resion'},
  ],
};

/// Descriptor for `GMChangeIMNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gMChangeIMNotifyDescriptor = $convert.base64Decode(
    'ChBHTUNoYW5nZUlNTm90aWZ5EicKBmltVHlwZRgBIAEoDjIPLnBiX3B1Yi5JTV9UWVBFUgZpbV'
    'R5cGUSGAoHb3B0VXNlchgCIAEoA1IHb3B0VXNlchIYCgdvcHRUaW1lGAMgASgDUgdvcHRUaW1l'
    'EhYKBnJlc2lvbhgEIAEoCVIGcmVzaW9u');

@$core.Deprecated('Use gMPPullLogNotifyDescriptor instead')
const GMPPullLogNotify$json = {
  '1': 'GMPPullLogNotify',
  '2': [
    {'1': 'aimUser', '3': 1, '4': 1, '5': 3, '10': 'aimUser'},
    {'1': 'optUser', '3': 2, '4': 1, '5': 3, '10': 'optUser'},
    {'1': 'optTime', '3': 3, '4': 1, '5': 3, '10': 'optTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'startTime', '3': 5, '4': 1, '5': 9, '10': 'startTime'},
    {'1': 'endTime', '3': 6, '4': 1, '5': 9, '10': 'endTime'},
    {'1': 'source', '3': 7, '4': 1, '5': 5, '10': 'source'},
  ],
};

/// Descriptor for `GMPPullLogNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gMPPullLogNotifyDescriptor = $convert.base64Decode(
    'ChBHTVBQdWxsTG9nTm90aWZ5EhgKB2FpbVVzZXIYASABKANSB2FpbVVzZXISGAoHb3B0VXNlch'
    'gCIAEoA1IHb3B0VXNlchIYCgdvcHRUaW1lGAMgASgDUgdvcHRUaW1lEhYKBnJlYXNvbhgEIAEo'
    'CVIGcmVhc29uEhwKCXN0YXJ0VGltZRgFIAEoCVIJc3RhcnRUaW1lEhgKB2VuZFRpbWUYBiABKA'
    'lSB2VuZFRpbWUSFgoGc291cmNlGAcgASgFUgZzb3VyY2U=');

@$core.Deprecated('Use userPushLogResultDescriptor instead')
const UserPushLogResult$json = {
  '1': 'UserPushLogResult',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 5, '10': 'result'},
    {'1': 'resultReason', '3': 2, '4': 1, '5': 9, '10': 'resultReason'},
    {'1': 'logPath', '3': 3, '4': 1, '5': 9, '10': 'logPath'},
  ],
};

/// Descriptor for `UserPushLogResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPushLogResultDescriptor = $convert.base64Decode(
    'ChFVc2VyUHVzaExvZ1Jlc3VsdBIWCgZyZXN1bHQYASABKAVSBnJlc3VsdBIiCgxyZXN1bHRSZW'
    'Fzb24YAiABKAlSDHJlc3VsdFJlYXNvbhIYCgdsb2dQYXRoGAMgASgJUgdsb2dQYXRo');

