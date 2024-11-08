//
//  Generated code. Do not modify.
//  source: pb_grpc/pub/grpc_pub.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sendToAllUserReqDescriptor instead')
const SendToAllUserReq$json = {
  '1': 'SendToAllUserReq',
  '2': [
    {'1': 'exp', '3': 1, '4': 3, '5': 11, '6': '.pb_grpc_pub.SendToAllUserReq.ExpEntry', '10': 'exp'},
    {'1': 'pbName', '3': 2, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 3, '4': 1, '5': 12, '10': 'pbData'},
  ],
  '3': [SendToAllUserReq_ExpEntry$json],
};

@$core.Deprecated('Use sendToAllUserReqDescriptor instead')
const SendToAllUserReq_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SendToAllUserReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToAllUserReqDescriptor = $convert.base64Decode(
    'ChBTZW5kVG9BbGxVc2VyUmVxEjgKA2V4cBgBIAMoCzImLnBiX2dycGNfcHViLlNlbmRUb0FsbF'
    'VzZXJSZXEuRXhwRW50cnlSA2V4cBIWCgZwYk5hbWUYAiABKAlSBnBiTmFtZRIWCgZwYkRhdGEY'
    'AyABKAxSBnBiRGF0YRo2CghFeHBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIA'
    'EoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use sendToAimUserReqDescriptor instead')
const SendToAimUserReq$json = {
  '1': 'SendToAimUserReq',
  '2': [
    {'1': 'exp', '3': 1, '4': 3, '5': 11, '6': '.pb_grpc_pub.SendToAimUserReq.ExpEntry', '10': 'exp'},
    {'1': 'pbName', '3': 2, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 3, '4': 1, '5': 12, '10': 'pbData'},
    {'1': 'userId', '3': 4, '4': 1, '5': 3, '10': 'userId'},
  ],
  '3': [SendToAimUserReq_ExpEntry$json],
};

@$core.Deprecated('Use sendToAimUserReqDescriptor instead')
const SendToAimUserReq_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SendToAimUserReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToAimUserReqDescriptor = $convert.base64Decode(
    'ChBTZW5kVG9BaW1Vc2VyUmVxEjgKA2V4cBgBIAMoCzImLnBiX2dycGNfcHViLlNlbmRUb0FpbV'
    'VzZXJSZXEuRXhwRW50cnlSA2V4cBIWCgZwYk5hbWUYAiABKAlSBnBiTmFtZRIWCgZwYkRhdGEY'
    'AyABKAxSBnBiRGF0YRIWCgZ1c2VySWQYBCABKANSBnVzZXJJZBo2CghFeHBFbnRyeRIQCgNrZX'
    'kYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use sendToAimUserListReqDescriptor instead')
const SendToAimUserListReq$json = {
  '1': 'SendToAimUserListReq',
  '2': [
    {'1': 'exp', '3': 1, '4': 3, '5': 11, '6': '.pb_grpc_pub.SendToAimUserListReq.ExpEntry', '10': 'exp'},
    {'1': 'userList', '3': 2, '4': 3, '5': 3, '10': 'userList'},
    {'1': 'pbName', '3': 3, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 4, '4': 1, '5': 12, '10': 'pbData'},
  ],
  '3': [SendToAimUserListReq_ExpEntry$json],
};

@$core.Deprecated('Use sendToAimUserListReqDescriptor instead')
const SendToAimUserListReq_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SendToAimUserListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToAimUserListReqDescriptor = $convert.base64Decode(
    'ChRTZW5kVG9BaW1Vc2VyTGlzdFJlcRI8CgNleHAYASADKAsyKi5wYl9ncnBjX3B1Yi5TZW5kVG'
    '9BaW1Vc2VyTGlzdFJlcS5FeHBFbnRyeVIDZXhwEhoKCHVzZXJMaXN0GAIgAygDUgh1c2VyTGlz'
    'dBIWCgZwYk5hbWUYAyABKAlSBnBiTmFtZRIWCgZwYkRhdGEYBCABKAxSBnBiRGF0YRo2CghFeH'
    'BFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use sendToAllGroupReqDescriptor instead')
const SendToAllGroupReq$json = {
  '1': 'SendToAllGroupReq',
  '2': [
    {'1': 'serviceType', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.Service', '10': 'serviceType'},
    {'1': 'exp', '3': 2, '4': 3, '5': 11, '6': '.pb_grpc_pub.SendToAllGroupReq.ExpEntry', '10': 'exp'},
    {'1': 'pbName', '3': 3, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 4, '4': 1, '5': 12, '10': 'pbData'},
  ],
  '3': [SendToAllGroupReq_ExpEntry$json],
};

@$core.Deprecated('Use sendToAllGroupReqDescriptor instead')
const SendToAllGroupReq_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SendToAllGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToAllGroupReqDescriptor = $convert.base64Decode(
    'ChFTZW5kVG9BbGxHcm91cFJlcRIxCgtzZXJ2aWNlVHlwZRgBIAEoDjIPLnBiX3B1Yi5TZXJ2aW'
    'NlUgtzZXJ2aWNlVHlwZRI5CgNleHAYAiADKAsyJy5wYl9ncnBjX3B1Yi5TZW5kVG9BbGxHcm91'
    'cFJlcS5FeHBFbnRyeVIDZXhwEhYKBnBiTmFtZRgDIAEoCVIGcGJOYW1lEhYKBnBiRGF0YRgEIA'
    'EoDFIGcGJEYXRhGjYKCEV4cEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJ'
    'UgV2YWx1ZToCOAE=');

@$core.Deprecated('Use sendToAimGroupReqDescriptor instead')
const SendToAimGroupReq$json = {
  '1': 'SendToAimGroupReq',
  '2': [
    {'1': 'serviceType', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.Service', '10': 'serviceType'},
    {'1': 'exp', '3': 2, '4': 3, '5': 11, '6': '.pb_grpc_pub.SendToAimGroupReq.ExpEntry', '10': 'exp'},
    {'1': 'pbName', '3': 3, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 4, '4': 1, '5': 12, '10': 'pbData'},
  ],
  '3': [SendToAimGroupReq_ExpEntry$json],
};

@$core.Deprecated('Use sendToAimGroupReqDescriptor instead')
const SendToAimGroupReq_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SendToAimGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToAimGroupReqDescriptor = $convert.base64Decode(
    'ChFTZW5kVG9BaW1Hcm91cFJlcRIxCgtzZXJ2aWNlVHlwZRgBIAEoDjIPLnBiX3B1Yi5TZXJ2aW'
    'NlUgtzZXJ2aWNlVHlwZRI5CgNleHAYAiADKAsyJy5wYl9ncnBjX3B1Yi5TZW5kVG9BaW1Hcm91'
    'cFJlcS5FeHBFbnRyeVIDZXhwEhYKBnBiTmFtZRgDIAEoCVIGcGJOYW1lEhYKBnBiRGF0YRgEIA'
    'EoDFIGcGJEYXRhGjYKCEV4cEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJ'
    'UgV2YWx1ZToCOAE=');

@$core.Deprecated('Use sendToAimClientsReqDescriptor instead')
const SendToAimClientsReq$json = {
  '1': 'SendToAimClientsReq',
  '2': [
    {'1': 'clients', '3': 1, '4': 3, '5': 3, '10': 'clients'},
    {'1': 'pbName', '3': 2, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 3, '4': 1, '5': 12, '10': 'pbData'},
  ],
};

/// Descriptor for `SendToAimClientsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToAimClientsReqDescriptor = $convert.base64Decode(
    'ChNTZW5kVG9BaW1DbGllbnRzUmVxEhgKB2NsaWVudHMYASADKANSB2NsaWVudHMSFgoGcGJOYW'
    '1lGAIgASgJUgZwYk5hbWUSFgoGcGJEYXRhGAMgASgMUgZwYkRhdGE=');

