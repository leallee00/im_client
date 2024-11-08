//
//  Generated code. Do not modify.
//  source: pb_msg/black_list/blackList.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use judge_StateDescriptor instead')
const Judge_State$json = {
  '1': 'Judge_State',
  '2': [
    {'1': 'NOT_EXIST', '2': 0},
    {'1': 'EXIST', '2': 1},
  ],
};

/// Descriptor for `Judge_State`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List judge_StateDescriptor = $convert.base64Decode(
    'CgtKdWRnZV9TdGF0ZRINCglOT1RfRVhJU1QQABIJCgVFWElTVBAB');

@$core.Deprecated('Use readBlackListReqDescriptor instead')
const ReadBlackListReq$json = {
  '1': 'ReadBlackListReq',
  '2': [
    {'1': 'src_userid', '3': 1, '4': 1, '5': 3, '10': 'srcUserid'},
  ],
};

/// Descriptor for `ReadBlackListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readBlackListReqDescriptor = $convert.base64Decode(
    'ChBSZWFkQmxhY2tMaXN0UmVxEh0KCnNyY191c2VyaWQYASABKANSCXNyY1VzZXJpZA==');

@$core.Deprecated('Use readBlackListRspDescriptor instead')
const ReadBlackListRsp$json = {
  '1': 'ReadBlackListRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'aim_userid', '3': 2, '4': 3, '5': 9, '10': 'aimUserid'},
  ],
};

/// Descriptor for `ReadBlackListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readBlackListRspDescriptor = $convert.base64Decode(
    'ChBSZWFkQmxhY2tMaXN0UnNwEicKBnJlc3VsdBgBIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgZyZX'
    'N1bHQSHQoKYWltX3VzZXJpZBgCIAMoCVIJYWltVXNlcmlk');

@$core.Deprecated('Use judgeBlackListReqDescriptor instead')
const JudgeBlackListReq$json = {
  '1': 'JudgeBlackListReq',
  '2': [
    {'1': 'src_userid', '3': 1, '4': 1, '5': 3, '10': 'srcUserid'},
    {'1': 'aim_userid', '3': 2, '4': 1, '5': 3, '10': 'aimUserid'},
  ],
};

/// Descriptor for `JudgeBlackListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List judgeBlackListReqDescriptor = $convert.base64Decode(
    'ChFKdWRnZUJsYWNrTGlzdFJlcRIdCgpzcmNfdXNlcmlkGAEgASgDUglzcmNVc2VyaWQSHQoKYW'
    'ltX3VzZXJpZBgCIAEoA1IJYWltVXNlcmlk');

@$core.Deprecated('Use judgeBlackListRspDescriptor instead')
const JudgeBlackListRsp$json = {
  '1': 'JudgeBlackListRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_blackList.Judge_State', '10': 'state'},
  ],
};

/// Descriptor for `JudgeBlackListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List judgeBlackListRspDescriptor = $convert.base64Decode(
    'ChFKdWRnZUJsYWNrTGlzdFJzcBInCgZyZXN1bHQYASABKA4yDy5wYl9wdWIuRXJyQ29kZVIGcm'
    'VzdWx0EjMKBXN0YXRlGAIgASgOMh0ucGJfbXNnX2JsYWNrTGlzdC5KdWRnZV9TdGF0ZVIFc3Rh'
    'dGU=');

@$core.Deprecated('Use saveBlackListReqDescriptor instead')
const SaveBlackListReq$json = {
  '1': 'SaveBlackListReq',
  '2': [
    {'1': 'src_userid', '3': 1, '4': 1, '5': 3, '10': 'srcUserid'},
    {'1': 'aim_userid', '3': 2, '4': 1, '5': 3, '10': 'aimUserid'},
  ],
};

/// Descriptor for `SaveBlackListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveBlackListReqDescriptor = $convert.base64Decode(
    'ChBTYXZlQmxhY2tMaXN0UmVxEh0KCnNyY191c2VyaWQYASABKANSCXNyY1VzZXJpZBIdCgphaW'
    '1fdXNlcmlkGAIgASgDUglhaW1Vc2VyaWQ=');

@$core.Deprecated('Use saveBlackListRspDescriptor instead')
const SaveBlackListRsp$json = {
  '1': 'SaveBlackListRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'aim_userid', '3': 2, '4': 1, '5': 3, '10': 'aimUserid'},
  ],
};

/// Descriptor for `SaveBlackListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveBlackListRspDescriptor = $convert.base64Decode(
    'ChBTYXZlQmxhY2tMaXN0UnNwEicKBnJlc3VsdBgBIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgZyZX'
    'N1bHQSHQoKYWltX3VzZXJpZBgCIAEoA1IJYWltVXNlcmlk');

@$core.Deprecated('Use deleteBlackListReqDescriptor instead')
const DeleteBlackListReq$json = {
  '1': 'DeleteBlackListReq',
  '2': [
    {'1': 'src_userid', '3': 1, '4': 1, '5': 3, '10': 'srcUserid'},
    {'1': 'aim_userid', '3': 2, '4': 1, '5': 3, '10': 'aimUserid'},
  ],
};

/// Descriptor for `DeleteBlackListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBlackListReqDescriptor = $convert.base64Decode(
    'ChJEZWxldGVCbGFja0xpc3RSZXESHQoKc3JjX3VzZXJpZBgBIAEoA1IJc3JjVXNlcmlkEh0KCm'
    'FpbV91c2VyaWQYAiABKANSCWFpbVVzZXJpZA==');

@$core.Deprecated('Use deleteBlackListRspDescriptor instead')
const DeleteBlackListRsp$json = {
  '1': 'DeleteBlackListRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'aim_userid', '3': 2, '4': 1, '5': 3, '10': 'aimUserid'},
  ],
};

/// Descriptor for `DeleteBlackListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBlackListRspDescriptor = $convert.base64Decode(
    'ChJEZWxldGVCbGFja0xpc3RSc3ASJwoGcmVzdWx0GAEgASgOMg8ucGJfcHViLkVyckNvZGVSBn'
    'Jlc3VsdBIdCgphaW1fdXNlcmlkGAIgASgDUglhaW1Vc2VyaWQ=');

