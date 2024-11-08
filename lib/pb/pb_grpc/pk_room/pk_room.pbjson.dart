//
//  Generated code. Do not modify.
//  source: pb_grpc/pk_room/pk_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fieldsPKOverDescriptor instead')
const FieldsPKOver$json = {
  '1': 'FieldsPKOver',
  '2': [
    {'1': 'rank', '3': 4, '4': 1, '5': 3, '10': 'rank'},
    {'1': 'victoryTimes', '3': 5, '4': 1, '5': 3, '10': 'victoryTimes'},
  ],
};

/// Descriptor for `FieldsPKOver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldsPKOverDescriptor = $convert.base64Decode(
    'CgxGaWVsZHNQS092ZXISEgoEcmFuaxgEIAEoA1IEcmFuaxIiCgx2aWN0b3J5VGltZXMYBSABKA'
    'NSDHZpY3RvcnlUaW1lcw==');

@$core.Deprecated('Use createRandRoomReqDescriptor instead')
const CreateRandRoomReq$json = {
  '1': 'CreateRandRoomReq',
  '2': [
    {'1': 'pkType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_TYPE', '10': 'pkType'},
    {'1': 'pkTopic', '3': 2, '4': 1, '5': 9, '10': 'pkTopic'},
  ],
};

/// Descriptor for `CreateRandRoomReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRandRoomReqDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVSYW5kUm9vbVJlcRIvCgZwa1R5cGUYASABKA4yFy5wYl9tc2dfcGtfcm9vbS5QS1'
    '9UWVBFUgZwa1R5cGUSGAoHcGtUb3BpYxgCIAEoCVIHcGtUb3BpYw==');

@$core.Deprecated('Use createRandRoomRspDescriptor instead')
const CreateRandRoomRsp$json = {
  '1': 'CreateRandRoomRsp',
};

/// Descriptor for `CreateRandRoomRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRandRoomRspDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVSYW5kUm9vbVJzcA==');

@$core.Deprecated('Use createRankRoomReqDescriptor instead')
const CreateRankRoomReq$json = {
  '1': 'CreateRankRoomReq',
  '2': [
    {'1': 'pkTopic', '3': 1, '4': 1, '5': 9, '10': 'pkTopic'},
    {'1': 'aid', '3': 2, '4': 1, '5': 3, '10': 'aid'},
    {'1': 'ascore', '3': 3, '4': 1, '5': 1, '10': 'ascore'},
    {'1': 'bid', '3': 4, '4': 1, '5': 3, '10': 'bid'},
    {'1': 'bscore', '3': 5, '4': 1, '5': 1, '10': 'bscore'},
  ],
};

/// Descriptor for `CreateRankRoomReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRankRoomReqDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVSYW5rUm9vbVJlcRIYCgdwa1RvcGljGAEgASgJUgdwa1RvcGljEhAKA2FpZBgCIA'
    'EoA1IDYWlkEhYKBmFzY29yZRgDIAEoAVIGYXNjb3JlEhAKA2JpZBgEIAEoA1IDYmlkEhYKBmJz'
    'Y29yZRgFIAEoAVIGYnNjb3Jl');

@$core.Deprecated('Use createRankRoomRspDescriptor instead')
const CreateRankRoomRsp$json = {
  '1': 'CreateRankRoomRsp',
};

/// Descriptor for `CreateRankRoomRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRankRoomRspDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVSYW5rUm9vbVJzcA==');

@$core.Deprecated('Use createInviteRoomReqDescriptor instead')
const CreateInviteRoomReq$json = {
  '1': 'CreateInviteRoomReq',
  '2': [
    {'1': 'pkTopic', '3': 1, '4': 1, '5': 9, '10': 'pkTopic'},
  ],
};

/// Descriptor for `CreateInviteRoomReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInviteRoomReqDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVJbnZpdGVSb29tUmVxEhgKB3BrVG9waWMYASABKAlSB3BrVG9waWM=');

@$core.Deprecated('Use createInviteRoomRspDescriptor instead')
const CreateInviteRoomRsp$json = {
  '1': 'CreateInviteRoomRsp',
};

/// Descriptor for `CreateInviteRoomRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInviteRoomRspDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVJbnZpdGVSb29tUnNw');

@$core.Deprecated('Use attachDescriptor instead')
const Attach$json = {
  '1': 'Attach',
  '2': [
    {'1': 'roomID', '3': 1, '4': 1, '5': 3, '10': 'roomID'},
  ],
};

/// Descriptor for `Attach`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachDescriptor = $convert.base64Decode(
    'CgZBdHRhY2gSFgoGcm9vbUlEGAEgASgDUgZyb29tSUQ=');

@$core.Deprecated('Use manualMatchReqDescriptor instead')
const ManualMatchReq$json = {
  '1': 'ManualMatchReq',
  '2': [
    {'1': 'anchorA', '3': 1, '4': 1, '5': 3, '10': 'anchorA'},
    {'1': 'anchorB', '3': 2, '4': 1, '5': 3, '10': 'anchorB'},
  ],
};

/// Descriptor for `ManualMatchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manualMatchReqDescriptor = $convert.base64Decode(
    'Cg5NYW51YWxNYXRjaFJlcRIYCgdhbmNob3JBGAEgASgDUgdhbmNob3JBEhgKB2FuY2hvckIYAi'
    'ABKANSB2FuY2hvckI=');

@$core.Deprecated('Use manualMatchRspDescriptor instead')
const ManualMatchRsp$json = {
  '1': 'ManualMatchRsp',
};

/// Descriptor for `ManualMatchRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manualMatchRspDescriptor = $convert.base64Decode(
    'Cg5NYW51YWxNYXRjaFJzcA==');

