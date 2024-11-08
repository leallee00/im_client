//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/live_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use partyTypeDescriptor instead')
const PartyType$json = {
  '1': 'PartyType',
  '2': [
    {'1': 'Six', '2': 0},
    {'1': 'Eight', '2': 1},
  ],
};

/// Descriptor for `PartyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List partyTypeDescriptor = $convert.base64Decode(
    'CglQYXJ0eVR5cGUSBwoDU2l4EAASCQoFRWlnaHQQAQ==');

@$core.Deprecated('Use roomThemeDescriptor instead')
const RoomTheme$json = {
  '1': 'RoomTheme',
  '2': [
    {'1': 'UNKNOWN_THEME', '2': 0},
    {'1': 'BLIND_DATE', '2': 2},
    {'1': 'SONG_TABLE', '2': 3},
    {'1': 'RADIO', '2': 4},
    {'1': 'GAME', '2': 5},
  ],
};

/// Descriptor for `RoomTheme`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roomThemeDescriptor = $convert.base64Decode(
    'CglSb29tVGhlbWUSEQoNVU5LTk9XTl9USEVNRRAAEg4KCkJMSU5EX0RBVEUQAhIOCgpTT05HX1'
    'RBQkxFEAMSCQoFUkFESU8QBBIICgRHQU1FEAU=');

@$core.Deprecated('Use roomStatusDescriptor instead')
const RoomStatus$json = {
  '1': 'RoomStatus',
  '2': [
    {'1': 'NORMAL', '2': 0},
    {'1': 'LIVE_STOP', '2': 1},
  ],
};

/// Descriptor for `RoomStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roomStatusDescriptor = $convert.base64Decode(
    'CgpSb29tU3RhdHVzEgoKBk5PUk1BTBAAEg0KCUxJVkVfU1RPUBAB');

@$core.Deprecated('Use aCTION_TYPEDescriptor instead')
const ACTION_TYPE$json = {
  '1': 'ACTION_TYPE',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'GIFT', '2': 1},
    {'1': 'FOLLOW', '2': 2},
    {'1': 'SHARE', '2': 3},
    {'1': 'LIGHT', '2': 4},
    {'1': 'UPGRADE', '2': 5},
    {'1': 'FISH', '2': 9},
    {'1': 'REENTER', '2': 10},
  ],
};

/// Descriptor for `ACTION_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aCTION_TYPEDescriptor = $convert.base64Decode(
    'CgtBQ1RJT05fVFlQRRILCgdVTktOT1dOEAASCAoER0lGVBABEgoKBkZPTExPVxACEgkKBVNIQV'
    'JFEAMSCQoFTElHSFQQBBILCgdVUEdSQURFEAUSCAoERklTSBAJEgsKB1JFRU5URVIQCg==');

@$core.Deprecated('Use roomTypeDescriptor instead')
const RoomType$json = {
  '1': 'RoomType',
  '2': [
    {'1': 'Unknow', '2': 0},
    {'1': 'Video', '2': 1},
    {'1': 'Audio', '2': 2},
    {'1': 'Party', '2': 3},
  ],
};

/// Descriptor for `RoomType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roomTypeDescriptor = $convert.base64Decode(
    'CghSb29tVHlwZRIKCgZVbmtub3cQABIJCgVWaWRlbxABEgkKBUF1ZGlvEAISCQoFUGFydHkQAw'
    '==');

@$core.Deprecated('Use mAnchorRoleDescriptor instead')
const MAnchorRole$json = {
  '1': 'MAnchorRole',
  '2': [
    {'1': 'Audience', '2': 0},
    {'1': 'Anchor', '2': 1},
    {'1': 'Owner', '2': 2},
    {'1': 'Manager', '2': 3},
  ],
};

/// Descriptor for `MAnchorRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mAnchorRoleDescriptor = $convert.base64Decode(
    'CgtNQW5jaG9yUm9sZRIMCghBdWRpZW5jZRAAEgoKBkFuY2hvchABEgkKBU93bmVyEAISCwoHTW'
    'FuYWdlchAD');

@$core.Deprecated('Use answerTypeDescriptor instead')
const AnswerType$json = {
  '1': 'AnswerType',
  '2': [
    {'1': 'Agree', '2': 0},
    {'1': 'Refuse', '2': 1},
  ],
};

/// Descriptor for `AnswerType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List answerTypeDescriptor = $convert.base64Decode(
    'CgpBbnN3ZXJUeXBlEgkKBUFncmVlEAASCgoGUmVmdXNlEAE=');

@$core.Deprecated('Use sTREAM_STATEDescriptor instead')
const STREAM_STATE$json = {
  '1': 'STREAM_STATE',
  '2': [
    {'1': 'CLOSED', '2': 0},
    {'1': 'CREATED', '2': 1},
  ],
};

/// Descriptor for `STREAM_STATE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sTREAM_STATEDescriptor = $convert.base64Decode(
    'CgxTVFJFQU1fU1RBVEUSCgoGQ0xPU0VEEAASCwoHQ1JFQVRFRBAB');

@$core.Deprecated('Use liveStartReqDescriptor instead')
const LiveStartReq$json = {
  '1': 'LiveStartReq',
  '2': [
    {'1': 'roomType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_live_room.RoomType', '10': 'roomType'},
    {'1': 'roomName', '3': 2, '4': 1, '5': 9, '10': 'roomName'},
    {'1': 'roomId', '3': 3, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'partyType', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_live_room.PartyType', '10': 'partyType'},
    {'1': 'roomTheme', '3': 5, '4': 1, '5': 14, '6': '.pb_msg_live_room.RoomTheme', '10': 'roomTheme'},
  ],
};

/// Descriptor for `LiveStartReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveStartReqDescriptor = $convert.base64Decode(
    'CgxMaXZlU3RhcnRSZXESNgoIcm9vbVR5cGUYASABKA4yGi5wYl9tc2dfbGl2ZV9yb29tLlJvb2'
    '1UeXBlUghyb29tVHlwZRIaCghyb29tTmFtZRgCIAEoCVIIcm9vbU5hbWUSFgoGcm9vbUlkGAMg'
    'ASgDUgZyb29tSWQSOQoJcGFydHlUeXBlGAQgASgOMhsucGJfbXNnX2xpdmVfcm9vbS5QYXJ0eV'
    'R5cGVSCXBhcnR5VHlwZRI5Cglyb29tVGhlbWUYBSABKA4yGy5wYl9tc2dfbGl2ZV9yb29tLlJv'
    'b21UaGVtZVIJcm9vbVRoZW1l');

@$core.Deprecated('Use liveStartRspDescriptor instead')
const LiveStartRsp$json = {
  '1': 'LiveStartRsp',
  '2': [
    {'1': 'streamType', '3': 1, '4': 1, '5': 5, '10': 'streamType'},
    {'1': 'pushStreamAddress', '3': 2, '4': 1, '5': 9, '10': 'pushStreamAddress'},
    {'1': 'liveMode', '3': 3, '4': 1, '5': 5, '10': 'liveMode'},
    {'1': 'coverImage', '3': 4, '4': 1, '5': 9, '10': 'coverImage'},
    {'1': 'unPassReason', '3': 5, '4': 1, '5': 9, '10': 'unPassReason'},
    {'1': 'coverStatus', '3': 6, '4': 1, '5': 9, '10': 'coverStatus'},
    {'1': 'canLiveStatus', '3': 7, '4': 1, '5': 8, '10': 'canLiveStatus'},
    {'1': 'message', '3': 8, '4': 1, '5': 9, '10': 'message'},
    {'1': 'result', '3': 9, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `LiveStartRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveStartRspDescriptor = $convert.base64Decode(
    'CgxMaXZlU3RhcnRSc3ASHgoKc3RyZWFtVHlwZRgBIAEoBVIKc3RyZWFtVHlwZRIsChFwdXNoU3'
    'RyZWFtQWRkcmVzcxgCIAEoCVIRcHVzaFN0cmVhbUFkZHJlc3MSGgoIbGl2ZU1vZGUYAyABKAVS'
    'CGxpdmVNb2RlEh4KCmNvdmVySW1hZ2UYBCABKAlSCmNvdmVySW1hZ2USIgoMdW5QYXNzUmVhc2'
    '9uGAUgASgJUgx1blBhc3NSZWFzb24SIAoLY292ZXJTdGF0dXMYBiABKAlSC2NvdmVyU3RhdHVz'
    'EiQKDWNhbkxpdmVTdGF0dXMYByABKAhSDWNhbkxpdmVTdGF0dXMSGAoHbWVzc2FnZRgIIAEoCV'
    'IHbWVzc2FnZRInCgZyZXN1bHQYCSABKA4yDy5wYl9wdWIuRXJyQ29kZVIGcmVzdWx0');

@$core.Deprecated('Use liveStopReqDescriptor instead')
const LiveStopReq$json = {
  '1': 'LiveStopReq',
  '2': [
    {'1': 'reason', '3': 1, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `LiveStopReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveStopReqDescriptor = $convert.base64Decode(
    'CgtMaXZlU3RvcFJlcRIWCgZyZWFzb24YASABKAlSBnJlYXNvbg==');

@$core.Deprecated('Use liveStopRspDescriptor instead')
const LiveStopRsp$json = {
  '1': 'LiveStopRsp',
};

/// Descriptor for `LiveStopRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveStopRspDescriptor = $convert.base64Decode(
    'CgtMaXZlU3RvcFJzcA==');

@$core.Deprecated('Use liveStartSuccessReqDescriptor instead')
const LiveStartSuccessReq$json = {
  '1': 'LiveStartSuccessReq',
};

/// Descriptor for `LiveStartSuccessReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveStartSuccessReqDescriptor = $convert.base64Decode(
    'ChNMaXZlU3RhcnRTdWNjZXNzUmVx');

@$core.Deprecated('Use liveStartSuccessRspDescriptor instead')
const LiveStartSuccessRsp$json = {
  '1': 'LiveStartSuccessRsp',
};

/// Descriptor for `LiveStartSuccessRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveStartSuccessRspDescriptor = $convert.base64Decode(
    'ChNMaXZlU3RhcnRTdWNjZXNzUnNw');

@$core.Deprecated('Use liveStartNotifyDescriptor instead')
const LiveStartNotify$json = {
  '1': 'LiveStartNotify',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'type', '3': 4, '4': 1, '5': 5, '10': 'type'},
    {'1': 'nickName', '3': 5, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'bigImageOriginal', '3': 6, '4': 1, '5': 9, '10': 'bigImageOriginal'},
  ],
};

/// Descriptor for `LiveStartNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveStartNotifyDescriptor = $convert.base64Decode(
    'Cg9MaXZlU3RhcnROb3RpZnkSGAoHZ3JvdXBJZBgBIAEoA1IHZ3JvdXBJZBIQCgNtc2cYAiABKA'
    'lSA21zZxIUCgV0aXRsZRgDIAEoCVIFdGl0bGUSEgoEdHlwZRgEIAEoBVIEdHlwZRIaCghuaWNr'
    'TmFtZRgFIAEoCVIIbmlja05hbWUSKgoQYmlnSW1hZ2VPcmlnaW5hbBgGIAEoCVIQYmlnSW1hZ2'
    'VPcmlnaW5hbA==');

@$core.Deprecated('Use audienceEnterLiveReqDescriptor instead')
const AudienceEnterLiveReq$json = {
  '1': 'AudienceEnterLiveReq',
};

/// Descriptor for `AudienceEnterLiveReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audienceEnterLiveReqDescriptor = $convert.base64Decode(
    'ChRBdWRpZW5jZUVudGVyTGl2ZVJlcQ==');

@$core.Deprecated('Use userEnterLiveRspDescriptor instead')
const UserEnterLiveRsp$json = {
  '1': 'UserEnterLiveRsp',
  '2': [
    {'1': 'streamType', '3': 1, '4': 1, '5': 5, '10': 'streamType'},
    {'1': 'wordUpdateTime', '3': 2, '4': 1, '5': 9, '10': 'wordUpdateTime'},
  ],
};

/// Descriptor for `UserEnterLiveRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userEnterLiveRspDescriptor = $convert.base64Decode(
    'ChBVc2VyRW50ZXJMaXZlUnNwEh4KCnN0cmVhbVR5cGUYASABKAVSCnN0cmVhbVR5cGUSJgoOd2'
    '9yZFVwZGF0ZVRpbWUYAiABKAlSDndvcmRVcGRhdGVUaW1l');

@$core.Deprecated('Use liveUserPropsNotifyDescriptor instead')
const LiveUserPropsNotify$json = {
  '1': 'LiveUserPropsNotify',
  '2': [
    {'1': 'MountInfo', '3': 1, '4': 1, '5': 9, '10': 'MountInfo'},
    {'1': 'FansInfo', '3': 2, '4': 1, '5': 9, '10': 'FansInfo'},
  ],
};

/// Descriptor for `LiveUserPropsNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveUserPropsNotifyDescriptor = $convert.base64Decode(
    'ChNMaXZlVXNlclByb3BzTm90aWZ5EhwKCU1vdW50SW5mbxgBIAEoCVIJTW91bnRJbmZvEhoKCE'
    'ZhbnNJbmZvGAIgASgJUghGYW5zSW5mbw==');

@$core.Deprecated('Use roomStatusNotifyDescriptor instead')
const RoomStatusNotify$json = {
  '1': 'RoomStatusNotify',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'roomStatus', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_live_room.RoomStatus', '10': 'roomStatus'},
  ],
};

/// Descriptor for `RoomStatusNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomStatusNotifyDescriptor = $convert.base64Decode(
    'ChBSb29tU3RhdHVzTm90aWZ5EhgKB2dyb3VwSWQYASABKANSB2dyb3VwSWQSPAoKcm9vbVN0YX'
    'R1cxgCIAEoDjIcLnBiX21zZ19saXZlX3Jvb20uUm9vbVN0YXR1c1IKcm9vbVN0YXR1cw==');

@$core.Deprecated('Use yXCommMsgNodeDescriptor instead')
const YXCommMsgNode$json = {
  '1': 'YXCommMsgNode',
  '2': [
    {'1': 'yxMsg', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.YXCommMsg', '10': 'yxMsg'},
    {'1': 'time', '3': 2, '4': 1, '5': 3, '10': 'time'},
    {'1': 'sn', '3': 4, '4': 1, '5': 3, '10': 'sn'},
    {'1': 'srcUserId', '3': 5, '4': 1, '5': 3, '10': 'srcUserId'},
    {'1': 'groupId', '3': 6, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `YXCommMsgNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yXCommMsgNodeDescriptor = $convert.base64Decode(
    'Cg1ZWENvbW1Nc2dOb2RlEicKBXl4TXNnGAEgASgLMhEucGJfcHViLllYQ29tbU1zZ1IFeXhNc2'
    'cSEgoEdGltZRgCIAEoA1IEdGltZRIOCgJzbhgEIAEoA1ICc24SHAoJc3JjVXNlcklkGAUgASgD'
    'UglzcmNVc2VySWQSGAoHZ3JvdXBJZBgGIAEoA1IHZ3JvdXBJZA==');

@$core.Deprecated('Use historyMsgDescriptor instead')
const HistoryMsg$json = {
  '1': 'HistoryMsg',
  '2': [
    {'1': 'pbData', '3': 1, '4': 1, '5': 12, '10': 'pbData'},
    {'1': 'pbName', '3': 2, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
    {'1': 'msgSn', '3': 4, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'srcId', '3': 5, '4': 1, '5': 3, '10': 'srcId'},
    {'1': 'groupId', '3': 6, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'msgType', '3': 7, '4': 1, '5': 14, '6': '.pb_pub.MessageType', '10': 'msgType'},
  ],
};

/// Descriptor for `HistoryMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyMsgDescriptor = $convert.base64Decode(
    'CgpIaXN0b3J5TXNnEhYKBnBiRGF0YRgBIAEoDFIGcGJEYXRhEhYKBnBiTmFtZRgCIAEoCVIGcG'
    'JOYW1lEhIKBHRpbWUYAyABKANSBHRpbWUSFAoFbXNnU24YBCABKANSBW1zZ1NuEhQKBXNyY0lk'
    'GAUgASgDUgVzcmNJZBIYCgdncm91cElkGAYgASgDUgdncm91cElkEi0KB21zZ1R5cGUYByABKA'
    '4yEy5wYl9wdWIuTWVzc2FnZVR5cGVSB21zZ1R5cGU=');

@$core.Deprecated('Use historyYXCommMsgReqDescriptor instead')
const HistoryYXCommMsgReq$json = {
  '1': 'HistoryYXCommMsgReq',
};

/// Descriptor for `HistoryYXCommMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyYXCommMsgReqDescriptor = $convert.base64Decode(
    'ChNIaXN0b3J5WVhDb21tTXNnUmVx');

@$core.Deprecated('Use historyYXCommMsgRspDescriptor instead')
const HistoryYXCommMsgRsp$json = {
  '1': 'HistoryYXCommMsgRsp',
  '2': [
    {'1': 'msgNum', '3': 1, '4': 1, '5': 3, '10': 'msgNum'},
    {'1': 'msgList', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_live_room.YXCommMsgNode', '10': 'msgList'},
    {'1': 'latestSn', '3': 3, '4': 1, '5': 3, '10': 'latestSn'},
    {'1': 'historyMsgs', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_live_room.HistoryMsg', '10': 'historyMsgs'},
    {'1': 'latestMsgSn', '3': 5, '4': 1, '5': 3, '10': 'latestMsgSn'},
  ],
};

/// Descriptor for `HistoryYXCommMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyYXCommMsgRspDescriptor = $convert.base64Decode(
    'ChNIaXN0b3J5WVhDb21tTXNnUnNwEhYKBm1zZ051bRgBIAEoA1IGbXNnTnVtEjkKB21zZ0xpc3'
    'QYAiADKAsyHy5wYl9tc2dfbGl2ZV9yb29tLllYQ29tbU1zZ05vZGVSB21zZ0xpc3QSGgoIbGF0'
    'ZXN0U24YAyABKANSCGxhdGVzdFNuEj4KC2hpc3RvcnlNc2dzGAQgAygLMhwucGJfbXNnX2xpdm'
    'Vfcm9vbS5IaXN0b3J5TXNnUgtoaXN0b3J5TXNncxIgCgtsYXRlc3RNc2dTbhgFIAEoA1ILbGF0'
    'ZXN0TXNnU24=');

@$core.Deprecated('Use reloadYXCommMsgReqDescriptor instead')
const ReloadYXCommMsgReq$json = {
  '1': 'ReloadYXCommMsgReq',
  '2': [
    {'1': 'sn', '3': 1, '4': 1, '5': 3, '10': 'sn'},
  ],
};

/// Descriptor for `ReloadYXCommMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reloadYXCommMsgReqDescriptor = $convert.base64Decode(
    'ChJSZWxvYWRZWENvbW1Nc2dSZXESDgoCc24YASABKANSAnNu');

@$core.Deprecated('Use reloadYXCommMsgRspDescriptor instead')
const ReloadYXCommMsgRsp$json = {
  '1': 'ReloadYXCommMsgRsp',
  '2': [
    {'1': 'msgNum', '3': 1, '4': 1, '5': 3, '10': 'msgNum'},
    {'1': 'msgList', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_live_room.YXCommMsgNode', '10': 'msgList'},
    {'1': 'latestSn', '3': 3, '4': 1, '5': 3, '10': 'latestSn'},
    {'1': 'historyMsgs', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_live_room.HistoryMsg', '10': 'historyMsgs'},
    {'1': 'latestMsgSn', '3': 5, '4': 1, '5': 3, '10': 'latestMsgSn'},
  ],
};

/// Descriptor for `ReloadYXCommMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reloadYXCommMsgRspDescriptor = $convert.base64Decode(
    'ChJSZWxvYWRZWENvbW1Nc2dSc3ASFgoGbXNnTnVtGAEgASgDUgZtc2dOdW0SOQoHbXNnTGlzdB'
    'gCIAMoCzIfLnBiX21zZ19saXZlX3Jvb20uWVhDb21tTXNnTm9kZVIHbXNnTGlzdBIaCghsYXRl'
    'c3RTbhgDIAEoA1IIbGF0ZXN0U24SPgoLaGlzdG9yeU1zZ3MYBCADKAsyHC5wYl9tc2dfbGl2ZV'
    '9yb29tLkhpc3RvcnlNc2dSC2hpc3RvcnlNc2dzEiAKC2xhdGVzdE1zZ1NuGAUgASgDUgtsYXRl'
    'c3RNc2dTbg==');

@$core.Deprecated('Use pKScoreNotifyDescriptor instead')
const PKScoreNotify$json = {
  '1': 'PKScoreNotify',
  '2': [
    {'1': 'pkScore', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_live_room.PKScoreNotify.PkScoreEntry', '10': 'pkScore'},
  ],
  '3': [PKScoreNotify_PkScoreEntry$json],
};

@$core.Deprecated('Use pKScoreNotifyDescriptor instead')
const PKScoreNotify_PkScoreEntry$json = {
  '1': 'PkScoreEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 3, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PKScoreNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKScoreNotifyDescriptor = $convert.base64Decode(
    'Cg1QS1Njb3JlTm90aWZ5EkYKB3BrU2NvcmUYASADKAsyLC5wYl9tc2dfbGl2ZV9yb29tLlBLU2'
    'NvcmVOb3RpZnkuUGtTY29yZUVudHJ5Ugdwa1Njb3JlGjoKDFBrU2NvcmVFbnRyeRIQCgNrZXkY'
    'ASABKANSA2tleRIUCgV2YWx1ZRgCIAEoA1IFdmFsdWU6AjgB');

@$core.Deprecated('Use pKPROPNotifyDescriptor instead')
const PKPROPNotify$json = {
  '1': 'PKPROPNotify',
  '2': [
    {'1': 'giftId', '3': 1, '4': 1, '5': 3, '10': 'giftId'},
    {'1': 'giftImage', '3': 2, '4': 1, '5': 9, '10': 'giftImage'},
    {'1': 'giftName', '3': 3, '4': 1, '5': 9, '10': 'giftName'},
    {'1': 'actorId', '3': 4, '4': 1, '5': 3, '10': 'actorId'},
    {'1': 'targetName', '3': 5, '4': 1, '5': 9, '10': 'targetName'},
    {'1': 'userId', '3': 6, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'headImg', '3': 7, '4': 1, '5': 9, '10': 'headImg'},
    {'1': 'senderName', '3': 8, '4': 1, '5': 9, '10': 'senderName'},
    {'1': 'levelPrivilegeOpen', '3': 9, '4': 1, '5': 8, '10': 'levelPrivilegeOpen'},
    {'1': 'startTime', '3': 10, '4': 1, '5': 3, '10': 'startTime'},
    {'1': 'endTime', '3': 11, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'curTime', '3': 12, '4': 1, '5': 3, '10': 'curTime'},
    {'1': 'giftNumber', '3': 13, '4': 1, '5': 3, '10': 'giftNumber'},
  ],
};

/// Descriptor for `PKPROPNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKPROPNotifyDescriptor = $convert.base64Decode(
    'CgxQS1BST1BOb3RpZnkSFgoGZ2lmdElkGAEgASgDUgZnaWZ0SWQSHAoJZ2lmdEltYWdlGAIgAS'
    'gJUglnaWZ0SW1hZ2USGgoIZ2lmdE5hbWUYAyABKAlSCGdpZnROYW1lEhgKB2FjdG9ySWQYBCAB'
    'KANSB2FjdG9ySWQSHgoKdGFyZ2V0TmFtZRgFIAEoCVIKdGFyZ2V0TmFtZRIWCgZ1c2VySWQYBi'
    'ABKANSBnVzZXJJZBIYCgdoZWFkSW1nGAcgASgJUgdoZWFkSW1nEh4KCnNlbmRlck5hbWUYCCAB'
    'KAlSCnNlbmRlck5hbWUSLgoSbGV2ZWxQcml2aWxlZ2VPcGVuGAkgASgIUhJsZXZlbFByaXZpbG'
    'VnZU9wZW4SHAoJc3RhcnRUaW1lGAogASgDUglzdGFydFRpbWUSGAoHZW5kVGltZRgLIAEoA1IH'
    'ZW5kVGltZRIYCgdjdXJUaW1lGAwgASgDUgdjdXJUaW1lEh4KCmdpZnROdW1iZXIYDSABKANSCm'
    'dpZnROdW1iZXI=');

@$core.Deprecated('Use liveRoomGiftDescriptor instead')
const LiveRoomGift$json = {
  '1': 'LiveRoomGift',
  '2': [
    {'1': 'gift', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.Gift', '10': 'gift'},
  ],
};

/// Descriptor for `LiveRoomGift`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveRoomGiftDescriptor = $convert.base64Decode(
    'CgxMaXZlUm9vbUdpZnQSIAoEZ2lmdBgBIAEoCzIMLnBiX3B1Yi5HaWZ0UgRnaWZ0');

@$core.Deprecated('Use hostModeDescriptor instead')
const HostMode$json = {
  '1': 'HostMode',
  '2': [
    {'1': 'isHostMode', '3': 1, '4': 1, '5': 8, '10': 'isHostMode'},
    {'1': 'isCurrentHostMode', '3': 2, '4': 1, '5': 8, '10': 'isCurrentHostMode'},
  ],
};

/// Descriptor for `HostMode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hostModeDescriptor = $convert.base64Decode(
    'CghIb3N0TW9kZRIeCgppc0hvc3RNb2RlGAEgASgIUgppc0hvc3RNb2RlEiwKEWlzQ3VycmVudE'
    'hvc3RNb2RlGAIgASgIUhFpc0N1cnJlbnRIb3N0TW9kZQ==');

@$core.Deprecated('Use roomInfoDescriptor instead')
const RoomInfo$json = {
  '1': 'RoomInfo',
  '2': [
    {'1': 'roomId', '3': 1, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'onLineNum', '3': 2, '4': 1, '5': 3, '10': 'onLineNum'},
    {'1': 'roomStatus', '3': 3, '4': 1, '5': 5, '10': 'roomStatus'},
    {'1': 'switchToBack', '3': 22, '4': 1, '5': 8, '10': 'switchToBack'},
    {'1': 'actorId', '3': 4, '4': 1, '5': 3, '10': 'actorId'},
    {'1': 'imId', '3': 5, '4': 1, '5': 9, '10': 'imId'},
    {'1': 'roomNotice', '3': 6, '4': 1, '5': 9, '10': 'roomNotice'},
    {'1': 'actorLevel', '3': 7, '4': 1, '5': 9, '10': 'actorLevel'},
    {'1': 'actorGrade', '3': 8, '4': 1, '5': 5, '10': 'actorGrade'},
    {'1': 'actorCurrentExperience', '3': 9, '4': 1, '5': 3, '10': 'actorCurrentExperience'},
    {'1': 'headerImageOriginal', '3': 10, '4': 1, '5': 9, '10': 'headerImageOriginal'},
    {'1': 'headPendantUrl', '3': 11, '4': 1, '5': 9, '10': 'headPendantUrl'},
    {'1': 'bigImageOriginal', '3': 12, '4': 1, '5': 9, '10': 'bigImageOriginal'},
    {'1': 'recentReceiveCoins', '3': 13, '4': 1, '5': 3, '10': 'recentReceiveCoins'},
    {'1': 'nickName', '3': 14, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'fansCardName', '3': 15, '4': 1, '5': 9, '10': 'fansCardName'},
    {'1': 'broadcastLimitCoins', '3': 20, '4': 1, '5': 3, '10': 'broadcastLimitCoins'},
    {'1': 'updateTime', '3': 21, '4': 1, '5': 3, '10': 'updateTime'},
    {'1': 'roomType', '3': 23, '4': 1, '5': 14, '6': '.pb_msg_live_room.RoomType', '10': 'roomType'},
    {'1': 'exp', '3': 24, '4': 3, '5': 11, '6': '.pb_msg_live_room.RoomInfo.ExpEntry', '10': 'exp'},
    {'1': 'pullStreamAddress', '3': 25, '4': 1, '5': 9, '10': 'pullStreamAddress'},
    {'1': 'roomName', '3': 26, '4': 1, '5': 9, '10': 'roomName'},
    {'1': 'backgroundImageUrl', '3': 27, '4': 1, '5': 9, '10': 'backgroundImageUrl'},
    {'1': 'rank', '3': 41, '4': 1, '5': 3, '10': 'rank'},
    {'1': 'victoryTimes', '3': 42, '4': 1, '5': 3, '10': 'victoryTimes'},
    {'1': 'dynamicBackgroundImage', '3': 43, '4': 1, '5': 9, '10': 'dynamicBackgroundImage'},
    {'1': 'isQualifiedPkTournament', '3': 45, '4': 1, '5': 8, '10': 'isQualifiedPkTournament'},
    {'1': 'pkTournamentBeginTime', '3': 46, '4': 1, '5': 9, '10': 'pkTournamentBeginTime'},
    {'1': 'pkTounamentTip', '3': 47, '4': 1, '5': 9, '10': 'pkTounamentTip'},
    {'1': 'partyType', '3': 48, '4': 1, '5': 14, '6': '.pb_msg_live_room.PartyType', '10': 'partyType'},
    {'1': 'roomTheme', '3': 49, '4': 1, '5': 14, '6': '.pb_msg_live_room.RoomTheme', '10': 'roomTheme'},
    {'1': 'FansTop1Status', '3': 50, '4': 1, '5': 8, '10': 'FansTop1Status'},
  ],
  '3': [RoomInfo_ExpEntry$json],
};

@$core.Deprecated('Use roomInfoDescriptor instead')
const RoomInfo_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RoomInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomInfoDescriptor = $convert.base64Decode(
    'CghSb29tSW5mbxIWCgZyb29tSWQYASABKANSBnJvb21JZBIcCglvbkxpbmVOdW0YAiABKANSCW'
    '9uTGluZU51bRIeCgpyb29tU3RhdHVzGAMgASgFUgpyb29tU3RhdHVzEiIKDHN3aXRjaFRvQmFj'
    'axgWIAEoCFIMc3dpdGNoVG9CYWNrEhgKB2FjdG9ySWQYBCABKANSB2FjdG9ySWQSEgoEaW1JZB'
    'gFIAEoCVIEaW1JZBIeCgpyb29tTm90aWNlGAYgASgJUgpyb29tTm90aWNlEh4KCmFjdG9yTGV2'
    'ZWwYByABKAlSCmFjdG9yTGV2ZWwSHgoKYWN0b3JHcmFkZRgIIAEoBVIKYWN0b3JHcmFkZRI2Ch'
    'ZhY3RvckN1cnJlbnRFeHBlcmllbmNlGAkgASgDUhZhY3RvckN1cnJlbnRFeHBlcmllbmNlEjAK'
    'E2hlYWRlckltYWdlT3JpZ2luYWwYCiABKAlSE2hlYWRlckltYWdlT3JpZ2luYWwSJgoOaGVhZF'
    'BlbmRhbnRVcmwYCyABKAlSDmhlYWRQZW5kYW50VXJsEioKEGJpZ0ltYWdlT3JpZ2luYWwYDCAB'
    'KAlSEGJpZ0ltYWdlT3JpZ2luYWwSLgoScmVjZW50UmVjZWl2ZUNvaW5zGA0gASgDUhJyZWNlbn'
    'RSZWNlaXZlQ29pbnMSGgoIbmlja05hbWUYDiABKAlSCG5pY2tOYW1lEiIKDGZhbnNDYXJkTmFt'
    'ZRgPIAEoCVIMZmFuc0NhcmROYW1lEjAKE2Jyb2FkY2FzdExpbWl0Q29pbnMYFCABKANSE2Jyb2'
    'FkY2FzdExpbWl0Q29pbnMSHgoKdXBkYXRlVGltZRgVIAEoA1IKdXBkYXRlVGltZRI2Cghyb29t'
    'VHlwZRgXIAEoDjIaLnBiX21zZ19saXZlX3Jvb20uUm9vbVR5cGVSCHJvb21UeXBlEjUKA2V4cB'
    'gYIAMoCzIjLnBiX21zZ19saXZlX3Jvb20uUm9vbUluZm8uRXhwRW50cnlSA2V4cBIsChFwdWxs'
    'U3RyZWFtQWRkcmVzcxgZIAEoCVIRcHVsbFN0cmVhbUFkZHJlc3MSGgoIcm9vbU5hbWUYGiABKA'
    'lSCHJvb21OYW1lEi4KEmJhY2tncm91bmRJbWFnZVVybBgbIAEoCVISYmFja2dyb3VuZEltYWdl'
    'VXJsEhIKBHJhbmsYKSABKANSBHJhbmsSIgoMdmljdG9yeVRpbWVzGCogASgDUgx2aWN0b3J5VG'
    'ltZXMSNgoWZHluYW1pY0JhY2tncm91bmRJbWFnZRgrIAEoCVIWZHluYW1pY0JhY2tncm91bmRJ'
    'bWFnZRI4Chdpc1F1YWxpZmllZFBrVG91cm5hbWVudBgtIAEoCFIXaXNRdWFsaWZpZWRQa1RvdX'
    'JuYW1lbnQSNAoVcGtUb3VybmFtZW50QmVnaW5UaW1lGC4gASgJUhVwa1RvdXJuYW1lbnRCZWdp'
    'blRpbWUSJgoOcGtUb3VuYW1lbnRUaXAYLyABKAlSDnBrVG91bmFtZW50VGlwEjkKCXBhcnR5VH'
    'lwZRgwIAEoDjIbLnBiX21zZ19saXZlX3Jvb20uUGFydHlUeXBlUglwYXJ0eVR5cGUSOQoJcm9v'
    'bVRoZW1lGDEgASgOMhsucGJfbXNnX2xpdmVfcm9vbS5Sb29tVGhlbWVSCXJvb21UaGVtZRImCg'
    '5GYW5zVG9wMVN0YXR1cxgyIAEoCFIORmFuc1RvcDFTdGF0dXMaNgoIRXhwRW50cnkSEAoDa2V5'
    'GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use userPropDescriptor instead')
const UserProp$json = {
  '1': 'UserProp',
  '2': [
    {'1': 'levelPrivilege', '3': 1, '4': 1, '5': 8, '10': 'levelPrivilege'},
    {'1': 'nobleGrade', '3': 2, '4': 1, '5': 5, '10': 'nobleGrade'},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    {'1': 'userId', '3': 4, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'userLevel', '3': 5, '4': 1, '5': 5, '10': 'userLevel'},
    {'1': 'medalUrl', '3': 6, '4': 1, '5': 9, '10': 'medalUrl'},
    {'1': 'guardType', '3': 7, '4': 1, '5': 5, '10': 'guardType'},
    {'1': 'userDefineEquipName', '3': 8, '4': 1, '5': 9, '10': 'userDefineEquipName'},
    {'1': 'role', '3': 9, '4': 1, '5': 5, '10': 'role'},
    {'1': 'managerSubType', '3': 10, '4': 1, '5': 5, '10': 'managerSubType'},
    {'1': 'fansCardStatus', '3': 11, '4': 1, '5': 5, '10': 'fansCardStatus'},
    {'1': 'fansCardLevel', '3': 12, '4': 1, '5': 5, '10': 'fansCardLevel'},
    {'1': 'corpType', '3': 13, '4': 1, '5': 5, '10': 'corpType'},
    {'1': 'headImg', '3': 14, '4': 1, '5': 9, '10': 'headImg'},
    {'1': 'nobilityMedalUrl', '3': 15, '4': 1, '5': 9, '10': 'nobilityMedalUrl'},
    {'1': 'guardMedalType', '3': 16, '4': 1, '5': 5, '10': 'guardMedalType'},
    {'1': 'vipGrade', '3': 17, '4': 1, '5': 5, '10': 'vipGrade'},
    {'1': 'vipMedalUrl', '3': 18, '4': 1, '5': 9, '10': 'vipMedalUrl'},
  ],
};

/// Descriptor for `UserProp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPropDescriptor = $convert.base64Decode(
    'CghVc2VyUHJvcBImCg5sZXZlbFByaXZpbGVnZRgBIAEoCFIObGV2ZWxQcml2aWxlZ2USHgoKbm'
    '9ibGVHcmFkZRgCIAEoBVIKbm9ibGVHcmFkZRIaCgh1c2VybmFtZRgDIAEoCVIIdXNlcm5hbWUS'
    'FgoGdXNlcklkGAQgASgDUgZ1c2VySWQSHAoJdXNlckxldmVsGAUgASgFUgl1c2VyTGV2ZWwSGg'
    'oIbWVkYWxVcmwYBiABKAlSCG1lZGFsVXJsEhwKCWd1YXJkVHlwZRgHIAEoBVIJZ3VhcmRUeXBl'
    'EjAKE3VzZXJEZWZpbmVFcXVpcE5hbWUYCCABKAlSE3VzZXJEZWZpbmVFcXVpcE5hbWUSEgoEcm'
    '9sZRgJIAEoBVIEcm9sZRImCg5tYW5hZ2VyU3ViVHlwZRgKIAEoBVIObWFuYWdlclN1YlR5cGUS'
    'JgoOZmFuc0NhcmRTdGF0dXMYCyABKAVSDmZhbnNDYXJkU3RhdHVzEiQKDWZhbnNDYXJkTGV2ZW'
    'wYDCABKAVSDWZhbnNDYXJkTGV2ZWwSGgoIY29ycFR5cGUYDSABKAVSCGNvcnBUeXBlEhgKB2hl'
    'YWRJbWcYDiABKAlSB2hlYWRJbWcSKgoQbm9iaWxpdHlNZWRhbFVybBgPIAEoCVIQbm9iaWxpdH'
    'lNZWRhbFVybBImCg5ndWFyZE1lZGFsVHlwZRgQIAEoBVIOZ3VhcmRNZWRhbFR5cGUSGgoIdmlw'
    'R3JhZGUYESABKAVSCHZpcEdyYWRlEiAKC3ZpcE1lZGFsVXJsGBIgASgJUgt2aXBNZWRhbFVybA'
    '==');

@$core.Deprecated('Use enterRoomReadyReqDescriptor instead')
const EnterRoomReadyReq$json = {
  '1': 'EnterRoomReadyReq',
};

/// Descriptor for `EnterRoomReadyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enterRoomReadyReqDescriptor = $convert.base64Decode(
    'ChFFbnRlclJvb21SZWFkeVJlcQ==');

@$core.Deprecated('Use enterRoomReadyRspDescriptor instead')
const EnterRoomReadyRsp$json = {
  '1': 'EnterRoomReadyRsp',
  '2': [
    {'1': 'userProp', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UserProp', '10': 'userProp'},
    {'1': 'userStatus', '3': 2, '4': 1, '5': 3, '10': 'userStatus'},
    {'1': 'horseEffectUrl', '3': 3, '4': 1, '5': 9, '10': 'horseEffectUrl'},
    {'1': 'concrenRealtion', '3': 4, '4': 1, '5': 8, '10': 'concrenRealtion'},
    {'1': 'userCurrentExperience', '3': 5, '4': 1, '5': 3, '10': 'userCurrentExperience'},
    {'1': 'horseEffectName', '3': 6, '4': 1, '5': 9, '10': 'horseEffectName'},
    {'1': 'mAnchorRole', '3': 7, '4': 1, '5': 14, '6': '.pb_msg_live_room.MAnchorRole', '10': 'mAnchorRole'},
    {'1': 'horseEffectMp4Android', '3': 8, '4': 1, '5': 9, '10': 'horseEffectMp4Android'},
    {'1': 'horseEffectMp4Ios', '3': 9, '4': 1, '5': 9, '10': 'horseEffectMp4Ios'},
  ],
};

/// Descriptor for `EnterRoomReadyRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enterRoomReadyRspDescriptor = $convert.base64Decode(
    'ChFFbnRlclJvb21SZWFkeVJzcBI2Cgh1c2VyUHJvcBgBIAEoCzIaLnBiX21zZ19saXZlX3Jvb2'
    '0uVXNlclByb3BSCHVzZXJQcm9wEh4KCnVzZXJTdGF0dXMYAiABKANSCnVzZXJTdGF0dXMSJgoO'
    'aG9yc2VFZmZlY3RVcmwYAyABKAlSDmhvcnNlRWZmZWN0VXJsEigKD2NvbmNyZW5SZWFsdGlvbh'
    'gEIAEoCFIPY29uY3JlblJlYWx0aW9uEjQKFXVzZXJDdXJyZW50RXhwZXJpZW5jZRgFIAEoA1IV'
    'dXNlckN1cnJlbnRFeHBlcmllbmNlEigKD2hvcnNlRWZmZWN0TmFtZRgGIAEoCVIPaG9yc2VFZm'
    'ZlY3ROYW1lEj8KC21BbmNob3JSb2xlGAcgASgOMh0ucGJfbXNnX2xpdmVfcm9vbS5NQW5jaG9y'
    'Um9sZVILbUFuY2hvclJvbGUSNAoVaG9yc2VFZmZlY3RNcDRBbmRyb2lkGAggASgJUhVob3JzZU'
    'VmZmVjdE1wNEFuZHJvaWQSLAoRaG9yc2VFZmZlY3RNcDRJb3MYCSABKAlSEWhvcnNlRWZmZWN0'
    'TXA0SW9z');

@$core.Deprecated('Use audienceEnterRoomDescriptor instead')
const AudienceEnterRoom$json = {
  '1': 'AudienceEnterRoom',
  '2': [
    {'1': 'userProp', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UserProp', '10': 'userProp'},
    {'1': 'horseEffectUrl', '3': 2, '4': 1, '5': 9, '10': 'horseEffectUrl'},
    {'1': 'headerImageOriginal', '3': 3, '4': 1, '5': 9, '10': 'headerImageOriginal'},
    {'1': 'horseEffectName', '3': 4, '4': 1, '5': 9, '10': 'horseEffectName'},
    {'1': 'horseEffectMp4Android', '3': 5, '4': 1, '5': 9, '10': 'horseEffectMp4Android'},
    {'1': 'horseEffectMp4Ios', '3': 6, '4': 1, '5': 9, '10': 'horseEffectMp4Ios'},
  ],
};

/// Descriptor for `AudienceEnterRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audienceEnterRoomDescriptor = $convert.base64Decode(
    'ChFBdWRpZW5jZUVudGVyUm9vbRI2Cgh1c2VyUHJvcBgBIAEoCzIaLnBiX21zZ19saXZlX3Jvb2'
    '0uVXNlclByb3BSCHVzZXJQcm9wEiYKDmhvcnNlRWZmZWN0VXJsGAIgASgJUg5ob3JzZUVmZmVj'
    'dFVybBIwChNoZWFkZXJJbWFnZU9yaWdpbmFsGAMgASgJUhNoZWFkZXJJbWFnZU9yaWdpbmFsEi'
    'gKD2hvcnNlRWZmZWN0TmFtZRgEIAEoCVIPaG9yc2VFZmZlY3ROYW1lEjQKFWhvcnNlRWZmZWN0'
    'TXA0QW5kcm9pZBgFIAEoCVIVaG9yc2VFZmZlY3RNcDRBbmRyb2lkEiwKEWhvcnNlRWZmZWN0TX'
    'A0SW9zGAYgASgJUhFob3JzZUVmZmVjdE1wNElvcw==');

@$core.Deprecated('Use roomBarrageDescriptor instead')
const RoomBarrage$json = {
  '1': 'RoomBarrage',
  '2': [
    {'1': 'userProp', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UserProp', '10': 'userProp'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
    {'1': 'headerImageOriginal', '3': 4, '4': 1, '5': 9, '10': 'headerImageOriginal'},
    {'1': 'exp', '3': 5, '4': 3, '5': 11, '6': '.pb_msg_live_room.RoomBarrage.ExpEntry', '10': 'exp'},
    {'1': 'jumpEnabled', '3': 6, '4': 1, '5': 8, '10': 'jumpEnabled'},
    {'1': 'jumpRoomId', '3': 7, '4': 1, '5': 3, '10': 'jumpRoomId'},
  ],
  '3': [RoomBarrage_ExpEntry$json],
};

@$core.Deprecated('Use roomBarrageDescriptor instead')
const RoomBarrage_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RoomBarrage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomBarrageDescriptor = $convert.base64Decode(
    'CgtSb29tQmFycmFnZRI2Cgh1c2VyUHJvcBgBIAEoCzIaLnBiX21zZ19saXZlX3Jvb20uVXNlcl'
    'Byb3BSCHVzZXJQcm9wEhAKA21zZxgCIAEoCVIDbXNnEhIKBHR5cGUYAyABKAVSBHR5cGUSMAoT'
    'aGVhZGVySW1hZ2VPcmlnaW5hbBgEIAEoCVITaGVhZGVySW1hZ2VPcmlnaW5hbBI4CgNleHAYBS'
    'ADKAsyJi5wYl9tc2dfbGl2ZV9yb29tLlJvb21CYXJyYWdlLkV4cEVudHJ5UgNleHASIAoLanVt'
    'cEVuYWJsZWQYBiABKAhSC2p1bXBFbmFibGVkEh4KCmp1bXBSb29tSWQYByABKANSCmp1bXBSb2'
    '9tSWQaNgoIRXhwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVl'
    'OgI4AQ==');

@$core.Deprecated('Use roomNormalDescriptor instead')
const RoomNormal$json = {
  '1': 'RoomNormal',
  '2': [
    {'1': 'userProp', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UserProp', '10': 'userProp'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'targetUserName', '3': 3, '4': 3, '5': 9, '10': 'targetUserName'},
    {'1': 'targetUserId', '3': 4, '4': 3, '5': 3, '10': 'targetUserId'},
  ],
};

/// Descriptor for `RoomNormal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomNormalDescriptor = $convert.base64Decode(
    'CgpSb29tTm9ybWFsEjYKCHVzZXJQcm9wGAEgASgLMhoucGJfbXNnX2xpdmVfcm9vbS5Vc2VyUH'
    'JvcFIIdXNlclByb3ASEAoDbXNnGAIgASgJUgNtc2cSJgoOdGFyZ2V0VXNlck5hbWUYAyADKAlS'
    'DnRhcmdldFVzZXJOYW1lEiIKDHRhcmdldFVzZXJJZBgEIAMoA1IMdGFyZ2V0VXNlcklk');

@$core.Deprecated('Use roomActionDescriptor instead')
const RoomAction$json = {
  '1': 'RoomAction',
  '2': [
    {'1': 'userProp', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UserProp', '10': 'userProp'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_live_room.ACTION_TYPE', '10': 'type'},
    {'1': 'exp', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_live_room.RoomAction.ExpEntry', '10': 'exp'},
  ],
  '3': [RoomAction_ExpEntry$json],
};

@$core.Deprecated('Use roomActionDescriptor instead')
const RoomAction_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RoomAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomActionDescriptor = $convert.base64Decode(
    'CgpSb29tQWN0aW9uEjYKCHVzZXJQcm9wGAEgASgLMhoucGJfbXNnX2xpdmVfcm9vbS5Vc2VyUH'
    'JvcFIIdXNlclByb3ASMQoEdHlwZRgCIAEoDjIdLnBiX21zZ19saXZlX3Jvb20uQUNUSU9OX1RZ'
    'UEVSBHR5cGUSNwoDZXhwGAMgAygLMiUucGJfbXNnX2xpdmVfcm9vbS5Sb29tQWN0aW9uLkV4cE'
    'VudHJ5UgNleHAaNgoIRXhwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlS'
    'BXZhbHVlOgI4AQ==');

@$core.Deprecated('Use updatedUserInfoDescriptor instead')
const UpdatedUserInfo$json = {
  '1': 'UpdatedUserInfo',
  '2': [
    {'1': 'nobleGrade', '3': 1, '4': 1, '5': 5, '10': 'nobleGrade'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'userLevel', '3': 3, '4': 1, '5': 5, '10': 'userLevel'},
    {'1': 'medalUrl', '3': 4, '4': 1, '5': 9, '10': 'medalUrl'},
    {'1': 'guardType', '3': 5, '4': 1, '5': 5, '10': 'guardType'},
    {'1': 'userDefineEquipName', '3': 6, '4': 1, '5': 9, '10': 'userDefineEquipName'},
    {'1': 'role', '3': 7, '4': 1, '5': 5, '10': 'role'},
    {'1': 'fansCardStatus', '3': 8, '4': 1, '5': 5, '10': 'fansCardStatus'},
    {'1': 'fansCardLevel', '3': 9, '4': 1, '5': 5, '10': 'fansCardLevel'},
    {'1': 'corpType', '3': 10, '4': 1, '5': 5, '10': 'corpType'},
    {'1': 'guardMedalType', '3': 11, '4': 1, '5': 5, '10': 'guardMedalType'},
    {'1': 'vipGrade', '3': 12, '4': 1, '5': 5, '10': 'vipGrade'},
    {'1': 'vipMedalUrl', '3': 13, '4': 1, '5': 9, '10': 'vipMedalUrl'},
  ],
};

/// Descriptor for `UpdatedUserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatedUserInfoDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVkVXNlckluZm8SHgoKbm9ibGVHcmFkZRgBIAEoBVIKbm9ibGVHcmFkZRIaCgh1c2'
    'VybmFtZRgCIAEoCVIIdXNlcm5hbWUSHAoJdXNlckxldmVsGAMgASgFUgl1c2VyTGV2ZWwSGgoI'
    'bWVkYWxVcmwYBCABKAlSCG1lZGFsVXJsEhwKCWd1YXJkVHlwZRgFIAEoBVIJZ3VhcmRUeXBlEj'
    'AKE3VzZXJEZWZpbmVFcXVpcE5hbWUYBiABKAlSE3VzZXJEZWZpbmVFcXVpcE5hbWUSEgoEcm9s'
    'ZRgHIAEoBVIEcm9sZRImCg5mYW5zQ2FyZFN0YXR1cxgIIAEoBVIOZmFuc0NhcmRTdGF0dXMSJA'
    'oNZmFuc0NhcmRMZXZlbBgJIAEoBVINZmFuc0NhcmRMZXZlbBIaCghjb3JwVHlwZRgKIAEoBVII'
    'Y29ycFR5cGUSJgoOZ3VhcmRNZWRhbFR5cGUYCyABKAVSDmd1YXJkTWVkYWxUeXBlEhoKCHZpcE'
    'dyYWRlGAwgASgFUgh2aXBHcmFkZRIgCgt2aXBNZWRhbFVybBgNIAEoCVILdmlwTWVkYWxVcmw=');

@$core.Deprecated('Use updatedRoomInfoDescriptor instead')
const UpdatedRoomInfo$json = {
  '1': 'UpdatedRoomInfo',
  '2': [
    {'1': 'switchToBack', '3': 1, '4': 1, '5': 8, '10': 'switchToBack'},
  ],
};

/// Descriptor for `UpdatedRoomInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatedRoomInfoDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVkUm9vbUluZm8SIgoMc3dpdGNoVG9CYWNrGAEgASgIUgxzd2l0Y2hUb0JhY2s=');

@$core.Deprecated('Use top1ChangeNotifyDescriptor instead')
const Top1ChangeNotify$json = {
  '1': 'Top1ChangeNotify',
  '2': [
    {'1': 'roomType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_live_room.RoomType', '10': 'roomType'},
    {'1': 'roomId', '3': 2, '4': 1, '5': 3, '10': 'roomId'},
  ],
};

/// Descriptor for `Top1ChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List top1ChangeNotifyDescriptor = $convert.base64Decode(
    'ChBUb3AxQ2hhbmdlTm90aWZ5EjYKCHJvb21UeXBlGAEgASgOMhoucGJfbXNnX2xpdmVfcm9vbS'
    '5Sb29tVHlwZVIIcm9vbVR5cGUSFgoGcm9vbUlkGAIgASgDUgZyb29tSWQ=');

@$core.Deprecated('Use setRoomFansTop1StatusNotifyDescriptor instead')
const SetRoomFansTop1StatusNotify$json = {
  '1': 'SetRoomFansTop1StatusNotify',
  '2': [
    {'1': 'top1Status', '3': 1, '4': 1, '5': 8, '10': 'top1Status'},
  ],
};

/// Descriptor for `SetRoomFansTop1StatusNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRoomFansTop1StatusNotifyDescriptor = $convert.base64Decode(
    'ChtTZXRSb29tRmFuc1RvcDFTdGF0dXNOb3RpZnkSHgoKdG9wMVN0YXR1cxgBIAEoCFIKdG9wMV'
    'N0YXR1cw==');

@$core.Deprecated('Use mAnchorDataDescriptor instead')
const MAnchorData$json = {
  '1': 'MAnchorData',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'videoState', '3': 2, '4': 1, '5': 5, '10': 'videoState'},
    {'1': 'audioState', '3': 3, '4': 1, '5': 5, '10': 'audioState'},
    {'1': 'nickName', '3': 4, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'avatar', '3': 5, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'score', '3': 6, '4': 1, '5': 3, '10': 'score'},
    {'1': 'mAnchorRole', '3': 7, '4': 1, '5': 14, '6': '.pb_msg_live_room.MAnchorRole', '10': 'mAnchorRole'},
    {'1': 'pullStreamUrl', '3': 8, '4': 1, '5': 9, '10': 'pullStreamUrl'},
    {'1': 'forbidState', '3': 9, '4': 1, '5': 5, '10': 'forbidState'},
    {'1': 'gender', '3': 10, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'authAccess', '3': 11, '4': 1, '5': 9, '10': 'authAccess'},
    {'1': 'timestamp', '3': 12, '4': 1, '5': 3, '10': 'timestamp'},
    {'1': 'streamId', '3': 13, '4': 1, '5': 9, '10': 'streamId'},
    {'1': 'streamState', '3': 14, '4': 1, '5': 14, '6': '.pb_msg_live_room.STREAM_STATE', '10': 'streamState'},
    {'1': 'pkScore', '3': 15, '4': 1, '5': 3, '10': 'pkScore'},
    {'1': 'userOnAnchorPendantUrl', '3': 16, '4': 1, '5': 9, '10': 'userOnAnchorPendantUrl'},
  ],
};

/// Descriptor for `MAnchorData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mAnchorDataDescriptor = $convert.base64Decode(
    'CgtNQW5jaG9yRGF0YRIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIeCgp2aWRlb1N0YXRlGAIgAS'
    'gFUgp2aWRlb1N0YXRlEh4KCmF1ZGlvU3RhdGUYAyABKAVSCmF1ZGlvU3RhdGUSGgoIbmlja05h'
    'bWUYBCABKAlSCG5pY2tOYW1lEhYKBmF2YXRhchgFIAEoCVIGYXZhdGFyEhQKBXNjb3JlGAYgAS'
    'gDUgVzY29yZRI/CgttQW5jaG9yUm9sZRgHIAEoDjIdLnBiX21zZ19saXZlX3Jvb20uTUFuY2hv'
    'clJvbGVSC21BbmNob3JSb2xlEiQKDXB1bGxTdHJlYW1VcmwYCCABKAlSDXB1bGxTdHJlYW1Vcm'
    'wSIAoLZm9yYmlkU3RhdGUYCSABKAVSC2ZvcmJpZFN0YXRlEhYKBmdlbmRlchgKIAEoCVIGZ2Vu'
    'ZGVyEh4KCmF1dGhBY2Nlc3MYCyABKAlSCmF1dGhBY2Nlc3MSHAoJdGltZXN0YW1wGAwgASgDUg'
    'l0aW1lc3RhbXASGgoIc3RyZWFtSWQYDSABKAlSCHN0cmVhbUlkEkAKC3N0cmVhbVN0YXRlGA4g'
    'ASgOMh4ucGJfbXNnX2xpdmVfcm9vbS5TVFJFQU1fU1RBVEVSC3N0cmVhbVN0YXRlEhgKB3BrU2'
    'NvcmUYDyABKANSB3BrU2NvcmUSNgoWdXNlck9uQW5jaG9yUGVuZGFudFVybBgQIAEoCVIWdXNl'
    'ck9uQW5jaG9yUGVuZGFudFVybA==');

@$core.Deprecated('Use mWaitUserDescriptor instead')
const MWaitUser$json = {
  '1': 'MWaitUser',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'nickName', '3': 2, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'level', '3': 4, '4': 1, '5': 5, '10': 'level'},
    {'1': 'loc', '3': 5, '4': 1, '5': 5, '10': 'loc'},
  ],
};

/// Descriptor for `MWaitUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mWaitUserDescriptor = $convert.base64Decode(
    'CglNV2FpdFVzZXISFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSGgoIbmlja05hbWUYAiABKAlSCG'
    '5pY2tOYW1lEhYKBmF2YXRhchgDIAEoCVIGYXZhdGFyEhQKBWxldmVsGAQgASgFUgVsZXZlbBIQ'
    'CgNsb2MYBSABKAVSA2xvYw==');

@$core.Deprecated('Use mAnchorScoreChangeNotifyDescriptor instead')
const MAnchorScoreChangeNotify$json = {
  '1': 'MAnchorScoreChangeNotify',
  '2': [
    {'1': 'score', '3': 1, '4': 1, '5': 3, '10': 'score'},
    {'1': 'actorId', '3': 2, '4': 1, '5': 3, '10': 'actorId'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
  ],
};

/// Descriptor for `MAnchorScoreChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mAnchorScoreChangeNotifyDescriptor = $convert.base64Decode(
    'ChhNQW5jaG9yU2NvcmVDaGFuZ2VOb3RpZnkSFAoFc2NvcmUYASABKANSBXNjb3JlEhgKB2FjdG'
    '9ySWQYAiABKANSB2FjdG9ySWQSHAoJdGltZXN0YW1wGAMgASgDUgl0aW1lc3RhbXA=');

@$core.Deprecated('Use billboardChangeNotifyDescriptor instead')
const BillboardChangeNotify$json = {
  '1': 'BillboardChangeNotify',
  '2': [
    {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_live_room.Billboard', '10': 'users'},
  ],
};

/// Descriptor for `BillboardChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List billboardChangeNotifyDescriptor = $convert.base64Decode(
    'ChVCaWxsYm9hcmRDaGFuZ2VOb3RpZnkSMQoFdXNlcnMYASADKAsyGy5wYl9tc2dfbGl2ZV9yb2'
    '9tLkJpbGxib2FyZFIFdXNlcnM=');

@$core.Deprecated('Use billboardDescriptor instead')
const Billboard$json = {
  '1': 'Billboard',
  '2': [
    {'1': 'actorGrade', '3': 1, '4': 1, '5': 5, '10': 'actorGrade'},
    {'1': 'bigImageOriginal', '3': 2, '4': 1, '5': 9, '10': 'bigImageOriginal'},
    {'1': 'headerImageOriginal', '3': 3, '4': 1, '5': 9, '10': 'headerImageOriginal'},
    {'1': 'isLiving', '3': 4, '4': 1, '5': 8, '10': 'isLiving'},
    {'1': 'levelPrivilegeOpen', '3': 5, '4': 1, '5': 8, '10': 'levelPrivilegeOpen'},
    {'1': 'nickName', '3': 6, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'score', '3': 7, '4': 1, '5': 3, '10': 'score'},
    {'1': 'userId', '3': 8, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'userLevel', '3': 9, '4': 1, '5': 9, '10': 'userLevel'},
  ],
};

/// Descriptor for `Billboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List billboardDescriptor = $convert.base64Decode(
    'CglCaWxsYm9hcmQSHgoKYWN0b3JHcmFkZRgBIAEoBVIKYWN0b3JHcmFkZRIqChBiaWdJbWFnZU'
    '9yaWdpbmFsGAIgASgJUhBiaWdJbWFnZU9yaWdpbmFsEjAKE2hlYWRlckltYWdlT3JpZ2luYWwY'
    'AyABKAlSE2hlYWRlckltYWdlT3JpZ2luYWwSGgoIaXNMaXZpbmcYBCABKAhSCGlzTGl2aW5nEi'
    '4KEmxldmVsUHJpdmlsZWdlT3BlbhgFIAEoCFISbGV2ZWxQcml2aWxlZ2VPcGVuEhoKCG5pY2tO'
    'YW1lGAYgASgJUghuaWNrTmFtZRIUCgVzY29yZRgHIAEoA1IFc2NvcmUSFgoGdXNlcklkGAggAS'
    'gDUgZ1c2VySWQSHAoJdXNlckxldmVsGAkgASgJUgl1c2VyTGV2ZWw=');

@$core.Deprecated('Use mAnchorLocChangeNotifyDescriptor instead')
const MAnchorLocChangeNotify$json = {
  '1': 'MAnchorLocChangeNotify',
  '2': [
    {'1': 'chair', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.MAnchorData', '10': 'chair'},
    {'1': 'bentch', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_live_room.MAnchorLocChangeNotify.BentchEntry', '10': 'bentch'},
  ],
  '3': [MAnchorLocChangeNotify_BentchEntry$json],
};

@$core.Deprecated('Use mAnchorLocChangeNotifyDescriptor instead')
const MAnchorLocChangeNotify_BentchEntry$json = {
  '1': 'BentchEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_live_room.MAnchorData', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MAnchorLocChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mAnchorLocChangeNotifyDescriptor = $convert.base64Decode(
    'ChZNQW5jaG9yTG9jQ2hhbmdlTm90aWZ5EjMKBWNoYWlyGAEgASgLMh0ucGJfbXNnX2xpdmVfcm'
    '9vbS5NQW5jaG9yRGF0YVIFY2hhaXISTAoGYmVudGNoGAIgAygLMjQucGJfbXNnX2xpdmVfcm9v'
    'bS5NQW5jaG9yTG9jQ2hhbmdlTm90aWZ5LkJlbnRjaEVudHJ5UgZiZW50Y2gaWAoLQmVudGNoRW'
    '50cnkSEAoDa2V5GAEgASgFUgNrZXkSMwoFdmFsdWUYAiABKAsyHS5wYl9tc2dfbGl2ZV9yb29t'
    'Lk1BbmNob3JEYXRhUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use waitBenchListChangeNotifyDescriptor instead')
const WaitBenchListChangeNotify$json = {
  '1': 'WaitBenchListChangeNotify',
  '2': [
    {'1': 'waitQue', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_live_room.MWaitUser', '10': 'waitQue'},
  ],
};

/// Descriptor for `WaitBenchListChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitBenchListChangeNotifyDescriptor = $convert.base64Decode(
    'ChlXYWl0QmVuY2hMaXN0Q2hhbmdlTm90aWZ5EjUKB3dhaXRRdWUYASADKAsyGy5wYl9tc2dfbG'
    'l2ZV9yb29tLk1XYWl0VXNlclIHd2FpdFF1ZQ==');

@$core.Deprecated('Use offAnchorReqDescriptor instead')
const OffAnchorReq$json = {
  '1': 'OffAnchorReq',
};

/// Descriptor for `OffAnchorReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offAnchorReqDescriptor = $convert.base64Decode(
    'CgxPZmZBbmNob3JSZXE=');

@$core.Deprecated('Use offAnchorRspDescriptor instead')
const OffAnchorRsp$json = {
  '1': 'OffAnchorRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `OffAnchorRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offAnchorRspDescriptor = $convert.base64Decode(
    'CgxPZmZBbmNob3JSc3ASJwoGcmVzdWx0GAEgASgOMg8ucGJfcHViLkVyckNvZGVSBnJlc3VsdA'
    '==');

@$core.Deprecated('Use onChairReqDescriptor instead')
const OnChairReq$json = {
  '1': 'OnChairReq',
};

/// Descriptor for `OnChairReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onChairReqDescriptor = $convert.base64Decode(
    'CgpPbkNoYWlyUmVx');

@$core.Deprecated('Use onChairRspDescriptor instead')
const OnChairRsp$json = {
  '1': 'OnChairRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'errDesc', '3': 2, '4': 1, '5': 9, '10': 'errDesc'},
  ],
};

/// Descriptor for `OnChairRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onChairRspDescriptor = $convert.base64Decode(
    'CgpPbkNoYWlyUnNwEicKBnJlc3VsdBgBIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgZyZXN1bHQSGA'
    'oHZXJyRGVzYxgCIAEoCVIHZXJyRGVzYw==');

@$core.Deprecated('Use onAnchorReqDescriptor instead')
const OnAnchorReq$json = {
  '1': 'OnAnchorReq',
  '2': [
    {'1': 'loc', '3': 1, '4': 1, '5': 5, '10': 'loc'},
  ],
};

/// Descriptor for `OnAnchorReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onAnchorReqDescriptor = $convert.base64Decode(
    'CgtPbkFuY2hvclJlcRIQCgNsb2MYASABKAVSA2xvYw==');

@$core.Deprecated('Use onAnchorRspDescriptor instead')
const OnAnchorRsp$json = {
  '1': 'OnAnchorRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'errDesc', '3': 2, '4': 1, '5': 9, '10': 'errDesc'},
  ],
};

/// Descriptor for `OnAnchorRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onAnchorRspDescriptor = $convert.base64Decode(
    'CgtPbkFuY2hvclJzcBInCgZyZXN1bHQYASABKA4yDy5wYl9wdWIuRXJyQ29kZVIGcmVzdWx0Eh'
    'gKB2VyckRlc2MYAiABKAlSB2VyckRlc2M=');

@$core.Deprecated('Use chairManPutOnAnchorReqDescriptor instead')
const ChairManPutOnAnchorReq$json = {
  '1': 'ChairManPutOnAnchorReq',
  '2': [
    {'1': 'aimId', '3': 1, '4': 1, '5': 3, '10': 'aimId'},
  ],
};

/// Descriptor for `ChairManPutOnAnchorReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManPutOnAnchorReqDescriptor = $convert.base64Decode(
    'ChZDaGFpck1hblB1dE9uQW5jaG9yUmVxEhQKBWFpbUlkGAEgASgDUgVhaW1JZA==');

@$core.Deprecated('Use chairManPutOnAnchorRspDescriptor instead')
const ChairManPutOnAnchorRsp$json = {
  '1': 'ChairManPutOnAnchorRsp',
  '2': [
    {'1': 'aimId', '3': 1, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'result', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `ChairManPutOnAnchorRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManPutOnAnchorRspDescriptor = $convert.base64Decode(
    'ChZDaGFpck1hblB1dE9uQW5jaG9yUnNwEhQKBWFpbUlkGAEgASgDUgVhaW1JZBInCgZyZXN1bH'
    'QYAiABKA4yDy5wYl9wdWIuRXJyQ29kZVIGcmVzdWx0');

@$core.Deprecated('Use chairManPutOnAnchorNotifyDescriptor instead')
const ChairManPutOnAnchorNotify$json = {
  '1': 'ChairManPutOnAnchorNotify',
  '2': [
    {'1': 'anchorLoc', '3': 1, '4': 1, '5': 5, '10': 'anchorLoc'},
    {'1': 'optId', '3': 2, '4': 1, '5': 3, '10': 'optId'},
    {'1': 'aimId', '3': 3, '4': 1, '5': 3, '10': 'aimId'},
  ],
};

/// Descriptor for `ChairManPutOnAnchorNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManPutOnAnchorNotifyDescriptor = $convert.base64Decode(
    'ChlDaGFpck1hblB1dE9uQW5jaG9yTm90aWZ5EhwKCWFuY2hvckxvYxgBIAEoBVIJYW5jaG9yTG'
    '9jEhQKBW9wdElkGAIgASgDUgVvcHRJZBIUCgVhaW1JZBgDIAEoA1IFYWltSWQ=');

@$core.Deprecated('Use chairManInviteAudienceReqDescriptor instead')
const ChairManInviteAudienceReq$json = {
  '1': 'ChairManInviteAudienceReq',
  '2': [
    {'1': 'inviteeId', '3': 1, '4': 1, '5': 3, '10': 'inviteeId'},
    {'1': 'inviterId', '3': 2, '4': 1, '5': 3, '10': 'inviterId'},
    {'1': 'roomId', '3': 3, '4': 1, '5': 3, '10': 'roomId'},
  ],
};

/// Descriptor for `ChairManInviteAudienceReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManInviteAudienceReqDescriptor = $convert.base64Decode(
    'ChlDaGFpck1hbkludml0ZUF1ZGllbmNlUmVxEhwKCWludml0ZWVJZBgBIAEoA1IJaW52aXRlZU'
    'lkEhwKCWludml0ZXJJZBgCIAEoA1IJaW52aXRlcklkEhYKBnJvb21JZBgDIAEoA1IGcm9vbUlk');

@$core.Deprecated('Use chairManInviteAudienceRspDescriptor instead')
const ChairManInviteAudienceRsp$json = {
  '1': 'ChairManInviteAudienceRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `ChairManInviteAudienceRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManInviteAudienceRspDescriptor = $convert.base64Decode(
    'ChlDaGFpck1hbkludml0ZUF1ZGllbmNlUnNwEicKBnJlc3VsdBgBIAEoDjIPLnBiX3B1Yi5Fcn'
    'JDb2RlUgZyZXN1bHQ=');

@$core.Deprecated('Use enter3TChannelResultNotifyToServerDescriptor instead')
const Enter3TChannelResultNotifyToServer$json = {
  '1': 'Enter3TChannelResultNotifyToServer',
  '2': [
    {'1': 'Result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'Result'},
  ],
};

/// Descriptor for `Enter3TChannelResultNotifyToServer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enter3TChannelResultNotifyToServerDescriptor = $convert.base64Decode(
    'CiJFbnRlcjNUQ2hhbm5lbFJlc3VsdE5vdGlmeVRvU2VydmVyEicKBlJlc3VsdBgBIAEoDjIPLn'
    'BiX3B1Yi5FcnJDb2RlUgZSZXN1bHQ=');

@$core.Deprecated('Use chairManInviteAudienceAnswerReqDescriptor instead')
const ChairManInviteAudienceAnswerReq$json = {
  '1': 'ChairManInviteAudienceAnswerReq',
  '2': [
    {'1': 'inviteeId', '3': 1, '4': 1, '5': 3, '10': 'inviteeId'},
    {'1': 'inviterId', '3': 2, '4': 1, '5': 3, '10': 'inviterId'},
    {'1': 'answerType', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_live_room.AnswerType', '10': 'answerType'},
  ],
};

/// Descriptor for `ChairManInviteAudienceAnswerReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManInviteAudienceAnswerReqDescriptor = $convert.base64Decode(
    'Ch9DaGFpck1hbkludml0ZUF1ZGllbmNlQW5zd2VyUmVxEhwKCWludml0ZWVJZBgBIAEoA1IJaW'
    '52aXRlZUlkEhwKCWludml0ZXJJZBgCIAEoA1IJaW52aXRlcklkEjwKCmFuc3dlclR5cGUYAyAB'
    'KA4yHC5wYl9tc2dfbGl2ZV9yb29tLkFuc3dlclR5cGVSCmFuc3dlclR5cGU=');

@$core.Deprecated('Use chairManInviteAudienceAnswerRspDescriptor instead')
const ChairManInviteAudienceAnswerRsp$json = {
  '1': 'ChairManInviteAudienceAnswerRsp',
  '2': [
    {'1': 'anchorLoc', '3': 1, '4': 1, '5': 5, '10': 'anchorLoc'},
    {'1': 'result', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `ChairManInviteAudienceAnswerRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManInviteAudienceAnswerRspDescriptor = $convert.base64Decode(
    'Ch9DaGFpck1hbkludml0ZUF1ZGllbmNlQW5zd2VyUnNwEhwKCWFuY2hvckxvYxgBIAEoBVIJYW'
    '5jaG9yTG9jEicKBnJlc3VsdBgCIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgZyZXN1bHQ=');

@$core.Deprecated('Use chairManOffAnchorReqDescriptor instead')
const ChairManOffAnchorReq$json = {
  '1': 'ChairManOffAnchorReq',
  '2': [
    {'1': 'aimId', '3': 1, '4': 1, '5': 3, '10': 'aimId'},
  ],
};

/// Descriptor for `ChairManOffAnchorReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManOffAnchorReqDescriptor = $convert.base64Decode(
    'ChRDaGFpck1hbk9mZkFuY2hvclJlcRIUCgVhaW1JZBgBIAEoA1IFYWltSWQ=');

@$core.Deprecated('Use chairManOffAnchorRspDescriptor instead')
const ChairManOffAnchorRsp$json = {
  '1': 'ChairManOffAnchorRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `ChairManOffAnchorRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManOffAnchorRspDescriptor = $convert.base64Decode(
    'ChRDaGFpck1hbk9mZkFuY2hvclJzcBInCgZyZXN1bHQYASABKA4yDy5wYl9wdWIuRXJyQ29kZV'
    'IGcmVzdWx0');

@$core.Deprecated('Use chairManOffAnchorNotifyDescriptor instead')
const ChairManOffAnchorNotify$json = {
  '1': 'ChairManOffAnchorNotify',
  '2': [
    {'1': 'aimId', '3': 1, '4': 1, '5': 3, '10': 'aimId'},
  ],
};

/// Descriptor for `ChairManOffAnchorNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chairManOffAnchorNotifyDescriptor = $convert.base64Decode(
    'ChdDaGFpck1hbk9mZkFuY2hvck5vdGlmeRIUCgVhaW1JZBgBIAEoA1IFYWltSWQ=');

@$core.Deprecated('Use recoverLiveRoomReqDescriptor instead')
const RecoverLiveRoomReq$json = {
  '1': 'RecoverLiveRoomReq',
};

/// Descriptor for `RecoverLiveRoomReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverLiveRoomReqDescriptor = $convert.base64Decode(
    'ChJSZWNvdmVyTGl2ZVJvb21SZXE=');

@$core.Deprecated('Use recoverLiveRoomRspDescriptor instead')
const RecoverLiveRoomRsp$json = {
  '1': 'RecoverLiveRoomRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `RecoverLiveRoomRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverLiveRoomRspDescriptor = $convert.base64Decode(
    'ChJSZWNvdmVyTGl2ZVJvb21Sc3ASJwoGcmVzdWx0GAEgASgOMg8ucGJfcHViLkVyckNvZGVSBn'
    'Jlc3VsdA==');

@$core.Deprecated('Use videoStateChangeNotifyDescriptor instead')
const VideoStateChangeNotify$json = {
  '1': 'VideoStateChangeNotify',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 5, '10': 'state'},
  ],
};

/// Descriptor for `VideoStateChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoStateChangeNotifyDescriptor = $convert.base64Decode(
    'ChZWaWRlb1N0YXRlQ2hhbmdlTm90aWZ5EhQKBXN0YXRlGAEgASgFUgVzdGF0ZQ==');

@$core.Deprecated('Use audioStateChangeNotifyDescriptor instead')
const AudioStateChangeNotify$json = {
  '1': 'AudioStateChangeNotify',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 5, '10': 'state'},
  ],
};

/// Descriptor for `AudioStateChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audioStateChangeNotifyDescriptor = $convert.base64Decode(
    'ChZBdWRpb1N0YXRlQ2hhbmdlTm90aWZ5EhQKBXN0YXRlGAEgASgFUgVzdGF0ZQ==');

@$core.Deprecated('Use roomMsgExpressionDescriptor instead')
const RoomMsgExpression$json = {
  '1': 'RoomMsgExpression',
  '2': [
    {'1': 'expressionId', '3': 1, '4': 1, '5': 5, '10': 'expressionId'},
    {'1': 'loc', '3': 2, '4': 1, '5': 5, '10': 'loc'},
    {'1': 'exp', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_live_room.RoomMsgExpression.ExpEntry', '10': 'exp'},
  ],
  '3': [RoomMsgExpression_ExpEntry$json],
};

@$core.Deprecated('Use roomMsgExpressionDescriptor instead')
const RoomMsgExpression_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RoomMsgExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomMsgExpressionDescriptor = $convert.base64Decode(
    'ChFSb29tTXNnRXhwcmVzc2lvbhIiCgxleHByZXNzaW9uSWQYASABKAVSDGV4cHJlc3Npb25JZB'
    'IQCgNsb2MYAiABKAVSA2xvYxI+CgNleHAYAyADKAsyLC5wYl9tc2dfbGl2ZV9yb29tLlJvb21N'
    'c2dFeHByZXNzaW9uLkV4cEVudHJ5UgNleHAaNgoIRXhwRW50cnkSEAoDa2V5GAEgASgJUgNrZX'
    'kSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use kickUserOutNotifyDescriptor instead')
const KickUserOutNotify$json = {
  '1': 'KickUserOutNotify',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `KickUserOutNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickUserOutNotifyDescriptor = $convert.base64Decode(
    'ChFLaWNrVXNlck91dE5vdGlmeRIWCgZ1c2VySWQYASABKANSBnVzZXJJZA==');

@$core.Deprecated('Use forbidStateChangeNotifyDescriptor instead')
const ForbidStateChangeNotify$json = {
  '1': 'ForbidStateChangeNotify',
  '2': [
    {'1': 'aimId', '3': 1, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'state', '3': 2, '4': 1, '5': 5, '10': 'state'},
  ],
};

/// Descriptor for `ForbidStateChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forbidStateChangeNotifyDescriptor = $convert.base64Decode(
    'ChdGb3JiaWRTdGF0ZUNoYW5nZU5vdGlmeRIUCgVhaW1JZBgBIAEoA1IFYWltSWQSFAoFc3RhdG'
    'UYAiABKAVSBXN0YXRl');

@$core.Deprecated('Use liveGiftNotifyDescriptor instead')
const LiveGiftNotify$json = {
  '1': 'LiveGiftNotify',
  '2': [
    {'1': 'sender', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UserProp', '10': 'sender'},
    {'1': 'roomType', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_live_room.RoomType', '10': 'roomType'},
    {'1': 'sendType', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_live_room.LiveGiftNotify.SendType', '10': 'sendType'},
    {'1': 'receivers', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_live_room.Receiver', '10': 'receivers'},
    {'1': 'gift', '3': 5, '4': 1, '5': 11, '6': '.pb_msg_live_room.LiveGift', '10': 'gift'},
  ],
  '4': [LiveGiftNotify_SendType$json],
};

@$core.Deprecated('Use liveGiftNotifyDescriptor instead')
const LiveGiftNotify_SendType$json = {
  '1': 'SendType',
  '2': [
    {'1': 'SINGLE', '2': 0},
    {'1': 'MULTI', '2': 1},
  ],
};

/// Descriptor for `LiveGiftNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveGiftNotifyDescriptor = $convert.base64Decode(
    'Cg5MaXZlR2lmdE5vdGlmeRIyCgZzZW5kZXIYASABKAsyGi5wYl9tc2dfbGl2ZV9yb29tLlVzZX'
    'JQcm9wUgZzZW5kZXISNgoIcm9vbVR5cGUYAiABKA4yGi5wYl9tc2dfbGl2ZV9yb29tLlJvb21U'
    'eXBlUghyb29tVHlwZRJFCghzZW5kVHlwZRgDIAEoDjIpLnBiX21zZ19saXZlX3Jvb20uTGl2ZU'
    'dpZnROb3RpZnkuU2VuZFR5cGVSCHNlbmRUeXBlEjgKCXJlY2VpdmVycxgEIAMoCzIaLnBiX21z'
    'Z19saXZlX3Jvb20uUmVjZWl2ZXJSCXJlY2VpdmVycxIuCgRnaWZ0GAUgASgLMhoucGJfbXNnX2'
    'xpdmVfcm9vbS5MaXZlR2lmdFIEZ2lmdCIhCghTZW5kVHlwZRIKCgZTSU5HTEUQABIJCgVNVUxU'
    'SRAB');

@$core.Deprecated('Use receiverDescriptor instead')
const Receiver$json = {
  '1': 'Receiver',
  '2': [
    {'1': 'actorId', '3': 1, '4': 1, '5': 3, '10': 'actorId'},
    {'1': 'actorName', '3': 2, '4': 1, '5': 9, '10': 'actorName'},
    {'1': 'exp', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_live_room.Receiver.ExpEntry', '10': 'exp'},
    {'1': 'headerImageOriginal', '3': 4, '4': 1, '5': 9, '10': 'headerImageOriginal'},
  ],
  '3': [Receiver_ExpEntry$json],
};

@$core.Deprecated('Use receiverDescriptor instead')
const Receiver_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Receiver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List receiverDescriptor = $convert.base64Decode(
    'CghSZWNlaXZlchIYCgdhY3RvcklkGAEgASgDUgdhY3RvcklkEhwKCWFjdG9yTmFtZRgCIAEoCV'
    'IJYWN0b3JOYW1lEjUKA2V4cBgDIAMoCzIjLnBiX21zZ19saXZlX3Jvb20uUmVjZWl2ZXIuRXhw'
    'RW50cnlSA2V4cBIwChNoZWFkZXJJbWFnZU9yaWdpbmFsGAQgASgJUhNoZWFkZXJJbWFnZU9yaW'
    'dpbmFsGjYKCEV4cEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1'
    'ZToCOAE=');

@$core.Deprecated('Use liveGiftDescriptor instead')
const LiveGift$json = {
  '1': 'LiveGift',
  '2': [
    {'1': 'giftId', '3': 1, '4': 1, '5': 3, '10': 'giftId'},
    {'1': 'giftNumber', '3': 2, '4': 1, '5': 3, '10': 'giftNumber'},
    {'1': 'giftType', '3': 3, '4': 1, '5': 5, '10': 'giftType'},
    {'1': 'giftConfLastUpdateTime', '3': 4, '4': 1, '5': 3, '10': 'giftConfLastUpdateTime'},
    {'1': 'batteryType', '3': 5, '4': 1, '5': 5, '10': 'batteryType'},
    {'1': 'batteryTypeList', '3': 6, '4': 3, '5': 3, '10': 'batteryTypeList'},
    {'1': 'exp', '3': 7, '4': 3, '5': 11, '6': '.pb_msg_live_room.LiveGift.ExpEntry', '10': 'exp'},
  ],
  '3': [LiveGift_ExpEntry$json],
};

@$core.Deprecated('Use liveGiftDescriptor instead')
const LiveGift_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `LiveGift`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveGiftDescriptor = $convert.base64Decode(
    'CghMaXZlR2lmdBIWCgZnaWZ0SWQYASABKANSBmdpZnRJZBIeCgpnaWZ0TnVtYmVyGAIgASgDUg'
    'pnaWZ0TnVtYmVyEhoKCGdpZnRUeXBlGAMgASgFUghnaWZ0VHlwZRI2ChZnaWZ0Q29uZkxhc3RV'
    'cGRhdGVUaW1lGAQgASgDUhZnaWZ0Q29uZkxhc3RVcGRhdGVUaW1lEiAKC2JhdHRlcnlUeXBlGA'
    'UgASgFUgtiYXR0ZXJ5VHlwZRIoCg9iYXR0ZXJ5VHlwZUxpc3QYBiADKANSD2JhdHRlcnlUeXBl'
    'TGlzdBI1CgNleHAYByADKAsyIy5wYl9tc2dfbGl2ZV9yb29tLkxpdmVHaWZ0LkV4cEVudHJ5Ug'
    'NleHAaNgoIRXhwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVl'
    'OgI4AQ==');

@$core.Deprecated('Use multiAnchorScoreChangeNotifyDescriptor instead')
const MultiAnchorScoreChangeNotify$json = {
  '1': 'MultiAnchorScoreChangeNotify',
  '2': [
    {'1': 'anchors', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_live_room.MultiAnchorScoreChangeNotify.Anchor', '10': 'anchors'},
  ],
  '3': [MultiAnchorScoreChangeNotify_Anchor$json],
};

@$core.Deprecated('Use multiAnchorScoreChangeNotifyDescriptor instead')
const MultiAnchorScoreChangeNotify_Anchor$json = {
  '1': 'Anchor',
  '2': [
    {'1': 'score', '3': 1, '4': 1, '5': 3, '10': 'score'},
    {'1': 'actorId', '3': 2, '4': 1, '5': 3, '10': 'actorId'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
  ],
};

/// Descriptor for `MultiAnchorScoreChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiAnchorScoreChangeNotifyDescriptor = $convert.base64Decode(
    'ChxNdWx0aUFuY2hvclNjb3JlQ2hhbmdlTm90aWZ5Ek8KB2FuY2hvcnMYASADKAsyNS5wYl9tc2'
    'dfbGl2ZV9yb29tLk11bHRpQW5jaG9yU2NvcmVDaGFuZ2VOb3RpZnkuQW5jaG9yUgdhbmNob3Jz'
    'GlYKBkFuY2hvchIUCgVzY29yZRgBIAEoA1IFc2NvcmUSGAoHYWN0b3JJZBgCIAEoA1IHYWN0b3'
    'JJZBIcCgl0aW1lc3RhbXAYAyABKANSCXRpbWVzdGFtcA==');

@$core.Deprecated('Use investorChangeNotifyDescriptor instead')
const InvestorChangeNotify$json = {
  '1': 'InvestorChangeNotify',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'nickName', '3': 2, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'headerImageOriginal', '3': 3, '4': 1, '5': 9, '10': 'headerImageOriginal'},
    {'1': 'levelPrivilegeOpen', '3': 4, '4': 1, '5': 8, '10': 'levelPrivilegeOpen'},
  ],
};

/// Descriptor for `InvestorChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List investorChangeNotifyDescriptor = $convert.base64Decode(
    'ChRJbnZlc3RvckNoYW5nZU5vdGlmeRIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIaCghuaWNrTm'
    'FtZRgCIAEoCVIIbmlja05hbWUSMAoTaGVhZGVySW1hZ2VPcmlnaW5hbBgDIAEoCVITaGVhZGVy'
    'SW1hZ2VPcmlnaW5hbBIuChJsZXZlbFByaXZpbGVnZU9wZW4YBCABKAhSEmxldmVsUHJpdmlsZW'
    'dlT3Blbg==');

@$core.Deprecated('Use backgroundChangeNotifyDescriptor instead')
const BackgroundChangeNotify$json = {
  '1': 'BackgroundChangeNotify',
  '2': [
    {'1': 'dynamicBackgroundImage', '3': 1, '4': 1, '5': 9, '10': 'dynamicBackgroundImage'},
  ],
};

/// Descriptor for `BackgroundChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backgroundChangeNotifyDescriptor = $convert.base64Decode(
    'ChZCYWNrZ3JvdW5kQ2hhbmdlTm90aWZ5EjYKFmR5bmFtaWNCYWNrZ3JvdW5kSW1hZ2UYASABKA'
    'lSFmR5bmFtaWNCYWNrZ3JvdW5kSW1hZ2U=');

@$core.Deprecated('Use handDrawnGiftNotifyDescriptor instead')
const HandDrawnGiftNotify$json = {
  '1': 'HandDrawnGiftNotify',
  '2': [
    {'1': 'sender', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UserProp', '10': 'sender'},
    {'1': 'roomType', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_live_room.RoomType', '10': 'roomType'},
    {'1': 'sendType', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_live_room.HandDrawnGiftNotify.SendType', '10': 'sendType'},
    {'1': 'receivers', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_live_room.Receiver', '10': 'receivers'},
    {'1': 'screenWidth', '3': 5, '4': 1, '5': 3, '10': 'screenWidth'},
    {'1': 'screenHeight', '3': 6, '4': 1, '5': 3, '10': 'screenHeight'},
    {'1': 'gifts', '3': 7, '4': 3, '5': 11, '6': '.pb_msg_live_room.HandDrawnGiftNotify.HandDrawnGift', '10': 'gifts'},
  ],
  '3': [HandDrawnGiftNotify_HandDrawnGift$json],
  '4': [HandDrawnGiftNotify_SendType$json],
};

@$core.Deprecated('Use handDrawnGiftNotifyDescriptor instead')
const HandDrawnGiftNotify_HandDrawnGift$json = {
  '1': 'HandDrawnGift',
  '2': [
    {'1': 'giftId', '3': 1, '4': 1, '5': 5, '10': 'giftId'},
    {'1': 'path', '3': 2, '4': 3, '5': 2, '10': 'path'},
    {'1': 'giftConfLastUpdateTime', '3': 3, '4': 1, '5': 3, '10': 'giftConfLastUpdateTime'},
  ],
};

@$core.Deprecated('Use handDrawnGiftNotifyDescriptor instead')
const HandDrawnGiftNotify_SendType$json = {
  '1': 'SendType',
  '2': [
    {'1': 'SINGLE', '2': 0},
    {'1': 'MULTI', '2': 1},
  ],
};

/// Descriptor for `HandDrawnGiftNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List handDrawnGiftNotifyDescriptor = $convert.base64Decode(
    'ChNIYW5kRHJhd25HaWZ0Tm90aWZ5EjIKBnNlbmRlchgBIAEoCzIaLnBiX21zZ19saXZlX3Jvb2'
    '0uVXNlclByb3BSBnNlbmRlchI2Cghyb29tVHlwZRgCIAEoDjIaLnBiX21zZ19saXZlX3Jvb20u'
    'Um9vbVR5cGVSCHJvb21UeXBlEkoKCHNlbmRUeXBlGAMgASgOMi4ucGJfbXNnX2xpdmVfcm9vbS'
    '5IYW5kRHJhd25HaWZ0Tm90aWZ5LlNlbmRUeXBlUghzZW5kVHlwZRI4CglyZWNlaXZlcnMYBCAD'
    'KAsyGi5wYl9tc2dfbGl2ZV9yb29tLlJlY2VpdmVyUglyZWNlaXZlcnMSIAoLc2NyZWVuV2lkdG'
    'gYBSABKANSC3NjcmVlbldpZHRoEiIKDHNjcmVlbkhlaWdodBgGIAEoA1IMc2NyZWVuSGVpZ2h0'
    'EkkKBWdpZnRzGAcgAygLMjMucGJfbXNnX2xpdmVfcm9vbS5IYW5kRHJhd25HaWZ0Tm90aWZ5Lk'
    'hhbmREcmF3bkdpZnRSBWdpZnRzGnMKDUhhbmREcmF3bkdpZnQSFgoGZ2lmdElkGAEgASgFUgZn'
    'aWZ0SWQSEgoEcGF0aBgCIAMoAlIEcGF0aBI2ChZnaWZ0Q29uZkxhc3RVcGRhdGVUaW1lGAMgAS'
    'gDUhZnaWZ0Q29uZkxhc3RVcGRhdGVUaW1lIiEKCFNlbmRUeXBlEgoKBlNJTkdMRRAAEgkKBU1V'
    'TFRJEAE=');

@$core.Deprecated('Use streamStateChangeNotifyDescriptor instead')
const StreamStateChangeNotify$json = {
  '1': 'StreamStateChangeNotify',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_live_room.STREAM_STATE', '10': 'state'},
    {'1': 'streamId', '3': 2, '4': 1, '5': 9, '10': 'streamId'},
  ],
};

/// Descriptor for `StreamStateChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamStateChangeNotifyDescriptor = $convert.base64Decode(
    'ChdTdHJlYW1TdGF0ZUNoYW5nZU5vdGlmeRI0CgVzdGF0ZRgBIAEoDjIeLnBiX21zZ19saXZlX3'
    'Jvb20uU1RSRUFNX1NUQVRFUgVzdGF0ZRIaCghzdHJlYW1JZBgCIAEoCVIIc3RyZWFtSWQ=');

