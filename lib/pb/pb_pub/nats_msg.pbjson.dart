//
//  Generated code. Do not modify.
//  source: pb_pub/nats_msg.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use natsPBMsgChannelDescriptor instead')
const NatsPBMsgChannel$json = {
  '1': 'NatsPBMsgChannel',
  '2': [
    {'1': 'PBMsg_SysConfigChange', '2': 0},
    {'1': 'PBMsg_EventBus', '2': 1},
    {'1': 'PBMsg_ServiceErrStatusConfigChange', '2': 2},
    {'1': 'PBMsg_ToGateProcessByGroup', '2': 3},
    {'1': 'PBMsg_EventBusForServiceGroup', '2': 4},
  ],
};

/// Descriptor for `NatsPBMsgChannel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List natsPBMsgChannelDescriptor = $convert.base64Decode(
    'ChBOYXRzUEJNc2dDaGFubmVsEhkKFVBCTXNnX1N5c0NvbmZpZ0NoYW5nZRAAEhIKDlBCTXNnX0'
    'V2ZW50QnVzEAESJgoiUEJNc2dfU2VydmljZUVyclN0YXR1c0NvbmZpZ0NoYW5nZRACEh4KGlBC'
    'TXNnX1RvR2F0ZVByb2Nlc3NCeUdyb3VwEAMSIQodUEJNc2dfRXZlbnRCdXNGb3JTZXJ2aWNlR3'
    'JvdXAQBA==');

@$core.Deprecated('Use natsMsgReqDescriptor instead')
const NatsMsgReq$json = {
  '1': 'NatsMsgReq',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'pbName', '3': 2, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 3, '4': 1, '5': 12, '10': 'pbData'},
  ],
};

/// Descriptor for `NatsMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List natsMsgReqDescriptor = $convert.base64Decode(
    'CgpOYXRzTXNnUmVxEjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUEJDb21tRGF0YVIKcG'
    'JDb21tRGF0YRIWCgZwYk5hbWUYAiABKAlSBnBiTmFtZRIWCgZwYkRhdGEYAyABKAxSBnBiRGF0'
    'YQ==');

@$core.Deprecated('Use natsMsgRspDescriptor instead')
const NatsMsgRsp$json = {
  '1': 'NatsMsgRsp',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'pbName', '3': 2, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 3, '4': 1, '5': 12, '10': 'pbData'},
    {'1': 'code', '3': 4, '4': 1, '5': 3, '10': 'code'},
    {'1': 'result', '3': 5, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `NatsMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List natsMsgRspDescriptor = $convert.base64Decode(
    'CgpOYXRzTXNnUnNwEjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUEJDb21tRGF0YVIKcG'
    'JDb21tRGF0YRIWCgZwYk5hbWUYAiABKAlSBnBiTmFtZRIWCgZwYkRhdGEYAyABKAxSBnBiRGF0'
    'YRISCgRjb2RlGAQgASgDUgRjb2RlEhYKBnJlc3VsdBgFIAEoCVIGcmVzdWx0');

@$core.Deprecated('Use sysCfgChangeNotifyDescriptor instead')
const SysCfgChangeNotify$json = {
  '1': 'SysCfgChangeNotify',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `SysCfgChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sysCfgChangeNotifyDescriptor = $convert.base64Decode(
    'ChJTeXNDZmdDaGFuZ2VOb3RpZnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBX'
    'ZhbHVlEhIKBGRlc2MYAyABKAlSBGRlc2M=');

@$core.Deprecated('Use sysCfgChangeCanLoadFromNotifyDescriptor instead')
const SysCfgChangeCanLoadFromNotify$json = {
  '1': 'SysCfgChangeCanLoadFromNotify',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `SysCfgChangeCanLoadFromNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sysCfgChangeCanLoadFromNotifyDescriptor = $convert.base64Decode(
    'Ch1TeXNDZmdDaGFuZ2VDYW5Mb2FkRnJvbU5vdGlmeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YW'
    'x1ZRgCIAEoCVIFdmFsdWUSEgoEZGVzYxgDIAEoCVIEZGVzYw==');

@$core.Deprecated('Use errStatusChangeNotifyDescriptor instead')
const ErrStatusChangeNotify$json = {
  '1': 'ErrStatusChangeNotify',
  '2': [
    {'1': 'appId', '3': 1, '4': 1, '5': 5, '10': 'appId'},
    {'1': 'language', '3': 2, '4': 1, '5': 9, '10': 'language'},
    {'1': 'code', '3': 3, '4': 1, '5': 5, '10': 'code'},
    {'1': 'desc', '3': 4, '4': 1, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `ErrStatusChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errStatusChangeNotifyDescriptor = $convert.base64Decode(
    'ChVFcnJTdGF0dXNDaGFuZ2VOb3RpZnkSFAoFYXBwSWQYASABKAVSBWFwcElkEhoKCGxhbmd1YW'
    'dlGAIgASgJUghsYW5ndWFnZRISCgRjb2RlGAMgASgFUgRjb2RlEhIKBGRlc2MYBCABKAlSBGRl'
    'c2M=');

@$core.Deprecated('Use batchCreateRobotDescriptor instead')
const BatchCreateRobot$json = {
  '1': 'BatchCreateRobot',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `BatchCreateRobot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchCreateRobotDescriptor = $convert.base64Decode(
    'ChBCYXRjaENyZWF0ZVJvYm90EhQKBWNvdW50GAEgASgFUgVjb3VudA==');

