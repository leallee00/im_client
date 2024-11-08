//
//  Generated code. Do not modify.
//  source: pb_msg/msg_sender/msgSender.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use msgSenderNotifyDescriptor instead')
const MsgSenderNotify$json = {
  '1': 'MsgSenderNotify',
  '2': [
    {'1': 'srcId', '3': 1, '4': 1, '5': 3, '10': 'srcId'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'type', '3': 4, '4': 1, '5': 5, '10': 'type'},
    {'1': 'nickName', '3': 5, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'bigImageOriginal', '3': 6, '4': 1, '5': 9, '10': 'bigImageOriginal'},
    {'1': 'groupId', '3': 7, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `MsgSenderNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSenderNotifyDescriptor = $convert.base64Decode(
    'Cg9Nc2dTZW5kZXJOb3RpZnkSFAoFc3JjSWQYASABKANSBXNyY0lkEhAKA21zZxgCIAEoCVIDbX'
    'NnEhQKBXRpdGxlGAMgASgJUgV0aXRsZRISCgR0eXBlGAQgASgFUgR0eXBlEhoKCG5pY2tOYW1l'
    'GAUgASgJUghuaWNrTmFtZRIqChBiaWdJbWFnZU9yaWdpbmFsGAYgASgJUhBiaWdJbWFnZU9yaW'
    'dpbmFsEhgKB2dyb3VwSWQYByABKANSB2dyb3VwSWQ=');

@$core.Deprecated('Use shopMemberChangeNotifyDescriptor instead')
const ShopMemberChangeNotify$json = {
  '1': 'ShopMemberChangeNotify',
  '2': [
    {'1': 'shopId', '3': 1, '4': 1, '5': 3, '10': 'shopId'},
    {'1': 'memberID', '3': 2, '4': 1, '5': 3, '10': 'memberID'},
    {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `ShopMemberChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shopMemberChangeNotifyDescriptor = $convert.base64Decode(
    'ChZTaG9wTWVtYmVyQ2hhbmdlTm90aWZ5EhYKBnNob3BJZBgBIAEoA1IGc2hvcElkEhoKCG1lbW'
    'JlcklEGAIgASgDUghtZW1iZXJJRBISCgR0eXBlGAMgASgFUgR0eXBl');

