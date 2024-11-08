//
//  Generated code. Do not modify.
//  source: pb_msg/msg_analyze/msg_analyze.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use readMsgHistoryReqDescriptor instead')
const ReadMsgHistoryReq$json = {
  '1': 'ReadMsgHistoryReq',
  '2': [
    {'1': 'useridA', '3': 1, '4': 1, '5': 3, '10': 'useridA'},
    {'1': 'useridB', '3': 2, '4': 1, '5': 3, '10': 'useridB'},
    {'1': 'num', '3': 3, '4': 1, '5': 3, '10': 'num'},
    {'1': 'time', '3': 4, '4': 1, '5': 3, '10': 'time'},
    {'1': 'sn', '3': 5, '4': 1, '5': 3, '10': 'sn'},
  ],
};

/// Descriptor for `ReadMsgHistoryReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readMsgHistoryReqDescriptor = $convert.base64Decode(
    'ChFSZWFkTXNnSGlzdG9yeVJlcRIYCgd1c2VyaWRBGAEgASgDUgd1c2VyaWRBEhgKB3VzZXJpZE'
    'IYAiABKANSB3VzZXJpZEISEAoDbnVtGAMgASgDUgNudW0SEgoEdGltZRgEIAEoA1IEdGltZRIO'
    'CgJzbhgFIAEoA1ICc24=');

@$core.Deprecated('Use readMsgHistoryRspDescriptor instead')
const ReadMsgHistoryRsp$json = {
  '1': 'ReadMsgHistoryRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'msgHistory', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_msgAnalyze.MsgHistory', '10': 'msgHistory'},
  ],
};

/// Descriptor for `ReadMsgHistoryRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readMsgHistoryRspDescriptor = $convert.base64Decode(
    'ChFSZWFkTXNnSGlzdG9yeVJzcBInCgZyZXN1bHQYASABKA4yDy5wYl9wdWIuRXJyQ29kZVIGcm'
    'VzdWx0Ej0KCm1zZ0hpc3RvcnkYAiADKAsyHS5wYl9tc2dfbXNnQW5hbHl6ZS5Nc2dIaXN0b3J5'
    'Ugptc2dIaXN0b3J5');

@$core.Deprecated('Use msgHistoryDescriptor instead')
const MsgHistory$json = {
  '1': 'MsgHistory',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'pbName', '3': 2, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 3, '4': 1, '5': 12, '10': 'pbData'},
  ],
};

/// Descriptor for `MsgHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgHistoryDescriptor = $convert.base64Decode(
    'CgpNc2dIaXN0b3J5EjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUEJDb21tRGF0YVIKcG'
    'JDb21tRGF0YRIWCgZwYk5hbWUYAiABKAlSBnBiTmFtZRIWCgZwYkRhdGEYAyABKAxSBnBiRGF0'
    'YQ==');

@$core.Deprecated('Use chatSessionsReqDescriptor instead')
const ChatSessionsReq$json = {
  '1': 'ChatSessionsReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'length', '3': 2, '4': 1, '5': 3, '10': 'length'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
  ],
};

/// Descriptor for `ChatSessionsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatSessionsReqDescriptor = $convert.base64Decode(
    'Cg9DaGF0U2Vzc2lvbnNSZXESFgoGb2Zmc2V0GAEgASgDUgZvZmZzZXQSFgoGbGVuZ3RoGAIgAS'
    'gDUgZsZW5ndGgSEgoEdGltZRgDIAEoA1IEdGltZQ==');

@$core.Deprecated('Use chatSessionsRspDescriptor instead')
const ChatSessionsRsp$json = {
  '1': 'ChatSessionsRsp',
  '2': [
    {'1': 'chatSessions', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_msgAnalyze.MsgHistory', '10': 'chatSessions'},
  ],
};

/// Descriptor for `ChatSessionsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatSessionsRspDescriptor = $convert.base64Decode(
    'Cg9DaGF0U2Vzc2lvbnNSc3ASQQoMY2hhdFNlc3Npb25zGAEgAygLMh0ucGJfbXNnX21zZ0FuYW'
    'x5emUuTXNnSGlzdG9yeVIMY2hhdFNlc3Npb25z');

@$core.Deprecated('Use chatHistoriesReqDescriptor instead')
const ChatHistoriesReq$json = {
  '1': 'ChatHistoriesReq',
  '2': [
    {'1': 'time', '3': 1, '4': 1, '5': 3, '10': 'time'},
    {'1': 'num', '3': 2, '4': 1, '5': 3, '10': 'num'},
  ],
};

/// Descriptor for `ChatHistoriesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatHistoriesReqDescriptor = $convert.base64Decode(
    'ChBDaGF0SGlzdG9yaWVzUmVxEhIKBHRpbWUYASABKANSBHRpbWUSEAoDbnVtGAIgASgDUgNudW'
    '0=');

@$core.Deprecated('Use chatHistoriesRspDescriptor instead')
const ChatHistoriesRsp$json = {
  '1': 'ChatHistoriesRsp',
  '2': [
    {'1': 'chatHistories', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_msgAnalyze.MsgHistory', '10': 'chatHistories'},
  ],
};

/// Descriptor for `ChatHistoriesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatHistoriesRspDescriptor = $convert.base64Decode(
    'ChBDaGF0SGlzdG9yaWVzUnNwEkMKDWNoYXRIaXN0b3JpZXMYASADKAsyHS5wYl9tc2dfbXNnQW'
    '5hbHl6ZS5Nc2dIaXN0b3J5Ug1jaGF0SGlzdG9yaWVz');

@$core.Deprecated('Use chatStatsReqDescriptor instead')
const ChatStatsReq$json = {
  '1': 'ChatStatsReq',
  '2': [
    {'1': 'days', '3': 1, '4': 1, '5': 3, '10': 'days'},
  ],
};

/// Descriptor for `ChatStatsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatStatsReqDescriptor = $convert.base64Decode(
    'CgxDaGF0U3RhdHNSZXESEgoEZGF5cxgBIAEoA1IEZGF5cw==');

@$core.Deprecated('Use chatStatsRspDescriptor instead')
const ChatStatsRsp$json = {
  '1': 'ChatStatsRsp',
  '2': [
    {'1': 'stats', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_msgAnalyze.ChatStats', '10': 'stats'},
  ],
};

/// Descriptor for `ChatStatsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatStatsRspDescriptor = $convert.base64Decode(
    'CgxDaGF0U3RhdHNSc3ASMgoFc3RhdHMYASADKAsyHC5wYl9tc2dfbXNnQW5hbHl6ZS5DaGF0U3'
    'RhdHNSBXN0YXRz');

@$core.Deprecated('Use chatStatsDescriptor instead')
const ChatStats$json = {
  '1': 'ChatStats',
  '2': [
    {'1': 'fromTime', '3': 1, '4': 1, '5': 3, '10': 'fromTime'},
    {'1': 'toTime', '3': 2, '4': 1, '5': 3, '10': 'toTime'},
    {'1': 'sendNum', '3': 3, '4': 1, '5': 3, '10': 'sendNum'},
    {'1': 'instantRecvNum', '3': 4, '4': 1, '5': 3, '10': 'instantRecvNum'},
    {'1': 'offlineRecvNum', '3': 5, '4': 1, '5': 3, '10': 'offlineRecvNum'},
    {'1': 'notRecvNum', '3': 6, '4': 1, '5': 3, '10': 'notRecvNum'},
  ],
};

/// Descriptor for `ChatStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatStatsDescriptor = $convert.base64Decode(
    'CglDaGF0U3RhdHMSGgoIZnJvbVRpbWUYASABKANSCGZyb21UaW1lEhYKBnRvVGltZRgCIAEoA1'
    'IGdG9UaW1lEhgKB3NlbmROdW0YAyABKANSB3NlbmROdW0SJgoOaW5zdGFudFJlY3ZOdW0YBCAB'
    'KANSDmluc3RhbnRSZWN2TnVtEiYKDm9mZmxpbmVSZWN2TnVtGAUgASgDUg5vZmZsaW5lUmVjdk'
    '51bRIeCgpub3RSZWN2TnVtGAYgASgDUgpub3RSZWN2TnVt');

