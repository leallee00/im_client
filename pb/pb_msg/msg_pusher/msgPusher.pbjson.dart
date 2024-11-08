//
//  Generated code. Do not modify.
//  source: pb_msg/msg_pusher/msgPusher.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use msgPushToAimUserDescriptor instead')
const MsgPushToAimUser$json = {
  '1': 'MsgPushToAimUser',
  '2': [
    {'1': 'srcUser', '3': 1, '4': 1, '5': 3, '10': 'srcUser'},
    {'1': 'appList', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_msgPusher.AppData', '10': 'appList'},
    {'1': 'params', '3': 3, '4': 1, '5': 11, '6': '.pb_msg_msgPusher.Params', '10': 'params'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'msg', '3': 5, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'exp', '3': 6, '4': 3, '5': 11, '6': '.pb_msg_msgPusher.MsgPushToAimUser.ExpEntry', '10': 'exp'},
    {'1': 'time', '3': 7, '4': 1, '5': 3, '10': 'time'},
  ],
  '3': [MsgPushToAimUser_ExpEntry$json],
};

@$core.Deprecated('Use msgPushToAimUserDescriptor instead')
const MsgPushToAimUser_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MsgPushToAimUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPushToAimUserDescriptor = $convert.base64Decode(
    'ChBNc2dQdXNoVG9BaW1Vc2VyEhgKB3NyY1VzZXIYASABKANSB3NyY1VzZXISMwoHYXBwTGlzdB'
    'gCIAMoCzIZLnBiX21zZ19tc2dQdXNoZXIuQXBwRGF0YVIHYXBwTGlzdBIwCgZwYXJhbXMYAyAB'
    'KAsyGC5wYl9tc2dfbXNnUHVzaGVyLlBhcmFtc1IGcGFyYW1zEhQKBXRpdGxlGAQgASgJUgV0aX'
    'RsZRIQCgNtc2cYBSABKAlSA21zZxI9CgNleHAYBiADKAsyKy5wYl9tc2dfbXNnUHVzaGVyLk1z'
    'Z1B1c2hUb0FpbVVzZXIuRXhwRW50cnlSA2V4cBISCgR0aW1lGAcgASgDUgR0aW1lGjYKCEV4cE'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use appDataDescriptor instead')
const AppData$json = {
  '1': 'AppData',
  '2': [
    {'1': 'appName', '3': 1, '4': 1, '5': 9, '10': 'appName'},
    {'1': 'userList', '3': 2, '4': 3, '5': 3, '10': 'userList'},
  ],
};

/// Descriptor for `AppData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appDataDescriptor = $convert.base64Decode(
    'CgdBcHBEYXRhEhgKB2FwcE5hbWUYASABKAlSB2FwcE5hbWUSGgoIdXNlckxpc3QYAiADKANSCH'
    'VzZXJMaXN0');

@$core.Deprecated('Use paramsDescriptor instead')
const Params$json = {
  '1': 'Params',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'roomId', '3': 2, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'bigImageOriginal', '3': 4, '4': 1, '5': 9, '10': 'bigImageOriginal'},
    {'1': 'url', '3': 5, '4': 1, '5': 9, '10': 'url'},
    {'1': 'exp', '3': 6, '4': 3, '5': 11, '6': '.pb_msg_msgPusher.Params.ExpEntry', '10': 'exp'},
    {'1': 'GroupId', '3': 7, '4': 1, '5': 3, '10': 'GroupId'},
  ],
  '3': [Params_ExpEntry$json],
};

@$core.Deprecated('Use paramsDescriptor instead')
const Params_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Params`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramsDescriptor = $convert.base64Decode(
    'CgZQYXJhbXMSEgoEdHlwZRgBIAEoBVIEdHlwZRIWCgZyb29tSWQYAiABKANSBnJvb21JZBIaCg'
    'huaWNrbmFtZRgDIAEoCVIIbmlja25hbWUSKgoQYmlnSW1hZ2VPcmlnaW5hbBgEIAEoCVIQYmln'
    'SW1hZ2VPcmlnaW5hbBIQCgN1cmwYBSABKAlSA3VybBIzCgNleHAYBiADKAsyIS5wYl9tc2dfbX'
    'NnUHVzaGVyLlBhcmFtcy5FeHBFbnRyeVIDZXhwEhgKB0dyb3VwSWQYByABKANSB0dyb3VwSWQa'
    'NgoIRXhwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ'
    '==');

@$core.Deprecated('Use msgPushToAllUserDescriptor instead')
const MsgPushToAllUser$json = {
  '1': 'MsgPushToAllUser',
  '2': [
    {'1': 'srcUser', '3': 1, '4': 1, '5': 3, '10': 'srcUser'},
    {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_msgPusher.Params', '10': 'params'},
    {'1': 'appName', '3': 3, '4': 1, '5': 9, '10': 'appName'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'msg', '3': 5, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'exp', '3': 6, '4': 3, '5': 11, '6': '.pb_msg_msgPusher.MsgPushToAllUser.ExpEntry', '10': 'exp'},
  ],
  '3': [MsgPushToAllUser_ExpEntry$json],
};

@$core.Deprecated('Use msgPushToAllUserDescriptor instead')
const MsgPushToAllUser_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MsgPushToAllUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPushToAllUserDescriptor = $convert.base64Decode(
    'ChBNc2dQdXNoVG9BbGxVc2VyEhgKB3NyY1VzZXIYASABKANSB3NyY1VzZXISMAoGcGFyYW1zGA'
    'IgASgLMhgucGJfbXNnX21zZ1B1c2hlci5QYXJhbXNSBnBhcmFtcxIYCgdhcHBOYW1lGAMgASgJ'
    'UgdhcHBOYW1lEhQKBXRpdGxlGAQgASgJUgV0aXRsZRIQCgNtc2cYBSABKAlSA21zZxI9CgNleH'
    'AYBiADKAsyKy5wYl9tc2dfbXNnUHVzaGVyLk1zZ1B1c2hUb0FsbFVzZXIuRXhwRW50cnlSA2V4'
    'cBo2CghFeHBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6Aj'
    'gB');

@$core.Deprecated('Use pushReceiptReqDescriptor instead')
const PushReceiptReq$json = {
  '1': 'PushReceiptReq',
  '2': [
    {'1': 'pushId', '3': 1, '4': 1, '5': 3, '10': 'pushId'},
    {'1': 'system', '3': 2, '4': 1, '5': 9, '10': 'system'},
    {'1': 'isReceive', '3': 3, '4': 1, '5': 5, '10': 'isReceive'},
    {'1': 'isOpen', '3': 4, '4': 1, '5': 5, '10': 'isOpen'},
  ],
};

/// Descriptor for `PushReceiptReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushReceiptReqDescriptor = $convert.base64Decode(
    'Cg5QdXNoUmVjZWlwdFJlcRIWCgZwdXNoSWQYASABKANSBnB1c2hJZBIWCgZzeXN0ZW0YAiABKA'
    'lSBnN5c3RlbRIcCglpc1JlY2VpdmUYAyABKAVSCWlzUmVjZWl2ZRIWCgZpc09wZW4YBCABKAVS'
    'BmlzT3Blbg==');

@$core.Deprecated('Use pushTokenSyncReqDescriptor instead')
const PushTokenSyncReq$json = {
  '1': 'PushTokenSyncReq',
  '2': [
    {'1': 'DeviceCompany', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.MODEL_TYPE', '10': 'DeviceCompany'},
    {'1': 'PushPlatformAppId', '3': 2, '4': 1, '5': 9, '10': 'PushPlatformAppId'},
    {'1': 'Odid', '3': 3, '4': 1, '5': 9, '10': 'Odid'},
    {'1': 'Aaid', '3': 4, '4': 1, '5': 9, '10': 'Aaid'},
    {'1': 'Token', '3': 5, '4': 1, '5': 9, '10': 'Token'},
    {'1': 'ExpiredAt', '3': 6, '4': 1, '5': 3, '10': 'ExpiredAt'},
  ],
};

/// Descriptor for `PushTokenSyncReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushTokenSyncReqDescriptor = $convert.base64Decode(
    'ChBQdXNoVG9rZW5TeW5jUmVxEjgKDURldmljZUNvbXBhbnkYASABKA4yEi5wYl9wdWIuTU9ERU'
    'xfVFlQRVINRGV2aWNlQ29tcGFueRIsChFQdXNoUGxhdGZvcm1BcHBJZBgCIAEoCVIRUHVzaFBs'
    'YXRmb3JtQXBwSWQSEgoET2RpZBgDIAEoCVIET2RpZBISCgRBYWlkGAQgASgJUgRBYWlkEhQKBV'
    'Rva2VuGAUgASgJUgVUb2tlbhIcCglFeHBpcmVkQXQYBiABKANSCUV4cGlyZWRBdA==');

