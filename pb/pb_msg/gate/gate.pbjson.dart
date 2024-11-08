//
//  Generated code. Do not modify.
//  source: pb_msg/gate/gate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use lOGIN_TOCKEN_TYPEDescriptor instead')
const LOGIN_TOCKEN_TYPE$json = {
  '1': 'LOGIN_TOCKEN_TYPE',
  '2': [
    {'1': 'LOGIN_TOCKEN_TYPE_JAVA', '2': 0},
    {'1': 'LOGIN_TOCKEN_TYPE_IM', '2': 1},
    {'1': 'LOGIN_TOCKEN_TYPE_UNI_USER', '2': 2},
  ],
};

/// Descriptor for `LOGIN_TOCKEN_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List lOGIN_TOCKEN_TYPEDescriptor = $convert.base64Decode(
    'ChFMT0dJTl9UT0NLRU5fVFlQRRIaChZMT0dJTl9UT0NLRU5fVFlQRV9KQVZBEAASGAoUTE9HSU'
    '5fVE9DS0VOX1RZUEVfSU0QARIeChpMT0dJTl9UT0NLRU5fVFlQRV9VTklfVVNFUhAC');

@$core.Deprecated('Use bUSINESS_TYPEDescriptor instead')
const BUSINESS_TYPE$json = {
  '1': 'BUSINESS_TYPE',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'SECRET_ROOM', '2': 1},
  ],
};

/// Descriptor for `BUSINESS_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bUSINESS_TYPEDescriptor = $convert.base64Decode(
    'Cg1CVVNJTkVTU19UWVBFEgsKB1VOS05PV04QABIPCgtTRUNSRVRfUk9PTRAB');

@$core.Deprecated('Use loginReqDescriptor instead')
const LoginReq$json = {
  '1': 'LoginReq',
  '2': [
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    {'1': 'token_type', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_gate.LOGIN_TOCKEN_TYPE', '10': 'tokenType'},
    {'1': 'gate_addr_new', '3': 4, '4': 1, '5': 9, '10': 'gateAddrNew'},
    {'1': 'clientInfo', '3': 6, '4': 1, '5': 11, '6': '.pb_msg_gate.ClientInfo', '10': 'clientInfo'},
    {'1': 'version', '3': 7, '4': 1, '5': 5, '10': 'version'},
    {'1': 'deviceToken', '3': 8, '4': 1, '5': 9, '10': 'deviceToken'},
    {'1': 'forceLogin', '3': 9, '4': 1, '5': 8, '10': 'forceLogin'},
  ],
};

/// Descriptor for `LoginReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginReqDescriptor = $convert.base64Decode(
    'CghMb2dpblJlcRIUCgV0b2tlbhgCIAEoCVIFdG9rZW4SPQoKdG9rZW5fdHlwZRgDIAEoDjIeLn'
    'BiX21zZ19nYXRlLkxPR0lOX1RPQ0tFTl9UWVBFUgl0b2tlblR5cGUSIgoNZ2F0ZV9hZGRyX25l'
    'dxgEIAEoCVILZ2F0ZUFkZHJOZXcSNwoKY2xpZW50SW5mbxgGIAEoCzIXLnBiX21zZ19nYXRlLk'
    'NsaWVudEluZm9SCmNsaWVudEluZm8SGAoHdmVyc2lvbhgHIAEoBVIHdmVyc2lvbhIgCgtkZXZp'
    'Y2VUb2tlbhgIIAEoCVILZGV2aWNlVG9rZW4SHgoKZm9yY2VMb2dpbhgJIAEoCFIKZm9yY2VMb2'
    'dpbg==');

@$core.Deprecated('Use thirdLoginReqDescriptor instead')
const ThirdLoginReq$json = {
  '1': 'ThirdLoginReq',
  '2': [
    {'1': 'AppId', '3': 1, '4': 1, '5': 9, '10': 'AppId'},
    {'1': 'AppSecret', '3': 2, '4': 1, '5': 9, '10': 'AppSecret'},
    {'1': 'AppUserId', '3': 3, '4': 1, '5': 3, '10': 'AppUserId'},
    {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
    {'1': 'token_type', '3': 5, '4': 1, '5': 14, '6': '.pb_msg_gate.LOGIN_TOCKEN_TYPE', '10': 'tokenType'},
    {'1': 'gate_addr_new', '3': 6, '4': 1, '5': 9, '10': 'gateAddrNew'},
    {'1': 'IMSdkVersion', '3': 7, '4': 1, '5': 5, '10': 'IMSdkVersion'},
    {'1': 'clientInfo', '3': 8, '4': 1, '5': 11, '6': '.pb_msg_gate.ClientInfo', '10': 'clientInfo'},
  ],
};

/// Descriptor for `ThirdLoginReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thirdLoginReqDescriptor = $convert.base64Decode(
    'Cg1UaGlyZExvZ2luUmVxEhQKBUFwcElkGAEgASgJUgVBcHBJZBIcCglBcHBTZWNyZXQYAiABKA'
    'lSCUFwcFNlY3JldBIcCglBcHBVc2VySWQYAyABKANSCUFwcFVzZXJJZBIUCgV0b2tlbhgEIAEo'
    'CVIFdG9rZW4SPQoKdG9rZW5fdHlwZRgFIAEoDjIeLnBiX21zZ19nYXRlLkxPR0lOX1RPQ0tFTl'
    '9UWVBFUgl0b2tlblR5cGUSIgoNZ2F0ZV9hZGRyX25ldxgGIAEoCVILZ2F0ZUFkZHJOZXcSIgoM'
    'SU1TZGtWZXJzaW9uGAcgASgFUgxJTVNka1ZlcnNpb24SNwoKY2xpZW50SW5mbxgIIAEoCzIXLn'
    'BiX21zZ19nYXRlLkNsaWVudEluZm9SCmNsaWVudEluZm8=');

@$core.Deprecated('Use clientInfoDescriptor instead')
const ClientInfo$json = {
  '1': 'ClientInfo',
  '2': [
    {'1': 'modelType', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.MODEL_TYPE', '10': 'modelType'},
    {'1': 'packageName', '3': 2, '4': 1, '5': 9, '10': 'packageName'},
    {'1': 'systemVersion', '3': 3, '4': 1, '5': 9, '10': 'systemVersion'},
    {'1': 'phoneModels', '3': 4, '4': 1, '5': 9, '10': 'phoneModels'},
    {'1': 'appVersion', '3': 5, '4': 1, '5': 9, '10': 'appVersion'},
    {'1': 'systemName', '3': 6, '4': 1, '5': 9, '10': 'systemName'},
    {'1': 'identifier', '3': 7, '4': 1, '5': 9, '10': 'identifier'},
    {'1': 'xChannel', '3': 8, '4': 1, '5': 9, '10': 'xChannel'},
    {'1': 'pushPlatformAppId', '3': 9, '4': 1, '5': 9, '10': 'pushPlatformAppId'},
    {'1': 'odid', '3': 10, '4': 1, '5': 9, '10': 'odid'},
    {'1': 'aaid', '3': 11, '4': 1, '5': 9, '10': 'aaid'},
    {'1': 'token', '3': 12, '4': 1, '5': 9, '10': 'token'},
    {'1': 'expired', '3': 13, '4': 1, '5': 3, '10': 'expired'},
  ],
};

/// Descriptor for `ClientInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientInfoDescriptor = $convert.base64Decode(
    'CgpDbGllbnRJbmZvEjAKCW1vZGVsVHlwZRgBIAEoDjISLnBiX3B1Yi5NT0RFTF9UWVBFUgltb2'
    'RlbFR5cGUSIAoLcGFja2FnZU5hbWUYAiABKAlSC3BhY2thZ2VOYW1lEiQKDXN5c3RlbVZlcnNp'
    'b24YAyABKAlSDXN5c3RlbVZlcnNpb24SIAoLcGhvbmVNb2RlbHMYBCABKAlSC3Bob25lTW9kZW'
    'xzEh4KCmFwcFZlcnNpb24YBSABKAlSCmFwcFZlcnNpb24SHgoKc3lzdGVtTmFtZRgGIAEoCVIK'
    'c3lzdGVtTmFtZRIeCgppZGVudGlmaWVyGAcgASgJUgppZGVudGlmaWVyEhoKCHhDaGFubmVsGA'
    'ggASgJUgh4Q2hhbm5lbBIsChFwdXNoUGxhdGZvcm1BcHBJZBgJIAEoCVIRcHVzaFBsYXRmb3Jt'
    'QXBwSWQSEgoEb2RpZBgKIAEoCVIEb2RpZBISCgRhYWlkGAsgASgJUgRhYWlkEhQKBXRva2VuGA'
    'wgASgJUgV0b2tlbhIYCgdleHBpcmVkGA0gASgDUgdleHBpcmVk');

@$core.Deprecated('Use loginRspDescriptor instead')
const LoginRsp$json = {
  '1': 'LoginRsp',
  '2': [
    {'1': 'result', '3': 2, '4': 1, '5': 5, '10': 'result'},
    {'1': 'reconnectToken', '3': 3, '4': 1, '5': 9, '10': 'reconnectToken'},
    {'1': 'gate_addr_old', '3': 4, '4': 1, '5': 9, '10': 'gateAddrOld'},
    {'1': 'msg_sn', '3': 5, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'app_user_id_old', '3': 6, '4': 1, '5': 3, '10': 'appUserIdOld'},
    {'1': 'app_id', '3': 7, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'app_user_id', '3': 8, '4': 1, '5': 9, '10': 'appUserId'},
    {'1': 'deviceToken', '3': 9, '4': 1, '5': 9, '10': 'deviceToken'},
    {'1': 'otherClientInfo', '3': 10, '4': 1, '5': 11, '6': '.pb_msg_gate.ClientInfo', '10': 'otherClientInfo'},
    {'1': 'reason', '3': 11, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `LoginRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRspDescriptor = $convert.base64Decode(
    'CghMb2dpblJzcBIWCgZyZXN1bHQYAiABKAVSBnJlc3VsdBImCg5yZWNvbm5lY3RUb2tlbhgDIA'
    'EoCVIOcmVjb25uZWN0VG9rZW4SIgoNZ2F0ZV9hZGRyX29sZBgEIAEoCVILZ2F0ZUFkZHJPbGQS'
    'FQoGbXNnX3NuGAUgASgDUgVtc2dTbhIlCg9hcHBfdXNlcl9pZF9vbGQYBiABKANSDGFwcFVzZX'
    'JJZE9sZBIVCgZhcHBfaWQYByABKANSBWFwcElkEh4KC2FwcF91c2VyX2lkGAggASgJUglhcHBV'
    'c2VySWQSIAoLZGV2aWNlVG9rZW4YCSABKAlSC2RldmljZVRva2VuEkEKD290aGVyQ2xpZW50SW'
    '5mbxgKIAEoCzIXLnBiX21zZ19nYXRlLkNsaWVudEluZm9SD290aGVyQ2xpZW50SW5mbxIWCgZy'
    'ZWFzb24YCyABKAlSBnJlYXNvbg==');

@$core.Deprecated('Use chatTextDescriptor instead')
const ChatText$json = {
  '1': 'ChatText',
  '2': [
    {'1': 'aim_user_id', '3': 2, '4': 1, '5': 3, '10': 'aimUserId'},
    {'1': 'chat_type', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.TextChatType', '10': 'chatType'},
    {'1': 'data', '3': 4, '4': 1, '5': 9, '10': 'data'},
    {'1': 'text', '3': 5, '4': 1, '5': 9, '10': 'text'},
    {'1': 'exp', '3': 6, '4': 3, '5': 11, '6': '.pb_msg_gate.ChatText.ExpEntry', '10': 'exp'},
    {'1': 'aimUserAppId', '3': 7, '4': 1, '5': 3, '10': 'aimUserAppId'},
    {'1': 'aimUserAppUserId', '3': 8, '4': 1, '5': 9, '10': 'aimUserAppUserId'},
  ],
  '3': [ChatText_ExpEntry$json],
};

@$core.Deprecated('Use chatTextDescriptor instead')
const ChatText_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ChatText`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatTextDescriptor = $convert.base64Decode(
    'CghDaGF0VGV4dBIeCgthaW1fdXNlcl9pZBgCIAEoA1IJYWltVXNlcklkEjEKCWNoYXRfdHlwZR'
    'gDIAEoDjIULnBiX3B1Yi5UZXh0Q2hhdFR5cGVSCGNoYXRUeXBlEhIKBGRhdGEYBCABKAlSBGRh'
    'dGESEgoEdGV4dBgFIAEoCVIEdGV4dBIwCgNleHAYBiADKAsyHi5wYl9tc2dfZ2F0ZS5DaGF0VG'
    'V4dC5FeHBFbnRyeVIDZXhwEiIKDGFpbVVzZXJBcHBJZBgHIAEoA1IMYWltVXNlckFwcElkEioK'
    'EGFpbVVzZXJBcHBVc2VySWQYCCABKAlSEGFpbVVzZXJBcHBVc2VySWQaNgoIRXhwRW50cnkSEA'
    'oDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage$json = {
  '1': 'ChatMessage',
  '2': [
    {'1': 'businessType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_gate.BUSINESS_TYPE', '10': 'businessType'},
    {'1': 'text', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_gate.ChatText', '10': 'text'},
  ],
};

/// Descriptor for `ChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDescriptor = $convert.base64Decode(
    'CgtDaGF0TWVzc2FnZRI+CgxidXNpbmVzc1R5cGUYASABKA4yGi5wYl9tc2dfZ2F0ZS5CVVNJTk'
    'VTU19UWVBFUgxidXNpbmVzc1R5cGUSKQoEdGV4dBgCIAEoCzIVLnBiX21zZ19nYXRlLkNoYXRU'
    'ZXh0UgR0ZXh0');

@$core.Deprecated('Use kickOffUserDescriptor instead')
const KickOffUser$json = {
  '1': 'KickOffUser',
  '2': [
    {'1': 'optUId', '3': 1, '4': 1, '5': 3, '10': 'optUId'},
    {'1': 'aimUId', '3': 2, '4': 1, '5': 3, '10': 'aimUId'},
    {'1': 'reason', '3': 3, '4': 1, '5': 5, '10': 'reason'},
    {'1': 'desc', '3': 4, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'otherClientInfo', '3': 10, '4': 1, '5': 11, '6': '.pb_msg_gate.ClientInfo', '10': 'otherClientInfo'},
  ],
};

/// Descriptor for `KickOffUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickOffUserDescriptor = $convert.base64Decode(
    'CgtLaWNrT2ZmVXNlchIWCgZvcHRVSWQYASABKANSBm9wdFVJZBIWCgZhaW1VSWQYAiABKANSBm'
    'FpbVVJZBIWCgZyZWFzb24YAyABKAVSBnJlYXNvbhISCgRkZXNjGAQgASgJUgRkZXNjEkEKD290'
    'aGVyQ2xpZW50SW5mbxgKIAEoCzIXLnBiX21zZ19nYXRlLkNsaWVudEluZm9SD290aGVyQ2xpZW'
    '50SW5mbw==');

@$core.Deprecated('Use removeUserFromGateRoomReqDescriptor instead')
const RemoveUserFromGateRoomReq$json = {
  '1': 'RemoveUserFromGateRoomReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `RemoveUserFromGateRoomReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeUserFromGateRoomReqDescriptor = $convert.base64Decode(
    'ChlSZW1vdmVVc2VyRnJvbUdhdGVSb29tUmVxEhYKBnVzZXJJZBgBIAEoA1IGdXNlcklkEhgKB2'
    'dyb3VwSWQYAiABKANSB2dyb3VwSWQ=');

