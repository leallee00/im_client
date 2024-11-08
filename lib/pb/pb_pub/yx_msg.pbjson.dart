//
//  Generated code. Do not modify.
//  source: pb_pub/yx_msg.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use yXCommMsgDescriptor instead')
const YXCommMsg$json = {
  '1': 'YXCommMsg',
  '2': [
    {'1': 'MessageType', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.MessageType', '10': 'MessageType'},
    {'1': 'MessageBody', '3': 2, '4': 1, '5': 9, '10': 'MessageBody'},
    {'1': 'IsImMessage', '3': 3, '4': 1, '5': 3, '10': 'IsImMessage'},
  ],
};

/// Descriptor for `YXCommMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yXCommMsgDescriptor = $convert.base64Decode(
    'CglZWENvbW1Nc2cSNQoLTWVzc2FnZVR5cGUYASABKA4yEy5wYl9wdWIuTWVzc2FnZVR5cGVSC0'
    '1lc3NhZ2VUeXBlEiAKC01lc3NhZ2VCb2R5GAIgASgJUgtNZXNzYWdlQm9keRIgCgtJc0ltTWVz'
    'c2FnZRgDIAEoA1ILSXNJbU1lc3NhZ2U=');

@$core.Deprecated('Use yXCommMsgRspDescriptor instead')
const YXCommMsgRsp$json = {
  '1': 'YXCommMsgRsp',
};

/// Descriptor for `YXCommMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yXCommMsgRspDescriptor = $convert.base64Decode(
    'CgxZWENvbW1Nc2dSc3A=');

@$core.Deprecated('Use yXCommMsgNSQDescriptor instead')
const YXCommMsgNSQ$json = {
  '1': 'YXCommMsgNSQ',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'messageType', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.MessageType', '10': 'messageType'},
    {'1': 'messageBody', '3': 4, '4': 1, '5': 9, '10': 'messageBody'},
    {'1': 'exp', '3': 5, '4': 3, '5': 11, '6': '.pb_pub.YXCommMsgNSQ.ExpEntry', '10': 'exp'},
  ],
  '3': [YXCommMsgNSQ_ExpEntry$json],
};

@$core.Deprecated('Use yXCommMsgNSQDescriptor instead')
const YXCommMsgNSQ_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `YXCommMsgNSQ`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yXCommMsgNSQDescriptor = $convert.base64Decode(
    'CgxZWENvbW1Nc2dOU1ESMgoKcGJDb21tRGF0YRgBIAEoCzISLnBiX3B1Yi5QQkNvbW1EYXRhUg'
    'pwYkNvbW1EYXRhEhgKB2dyb3VwSWQYAiABKANSB2dyb3VwSWQSNQoLbWVzc2FnZVR5cGUYAyAB'
    'KA4yEy5wYl9wdWIuTWVzc2FnZVR5cGVSC21lc3NhZ2VUeXBlEiAKC21lc3NhZ2VCb2R5GAQgAS'
    'gJUgttZXNzYWdlQm9keRIvCgNleHAYBSADKAsyHS5wYl9wdWIuWVhDb21tTXNnTlNRLkV4cEVu'
    'dHJ5UgNleHAaNgoIRXhwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBX'
    'ZhbHVlOgI4AQ==');

