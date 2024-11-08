//
//  Generated code. Do not modify.
//  source: pb_grpc/offline_msg/offlineMsg.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use deleteOfflineMsgReqDescriptor instead')
const DeleteOfflineMsgReq$json = {
  '1': 'DeleteOfflineMsgReq',
  '2': [
    {'1': 'userid', '3': 1, '4': 1, '5': 3, '10': 'userid'},
    {'1': 'sn', '3': 2, '4': 1, '5': 3, '10': 'sn'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
  ],
};

/// Descriptor for `DeleteOfflineMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteOfflineMsgReqDescriptor = $convert.base64Decode(
    'ChNEZWxldGVPZmZsaW5lTXNnUmVxEhYKBnVzZXJpZBgBIAEoA1IGdXNlcmlkEg4KAnNuGAIgAS'
    'gDUgJzbhISCgR0aW1lGAMgASgDUgR0aW1l');

@$core.Deprecated('Use deleteOfflineMsgRspDescriptor instead')
const DeleteOfflineMsgRsp$json = {
  '1': 'DeleteOfflineMsgRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `DeleteOfflineMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteOfflineMsgRspDescriptor = $convert.base64Decode(
    'ChNEZWxldGVPZmZsaW5lTXNnUnNwEicKBnJlc3VsdBgBIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUg'
    'ZyZXN1bHQ=');

