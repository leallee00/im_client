//
//  Generated code. Do not modify.
//  source: pb_pub/service_notify.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use yXLiveRoomNotifyTypeDescriptor instead')
const YXLiveRoomNotifyType$json = {
  '1': 'YXLiveRoomNotifyType',
  '2': [
    {'1': 'LIVE_START', '2': 0},
    {'1': 'LIVE_STOP', '2': 1},
    {'1': 'LIVEROOM_HEARTBEAT', '2': 2},
    {'1': 'ENTER_ROOM', '2': 3},
    {'1': 'EXIT_ROOM', '2': 4},
    {'1': 'UNSET_USER_KICKOUT_STATUS', '2': 5},
    {'1': 'LIVEROOM_PK_SCORE_UPDATE', '2': 6},
    {'1': 'PKPROP', '2': 7},
    {'1': 'SEND_GIFT', '2': 8},
    {'1': 'HOST_MODE', '2': 9},
    {'1': 'UPDATED_USER_INFO', '2': 10},
    {'1': 'ROOM_BARRAGE', '2': 11},
    {'1': 'ROOM_ACTION', '2': 12},
    {'1': 'UPDATE_ANCHOR_SCORE', '2': 13},
    {'1': 'UPDATE_BILLBOARD', '2': 14},
    {'1': 'KICK_USER_OUT', '2': 15},
    {'1': 'SEND_LIVE_GIFT', '2': 16},
    {'1': 'UPDATE_MULTI_ANCHOR_SCORE', '2': 17},
    {'1': 'INVESTOR_CHANGE', '2': 18},
    {'1': 'SECRET_GIFT', '2': 19},
    {'1': 'BACKGROUND_CHANGE', '2': 20},
    {'1': 'HAND_DRAWN_GIFT', '2': 21},
    {'1': 'TOP1_FANS_CHANGE_NOTITFY', '2': 22},
  ],
};

/// Descriptor for `YXLiveRoomNotifyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List yXLiveRoomNotifyTypeDescriptor = $convert.base64Decode(
    'ChRZWExpdmVSb29tTm90aWZ5VHlwZRIOCgpMSVZFX1NUQVJUEAASDQoJTElWRV9TVE9QEAESFg'
    'oSTElWRVJPT01fSEVBUlRCRUFUEAISDgoKRU5URVJfUk9PTRADEg0KCUVYSVRfUk9PTRAEEh0K'
    'GVVOU0VUX1VTRVJfS0lDS09VVF9TVEFUVVMQBRIcChhMSVZFUk9PTV9QS19TQ09SRV9VUERBVE'
    'UQBhIKCgZQS1BST1AQBxINCglTRU5EX0dJRlQQCBINCglIT1NUX01PREUQCRIVChFVUERBVEVE'
    'X1VTRVJfSU5GTxAKEhAKDFJPT01fQkFSUkFHRRALEg8KC1JPT01fQUNUSU9OEAwSFwoTVVBEQV'
    'RFX0FOQ0hPUl9TQ09SRRANEhQKEFVQREFURV9CSUxMQk9BUkQQDhIRCg1LSUNLX1VTRVJfT1VU'
    'EA8SEgoOU0VORF9MSVZFX0dJRlQQEBIdChlVUERBVEVfTVVMVElfQU5DSE9SX1NDT1JFEBESEw'
    'oPSU5WRVNUT1JfQ0hBTkdFEBISDwoLU0VDUkVUX0dJRlQQExIVChFCQUNLR1JPVU5EX0NIQU5H'
    'RRAUEhMKD0hBTkRfRFJBV05fR0lGVBAVEhwKGFRPUDFfRkFOU19DSEFOR0VfTk9USVRGWRAW');

@$core.Deprecated('Use redServiceNoticeReqDescriptor instead')
const RedServiceNoticeReq$json = {
  '1': 'RedServiceNoticeReq',
  '2': [
    {'1': 'notifyIdBegin', '3': 1, '4': 1, '5': 3, '10': 'notifyIdBegin'},
    {'1': 'notifyIdEnd', '3': 2, '4': 1, '5': 3, '10': 'notifyIdEnd'},
    {'1': 'appId', '3': 3, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'wantCount', '3': 4, '4': 1, '5': 5, '10': 'wantCount'},
  ],
};

/// Descriptor for `RedServiceNoticeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redServiceNoticeReqDescriptor = $convert.base64Decode(
    'ChNSZWRTZXJ2aWNlTm90aWNlUmVxEiQKDW5vdGlmeUlkQmVnaW4YASABKANSDW5vdGlmeUlkQm'
    'VnaW4SIAoLbm90aWZ5SWRFbmQYAiABKANSC25vdGlmeUlkRW5kEhQKBWFwcElkGAMgASgDUgVh'
    'cHBJZBIcCgl3YW50Q291bnQYBCABKAVSCXdhbnRDb3VudA==');

@$core.Deprecated('Use redServiceNoticeRspDescriptor instead')
const RedServiceNoticeRsp$json = {
  '1': 'RedServiceNoticeRsp',
  '2': [
    {'1': 'notifyIdBegin', '3': 1, '4': 1, '5': 3, '10': 'notifyIdBegin'},
    {'1': 'notifyIdEnd', '3': 2, '4': 1, '5': 3, '10': 'notifyIdEnd'},
    {'1': 'appId', '3': 3, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'wantCount', '3': 4, '4': 1, '5': 5, '10': 'wantCount'},
    {'1': 'leaveCount', '3': 5, '4': 1, '5': 5, '10': 'leaveCount'},
    {'1': 'serviceNotice', '3': 6, '4': 3, '5': 11, '6': '.pb_pub.ServiceNotice', '10': 'serviceNotice'},
  ],
};

/// Descriptor for `RedServiceNoticeRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redServiceNoticeRspDescriptor = $convert.base64Decode(
    'ChNSZWRTZXJ2aWNlTm90aWNlUnNwEiQKDW5vdGlmeUlkQmVnaW4YASABKANSDW5vdGlmeUlkQm'
    'VnaW4SIAoLbm90aWZ5SWRFbmQYAiABKANSC25vdGlmeUlkRW5kEhQKBWFwcElkGAMgASgDUgVh'
    'cHBJZBIcCgl3YW50Q291bnQYBCABKAVSCXdhbnRDb3VudBIeCgpsZWF2ZUNvdW50GAUgASgFUg'
    'psZWF2ZUNvdW50EjsKDXNlcnZpY2VOb3RpY2UYBiADKAsyFS5wYl9wdWIuU2VydmljZU5vdGlj'
    'ZVINc2VydmljZU5vdGljZQ==');

@$core.Deprecated('Use serviceNoticeDescriptor instead')
const ServiceNotice$json = {
  '1': 'ServiceNotice',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'appId', '3': 2, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'messageType', '3': 3, '4': 1, '5': 5, '10': 'messageType'},
    {'1': 'messageBody', '3': 4, '4': 1, '5': 9, '10': 'messageBody'},
  ],
};

/// Descriptor for `ServiceNotice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceNoticeDescriptor = $convert.base64Decode(
    'Cg1TZXJ2aWNlTm90aWNlEg4KAmlkGAEgASgDUgJpZBIUCgVhcHBJZBgCIAEoA1IFYXBwSWQSIA'
    'oLbWVzc2FnZVR5cGUYAyABKAVSC21lc3NhZ2VUeXBlEiAKC21lc3NhZ2VCb2R5GAQgASgJUgtt'
    'ZXNzYWdlQm9keQ==');

@$core.Deprecated('Use serviceNotifyDescriptor instead')
const ServiceNotify$json = {
  '1': 'ServiceNotify',
  '2': [
    {'1': 'messageType', '3': 1, '4': 1, '5': 5, '10': 'messageType'},
    {'1': 'messageBody', '3': 2, '4': 1, '5': 9, '10': 'messageBody'},
  ],
};

/// Descriptor for `ServiceNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceNotifyDescriptor = $convert.base64Decode(
    'Cg1TZXJ2aWNlTm90aWZ5EiAKC21lc3NhZ2VUeXBlGAEgASgFUgttZXNzYWdlVHlwZRIgCgttZX'
    'NzYWdlQm9keRgCIAEoCVILbWVzc2FnZUJvZHk=');

@$core.Deprecated('Use serviceNotifyToAllUserDescriptor instead')
const ServiceNotifyToAllUser$json = {
  '1': 'ServiceNotifyToAllUser',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'messageType', '3': 2, '4': 1, '5': 5, '10': 'messageType'},
    {'1': 'exp', '3': 3, '4': 3, '5': 11, '6': '.pb_pub.ServiceNotifyToAllUser.ExpEntry', '10': 'exp'},
    {'1': 'messageBody', '3': 4, '4': 1, '5': 9, '10': 'messageBody'},
  ],
  '3': [ServiceNotifyToAllUser_ExpEntry$json],
};

@$core.Deprecated('Use serviceNotifyToAllUserDescriptor instead')
const ServiceNotifyToAllUser_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ServiceNotifyToAllUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceNotifyToAllUserDescriptor = $convert.base64Decode(
    'ChZTZXJ2aWNlTm90aWZ5VG9BbGxVc2VyEjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUE'
    'JDb21tRGF0YVIKcGJDb21tRGF0YRIgCgttZXNzYWdlVHlwZRgCIAEoBVILbWVzc2FnZVR5cGUS'
    'OQoDZXhwGAMgAygLMicucGJfcHViLlNlcnZpY2VOb3RpZnlUb0FsbFVzZXIuRXhwRW50cnlSA2'
    'V4cBIgCgttZXNzYWdlQm9keRgEIAEoCVILbWVzc2FnZUJvZHkaNgoIRXhwRW50cnkSEAoDa2V5'
    'GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use serviceNotifyToAimUserDescriptor instead')
const ServiceNotifyToAimUser$json = {
  '1': 'ServiceNotifyToAimUser',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'aimUsers', '3': 2, '4': 3, '5': 3, '10': 'aimUsers'},
    {'1': 'messageType', '3': 3, '4': 1, '5': 5, '10': 'messageType'},
    {'1': 'exp', '3': 4, '4': 3, '5': 11, '6': '.pb_pub.ServiceNotifyToAimUser.ExpEntry', '10': 'exp'},
    {'1': 'messageBody', '3': 5, '4': 1, '5': 9, '10': 'messageBody'},
  ],
  '3': [ServiceNotifyToAimUser_ExpEntry$json],
};

@$core.Deprecated('Use serviceNotifyToAimUserDescriptor instead')
const ServiceNotifyToAimUser_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ServiceNotifyToAimUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceNotifyToAimUserDescriptor = $convert.base64Decode(
    'ChZTZXJ2aWNlTm90aWZ5VG9BaW1Vc2VyEjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUE'
    'JDb21tRGF0YVIKcGJDb21tRGF0YRIaCghhaW1Vc2VycxgCIAMoA1IIYWltVXNlcnMSIAoLbWVz'
    'c2FnZVR5cGUYAyABKAVSC21lc3NhZ2VUeXBlEjkKA2V4cBgEIAMoCzInLnBiX3B1Yi5TZXJ2aW'
    'NlTm90aWZ5VG9BaW1Vc2VyLkV4cEVudHJ5UgNleHASIAoLbWVzc2FnZUJvZHkYBSABKAlSC21l'
    'c3NhZ2VCb2R5GjYKCEV4cEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUg'
    'V2YWx1ZToCOAE=');

@$core.Deprecated('Use serviceNotifyToAllGroupDescriptor instead')
const ServiceNotifyToAllGroup$json = {
  '1': 'ServiceNotifyToAllGroup',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'messageType', '3': 2, '4': 1, '5': 5, '10': 'messageType'},
    {'1': 'exp', '3': 3, '4': 3, '5': 11, '6': '.pb_pub.ServiceNotifyToAllGroup.ExpEntry', '10': 'exp'},
    {'1': 'messageBody', '3': 4, '4': 1, '5': 9, '10': 'messageBody'},
  ],
  '3': [ServiceNotifyToAllGroup_ExpEntry$json],
};

@$core.Deprecated('Use serviceNotifyToAllGroupDescriptor instead')
const ServiceNotifyToAllGroup_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ServiceNotifyToAllGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceNotifyToAllGroupDescriptor = $convert.base64Decode(
    'ChdTZXJ2aWNlTm90aWZ5VG9BbGxHcm91cBIyCgpwYkNvbW1EYXRhGAEgASgLMhIucGJfcHViLl'
    'BCQ29tbURhdGFSCnBiQ29tbURhdGESIAoLbWVzc2FnZVR5cGUYAiABKAVSC21lc3NhZ2VUeXBl'
    'EjoKA2V4cBgDIAMoCzIoLnBiX3B1Yi5TZXJ2aWNlTm90aWZ5VG9BbGxHcm91cC5FeHBFbnRyeV'
    'IDZXhwEiAKC21lc3NhZ2VCb2R5GAQgASgJUgttZXNzYWdlQm9keRo2CghFeHBFbnRyeRIQCgNr'
    'ZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use serviceNotifyToAimGroupDescriptor instead')
const ServiceNotifyToAimGroup$json = {
  '1': 'ServiceNotifyToAimGroup',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'messageType', '3': 2, '4': 1, '5': 5, '10': 'messageType'},
    {'1': 'exp', '3': 4, '4': 3, '5': 11, '6': '.pb_pub.ServiceNotifyToAimGroup.ExpEntry', '10': 'exp'},
    {'1': 'messageBody', '3': 5, '4': 1, '5': 9, '10': 'messageBody'},
  ],
  '3': [ServiceNotifyToAimGroup_ExpEntry$json],
};

@$core.Deprecated('Use serviceNotifyToAimGroupDescriptor instead')
const ServiceNotifyToAimGroup_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ServiceNotifyToAimGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceNotifyToAimGroupDescriptor = $convert.base64Decode(
    'ChdTZXJ2aWNlTm90aWZ5VG9BaW1Hcm91cBIyCgpwYkNvbW1EYXRhGAEgASgLMhIucGJfcHViLl'
    'BCQ29tbURhdGFSCnBiQ29tbURhdGESIAoLbWVzc2FnZVR5cGUYAiABKAVSC21lc3NhZ2VUeXBl'
    'EjoKA2V4cBgEIAMoCzIoLnBiX3B1Yi5TZXJ2aWNlTm90aWZ5VG9BaW1Hcm91cC5FeHBFbnRyeV'
    'IDZXhwEiAKC21lc3NhZ2VCb2R5GAUgASgJUgttZXNzYWdlQm9keRo2CghFeHBFbnRyeRIQCgNr'
    'ZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use yXLiveRoomNotifyDescriptor instead')
const YXLiveRoomNotify$json = {
  '1': 'YXLiveRoomNotify',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'messageType', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.YXLiveRoomNotifyType', '10': 'messageType'},
    {'1': 'messageBody', '3': 4, '4': 1, '5': 9, '10': 'messageBody'},
    {'1': 'exp', '3': 5, '4': 3, '5': 11, '6': '.pb_pub.YXLiveRoomNotify.ExpEntry', '10': 'exp'},
  ],
  '3': [YXLiveRoomNotify_ExpEntry$json],
};

@$core.Deprecated('Use yXLiveRoomNotifyDescriptor instead')
const YXLiveRoomNotify_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `YXLiveRoomNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yXLiveRoomNotifyDescriptor = $convert.base64Decode(
    'ChBZWExpdmVSb29tTm90aWZ5EjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUEJDb21tRG'
    'F0YVIKcGJDb21tRGF0YRIYCgdncm91cElkGAIgASgDUgdncm91cElkEj4KC21lc3NhZ2VUeXBl'
    'GAMgASgOMhwucGJfcHViLllYTGl2ZVJvb21Ob3RpZnlUeXBlUgttZXNzYWdlVHlwZRIgCgttZX'
    'NzYWdlQm9keRgEIAEoCVILbWVzc2FnZUJvZHkSMwoDZXhwGAUgAygLMiEucGJfcHViLllYTGl2'
    'ZVJvb21Ob3RpZnkuRXhwRW50cnlSA2V4cBo2CghFeHBFbnRyeRIQCgNrZXkYASABKAlSA2tleR'
    'IUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use pKQualifyChangeNotifyDescriptor instead')
const PKQualifyChangeNotify$json = {
  '1': 'PKQualifyChangeNotify',
  '2': [
    {'1': 'isQualifiedPkTournament', '3': 1, '4': 1, '5': 8, '10': 'isQualifiedPkTournament'},
    {'1': 'pkTournamentBeginTime', '3': 2, '4': 1, '5': 9, '10': 'pkTournamentBeginTime'},
    {'1': 'pkTounamentTip', '3': 3, '4': 1, '5': 9, '10': 'pkTounamentTip'},
  ],
};

/// Descriptor for `PKQualifyChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKQualifyChangeNotifyDescriptor = $convert.base64Decode(
    'ChVQS1F1YWxpZnlDaGFuZ2VOb3RpZnkSOAoXaXNRdWFsaWZpZWRQa1RvdXJuYW1lbnQYASABKA'
    'hSF2lzUXVhbGlmaWVkUGtUb3VybmFtZW50EjQKFXBrVG91cm5hbWVudEJlZ2luVGltZRgCIAEo'
    'CVIVcGtUb3VybmFtZW50QmVnaW5UaW1lEiYKDnBrVG91bmFtZW50VGlwGAMgASgJUg5wa1RvdW'
    '5hbWVudFRpcA==');

@$core.Deprecated('Use tTKNSQMessageDescriptor instead')
const TTKNSQMessage$json = {
  '1': 'TTKNSQMessage',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'msgName', '3': 2, '4': 1, '5': 9, '10': 'msgName'},
    {'1': 'msgData', '3': 3, '4': 1, '5': 9, '10': 'msgData'},
    {'1': 'exp', '3': 4, '4': 3, '5': 11, '6': '.pb_pub.TTKNSQMessage.ExpEntry', '10': 'exp'},
  ],
  '3': [TTKNSQMessage_ExpEntry$json],
};

@$core.Deprecated('Use tTKNSQMessageDescriptor instead')
const TTKNSQMessage_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TTKNSQMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tTKNSQMessageDescriptor = $convert.base64Decode(
    'Cg1UVEtOU1FNZXNzYWdlEjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUEJDb21tRGF0YV'
    'IKcGJDb21tRGF0YRIYCgdtc2dOYW1lGAIgASgJUgdtc2dOYW1lEhgKB21zZ0RhdGEYAyABKAlS'
    'B21zZ0RhdGESMAoDZXhwGAQgAygLMh4ucGJfcHViLlRUS05TUU1lc3NhZ2UuRXhwRW50cnlSA2'
    'V4cBo2CghFeHBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6'
    'AjgB');

