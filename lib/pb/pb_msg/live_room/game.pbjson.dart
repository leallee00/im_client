//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/game.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use uCGameInfoDescriptor instead')
const UCGameInfo$json = {
  '1': 'UCGameInfo',
  '2': [
    {'1': 'judge', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UCGamePlayer', '10': 'judge'},
    {'1': 'undercoverSide', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_live_room.UCGameSide', '10': 'undercoverSide'},
    {'1': 'populaceSide', '3': 3, '4': 1, '5': 11, '6': '.pb_msg_live_room.UCGameSide', '10': 'populaceSide'},
  ],
};

/// Descriptor for `UCGameInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uCGameInfoDescriptor = $convert.base64Decode(
    'CgpVQ0dhbWVJbmZvEjQKBWp1ZGdlGAEgASgLMh4ucGJfbXNnX2xpdmVfcm9vbS5VQ0dhbWVQbG'
    'F5ZXJSBWp1ZGdlEkQKDnVuZGVyY292ZXJTaWRlGAIgASgLMhwucGJfbXNnX2xpdmVfcm9vbS5V'
    'Q0dhbWVTaWRlUg51bmRlcmNvdmVyU2lkZRJACgxwb3B1bGFjZVNpZGUYAyABKAsyHC5wYl9tc2'
    'dfbGl2ZV9yb29tLlVDR2FtZVNpZGVSDHBvcHVsYWNlU2lkZQ==');

@$core.Deprecated('Use uCGameSideDescriptor instead')
const UCGameSide$json = {
  '1': 'UCGameSide',
  '2': [
    {'1': 'word', '3': 1, '4': 1, '5': 9, '10': 'word'},
    {'1': 'players', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_live_room.UCGamePlayer', '10': 'players'},
  ],
};

/// Descriptor for `UCGameSide`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uCGameSideDescriptor = $convert.base64Decode(
    'CgpVQ0dhbWVTaWRlEhIKBHdvcmQYASABKAlSBHdvcmQSOAoHcGxheWVycxgCIAMoCzIeLnBiX2'
    '1zZ19saXZlX3Jvb20uVUNHYW1lUGxheWVyUgdwbGF5ZXJz');

@$core.Deprecated('Use uCGamePlayerDescriptor instead')
const UCGamePlayer$json = {
  '1': 'UCGamePlayer',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'headImage', '3': 3, '4': 1, '5': 9, '10': 'headImage'},
  ],
};

/// Descriptor for `UCGamePlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uCGamePlayerDescriptor = $convert.base64Decode(
    'CgxVQ0dhbWVQbGF5ZXISFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSGgoIdXNlcm5hbWUYAiABKA'
    'lSCHVzZXJuYW1lEhwKCWhlYWRJbWFnZRgDIAEoCVIJaGVhZEltYWdl');

@$core.Deprecated('Use uCGameStartReqDescriptor instead')
const UCGameStartReq$json = {
  '1': 'UCGameStartReq',
  '2': [
    {'1': 'undercoverWord', '3': 1, '4': 1, '5': 9, '10': 'undercoverWord'},
    {'1': 'populaceWord', '3': 2, '4': 1, '5': 9, '10': 'populaceWord'},
    {'1': 'undercoverCount', '3': 3, '4': 1, '5': 5, '10': 'undercoverCount'},
  ],
};

/// Descriptor for `UCGameStartReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uCGameStartReqDescriptor = $convert.base64Decode(
    'Cg5VQ0dhbWVTdGFydFJlcRImCg51bmRlcmNvdmVyV29yZBgBIAEoCVIOdW5kZXJjb3Zlcldvcm'
    'QSIgoMcG9wdWxhY2VXb3JkGAIgASgJUgxwb3B1bGFjZVdvcmQSKAoPdW5kZXJjb3ZlckNvdW50'
    'GAMgASgFUg91bmRlcmNvdmVyQ291bnQ=');

@$core.Deprecated('Use uCGameStartRspDescriptor instead')
const UCGameStartRsp$json = {
  '1': 'UCGameStartRsp',
  '2': [
    {'1': 'gameInfo', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UCGameInfo', '10': 'gameInfo'},
  ],
};

/// Descriptor for `UCGameStartRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uCGameStartRspDescriptor = $convert.base64Decode(
    'Cg5VQ0dhbWVTdGFydFJzcBI4CghnYW1lSW5mbxgBIAEoCzIcLnBiX21zZ19saXZlX3Jvb20uVU'
    'NHYW1lSW5mb1IIZ2FtZUluZm8=');

@$core.Deprecated('Use uCGamePlayerInfoDescriptor instead')
const UCGamePlayerInfo$json = {
  '1': 'UCGamePlayerInfo',
  '2': [
    {'1': 'word', '3': 1, '4': 1, '5': 9, '10': 'word'},
  ],
};

/// Descriptor for `UCGamePlayerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uCGamePlayerInfoDescriptor = $convert.base64Decode(
    'ChBVQ0dhbWVQbGF5ZXJJbmZvEhIKBHdvcmQYASABKAlSBHdvcmQ=');

@$core.Deprecated('Use uCGameStartNotifyDescriptor instead')
const UCGameStartNotify$json = {
  '1': 'UCGameStartNotify',
  '2': [
    {'1': 'undercoverCount', '3': 1, '4': 1, '5': 5, '10': 'undercoverCount'},
    {'1': 'populaceCount', '3': 2, '4': 1, '5': 5, '10': 'populaceCount'},
  ],
};

/// Descriptor for `UCGameStartNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uCGameStartNotifyDescriptor = $convert.base64Decode(
    'ChFVQ0dhbWVTdGFydE5vdGlmeRIoCg91bmRlcmNvdmVyQ291bnQYASABKAVSD3VuZGVyY292ZX'
    'JDb3VudBIkCg1wb3B1bGFjZUNvdW50GAIgASgFUg1wb3B1bGFjZUNvdW50');

@$core.Deprecated('Use uCGameOverNotifyDescriptor instead')
const UCGameOverNotify$json = {
  '1': 'UCGameOverNotify',
  '2': [
    {'1': 'gameInfo', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UCGameInfo', '10': 'gameInfo'},
    {'1': 'winner', '3': 2, '4': 1, '5': 5, '10': 'winner'},
  ],
};

/// Descriptor for `UCGameOverNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uCGameOverNotifyDescriptor = $convert.base64Decode(
    'ChBVQ0dhbWVPdmVyTm90aWZ5EjgKCGdhbWVJbmZvGAEgASgLMhwucGJfbXNnX2xpdmVfcm9vbS'
    '5VQ0dhbWVJbmZvUghnYW1lSW5mbxIWCgZ3aW5uZXIYAiABKAVSBndpbm5lcg==');

@$core.Deprecated('Use uCGamePlayersDescriptor instead')
const UCGamePlayers$json = {
  '1': 'UCGamePlayers',
  '2': [
    {'1': 'players', '3': 1, '4': 3, '5': 3, '10': 'players'},
  ],
};

/// Descriptor for `UCGamePlayers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uCGamePlayersDescriptor = $convert.base64Decode(
    'Cg1VQ0dhbWVQbGF5ZXJzEhgKB3BsYXllcnMYASADKANSB3BsYXllcnM=');

