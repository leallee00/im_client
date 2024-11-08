//
//  Generated code. Do not modify.
//  source: pb_pub/comm_im.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cODECDescriptor instead')
const CODEC$json = {
  '1': 'CODEC',
  '2': [
    {'1': 'PROTOBUF', '2': 0},
    {'1': 'JSON', '2': 1},
  ],
};

/// Descriptor for `CODEC`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cODECDescriptor = $convert.base64Decode(
    'CgVDT0RFQxIMCghQUk9UT0JVRhAAEggKBEpTT04QAQ==');

@$core.Deprecated('Use nSQMessageDescriptor instead')
const NSQMessage$json = {
  '1': 'NSQMessage',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'codec', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.CODEC', '10': 'codec'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'data', '3': 4, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `NSQMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nSQMessageDescriptor = $convert.base64Decode(
    'CgpOU1FNZXNzYWdlEjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUEJDb21tRGF0YVIKcG'
    'JDb21tRGF0YRIjCgVjb2RlYxgCIAEoDjINLnBiX3B1Yi5DT0RFQ1IFY29kZWMSEgoEbmFtZRgD'
    'IAEoCVIEbmFtZRISCgRkYXRhGAQgASgMUgRkYXRh');

