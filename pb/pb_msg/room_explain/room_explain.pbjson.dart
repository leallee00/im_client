//
//  Generated code. Do not modify.
//  source: pb_msg/room_explain/room_explain.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use roomExplainReqDescriptor instead')
const RoomExplainReq$json = {
  '1': 'RoomExplainReq',
  '2': [
    {'1': 'roomId', '3': 1, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'timestampBegin', '3': 2, '4': 1, '5': 9, '10': 'timestampBegin'},
    {'1': 'timestampEnd', '3': 3, '4': 1, '5': 9, '10': 'timestampEnd'},
  ],
};

/// Descriptor for `RoomExplainReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomExplainReqDescriptor = $convert.base64Decode(
    'Cg5Sb29tRXhwbGFpblJlcRIWCgZyb29tSWQYASABKANSBnJvb21JZBImCg50aW1lc3RhbXBCZW'
    'dpbhgCIAEoCVIOdGltZXN0YW1wQmVnaW4SIgoMdGltZXN0YW1wRW5kGAMgASgJUgx0aW1lc3Rh'
    'bXBFbmQ=');

@$core.Deprecated('Use roomExplainRspDescriptor instead')
const RoomExplainRsp$json = {
  '1': 'RoomExplainRsp',
  '2': [
    {'1': 'msgCount', '3': 1, '4': 1, '5': 3, '10': 'msgCount'},
  ],
};

/// Descriptor for `RoomExplainRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomExplainRspDescriptor = $convert.base64Decode(
    'Cg5Sb29tRXhwbGFpblJzcBIaCghtc2dDb3VudBgBIAEoA1IIbXNnQ291bnQ=');

@$core.Deprecated('Use srcUserExplainReqDescriptor instead')
const SrcUserExplainReq$json = {
  '1': 'SrcUserExplainReq',
  '2': [
    {'1': 'srcId', '3': 1, '4': 1, '5': 3, '10': 'srcId'},
    {'1': 'timestampBegin', '3': 2, '4': 1, '5': 9, '10': 'timestampBegin'},
    {'1': 'timestampEnd', '3': 3, '4': 1, '5': 9, '10': 'timestampEnd'},
  ],
};

/// Descriptor for `SrcUserExplainReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List srcUserExplainReqDescriptor = $convert.base64Decode(
    'ChFTcmNVc2VyRXhwbGFpblJlcRIUCgVzcmNJZBgBIAEoA1IFc3JjSWQSJgoOdGltZXN0YW1wQm'
    'VnaW4YAiABKAlSDnRpbWVzdGFtcEJlZ2luEiIKDHRpbWVzdGFtcEVuZBgDIAEoCVIMdGltZXN0'
    'YW1wRW5k');

@$core.Deprecated('Use srcUserExplainRspDescriptor instead')
const SrcUserExplainRsp$json = {
  '1': 'SrcUserExplainRsp',
  '2': [
    {'1': 'msgCount', '3': 1, '4': 1, '5': 3, '10': 'msgCount'},
  ],
};

/// Descriptor for `SrcUserExplainRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List srcUserExplainRspDescriptor = $convert.base64Decode(
    'ChFTcmNVc2VyRXhwbGFpblJzcBIaCghtc2dDb3VudBgBIAEoA1IIbXNnQ291bnQ=');

