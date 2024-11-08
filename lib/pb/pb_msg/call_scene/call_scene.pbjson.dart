//
//  Generated code. Do not modify.
//  source: pb_msg/call_scene/call_scene.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cALL_SCENE_STATEDescriptor instead')
const CALL_SCENE_STATE$json = {
  '1': 'CALL_SCENE_STATE',
  '2': [
    {'1': 'CALL_SCENE_STATE_INIT', '2': 0},
    {'1': 'CALL_SCENE_STATE_CALLING', '2': 1},
    {'1': 'CALL_SCENE_STATE_ONLINE', '2': 2},
    {'1': 'CALL_SCENE_STATE_CALL_END', '2': 3},
  ],
};

/// Descriptor for `CALL_SCENE_STATE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cALL_SCENE_STATEDescriptor = $convert.base64Decode(
    'ChBDQUxMX1NDRU5FX1NUQVRFEhkKFUNBTExfU0NFTkVfU1RBVEVfSU5JVBAAEhwKGENBTExfU0'
    'NFTkVfU1RBVEVfQ0FMTElORxABEhsKF0NBTExfU0NFTkVfU1RBVEVfT05MSU5FEAISHQoZQ0FM'
    'TF9TQ0VORV9TVEFURV9DQUxMX0VORBAD');

@$core.Deprecated('Use cALL_OVER_RESIONDescriptor instead')
const CALL_OVER_RESION$json = {
  '1': 'CALL_OVER_RESION',
  '2': [
    {'1': 'CALL_OVER_RESION_TIMEOUT', '2': 0},
    {'1': 'CALL_OVER_RESION_CALLEE_NOT_ONLINE', '2': 1},
    {'1': 'CALL_OVER_RESION_CALLEE_NO_ANSWER', '2': 2},
    {'1': 'CALL_OVER_RESION_CALLEE_OFFLINE', '2': 3},
    {'1': 'CALL_OVER_RESION_CALLER_OFFLINE', '2': 4},
    {'1': 'CALL_OVER_RESION_CALLER_HANGUP', '2': 5},
    {'1': 'CALL_OVER_RESION_CALLEE_HANGUP', '2': 6},
    {'1': 'CALL_OVER_RESION_BALANCE_NOT_ENOUGH', '2': 7},
    {'1': 'CALL_OVER_RESION_CALLER_CANCEL', '2': 8},
    {'1': 'CALL_OVER_RESION_CALLEE_BUZY', '2': 9},
    {'1': 'CALL_OVER_RESION_CALLEE_NOT_ANSWER', '2': 10},
  ],
};

/// Descriptor for `CALL_OVER_RESION`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cALL_OVER_RESIONDescriptor = $convert.base64Decode(
    'ChBDQUxMX09WRVJfUkVTSU9OEhwKGENBTExfT1ZFUl9SRVNJT05fVElNRU9VVBAAEiYKIkNBTE'
    'xfT1ZFUl9SRVNJT05fQ0FMTEVFX05PVF9PTkxJTkUQARIlCiFDQUxMX09WRVJfUkVTSU9OX0NB'
    'TExFRV9OT19BTlNXRVIQAhIjCh9DQUxMX09WRVJfUkVTSU9OX0NBTExFRV9PRkZMSU5FEAMSIw'
    'ofQ0FMTF9PVkVSX1JFU0lPTl9DQUxMRVJfT0ZGTElORRAEEiIKHkNBTExfT1ZFUl9SRVNJT05f'
    'Q0FMTEVSX0hBTkdVUBAFEiIKHkNBTExfT1ZFUl9SRVNJT05fQ0FMTEVFX0hBTkdVUBAGEicKI0'
    'NBTExfT1ZFUl9SRVNJT05fQkFMQU5DRV9OT1RfRU5PVUdIEAcSIgoeQ0FMTF9PVkVSX1JFU0lP'
    'Tl9DQUxMRVJfQ0FOQ0VMEAgSIAocQ0FMTF9PVkVSX1JFU0lPTl9DQUxMRUVfQlVaWRAJEiYKIk'
    'NBTExfT1ZFUl9SRVNJT05fQ0FMTEVFX05PVF9BTlNXRVIQCg==');

@$core.Deprecated('Use cALL_TYPEDescriptor instead')
const CALL_TYPE$json = {
  '1': 'CALL_TYPE',
  '2': [
    {'1': 'CALL_TYPE_UNKNOWN', '2': 0},
    {'1': 'CALL_TYPE_VIDEO', '2': 1},
    {'1': 'CALL_TYPE_VOICE', '2': 2},
  ],
};

/// Descriptor for `CALL_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cALL_TYPEDescriptor = $convert.base64Decode(
    'CglDQUxMX1RZUEUSFQoRQ0FMTF9UWVBFX1VOS05PV04QABITCg9DQUxMX1RZUEVfVklERU8QAR'
    'ITCg9DQUxMX1RZUEVfVk9JQ0UQAg==');

@$core.Deprecated('Use aNSWER_OF_CALLDescriptor instead')
const ANSWER_OF_CALL$json = {
  '1': 'ANSWER_OF_CALL',
  '2': [
    {'1': 'REFUSE', '2': 0},
    {'1': 'AGREE', '2': 1},
    {'1': 'BUZY', '2': 2},
    {'1': 'NOT_ANSWER', '2': 3},
  ],
};

/// Descriptor for `ANSWER_OF_CALL`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aNSWER_OF_CALLDescriptor = $convert.base64Decode(
    'Cg5BTlNXRVJfT0ZfQ0FMTBIKCgZSRUZVU0UQABIJCgVBR1JFRRABEggKBEJVWlkQAhIOCgpOT1'
    'RfQU5TV0VSEAM=');

@$core.Deprecated('Use wealthTypeDescriptor instead')
const WealthType$json = {
  '1': 'WealthType',
  '2': [
    {'1': 'Unknown', '2': 0},
    {'1': 'Balance', '2': 1},
    {'1': 'YeCoin', '2': 2},
  ],
};

/// Descriptor for `WealthType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wealthTypeDescriptor = $convert.base64Decode(
    'CgpXZWFsdGhUeXBlEgsKB1Vua25vd24QABILCgdCYWxhbmNlEAESCgoGWWVDb2luEAI=');

@$core.Deprecated('Use wealthChangeReasonDescriptor instead')
const WealthChangeReason$json = {
  '1': 'WealthChangeReason',
  '2': [
    {'1': 'CallFee', '2': 0},
    {'1': 'EarnCallFee', '2': 1},
  ],
};

/// Descriptor for `WealthChangeReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wealthChangeReasonDescriptor = $convert.base64Decode(
    'ChJXZWFsdGhDaGFuZ2VSZWFzb24SCwoHQ2FsbEZlZRAAEg8KC0Vhcm5DYWxsRmVlEAE=');

@$core.Deprecated('Use dialReqDescriptor instead')
const DialReq$json = {
  '1': 'DialReq',
  '2': [
    {'1': 'CalleeId', '3': 1, '4': 1, '5': 3, '10': 'CalleeId'},
    {'1': 'CallType', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_call_scene.CALL_TYPE', '10': 'CallType'},
    {'1': 'ChatCoinType', '3': 3, '4': 1, '5': 5, '10': 'ChatCoinType'},
    {'1': 'ChannelName', '3': 4, '4': 1, '5': 9, '10': 'ChannelName'},
  ],
};

/// Descriptor for `DialReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dialReqDescriptor = $convert.base64Decode(
    'CgdEaWFsUmVxEhoKCENhbGxlZUlkGAEgASgDUghDYWxsZWVJZBI4CghDYWxsVHlwZRgCIAEoDj'
    'IcLnBiX21zZ19jYWxsX3NjZW5lLkNBTExfVFlQRVIIQ2FsbFR5cGUSIgoMQ2hhdENvaW5UeXBl'
    'GAMgASgFUgxDaGF0Q29pblR5cGUSIAoLQ2hhbm5lbE5hbWUYBCABKAlSC0NoYW5uZWxOYW1l');

@$core.Deprecated('Use dialRspDescriptor instead')
const DialRsp$json = {
  '1': 'DialRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'code', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'code'},
  ],
};

/// Descriptor for `DialRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dialRspDescriptor = $convert.base64Decode(
    'CgdEaWFsUnNwEicKBnJlc3VsdBgBIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgZyZXN1bHQSIwoEY2'
    '9kZRgCIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgRjb2Rl');

@$core.Deprecated('Use waitForCalleeAnswerNotifyToServerDescriptor instead')
const WaitForCalleeAnswerNotifyToServer$json = {
  '1': 'WaitForCalleeAnswerNotifyToServer',
  '2': [
    {'1': 'CalleeId', '3': 1, '4': 1, '5': 3, '10': 'CalleeId'},
    {'1': 'YXChatId', '3': 2, '4': 1, '5': 3, '10': 'YXChatId'},
  ],
};

/// Descriptor for `WaitForCalleeAnswerNotifyToServer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitForCalleeAnswerNotifyToServerDescriptor = $convert.base64Decode(
    'CiFXYWl0Rm9yQ2FsbGVlQW5zd2VyTm90aWZ5VG9TZXJ2ZXISGgoIQ2FsbGVlSWQYASABKANSCE'
    'NhbGxlZUlkEhoKCFlYQ2hhdElkGAIgASgDUghZWENoYXRJZA==');

@$core.Deprecated('Use answerCallReqDescriptor instead')
const AnswerCallReq$json = {
  '1': 'AnswerCallReq',
  '2': [
    {'1': 'answer', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_call_scene.ANSWER_OF_CALL', '10': 'answer'},
  ],
};

/// Descriptor for `AnswerCallReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerCallReqDescriptor = $convert.base64Decode(
    'Cg1BbnN3ZXJDYWxsUmVxEjkKBmFuc3dlchgBIAEoDjIhLnBiX21zZ19jYWxsX3NjZW5lLkFOU1'
    'dFUl9PRl9DQUxMUgZhbnN3ZXI=');

@$core.Deprecated('Use answerCallRspDescriptor instead')
const AnswerCallRsp$json = {
  '1': 'AnswerCallRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'code', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'code'},
  ],
};

/// Descriptor for `AnswerCallRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerCallRspDescriptor = $convert.base64Decode(
    'Cg1BbnN3ZXJDYWxsUnNwEicKBnJlc3VsdBgBIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgZyZXN1bH'
    'QSIwoEY29kZRgCIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgRjb2Rl');

@$core.Deprecated('Use hangUpReqDescriptor instead')
const HangUpReq$json = {
  '1': 'HangUpReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'sceneId', '3': 2, '4': 1, '5': 3, '10': 'sceneId'},
  ],
};

/// Descriptor for `HangUpReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hangUpReqDescriptor = $convert.base64Decode(
    'CglIYW5nVXBSZXESFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSGAoHc2NlbmVJZBgCIAEoA1IHc2'
    'NlbmVJZA==');

@$core.Deprecated('Use hangUpRspDescriptor instead')
const HangUpRsp$json = {
  '1': 'HangUpRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'code', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'code'},
  ],
};

/// Descriptor for `HangUpRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hangUpRspDescriptor = $convert.base64Decode(
    'CglIYW5nVXBSc3ASJwoGcmVzdWx0GAEgASgOMg8ucGJfcHViLkVyckNvZGVSBnJlc3VsdBIjCg'
    'Rjb2RlGAIgASgOMg8ucGJfcHViLkVyckNvZGVSBGNvZGU=');

@$core.Deprecated('Use callOverNotifyDescriptor instead')
const CallOverNotify$json = {
  '1': 'CallOverNotify',
  '2': [
    {'1': 'Caller', '3': 1, '4': 1, '5': 3, '10': 'Caller'},
    {'1': 'Callee', '3': 2, '4': 1, '5': 3, '10': 'Callee'},
    {'1': 'CallerTotalFee', '3': 3, '4': 1, '5': 3, '10': 'CallerTotalFee'},
    {'1': 'CalleeTotalEarn', '3': 4, '4': 1, '5': 3, '10': 'CalleeTotalEarn'},
    {'1': 'CallTime', '3': 5, '4': 1, '5': 3, '10': 'CallTime'},
    {'1': 'CallOverResion', '3': 6, '4': 1, '5': 14, '6': '.pb_msg_call_scene.CALL_OVER_RESION', '10': 'CallOverResion'},
  ],
};

/// Descriptor for `CallOverNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callOverNotifyDescriptor = $convert.base64Decode(
    'Cg5DYWxsT3Zlck5vdGlmeRIWCgZDYWxsZXIYASABKANSBkNhbGxlchIWCgZDYWxsZWUYAiABKA'
    'NSBkNhbGxlZRImCg5DYWxsZXJUb3RhbEZlZRgDIAEoA1IOQ2FsbGVyVG90YWxGZWUSKAoPQ2Fs'
    'bGVlVG90YWxFYXJuGAQgASgDUg9DYWxsZWVUb3RhbEVhcm4SGgoIQ2FsbFRpbWUYBSABKANSCE'
    'NhbGxUaW1lEksKDkNhbGxPdmVyUmVzaW9uGAYgASgOMiMucGJfbXNnX2NhbGxfc2NlbmUuQ0FM'
    'TF9PVkVSX1JFU0lPTlIOQ2FsbE92ZXJSZXNpb24=');

@$core.Deprecated('Use callSceneStateChangeNotifyDescriptor instead')
const CallSceneStateChangeNotify$json = {
  '1': 'CallSceneStateChangeNotify',
  '2': [
    {'1': 'Caller', '3': 1, '4': 1, '5': 3, '10': 'Caller'},
    {'1': 'Callee', '3': 2, '4': 1, '5': 3, '10': 'Callee'},
    {'1': 'YXChatId', '3': 3, '4': 1, '5': 3, '10': 'YXChatId'},
    {'1': 'OldState', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_call_scene.CALL_SCENE_STATE', '10': 'OldState'},
    {'1': 'NewState', '3': 5, '4': 1, '5': 14, '6': '.pb_msg_call_scene.CALL_SCENE_STATE', '10': 'NewState'},
  ],
};

/// Descriptor for `CallSceneStateChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callSceneStateChangeNotifyDescriptor = $convert.base64Decode(
    'ChpDYWxsU2NlbmVTdGF0ZUNoYW5nZU5vdGlmeRIWCgZDYWxsZXIYASABKANSBkNhbGxlchIWCg'
    'ZDYWxsZWUYAiABKANSBkNhbGxlZRIaCghZWENoYXRJZBgDIAEoA1IIWVhDaGF0SWQSPwoIT2xk'
    'U3RhdGUYBCABKA4yIy5wYl9tc2dfY2FsbF9zY2VuZS5DQUxMX1NDRU5FX1NUQVRFUghPbGRTdG'
    'F0ZRI/CghOZXdTdGF0ZRgFIAEoDjIjLnBiX21zZ19jYWxsX3NjZW5lLkNBTExfU0NFTkVfU1RB'
    'VEVSCE5ld1N0YXRl');

@$core.Deprecated('Use sceneRecoverNotifyDescriptor instead')
const SceneRecoverNotify$json = {
  '1': 'SceneRecoverNotify',
  '2': [
    {'1': 'Caller', '3': 1, '4': 1, '5': 3, '10': 'Caller'},
    {'1': 'Callee', '3': 2, '4': 1, '5': 3, '10': 'Callee'},
    {'1': 'SceneBeginTime', '3': 3, '4': 1, '5': 3, '10': 'SceneBeginTime'},
    {'1': 'OnLineBeginTime', '3': 4, '4': 1, '5': 3, '10': 'OnLineBeginTime'},
    {'1': 'YXChatId', '3': 5, '4': 1, '5': 3, '10': 'YXChatId'},
  ],
};

/// Descriptor for `SceneRecoverNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sceneRecoverNotifyDescriptor = $convert.base64Decode(
    'ChJTY2VuZVJlY292ZXJOb3RpZnkSFgoGQ2FsbGVyGAEgASgDUgZDYWxsZXISFgoGQ2FsbGVlGA'
    'IgASgDUgZDYWxsZWUSJgoOU2NlbmVCZWdpblRpbWUYAyABKANSDlNjZW5lQmVnaW5UaW1lEigK'
    'D09uTGluZUJlZ2luVGltZRgEIAEoA1IPT25MaW5lQmVnaW5UaW1lEhoKCFlYQ2hhdElkGAUgAS'
    'gDUghZWENoYXRJZA==');

@$core.Deprecated('Use wealthChangeNotifyDescriptor instead')
const WealthChangeNotify$json = {
  '1': 'WealthChangeNotify',
  '2': [
    {'1': 'WealthType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_call_scene.WealthType', '10': 'WealthType'},
    {'1': 'Change', '3': 2, '4': 1, '5': 3, '10': 'Change'},
    {'1': 'Leave', '3': 3, '4': 1, '5': 3, '10': 'Leave'},
    {'1': 'Reason', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_call_scene.WealthChangeReason', '10': 'Reason'},
  ],
};

/// Descriptor for `WealthChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wealthChangeNotifyDescriptor = $convert.base64Decode(
    'ChJXZWFsdGhDaGFuZ2VOb3RpZnkSPQoKV2VhbHRoVHlwZRgBIAEoDjIdLnBiX21zZ19jYWxsX3'
    'NjZW5lLldlYWx0aFR5cGVSCldlYWx0aFR5cGUSFgoGQ2hhbmdlGAIgASgDUgZDaGFuZ2USFAoF'
    'TGVhdmUYAyABKANSBUxlYXZlEj0KBlJlYXNvbhgEIAEoDjIlLnBiX21zZ19jYWxsX3NjZW5lLl'
    'dlYWx0aENoYW5nZVJlYXNvblIGUmVhc29u');

