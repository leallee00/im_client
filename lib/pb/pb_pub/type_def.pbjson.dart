//
//  Generated code. Do not modify.
//  source: pb_pub/type_def.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use kickUserReasonDescriptor instead')
const KickUserReason$json = {
  '1': 'KickUserReason',
  '2': [
    {'1': 'Sys', '2': 0},
    {'1': 'Relogon', '2': 1},
    {'1': 'ClientException', '2': 2},
  ],
};

/// Descriptor for `KickUserReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List kickUserReasonDescriptor = $convert.base64Decode(
    'Cg5LaWNrVXNlclJlYXNvbhIHCgNTeXMQABILCgdSZWxvZ29uEAESEwoPQ2xpZW50RXhjZXB0aW'
    '9uEAI=');

@$core.Deprecated('Use pubRoomIdDescriptor instead')
const PubRoomId$json = {
  '1': 'PubRoomId',
  '2': [
    {'1': 'Unknown', '2': 0},
    {'1': 'PartyRoomHall', '2': 1},
    {'1': 'TTKGame', '2': 2},
    {'1': 'WishHall', '2': 3},
    {'1': 'CommRoomAuctionHouse', '2': 4},
  ],
};

/// Descriptor for `PubRoomId`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pubRoomIdDescriptor = $convert.base64Decode(
    'CglQdWJSb29tSWQSCwoHVW5rbm93bhAAEhEKDVBhcnR5Um9vbUhhbGwQARILCgdUVEtHYW1lEA'
    'ISDAoIV2lzaEhhbGwQAxIYChRDb21tUm9vbUF1Y3Rpb25Ib3VzZRAE');

@$core.Deprecated('Use expKeyDescriptor instead')
const ExpKey$json = {
  '1': 'ExpKey',
  '2': [
    {'1': 'ExpUnknown', '2': 0},
    {'1': 'ExpGroupId', '2': 1},
  ],
};

/// Descriptor for `ExpKey`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List expKeyDescriptor = $convert.base64Decode(
    'CgZFeHBLZXkSDgoKRXhwVW5rbm93bhAAEg4KCkV4cEdyb3VwSWQQAQ==');

