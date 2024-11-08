//
//  Generated code. Do not modify.
//  source: pb_pub/comm.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cLIENT_RUN_ENV_TYPEDescriptor instead')
const CLIENT_RUN_ENV_TYPE$json = {
  '1': 'CLIENT_RUN_ENV_TYPE',
  '2': [
    {'1': 'ANDROID', '2': 0},
    {'1': 'IOS', '2': 1},
    {'1': 'MAKOS', '2': 2},
    {'1': 'WINDOWS', '2': 3},
    {'1': 'LINUX', '2': 4},
    {'1': 'LINUX_DEB', '2': 5},
    {'1': 'PREV6', '2': 6},
    {'1': 'PREV7', '2': 7},
    {'1': 'PREV8', '2': 8},
  ],
};

/// Descriptor for `CLIENT_RUN_ENV_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cLIENT_RUN_ENV_TYPEDescriptor = $convert.base64Decode(
    'ChNDTElFTlRfUlVOX0VOVl9UWVBFEgsKB0FORFJPSUQQABIHCgNJT1MQARIJCgVNQUtPUxACEg'
    'sKB1dJTkRPV1MQAxIJCgVMSU5VWBAEEg0KCUxJTlVYX0RFQhAFEgkKBVBSRVY2EAYSCQoFUFJF'
    'VjcQBxIJCgVQUkVWOBAI');

@$core.Deprecated('Use pCD_EXP_KEYDescriptor instead')
const PCD_EXP_KEY$json = {
  '1': 'PCD_EXP_KEY',
  '2': [
    {'1': 'PCD_EXP_KEY_BEGIN', '2': 0},
    {'1': 'GROUP_MSG_STATUS', '2': 1000},
  ],
};

/// Descriptor for `PCD_EXP_KEY`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pCD_EXP_KEYDescriptor = $convert.base64Decode(
    'CgtQQ0RfRVhQX0tFWRIVChFQQ0RfRVhQX0tFWV9CRUdJThAAEhUKEEdST1VQX01TR19TVEFUVV'
    'MQ6Ac=');

@$core.Deprecated('Use cLIENT_TYPEDescriptor instead')
const CLIENT_TYPE$json = {
  '1': 'CLIENT_TYPE',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'PHONE', '2': 1},
    {'1': 'H5', '2': 2},
    {'1': 'PC', '2': 3},
    {'1': 'SERVER', '2': 100},
    {'1': 'ALL', '2': 1000},
  ],
};

/// Descriptor for `CLIENT_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cLIENT_TYPEDescriptor = $convert.base64Decode(
    'CgtDTElFTlRfVFlQRRIICgROT05FEAASCQoFUEhPTkUQARIGCgJINRACEgYKAlBDEAMSCgoGU0'
    'VSVkVSEGQSCAoDQUxMEOgH');

@$core.Deprecated('Use pushMsgClientActionTypeDescriptor instead')
const PushMsgClientActionType$json = {
  '1': 'PushMsgClientActionType',
  '2': [
    {'1': 'CLIENT_ACTION_UNKNOWN', '2': 0},
    {'1': 'CLIENT_ACTION_LIVE_START', '2': 1},
    {'1': 'CLIENT_ACTION_PRIVATE_CHAT', '2': 2},
    {'1': 'CLIENT_ACTION_KE_FU', '2': 3},
  ],
};

/// Descriptor for `PushMsgClientActionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pushMsgClientActionTypeDescriptor = $convert.base64Decode(
    'ChdQdXNoTXNnQ2xpZW50QWN0aW9uVHlwZRIZChVDTElFTlRfQUNUSU9OX1VOS05PV04QABIcCh'
    'hDTElFTlRfQUNUSU9OX0xJVkVfU1RBUlQQARIeChpDTElFTlRfQUNUSU9OX1BSSVZBVEVfQ0hB'
    'VBACEhcKE0NMSUVOVF9BQ1RJT05fS0VfRlUQAw==');

@$core.Deprecated('Use textChatTypeDescriptor instead')
const TextChatType$json = {
  '1': 'TextChatType',
  '2': [
    {'1': 'TEXT', '2': 0},
    {'1': 'PIC', '2': 1},
    {'1': 'VIDEO', '2': 2},
    {'1': 'AUDIO', '2': 3},
    {'1': 'GIFT', '2': 4},
    {'1': 'PACT', '2': 5},
    {'1': 'VIDEO_INVITE', '2': 6},
    {'1': 'CUSTOMIZE', '2': 7},
    {'1': 'FILE', '2': 8},
    {'1': 'RECALL', '2': 9},
    {'1': 'RED_PACKET', '2': 10},
  ],
};

/// Descriptor for `TextChatType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textChatTypeDescriptor = $convert.base64Decode(
    'CgxUZXh0Q2hhdFR5cGUSCAoEVEVYVBAAEgcKA1BJQxABEgkKBVZJREVPEAISCQoFQVVESU8QAx'
    'IICgRHSUZUEAQSCAoEUEFDVBAFEhAKDFZJREVPX0lOVklURRAGEg0KCUNVU1RPTUlaRRAHEggK'
    'BEZJTEUQCBIKCgZSRUNBTEwQCRIOCgpSRURfUEFDS0VUEAo=');

@$core.Deprecated('Use mSG_STATEDescriptor instead')
const MSG_STATE$json = {
  '1': 'MSG_STATE',
  '2': [
    {'1': 'INIT', '2': 0},
    {'1': 'FAULT', '2': 1},
    {'1': 'SEND', '2': 2},
    {'1': 'RECEIVED', '2': 3},
    {'1': 'READ', '2': 4},
    {'1': 'END', '2': 5},
    {'1': 'IN_BLACK_LIST', '2': 6},
    {'1': 'LIMITED', '2': 7},
  ],
};

/// Descriptor for `MSG_STATE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mSG_STATEDescriptor = $convert.base64Decode(
    'CglNU0dfU1RBVEUSCAoESU5JVBAAEgkKBUZBVUxUEAESCAoEU0VORBACEgwKCFJFQ0VJVkVEEA'
    'MSCAoEUkVBRBAEEgcKA0VORBAFEhEKDUlOX0JMQUNLX0xJU1QQBhILCgdMSU1JVEVEEAc=');

@$core.Deprecated('Use mODEL_TYPEDescriptor instead')
const MODEL_TYPE$json = {
  '1': 'MODEL_TYPE',
  '2': [
    {'1': 'NIL', '2': 0},
    {'1': 'OPPO', '2': 1},
    {'1': 'HUAWEI', '2': 2},
    {'1': 'XIAOMI', '2': 3},
    {'1': 'MEIZU', '2': 4},
    {'1': 'APPSTORE', '2': 5},
    {'1': 'VIVO', '2': 6},
    {'1': 'JIGUANG', '2': 7},
    {'1': 'FCM', '2': 8},
    {'1': 'RONGYAO', '2': 9},
  ],
};

/// Descriptor for `MODEL_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mODEL_TYPEDescriptor = $convert.base64Decode(
    'CgpNT0RFTF9UWVBFEgcKA05JTBAAEggKBE9QUE8QARIKCgZIVUFXRUkQAhIKCgZYSUFPTUkQAx'
    'IJCgVNRUlaVRAEEgwKCEFQUFNUT1JFEAUSCAoEVklWTxAGEgsKB0pJR1VBTkcQBxIHCgNGQ00Q'
    'CBILCgdST05HWUFPEAk=');

@$core.Deprecated('Use hEART_BEAT_TYPEDescriptor instead')
const HEART_BEAT_TYPE$json = {
  '1': 'HEART_BEAT_TYPE',
  '2': [
    {'1': 'COMM', '2': 0},
    {'1': 'LIVE_ROOM', '2': 1},
    {'1': 'CALL_SCENE', '2': 2},
    {'1': 'MULTI_ANCHOR_HALL', '2': 3},
    {'1': 'TTK_GAME', '2': 4},
    {'1': 'LIVE_ROOM_VISITOR', '2': 5},
    {'1': 'GAME_SCENE', '2': 6},
  ],
};

/// Descriptor for `HEART_BEAT_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hEART_BEAT_TYPEDescriptor = $convert.base64Decode(
    'Cg9IRUFSVF9CRUFUX1RZUEUSCAoEQ09NTRAAEg0KCUxJVkVfUk9PTRABEg4KCkNBTExfU0NFTk'
    'UQAhIVChFNVUxUSV9BTkNIT1JfSEFMTBADEgwKCFRUS19HQU1FEAQSFQoRTElWRV9ST09NX1ZJ'
    'U0lUT1IQBRIOCgpHQU1FX1NDRU5FEAY=');

@$core.Deprecated('Use hEART_BEAT_MSG_STATEDescriptor instead')
const HEART_BEAT_MSG_STATE$json = {
  '1': 'HEART_BEAT_MSG_STATE',
  '2': [
    {'1': 'PING', '2': 0},
    {'1': 'PANG', '2': 1},
  ],
};

/// Descriptor for `HEART_BEAT_MSG_STATE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hEART_BEAT_MSG_STATEDescriptor = $convert.base64Decode(
    'ChRIRUFSVF9CRUFUX01TR19TVEFURRIICgRQSU5HEAASCAoEUEFORxAB');

@$core.Deprecated('Use uSER_STATE_TYPEDescriptor instead')
const USER_STATE_TYPE$json = {
  '1': 'USER_STATE_TYPE',
  '2': [
    {'1': 'USER_STATE_INIT', '2': 0},
    {'1': 'USER_STATE_AUTHING', '2': 1},
    {'1': 'USER_STATE_AUTHED', '2': 2},
    {'1': 'USER_STATE_OFFLINE', '2': 3},
  ],
};

/// Descriptor for `USER_STATE_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List uSER_STATE_TYPEDescriptor = $convert.base64Decode(
    'Cg9VU0VSX1NUQVRFX1RZUEUSEwoPVVNFUl9TVEFURV9JTklUEAASFgoSVVNFUl9TVEFURV9BVV'
    'RISU5HEAESFQoRVVNFUl9TVEFURV9BVVRIRUQQAhIWChJVU0VSX1NUQVRFX09GRkxJTkUQAw==');

@$core.Deprecated('Use oPERATIONDescriptor instead')
const OPERATION$json = {
  '1': 'OPERATION',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'ENTER', '2': 1},
    {'1': 'EXIT', '2': 2},
  ],
};

/// Descriptor for `OPERATION`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List oPERATIONDescriptor = $convert.base64Decode(
    'CglPUEVSQVRJT04SCwoHVU5LTk9XThAAEgkKBUVOVEVSEAESCAoERVhJVBAC');

@$core.Deprecated('Use sCENE_TYPEDescriptor instead')
const SCENE_TYPE$json = {
  '1': 'SCENE_TYPE',
  '2': [
    {'1': 'SCENE_TYPE_UNKNOWN', '2': 0},
    {'1': 'SCENE_TYPE_CALL_SCENE', '2': 1},
    {'1': 'SCENE_TYPE_JOIN_LIVE', '2': 2},
  ],
};

/// Descriptor for `SCENE_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sCENE_TYPEDescriptor = $convert.base64Decode(
    'CgpTQ0VORV9UWVBFEhYKElNDRU5FX1RZUEVfVU5LTk9XThAAEhkKFVNDRU5FX1RZUEVfQ0FMTF'
    '9TQ0VORRABEhgKFFNDRU5FX1RZUEVfSk9JTl9MSVZFEAI=');

@$core.Deprecated('Use sendTypeDescriptor instead')
const SendType$json = {
  '1': 'SendType',
  '2': [
    {'1': 'TO_SERVICE', '2': 0},
    {'1': 'TO_AIM_USER', '2': 1},
    {'1': 'TO_ALL_USER', '2': 2},
    {'1': 'TO_AIM_GROUP', '2': 3},
    {'1': 'TO_ALL_GROUP', '2': 4},
  ],
};

/// Descriptor for `SendType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sendTypeDescriptor = $convert.base64Decode(
    'CghTZW5kVHlwZRIOCgpUT19TRVJWSUNFEAASDwoLVE9fQUlNX1VTRVIQARIPCgtUT19BTExfVV'
    'NFUhACEhAKDFRPX0FJTV9HUk9VUBADEhAKDFRPX0FMTF9HUk9VUBAE');

@$core.Deprecated('Use pBCommDataDescriptor instead')
const PBCommData$json = {
  '1': 'PBCommData',
  '2': [
    {'1': 'needReadReceipt', '3': 1, '4': 1, '5': 8, '10': 'needReadReceipt'},
    {'1': 'msgSn', '3': 2, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'srcId', '3': 3, '4': 1, '5': 3, '10': 'srcId'},
    {'1': 'aimId', '3': 4, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'time', '3': 5, '4': 1, '5': 3, '10': 'time'},
    {'1': 'exp', '3': 6, '4': 3, '5': 11, '6': '.pb_pub.PBCommData.ExpEntry', '10': 'exp'},
    {'1': 'needPushMsg', '3': 7, '4': 1, '5': 8, '10': 'needPushMsg'},
    {'1': 'serviceType', '3': 8, '4': 1, '5': 14, '6': '.pb_pub.Service', '10': 'serviceType'},
    {'1': 'appId', '3': 9, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'appUserId', '3': 10, '4': 1, '5': 9, '10': 'appUserId'},
    {'1': 'traceId', '3': 11, '4': 1, '5': 9, '10': 'traceId'},
    {'1': 'srcClientType', '3': 12, '4': 1, '5': 14, '6': '.pb_pub.CLIENT_TYPE', '10': 'srcClientType'},
    {'1': 'aimClientType', '3': 13, '4': 1, '5': 14, '6': '.pb_pub.CLIENT_TYPE', '10': 'aimClientType'},
    {'1': 'groupId', '3': 14, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'atList', '3': 15, '4': 3, '5': 3, '10': 'atList'},
    {'1': 'syncToSrc', '3': 16, '4': 1, '5': 8, '10': 'syncToSrc'},
    {'1': 'businessId', '3': 17, '4': 1, '5': 5, '10': 'businessId'},
    {'1': 'serial', '3': 18, '4': 1, '5': 3, '10': 'serial'},
    {'1': 'deriveTree', '3': 19, '4': 1, '5': 9, '10': 'deriveTree'},
    {'1': 'userSourceVersion', '3': 20, '4': 1, '5': 5, '10': 'userSourceVersion'},
    {'1': 'groupMsgSn', '3': 21, '4': 1, '5': 3, '10': 'groupMsgSn'},
    {'1': 'periodOfValidity', '3': 22, '4': 1, '5': 3, '10': 'periodOfValidity'},
  ],
  '3': [PBCommData_ExpEntry$json],
};

@$core.Deprecated('Use pBCommDataDescriptor instead')
const PBCommData_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PBCommData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBCommDataDescriptor = $convert.base64Decode(
    'CgpQQkNvbW1EYXRhEigKD25lZWRSZWFkUmVjZWlwdBgBIAEoCFIPbmVlZFJlYWRSZWNlaXB0Eh'
    'QKBW1zZ1NuGAIgASgDUgVtc2dTbhIUCgVzcmNJZBgDIAEoA1IFc3JjSWQSFAoFYWltSWQYBCAB'
    'KANSBWFpbUlkEhIKBHRpbWUYBSABKANSBHRpbWUSLQoDZXhwGAYgAygLMhsucGJfcHViLlBCQ2'
    '9tbURhdGEuRXhwRW50cnlSA2V4cBIgCgtuZWVkUHVzaE1zZxgHIAEoCFILbmVlZFB1c2hNc2cS'
    'MQoLc2VydmljZVR5cGUYCCABKA4yDy5wYl9wdWIuU2VydmljZVILc2VydmljZVR5cGUSFAoFYX'
    'BwSWQYCSABKANSBWFwcElkEhwKCWFwcFVzZXJJZBgKIAEoCVIJYXBwVXNlcklkEhgKB3RyYWNl'
    'SWQYCyABKAlSB3RyYWNlSWQSOQoNc3JjQ2xpZW50VHlwZRgMIAEoDjITLnBiX3B1Yi5DTElFTl'
    'RfVFlQRVINc3JjQ2xpZW50VHlwZRI5Cg1haW1DbGllbnRUeXBlGA0gASgOMhMucGJfcHViLkNM'
    'SUVOVF9UWVBFUg1haW1DbGllbnRUeXBlEhgKB2dyb3VwSWQYDiABKANSB2dyb3VwSWQSFgoGYX'
    'RMaXN0GA8gAygDUgZhdExpc3QSHAoJc3luY1RvU3JjGBAgASgIUglzeW5jVG9TcmMSHgoKYnVz'
    'aW5lc3NJZBgRIAEoBVIKYnVzaW5lc3NJZBIWCgZzZXJpYWwYEiABKANSBnNlcmlhbBIeCgpkZX'
    'JpdmVUcmVlGBMgASgJUgpkZXJpdmVUcmVlEiwKEXVzZXJTb3VyY2VWZXJzaW9uGBQgASgFUhF1'
    'c2VyU291cmNlVmVyc2lvbhIeCgpncm91cE1zZ1NuGBUgASgDUgpncm91cE1zZ1NuEioKEHBlcm'
    'lvZE9mVmFsaWRpdHkYFiABKANSEHBlcmlvZE9mVmFsaWRpdHkaNgoIRXhwRW50cnkSEAoDa2V5'
    'GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use pBMessageDescriptor instead')
const PBMessage$json = {
  '1': 'PBMessage',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    {'1': 'checkCode', '3': 2, '4': 1, '5': 13, '10': 'checkCode'},
    {'1': 'errCode', '3': 3, '4': 1, '5': 13, '10': 'errCode'},
    {'1': 'service', '3': 4, '4': 1, '5': 9, '10': 'service'},
    {'1': 'hashKey', '3': 5, '4': 1, '5': 9, '10': 'hashKey'},
    {'1': 'pbCommData', '3': 6, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'opts', '3': 7, '4': 3, '5': 11, '6': '.pb_pub.PBMessage.OptsEntry', '10': 'opts'},
    {'1': 'pbName', '3': 8, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 9, '4': 1, '5': 12, '10': 'pbData'},
    {'1': 'errDesc', '3': 10, '4': 1, '5': 9, '10': 'errDesc'},
  ],
  '3': [PBMessage_OptsEntry$json],
};

@$core.Deprecated('Use pBMessageDescriptor instead')
const PBMessage_OptsEntry$json = {
  '1': 'OptsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PBMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pBMessageDescriptor = $convert.base64Decode(
    'CglQQk1lc3NhZ2USGAoHdmVyc2lvbhgBIAEoDVIHdmVyc2lvbhIcCgljaGVja0NvZGUYAiABKA'
    '1SCWNoZWNrQ29kZRIYCgdlcnJDb2RlGAMgASgNUgdlcnJDb2RlEhgKB3NlcnZpY2UYBCABKAlS'
    'B3NlcnZpY2USGAoHaGFzaEtleRgFIAEoCVIHaGFzaEtleRIyCgpwYkNvbW1EYXRhGAYgASgLMh'
    'IucGJfcHViLlBCQ29tbURhdGFSCnBiQ29tbURhdGESLwoEb3B0cxgHIAMoCzIbLnBiX3B1Yi5Q'
    'Qk1lc3NhZ2UuT3B0c0VudHJ5UgRvcHRzEhYKBnBiTmFtZRgIIAEoCVIGcGJOYW1lEhYKBnBiRG'
    'F0YRgJIAEoDFIGcGJEYXRhEhgKB2VyckRlc2MYCiABKAlSB2VyckRlc2MaNwoJT3B0c0VudHJ5'
    'EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use commCallReqDescriptor instead')
const CommCallReq$json = {
  '1': 'CommCallReq',
  '2': [
    {'1': 'params', '3': 1, '4': 3, '5': 11, '6': '.pb_pub.CommCallReq.ParamsEntry', '10': 'params'},
    {'1': 'pbName', '3': 2, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 3, '4': 1, '5': 12, '10': 'pbData'},
  ],
  '3': [CommCallReq_ParamsEntry$json],
};

@$core.Deprecated('Use commCallReqDescriptor instead')
const CommCallReq_ParamsEntry$json = {
  '1': 'ParamsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CommCallReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commCallReqDescriptor = $convert.base64Decode(
    'CgtDb21tQ2FsbFJlcRI3CgZwYXJhbXMYASADKAsyHy5wYl9wdWIuQ29tbUNhbGxSZXEuUGFyYW'
    '1zRW50cnlSBnBhcmFtcxIWCgZwYk5hbWUYAiABKAlSBnBiTmFtZRIWCgZwYkRhdGEYAyABKAxS'
    'BnBiRGF0YRo5CgtQYXJhbXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCV'
    'IFdmFsdWU6AjgB');

@$core.Deprecated('Use commCallRspDescriptor instead')
const CommCallRsp$json = {
  '1': 'CommCallRsp',
  '2': [
    {'1': 'errCode', '3': 1, '4': 1, '5': 5, '10': 'errCode'},
    {'1': 'params', '3': 2, '4': 3, '5': 11, '6': '.pb_pub.CommCallRsp.ParamsEntry', '10': 'params'},
    {'1': 'pbName', '3': 3, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 4, '4': 1, '5': 12, '10': 'pbData'},
    {'1': 'errDesc', '3': 5, '4': 1, '5': 9, '10': 'errDesc'},
    {'1': 'status', '3': 6, '4': 1, '5': 11, '6': '.google.rpc.Status', '10': 'status'},
  ],
  '3': [CommCallRsp_ParamsEntry$json],
};

@$core.Deprecated('Use commCallRspDescriptor instead')
const CommCallRsp_ParamsEntry$json = {
  '1': 'ParamsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CommCallRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commCallRspDescriptor = $convert.base64Decode(
    'CgtDb21tQ2FsbFJzcBIYCgdlcnJDb2RlGAEgASgFUgdlcnJDb2RlEjcKBnBhcmFtcxgCIAMoCz'
    'IfLnBiX3B1Yi5Db21tQ2FsbFJzcC5QYXJhbXNFbnRyeVIGcGFyYW1zEhYKBnBiTmFtZRgDIAEo'
    'CVIGcGJOYW1lEhYKBnBiRGF0YRgEIAEoDFIGcGJEYXRhEhgKB2VyckRlc2MYBSABKAlSB2Vyck'
    'Rlc2MSKgoGc3RhdHVzGAYgASgLMhIuZ29vZ2xlLnJwYy5TdGF0dXNSBnN0YXR1cxo5CgtQYXJh'
    'bXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use commNatsMsgDescriptor instead')
const CommNatsMsg$json = {
  '1': 'CommNatsMsg',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'groupMsgSn', '3': 2, '4': 1, '5': 3, '10': 'groupMsgSn'},
    {'1': 'pbName', '3': 3, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 4, '4': 1, '5': 12, '10': 'pbData'},
  ],
};

/// Descriptor for `CommNatsMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commNatsMsgDescriptor = $convert.base64Decode(
    'CgtDb21tTmF0c01zZxIyCgpwYkNvbW1EYXRhGAEgASgLMhIucGJfcHViLlBCQ29tbURhdGFSCn'
    'BiQ29tbURhdGESHgoKZ3JvdXBNc2dTbhgCIAEoA1IKZ3JvdXBNc2dTbhIWCgZwYk5hbWUYAyAB'
    'KAlSBnBiTmFtZRIWCgZwYkRhdGEYBCABKAxSBnBiRGF0YQ==');

@$core.Deprecated('Use msgReceiptDescriptor instead')
const MsgReceipt$json = {
  '1': 'MsgReceipt',
  '2': [
    {'1': 'isAtMe', '3': 1, '4': 1, '5': 8, '10': 'isAtMe'},
    {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.MSG_STATE', '10': 'state'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
  ],
};

/// Descriptor for `MsgReceipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgReceiptDescriptor = $convert.base64Decode(
    'CgpNc2dSZWNlaXB0EhYKBmlzQXRNZRgBIAEoCFIGaXNBdE1lEicKBXN0YXRlGAIgASgOMhEucG'
    'JfcHViLk1TR19TVEFURVIFc3RhdGUSEgoEdGltZRgDIAEoA1IEdGltZQ==');

@$core.Deprecated('Use commRspDescriptor instead')
const CommRsp$json = {
  '1': 'CommRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.google.rpc.Status', '10': 'status'},
  ],
};

/// Descriptor for `CommRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commRspDescriptor = $convert.base64Decode(
    'CgdDb21tUnNwEicKBnJlc3VsdBgBIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgZyZXN1bHQSKgoGc3'
    'RhdHVzGAIgASgLMhIuZ29vZ2xlLnJwYy5TdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'nick_name', '3': 2, '4': 1, '5': 9, '10': 'nickName'},
  ],
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxIXCgd1c2VyX2lkGAEgASgDUgZ1c2VySWQSGwoJbmlja19uYW1lGAIgASgJUg'
    'huaWNrTmFtZQ==');

@$core.Deprecated('Use heartBeatDescriptor instead')
const HeartBeat$json = {
  '1': 'HeartBeat',
  '2': [
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.HEART_BEAT_TYPE', '10': 'type'},
    {'1': 'state', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.HEART_BEAT_MSG_STATE', '10': 'state'},
    {'1': 'gateAddr', '3': 4, '4': 1, '5': 9, '10': 'gateAddr'},
  ],
};

/// Descriptor for `HeartBeat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heartBeatDescriptor = $convert.base64Decode(
    'CglIZWFydEJlYXQSKwoEdHlwZRgCIAEoDjIXLnBiX3B1Yi5IRUFSVF9CRUFUX1RZUEVSBHR5cG'
    'USMgoFc3RhdGUYAyABKA4yHC5wYl9wdWIuSEVBUlRfQkVBVF9NU0dfU1RBVEVSBXN0YXRlEhoK'
    'CGdhdGVBZGRyGAQgASgJUghnYXRlQWRkcg==');

@$core.Deprecated('Use enterRoomReqDescriptor instead')
const EnterRoomReq$json = {
  '1': 'EnterRoomReq',
  '2': [
    {'1': 'userType', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.EnterRoomReq.UserType', '10': 'userType'},
  ],
  '4': [EnterRoomReq_UserType$json],
};

@$core.Deprecated('Use enterRoomReqDescriptor instead')
const EnterRoomReq_UserType$json = {
  '1': 'UserType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'REGULAR', '2': 1},
    {'1': 'VISITOR', '2': 2},
  ],
};

/// Descriptor for `EnterRoomReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enterRoomReqDescriptor = $convert.base64Decode(
    'CgxFbnRlclJvb21SZXESOQoIdXNlclR5cGUYASABKA4yHS5wYl9wdWIuRW50ZXJSb29tUmVxLl'
    'VzZXJUeXBlUgh1c2VyVHlwZSIxCghVc2VyVHlwZRILCgdVTktOT1dOEAASCwoHUkVHVUxBUhAB'
    'EgsKB1ZJU0lUT1IQAg==');

@$core.Deprecated('Use enterRoomRspDescriptor instead')
const EnterRoomRsp$json = {
  '1': 'EnterRoomRsp',
};

/// Descriptor for `EnterRoomRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enterRoomRspDescriptor = $convert.base64Decode(
    'CgxFbnRlclJvb21Sc3A=');

@$core.Deprecated('Use exitRoomReqDescriptor instead')
const ExitRoomReq$json = {
  '1': 'ExitRoomReq',
};

/// Descriptor for `ExitRoomReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exitRoomReqDescriptor = $convert.base64Decode(
    'CgtFeGl0Um9vbVJlcQ==');

@$core.Deprecated('Use exitRoomRspDescriptor instead')
const ExitRoomRsp$json = {
  '1': 'ExitRoomRsp',
};

/// Descriptor for `ExitRoomRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exitRoomRspDescriptor = $convert.base64Decode(
    'CgtFeGl0Um9vbVJzcA==');

@$core.Deprecated('Use clientBFSwitchReqDescriptor instead')
const ClientBFSwitchReq$json = {
  '1': 'ClientBFSwitchReq',
  '2': [
    {'1': 'switchToBack', '3': 1, '4': 1, '5': 8, '10': 'switchToBack'},
  ],
};

/// Descriptor for `ClientBFSwitchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientBFSwitchReqDescriptor = $convert.base64Decode(
    'ChFDbGllbnRCRlN3aXRjaFJlcRIiCgxzd2l0Y2hUb0JhY2sYASABKAhSDHN3aXRjaFRvQmFjaw'
    '==');

@$core.Deprecated('Use clientBFSwitchRspDescriptor instead')
const ClientBFSwitchRsp$json = {
  '1': 'ClientBFSwitchRsp',
  '2': [
    {'1': 'switchToBack', '3': 1, '4': 1, '5': 8, '10': 'switchToBack'},
  ],
};

/// Descriptor for `ClientBFSwitchRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientBFSwitchRspDescriptor = $convert.base64Decode(
    'ChFDbGllbnRCRlN3aXRjaFJzcBIiCgxzd2l0Y2hUb0JhY2sYASABKAhSDHN3aXRjaFRvQmFjaw'
    '==');

@$core.Deprecated('Use userOperationRoomDescriptor instead')
const userOperationRoom$json = {
  '1': 'userOperationRoom',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'roomId', '3': 2, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
    {'1': 'operation', '3': 4, '4': 1, '5': 14, '6': '.pb_pub.OPERATION', '10': 'operation'},
    {'1': 'timeLen', '3': 5, '4': 1, '5': 3, '10': 'timeLen'},
  ],
};

/// Descriptor for `userOperationRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userOperationRoomDescriptor = $convert.base64Decode(
    'ChF1c2VyT3BlcmF0aW9uUm9vbRIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIWCgZyb29tSWQYAi'
    'ABKANSBnJvb21JZBISCgR0aW1lGAMgASgDUgR0aW1lEi8KCW9wZXJhdGlvbhgEIAEoDjIRLnBi'
    'X3B1Yi5PUEVSQVRJT05SCW9wZXJhdGlvbhIYCgd0aW1lTGVuGAUgASgDUgd0aW1lTGVu');

@$core.Deprecated('Use giftDescriptor instead')
const Gift$json = {
  '1': 'Gift',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'giftId', '3': 2, '4': 1, '5': 3, '10': 'giftId'},
    {'1': 'actorId', '3': 3, '4': 1, '5': 3, '10': 'actorId'},
    {'1': 'giftNumber', '3': 4, '4': 1, '5': 3, '10': 'giftNumber'},
    {'1': 'senderName', '3': 6, '4': 1, '5': 9, '10': 'senderName'},
    {'1': 'targetName', '3': 7, '4': 1, '5': 9, '10': 'targetName'},
    {'1': 'headImg', '3': 8, '4': 1, '5': 9, '10': 'headImg'},
    {'1': 'level', '3': 9, '4': 1, '5': 5, '10': 'level'},
    {'1': 'batteryType', '3': 10, '4': 1, '5': 5, '10': 'batteryType'},
    {'1': 'batteryTypeList', '3': 11, '4': 3, '5': 3, '10': 'batteryTypeList'},
    {'1': 'levelPrivilegeOpen', '3': 12, '4': 1, '5': 8, '10': 'levelPrivilegeOpen'},
    {'1': 'giftConfLastUpdateTime', '3': 13, '4': 1, '5': 3, '10': 'giftConfLastUpdateTime'},
    {'1': 'exp', '3': 14, '4': 3, '5': 11, '6': '.pb_pub.Gift.ExpEntry', '10': 'exp'},
    {'1': 'giftType', '3': 15, '4': 1, '5': 5, '10': 'giftType'},
  ],
  '3': [Gift_ExpEntry$json],
};

@$core.Deprecated('Use giftDescriptor instead')
const Gift_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Gift`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List giftDescriptor = $convert.base64Decode(
    'CgRHaWZ0EhYKBnVzZXJJZBgBIAEoA1IGdXNlcklkEhYKBmdpZnRJZBgCIAEoA1IGZ2lmdElkEh'
    'gKB2FjdG9ySWQYAyABKANSB2FjdG9ySWQSHgoKZ2lmdE51bWJlchgEIAEoA1IKZ2lmdE51bWJl'
    'chIeCgpzZW5kZXJOYW1lGAYgASgJUgpzZW5kZXJOYW1lEh4KCnRhcmdldE5hbWUYByABKAlSCn'
    'RhcmdldE5hbWUSGAoHaGVhZEltZxgIIAEoCVIHaGVhZEltZxIUCgVsZXZlbBgJIAEoBVIFbGV2'
    'ZWwSIAoLYmF0dGVyeVR5cGUYCiABKAVSC2JhdHRlcnlUeXBlEigKD2JhdHRlcnlUeXBlTGlzdB'
    'gLIAMoA1IPYmF0dGVyeVR5cGVMaXN0Ei4KEmxldmVsUHJpdmlsZWdlT3BlbhgMIAEoCFISbGV2'
    'ZWxQcml2aWxlZ2VPcGVuEjYKFmdpZnRDb25mTGFzdFVwZGF0ZVRpbWUYDSABKANSFmdpZnRDb2'
    '5mTGFzdFVwZGF0ZVRpbWUSJwoDZXhwGA4gAygLMhUucGJfcHViLkdpZnQuRXhwRW50cnlSA2V4'
    'cBIaCghnaWZ0VHlwZRgPIAEoBVIIZ2lmdFR5cGUaNgoIRXhwRW50cnkSEAoDa2V5GAEgASgJUg'
    'NrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use logonSuccessNotifyNsqDescriptor instead')
const LogonSuccessNotifyNsq$json = {
  '1': 'LogonSuccessNotifyNsq',
  '2': [
    {'1': 'MsgSn', '3': 1, '4': 1, '5': 3, '10': 'MsgSn'},
    {'1': 'UserId', '3': 2, '4': 1, '5': 3, '10': 'UserId'},
    {'1': 'Time', '3': 3, '4': 1, '5': 3, '10': 'Time'},
  ],
};

/// Descriptor for `LogonSuccessNotifyNsq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logonSuccessNotifyNsqDescriptor = $convert.base64Decode(
    'ChVMb2dvblN1Y2Nlc3NOb3RpZnlOc3ESFAoFTXNnU24YASABKANSBU1zZ1NuEhYKBlVzZXJJZB'
    'gCIAEoA1IGVXNlcklkEhIKBFRpbWUYAyABKANSBFRpbWU=');

@$core.Deprecated('Use needSceneRecoverNotifyDescriptor instead')
const NeedSceneRecoverNotify$json = {
  '1': 'NeedSceneRecoverNotify',
  '2': [
    {'1': 'ServiceType', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.Service', '10': 'ServiceType'},
    {'1': 'Exp', '3': 2, '4': 3, '5': 11, '6': '.pb_pub.NeedSceneRecoverNotify.ExpEntry', '10': 'Exp'},
  ],
  '3': [NeedSceneRecoverNotify_ExpEntry$json],
};

@$core.Deprecated('Use needSceneRecoverNotifyDescriptor instead')
const NeedSceneRecoverNotify_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `NeedSceneRecoverNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List needSceneRecoverNotifyDescriptor = $convert.base64Decode(
    'ChZOZWVkU2NlbmVSZWNvdmVyTm90aWZ5EjEKC1NlcnZpY2VUeXBlGAEgASgOMg8ucGJfcHViLl'
    'NlcnZpY2VSC1NlcnZpY2VUeXBlEjkKA0V4cBgCIAMoCzInLnBiX3B1Yi5OZWVkU2NlbmVSZWNv'
    'dmVyTm90aWZ5LkV4cEVudHJ5UgNFeHAaNgoIRXhwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFA'
    'oFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use userSceneDescriptor instead')
const UserScene$json = {
  '1': 'UserScene',
  '2': [
    {'1': 'UserId', '3': 1, '4': 1, '5': 3, '10': 'UserId'},
    {'1': 'SceneId', '3': 2, '4': 1, '5': 3, '10': 'SceneId'},
    {'1': 'SceneType', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.SCENE_TYPE', '10': 'SceneType'},
  ],
};

/// Descriptor for `UserScene`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSceneDescriptor = $convert.base64Decode(
    'CglVc2VyU2NlbmUSFgoGVXNlcklkGAEgASgDUgZVc2VySWQSGAoHU2NlbmVJZBgCIAEoA1IHU2'
    'NlbmVJZBIwCglTY2VuZVR5cGUYAyABKA4yEi5wYl9wdWIuU0NFTkVfVFlQRVIJU2NlbmVUeXBl');

@$core.Deprecated('Use jSONMessageDescriptor instead')
const JSONMessage$json = {
  '1': 'JSONMessage',
  '2': [
    {'1': 'hashKey', '3': 1, '4': 1, '5': 9, '10': 'hashKey'},
    {'1': 'secret', '3': 2, '4': 1, '5': 9, '10': 'secret'},
    {'1': 'pbCommData', '3': 3, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'messageName', '3': 4, '4': 1, '5': 9, '10': 'messageName'},
    {'1': 'messageData', '3': 5, '4': 1, '5': 9, '10': 'messageData'},
    {'1': 'sendType', '3': 6, '4': 1, '5': 14, '6': '.pb_pub.SendType', '10': 'sendType'},
  ],
};

/// Descriptor for `JSONMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONMessageDescriptor = $convert.base64Decode(
    'CgtKU09OTWVzc2FnZRIYCgdoYXNoS2V5GAEgASgJUgdoYXNoS2V5EhYKBnNlY3JldBgCIAEoCV'
    'IGc2VjcmV0EjIKCnBiQ29tbURhdGEYAyABKAsyEi5wYl9wdWIuUEJDb21tRGF0YVIKcGJDb21t'
    'RGF0YRIgCgttZXNzYWdlTmFtZRgEIAEoCVILbWVzc2FnZU5hbWUSIAoLbWVzc2FnZURhdGEYBS'
    'ABKAlSC21lc3NhZ2VEYXRhEiwKCHNlbmRUeXBlGAYgASgOMhAucGJfcHViLlNlbmRUeXBlUghz'
    'ZW5kVHlwZQ==');

@$core.Deprecated('Use jSONCallReqDescriptor instead')
const JSONCallReq$json = {
  '1': 'JSONCallReq',
  '2': [
    {'1': 'messageName', '3': 3, '4': 1, '5': 9, '10': 'messageName'},
    {'1': 'messageData', '3': 4, '4': 1, '5': 12, '10': 'messageData'},
  ],
};

/// Descriptor for `JSONCallReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONCallReqDescriptor = $convert.base64Decode(
    'CgtKU09OQ2FsbFJlcRIgCgttZXNzYWdlTmFtZRgDIAEoCVILbWVzc2FnZU5hbWUSIAoLbWVzc2'
    'FnZURhdGEYBCABKAxSC21lc3NhZ2VEYXRh');

@$core.Deprecated('Use jSONCallRspDescriptor instead')
const JSONCallRsp$json = {
  '1': 'JSONCallRsp',
  '2': [
    {'1': 'errCode', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'errCode'},
    {'1': 'errDesc', '3': 2, '4': 1, '5': 9, '10': 'errDesc'},
    {'1': 'messageData', '3': 3, '4': 1, '5': 12, '10': 'messageData'},
  ],
};

/// Descriptor for `JSONCallRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONCallRspDescriptor = $convert.base64Decode(
    'CgtKU09OQ2FsbFJzcBIpCgdlcnJDb2RlGAEgASgOMg8ucGJfcHViLkVyckNvZGVSB2VyckNvZG'
    'USGAoHZXJyRGVzYxgCIAEoCVIHZXJyRGVzYxIgCgttZXNzYWdlRGF0YRgDIAEoDFILbWVzc2Fn'
    'ZURhdGE=');

@$core.Deprecated('Use serverNotifyDescriptor instead')
const ServerNotify$json = {
  '1': 'ServerNotify',
  '2': [
    {'1': 'from', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ServerNotify.From', '10': 'from'},
    {'1': 'service', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.Service', '10': 'service'},
    {'1': 'errCode', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'errCode'},
    {'1': 'errDesc', '3': 4, '4': 1, '5': 9, '10': 'errDesc'},
    {'1': 'Exp', '3': 5, '4': 3, '5': 11, '6': '.pb_pub.ServerNotify.ExpEntry', '10': 'Exp'},
  ],
  '3': [ServerNotify_ExpEntry$json],
  '4': [ServerNotify_From$json],
};

@$core.Deprecated('Use serverNotifyDescriptor instead')
const ServerNotify_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use serverNotifyDescriptor instead')
const ServerNotify_From$json = {
  '1': 'From',
  '2': [
    {'1': 'IM', '2': 0},
    {'1': 'JAVA', '2': 1},
  ],
};

/// Descriptor for `ServerNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverNotifyDescriptor = $convert.base64Decode(
    'CgxTZXJ2ZXJOb3RpZnkSLQoEZnJvbRgBIAEoDjIZLnBiX3B1Yi5TZXJ2ZXJOb3RpZnkuRnJvbV'
    'IEZnJvbRIpCgdzZXJ2aWNlGAIgASgOMg8ucGJfcHViLlNlcnZpY2VSB3NlcnZpY2USKQoHZXJy'
    'Q29kZRgDIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgdlcnJDb2RlEhgKB2VyckRlc2MYBCABKAlSB2'
    'VyckRlc2MSLwoDRXhwGAUgAygLMh0ucGJfcHViLlNlcnZlck5vdGlmeS5FeHBFbnRyeVIDRXhw'
    'GjYKCEV4cEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOA'
    'EiGAoERnJvbRIGCgJJTRAAEggKBEpBVkEQAQ==');

@$core.Deprecated('Use msgRecallReqDescriptor instead')
const MsgRecallReq$json = {
  '1': 'MsgRecallReq',
  '2': [
    {'1': 'msgSn', '3': 1, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'msgOwnerId', '3': 2, '4': 1, '5': 3, '10': 'msgOwnerId'},
  ],
};

/// Descriptor for `MsgRecallReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRecallReqDescriptor = $convert.base64Decode(
    'CgxNc2dSZWNhbGxSZXESFAoFbXNnU24YASABKANSBW1zZ1NuEh4KCm1zZ093bmVySWQYAiABKA'
    'NSCm1zZ093bmVySWQ=');

@$core.Deprecated('Use msgRecallRspDescriptor instead')
const MsgRecallRsp$json = {
  '1': 'MsgRecallRsp',
  '2': [
    {'1': 'msgSn', '3': 1, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'msgOwnerId', '3': 2, '4': 1, '5': 3, '10': 'msgOwnerId'},
    {'1': 'result', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `MsgRecallRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRecallRspDescriptor = $convert.base64Decode(
    'CgxNc2dSZWNhbGxSc3ASFAoFbXNnU24YASABKANSBW1zZ1NuEh4KCm1zZ093bmVySWQYAiABKA'
    'NSCm1zZ093bmVySWQSJwoGcmVzdWx0GAMgASgOMg8ucGJfcHViLkVyckNvZGVSBnJlc3VsdA==');

@$core.Deprecated('Use msgChangeReqDescriptor instead')
const MsgChangeReq$json = {
  '1': 'MsgChangeReq',
  '2': [
    {'1': 'msgSn', '3': 1, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'changeData', '3': 2, '4': 3, '5': 11, '6': '.pb_pub.MsgChangeReq.ChangeDataEntry', '10': 'changeData'},
  ],
  '3': [MsgChangeReq_ChangeDataEntry$json],
};

@$core.Deprecated('Use msgChangeReqDescriptor instead')
const MsgChangeReq_ChangeDataEntry$json = {
  '1': 'ChangeDataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MsgChangeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgChangeReqDescriptor = $convert.base64Decode(
    'CgxNc2dDaGFuZ2VSZXESFAoFbXNnU24YASABKANSBW1zZ1NuEkQKCmNoYW5nZURhdGEYAiADKA'
    'syJC5wYl9wdWIuTXNnQ2hhbmdlUmVxLkNoYW5nZURhdGFFbnRyeVIKY2hhbmdlRGF0YRo9Cg9D'
    'aGFuZ2VEYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOg'
    'I4AQ==');

@$core.Deprecated('Use msgChangeRspDescriptor instead')
const MsgChangeRsp$json = {
  '1': 'MsgChangeRsp',
  '2': [
    {'1': 'msgSn', '3': 1, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'changeData', '3': 2, '4': 3, '5': 11, '6': '.pb_pub.MsgChangeRsp.ChangeDataEntry', '10': 'changeData'},
    {'1': 'result', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
  '3': [MsgChangeRsp_ChangeDataEntry$json],
};

@$core.Deprecated('Use msgChangeRspDescriptor instead')
const MsgChangeRsp_ChangeDataEntry$json = {
  '1': 'ChangeDataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MsgChangeRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgChangeRspDescriptor = $convert.base64Decode(
    'CgxNc2dDaGFuZ2VSc3ASFAoFbXNnU24YASABKANSBW1zZ1NuEkQKCmNoYW5nZURhdGEYAiADKA'
    'syJC5wYl9wdWIuTXNnQ2hhbmdlUnNwLkNoYW5nZURhdGFFbnRyeVIKY2hhbmdlRGF0YRInCgZy'
    'ZXN1bHQYAyABKA4yDy5wYl9wdWIuRXJyQ29kZVIGcmVzdWx0Gj0KD0NoYW5nZURhdGFFbnRyeR'
    'IQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use takeScreenShotNotifyDescriptor instead')
const TakeScreenShotNotify$json = {
  '1': 'TakeScreenShotNotify',
};

/// Descriptor for `TakeScreenShotNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List takeScreenShotNotifyDescriptor = $convert.base64Decode(
    'ChRUYWtlU2NyZWVuU2hvdE5vdGlmeQ==');

@$core.Deprecated('Use appClientInfoDescriptor instead')
const AppClientInfo$json = {
  '1': 'AppClientInfo',
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

/// Descriptor for `AppClientInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appClientInfoDescriptor = $convert.base64Decode(
    'Cg1BcHBDbGllbnRJbmZvEjAKCW1vZGVsVHlwZRgBIAEoDjISLnBiX3B1Yi5NT0RFTF9UWVBFUg'
    'ltb2RlbFR5cGUSIAoLcGFja2FnZU5hbWUYAiABKAlSC3BhY2thZ2VOYW1lEiQKDXN5c3RlbVZl'
    'cnNpb24YAyABKAlSDXN5c3RlbVZlcnNpb24SIAoLcGhvbmVNb2RlbHMYBCABKAlSC3Bob25lTW'
    '9kZWxzEh4KCmFwcFZlcnNpb24YBSABKAlSCmFwcFZlcnNpb24SHgoKc3lzdGVtTmFtZRgGIAEo'
    'CVIKc3lzdGVtTmFtZRIeCgppZGVudGlmaWVyGAcgASgJUgppZGVudGlmaWVyEhoKCHhDaGFubm'
    'VsGAggASgJUgh4Q2hhbm5lbBIsChFwdXNoUGxhdGZvcm1BcHBJZBgJIAEoCVIRcHVzaFBsYXRm'
    'b3JtQXBwSWQSEgoEb2RpZBgKIAEoCVIEb2RpZBISCgRhYWlkGAsgASgJUgRhYWlkEhQKBXRva2'
    'VuGAwgASgJUgV0b2tlbhIYCgdleHBpcmVkGA0gASgDUgdleHBpcmVk');

@$core.Deprecated('Use appLogDataDescriptor instead')
const AppLogData$json = {
  '1': 'AppLogData',
  '2': [
    {'1': 'pcd', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pcd'},
    {'1': 'appClientInfo', '3': 2, '4': 1, '5': 11, '6': '.pb_pub.AppClientInfo', '10': 'appClientInfo'},
    {'1': 'kvValues', '3': 3, '4': 3, '5': 11, '6': '.pb_pub.AppLogData.KvValuesEntry', '10': 'kvValues'},
  ],
  '3': [AppLogData_KvValuesEntry$json],
};

@$core.Deprecated('Use appLogDataDescriptor instead')
const AppLogData_KvValuesEntry$json = {
  '1': 'KvValuesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Value', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AppLogData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appLogDataDescriptor = $convert.base64Decode(
    'CgpBcHBMb2dEYXRhEiQKA3BjZBgBIAEoCzISLnBiX3B1Yi5QQkNvbW1EYXRhUgNwY2QSOwoNYX'
    'BwQ2xpZW50SW5mbxgCIAEoCzIVLnBiX3B1Yi5BcHBDbGllbnRJbmZvUg1hcHBDbGllbnRJbmZv'
    'EjwKCGt2VmFsdWVzGAMgAygLMiAucGJfcHViLkFwcExvZ0RhdGEuS3ZWYWx1ZXNFbnRyeVIIa3'
    'ZWYWx1ZXMaUwoNS3ZWYWx1ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIsCgV2YWx1ZRgCIAEo'
    'CzIWLmdvb2dsZS5wcm90b2J1Zi5WYWx1ZVIFdmFsdWU6AjgB');

