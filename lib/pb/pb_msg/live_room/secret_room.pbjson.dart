//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/secret_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cHAT_ANSWERDescriptor instead')
const CHAT_ANSWER$json = {
  '1': 'CHAT_ANSWER',
  '2': [
    {'1': 'REFUSE', '2': 0},
    {'1': 'AGREE', '2': 1},
  ],
};

/// Descriptor for `CHAT_ANSWER`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cHAT_ANSWERDescriptor = $convert.base64Decode(
    'CgtDSEFUX0FOU1dFUhIKCgZSRUZVU0UQABIJCgVBR1JFRRAB');

@$core.Deprecated('Use cHAT_CLOSE_TYPEDescriptor instead')
const CHAT_CLOSE_TYPE$json = {
  '1': 'CHAT_CLOSE_TYPE',
  '2': [
    {'1': 'TIMEOUT', '2': 0},
    {'1': 'MANUAL', '2': 1},
    {'1': 'BY_HOST', '2': 2},
  ],
};

/// Descriptor for `CHAT_CLOSE_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cHAT_CLOSE_TYPEDescriptor = $convert.base64Decode(
    'Cg9DSEFUX0NMT1NFX1RZUEUSCwoHVElNRU9VVBAAEgoKBk1BTlVBTBABEgsKB0JZX0hPU1QQAg'
    '==');

@$core.Deprecated('Use chatterDescriptor instead')
const Chatter$json = {
  '1': 'Chatter',
  '2': [
    {'1': 'userProp', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.UserProp', '10': 'userProp'},
    {'1': 'videoState', '3': 4, '4': 1, '5': 5, '10': 'videoState'},
    {'1': 'audioState', '3': 5, '4': 1, '5': 5, '10': 'audioState'},
    {'1': 'leaveState', '3': 6, '4': 1, '5': 3, '10': 'leaveState'},
  ],
};

/// Descriptor for `Chatter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatterDescriptor = $convert.base64Decode(
    'CgdDaGF0dGVyEjYKCHVzZXJQcm9wGAEgASgLMhoucGJfbXNnX2xpdmVfcm9vbS5Vc2VyUHJvcF'
    'IIdXNlclByb3ASHgoKdmlkZW9TdGF0ZRgEIAEoBVIKdmlkZW9TdGF0ZRIeCgphdWRpb1N0YXRl'
    'GAUgASgFUgphdWRpb1N0YXRlEh4KCmxlYXZlU3RhdGUYBiABKANSCmxlYXZlU3RhdGU=');

@$core.Deprecated('Use chatRoomInfoDescriptor instead')
const ChatRoomInfo$json = {
  '1': 'ChatRoomInfo',
  '2': [
    {'1': 'caller', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.Chatter', '10': 'caller'},
    {'1': 'callee', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_live_room.Chatter', '10': 'callee'},
    {'1': 'interval', '3': 3, '4': 1, '5': 3, '10': 'interval'},
    {'1': 'price', '3': 4, '4': 1, '5': 3, '10': 'price'},
    {'1': 'deadline', '3': 5, '4': 1, '5': 3, '10': 'deadline'},
    {'1': 'autoRenewal', '3': 6, '4': 1, '5': 8, '10': 'autoRenewal'},
    {'1': 'oneMore', '3': 7, '4': 1, '5': 8, '10': 'oneMore'},
    {'1': 'channelId', '3': 8, '4': 1, '5': 9, '10': 'channelId'},
  ],
};

/// Descriptor for `ChatRoomInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatRoomInfoDescriptor = $convert.base64Decode(
    'CgxDaGF0Um9vbUluZm8SMQoGY2FsbGVyGAEgASgLMhkucGJfbXNnX2xpdmVfcm9vbS5DaGF0dG'
    'VyUgZjYWxsZXISMQoGY2FsbGVlGAIgASgLMhkucGJfbXNnX2xpdmVfcm9vbS5DaGF0dGVyUgZj'
    'YWxsZWUSGgoIaW50ZXJ2YWwYAyABKANSCGludGVydmFsEhQKBXByaWNlGAQgASgDUgVwcmljZR'
    'IaCghkZWFkbGluZRgFIAEoA1IIZGVhZGxpbmUSIAoLYXV0b1JlbmV3YWwYBiABKAhSC2F1dG9S'
    'ZW5ld2FsEhgKB29uZU1vcmUYByABKAhSB29uZU1vcmUSHAoJY2hhbm5lbElkGAggASgJUgljaG'
    'FubmVsSWQ=');

@$core.Deprecated('Use updateChatPriceDescriptor instead')
const UpdateChatPrice$json = {
  '1': 'UpdateChatPrice',
  '2': [
    {'1': 'interval', '3': 1, '4': 1, '5': 3, '10': 'interval'},
    {'1': 'price', '3': 2, '4': 1, '5': 3, '10': 'price'},
  ],
};

/// Descriptor for `UpdateChatPrice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateChatPriceDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVDaGF0UHJpY2USGgoIaW50ZXJ2YWwYASABKANSCGludGVydmFsEhQKBXByaWNlGA'
    'IgASgDUgVwcmljZQ==');

@$core.Deprecated('Use chatApplyReqDescriptor instead')
const ChatApplyReq$json = {
  '1': 'ChatApplyReq',
  '2': [
    {'1': 'calleeId', '3': 1, '4': 1, '5': 3, '10': 'calleeId'},
    {'1': 'callerId', '3': 2, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'callerName', '3': 3, '4': 1, '5': 9, '10': 'callerName'},
    {'1': 'callerHeaderImage', '3': 4, '4': 1, '5': 9, '10': 'callerHeaderImage'},
    {'1': 'inviteTime', '3': 5, '4': 1, '5': 3, '10': 'inviteTime'},
  ],
};

/// Descriptor for `ChatApplyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatApplyReqDescriptor = $convert.base64Decode(
    'CgxDaGF0QXBwbHlSZXESGgoIY2FsbGVlSWQYASABKANSCGNhbGxlZUlkEhoKCGNhbGxlcklkGA'
    'IgASgDUghjYWxsZXJJZBIeCgpjYWxsZXJOYW1lGAMgASgJUgpjYWxsZXJOYW1lEiwKEWNhbGxl'
    'ckhlYWRlckltYWdlGAQgASgJUhFjYWxsZXJIZWFkZXJJbWFnZRIeCgppbnZpdGVUaW1lGAUgAS'
    'gDUgppbnZpdGVUaW1l');

@$core.Deprecated('Use chatApplyRspDescriptor instead')
const ChatApplyRsp$json = {
  '1': 'ChatApplyRsp',
  '2': [
    {'1': 'errCode', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'errCode'},
    {'1': 'errDesc', '3': 2, '4': 1, '5': 9, '10': 'errDesc'},
    {'1': 'callerId', '3': 3, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 4, '4': 1, '5': 3, '10': 'calleeId'},
  ],
};

/// Descriptor for `ChatApplyRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatApplyRspDescriptor = $convert.base64Decode(
    'CgxDaGF0QXBwbHlSc3ASKQoHZXJyQ29kZRgBIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgdlcnJDb2'
    'RlEhgKB2VyckRlc2MYAiABKAlSB2VyckRlc2MSGgoIY2FsbGVySWQYAyABKANSCGNhbGxlcklk'
    'EhoKCGNhbGxlZUlkGAQgASgDUghjYWxsZWVJZA==');

@$core.Deprecated('Use chatCancelReqDescriptor instead')
const ChatCancelReq$json = {
  '1': 'ChatCancelReq',
  '2': [
    {'1': 'calleeId', '3': 1, '4': 1, '5': 3, '10': 'calleeId'},
  ],
};

/// Descriptor for `ChatCancelReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCancelReqDescriptor = $convert.base64Decode(
    'Cg1DaGF0Q2FuY2VsUmVxEhoKCGNhbGxlZUlkGAEgASgDUghjYWxsZWVJZA==');

@$core.Deprecated('Use chatCancelRspDescriptor instead')
const ChatCancelRsp$json = {
  '1': 'ChatCancelRsp',
  '2': [
    {'1': 'errCode', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'errCode'},
    {'1': 'errDesc', '3': 2, '4': 1, '5': 9, '10': 'errDesc'},
    {'1': 'callerId', '3': 3, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 4, '4': 1, '5': 3, '10': 'calleeId'},
  ],
};

/// Descriptor for `ChatCancelRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCancelRspDescriptor = $convert.base64Decode(
    'Cg1DaGF0Q2FuY2VsUnNwEikKB2VyckNvZGUYASABKA4yDy5wYl9wdWIuRXJyQ29kZVIHZXJyQ2'
    '9kZRIYCgdlcnJEZXNjGAIgASgJUgdlcnJEZXNjEhoKCGNhbGxlcklkGAMgASgDUghjYWxsZXJJ'
    'ZBIaCghjYWxsZWVJZBgEIAEoA1IIY2FsbGVlSWQ=');

@$core.Deprecated('Use chatAnswerReqDescriptor instead')
const ChatAnswerReq$json = {
  '1': 'ChatAnswerReq',
  '2': [
    {'1': 'callerId', '3': 1, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'answer', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_live_room.CHAT_ANSWER', '10': 'answer'},
  ],
};

/// Descriptor for `ChatAnswerReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatAnswerReqDescriptor = $convert.base64Decode(
    'Cg1DaGF0QW5zd2VyUmVxEhoKCGNhbGxlcklkGAEgASgDUghjYWxsZXJJZBI1CgZhbnN3ZXIYAi'
    'ABKA4yHS5wYl9tc2dfbGl2ZV9yb29tLkNIQVRfQU5TV0VSUgZhbnN3ZXI=');

@$core.Deprecated('Use chatAnswerRspDescriptor instead')
const ChatAnswerRsp$json = {
  '1': 'ChatAnswerRsp',
  '2': [
    {'1': 'errCode', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'errCode'},
    {'1': 'errDesc', '3': 2, '4': 1, '5': 9, '10': 'errDesc'},
    {'1': 'callerId', '3': 3, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 4, '4': 1, '5': 3, '10': 'calleeId'},
  ],
};

/// Descriptor for `ChatAnswerRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatAnswerRspDescriptor = $convert.base64Decode(
    'Cg1DaGF0QW5zd2VyUnNwEikKB2VyckNvZGUYASABKA4yDy5wYl9wdWIuRXJyQ29kZVIHZXJyQ2'
    '9kZRIYCgdlcnJEZXNjGAIgASgJUgdlcnJEZXNjEhoKCGNhbGxlcklkGAMgASgDUghjYWxsZXJJ'
    'ZBIaCghjYWxsZWVJZBgEIAEoA1IIY2FsbGVlSWQ=');

@$core.Deprecated('Use chatCloseReqDescriptor instead')
const ChatCloseReq$json = {
  '1': 'ChatCloseReq',
  '2': [
    {'1': 'callerId', '3': 1, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 2, '4': 1, '5': 3, '10': 'calleeId'},
  ],
};

/// Descriptor for `ChatCloseReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCloseReqDescriptor = $convert.base64Decode(
    'CgxDaGF0Q2xvc2VSZXESGgoIY2FsbGVySWQYASABKANSCGNhbGxlcklkEhoKCGNhbGxlZUlkGA'
    'IgASgDUghjYWxsZWVJZA==');

@$core.Deprecated('Use chatCloseRspDescriptor instead')
const ChatCloseRsp$json = {
  '1': 'ChatCloseRsp',
};

/// Descriptor for `ChatCloseRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCloseRspDescriptor = $convert.base64Decode(
    'CgxDaGF0Q2xvc2VSc3A=');

@$core.Deprecated('Use setMicrophoneStateDescriptor instead')
const SetMicrophoneState$json = {
  '1': 'SetMicrophoneState',
  '2': [
    {'1': 'callerId', '3': 1, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 2, '4': 1, '5': 3, '10': 'calleeId'},
    {'1': 'state', '3': 3, '4': 1, '5': 5, '10': 'state'},
  ],
};

/// Descriptor for `SetMicrophoneState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setMicrophoneStateDescriptor = $convert.base64Decode(
    'ChJTZXRNaWNyb3Bob25lU3RhdGUSGgoIY2FsbGVySWQYASABKANSCGNhbGxlcklkEhoKCGNhbG'
    'xlZUlkGAIgASgDUghjYWxsZWVJZBIUCgVzdGF0ZRgDIAEoBVIFc3RhdGU=');

@$core.Deprecated('Use setLeaveStateDescriptor instead')
const SetLeaveState$json = {
  '1': 'SetLeaveState',
  '2': [
    {'1': 'callerId', '3': 1, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 2, '4': 1, '5': 3, '10': 'calleeId'},
    {'1': 'state', '3': 3, '4': 1, '5': 5, '10': 'state'},
  ],
};

/// Descriptor for `SetLeaveState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setLeaveStateDescriptor = $convert.base64Decode(
    'Cg1TZXRMZWF2ZVN0YXRlEhoKCGNhbGxlcklkGAEgASgDUghjYWxsZXJJZBIaCghjYWxsZWVJZB'
    'gCIAEoA1IIY2FsbGVlSWQSFAoFc3RhdGUYAyABKAVSBXN0YXRl');

@$core.Deprecated('Use setOneMoreDescriptor instead')
const SetOneMore$json = {
  '1': 'SetOneMore',
  '2': [
    {'1': 'callerId', '3': 1, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 2, '4': 1, '5': 3, '10': 'calleeId'},
    {'1': 'state', '3': 3, '4': 1, '5': 8, '10': 'state'},
  ],
};

/// Descriptor for `SetOneMore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setOneMoreDescriptor = $convert.base64Decode(
    'CgpTZXRPbmVNb3JlEhoKCGNhbGxlcklkGAEgASgDUghjYWxsZXJJZBIaCghjYWxsZWVJZBgCIA'
    'EoA1IIY2FsbGVlSWQSFAoFc3RhdGUYAyABKAhSBXN0YXRl');

@$core.Deprecated('Use setAutoRenewalDescriptor instead')
const SetAutoRenewal$json = {
  '1': 'SetAutoRenewal',
  '2': [
    {'1': 'callerId', '3': 1, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 2, '4': 1, '5': 3, '10': 'calleeId'},
    {'1': 'state', '3': 3, '4': 1, '5': 8, '10': 'state'},
  ],
};

/// Descriptor for `SetAutoRenewal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setAutoRenewalDescriptor = $convert.base64Decode(
    'Cg5TZXRBdXRvUmVuZXdhbBIaCghjYWxsZXJJZBgBIAEoA1IIY2FsbGVySWQSGgoIY2FsbGVlSW'
    'QYAiABKANSCGNhbGxlZUlkEhQKBXN0YXRlGAMgASgIUgVzdGF0ZQ==');

@$core.Deprecated('Use chatCountChangeNotifyDescriptor instead')
const ChatCountChangeNotify$json = {
  '1': 'ChatCountChangeNotify',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `ChatCountChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCountChangeNotifyDescriptor = $convert.base64Decode(
    'ChVDaGF0Q291bnRDaGFuZ2VOb3RpZnkSFAoFY291bnQYASABKAVSBWNvdW50');

@$core.Deprecated('Use fetchChatRoomsReqDescriptor instead')
const FetchChatRoomsReq$json = {
  '1': 'FetchChatRoomsReq',
};

/// Descriptor for `FetchChatRoomsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchChatRoomsReqDescriptor = $convert.base64Decode(
    'ChFGZXRjaENoYXRSb29tc1JlcQ==');

@$core.Deprecated('Use fetchChatRoomsRspDescriptor instead')
const FetchChatRoomsRsp$json = {
  '1': 'FetchChatRoomsRsp',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_live_room.ChatRoomSummery', '10': 'rooms'},
  ],
};

/// Descriptor for `FetchChatRoomsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchChatRoomsRspDescriptor = $convert.base64Decode(
    'ChFGZXRjaENoYXRSb29tc1JzcBI3CgVyb29tcxgBIAMoCzIhLnBiX21zZ19saXZlX3Jvb20uQ2'
    'hhdFJvb21TdW1tZXJ5UgVyb29tcw==');

@$core.Deprecated('Use chatRoomSummeryDescriptor instead')
const ChatRoomSummery$json = {
  '1': 'ChatRoomSummery',
  '2': [
    {'1': 'callerId', '3': 1, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 2, '4': 1, '5': 3, '10': 'calleeId'},
    {'1': 'callerUsername', '3': 3, '4': 1, '5': 9, '10': 'callerUsername'},
    {'1': 'calleeUsername', '3': 4, '4': 1, '5': 9, '10': 'calleeUsername'},
    {'1': 'callerHeadimage', '3': 5, '4': 1, '5': 9, '10': 'callerHeadimage'},
    {'1': 'calleeheadimage', '3': 6, '4': 1, '5': 9, '10': 'calleeheadimage'},
  ],
};

/// Descriptor for `ChatRoomSummery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatRoomSummeryDescriptor = $convert.base64Decode(
    'Cg9DaGF0Um9vbVN1bW1lcnkSGgoIY2FsbGVySWQYASABKANSCGNhbGxlcklkEhoKCGNhbGxlZU'
    'lkGAIgASgDUghjYWxsZWVJZBImCg5jYWxsZXJVc2VybmFtZRgDIAEoCVIOY2FsbGVyVXNlcm5h'
    'bWUSJgoOY2FsbGVlVXNlcm5hbWUYBCABKAlSDmNhbGxlZVVzZXJuYW1lEigKD2NhbGxlckhlYW'
    'RpbWFnZRgFIAEoCVIPY2FsbGVySGVhZGltYWdlEigKD2NhbGxlZWhlYWRpbWFnZRgGIAEoCVIP'
    'Y2FsbGVlaGVhZGltYWdl');

@$core.Deprecated('Use chatStartNotifyDescriptor instead')
const ChatStartNotify$json = {
  '1': 'ChatStartNotify',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.ChatRoomInfo', '10': 'info'},
  ],
};

/// Descriptor for `ChatStartNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatStartNotifyDescriptor = $convert.base64Decode(
    'Cg9DaGF0U3RhcnROb3RpZnkSMgoEaW5mbxgBIAEoCzIeLnBiX21zZ19saXZlX3Jvb20uQ2hhdF'
    'Jvb21JbmZvUgRpbmZv');

@$core.Deprecated('Use chatCreateNotifyDescriptor instead')
const ChatCreateNotify$json = {
  '1': 'ChatCreateNotify',
  '2': [
    {'1': 'room', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_live_room.ChatRoomSummery', '10': 'room'},
  ],
};

/// Descriptor for `ChatCreateNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCreateNotifyDescriptor = $convert.base64Decode(
    'ChBDaGF0Q3JlYXRlTm90aWZ5EjUKBHJvb20YASABKAsyIS5wYl9tc2dfbGl2ZV9yb29tLkNoYX'
    'RSb29tU3VtbWVyeVIEcm9vbQ==');

@$core.Deprecated('Use deadlineChangeNotifyDescriptor instead')
const DeadlineChangeNotify$json = {
  '1': 'DeadlineChangeNotify',
  '2': [
    {'1': 'deadline', '3': 1, '4': 1, '5': 3, '10': 'deadline'},
  ],
};

/// Descriptor for `DeadlineChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deadlineChangeNotifyDescriptor = $convert.base64Decode(
    'ChREZWFkbGluZUNoYW5nZU5vdGlmeRIaCghkZWFkbGluZRgBIAEoA1IIZGVhZGxpbmU=');

@$core.Deprecated('Use chatCloseNotifyDescriptor instead')
const ChatCloseNotify$json = {
  '1': 'ChatCloseNotify',
  '2': [
    {'1': 'callerId', '3': 1, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 2, '4': 1, '5': 3, '10': 'calleeId'},
    {'1': 'closeType', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_live_room.CHAT_CLOSE_TYPE', '10': 'closeType'},
  ],
};

/// Descriptor for `ChatCloseNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCloseNotifyDescriptor = $convert.base64Decode(
    'Cg9DaGF0Q2xvc2VOb3RpZnkSGgoIY2FsbGVySWQYASABKANSCGNhbGxlcklkEhoKCGNhbGxlZU'
    'lkGAIgASgDUghjYWxsZWVJZBI/CgljbG9zZVR5cGUYAyABKA4yIS5wYl9tc2dfbGl2ZV9yb29t'
    'LkNIQVRfQ0xPU0VfVFlQRVIJY2xvc2VUeXBl');

@$core.Deprecated('Use balanceChangeNotifyDescriptor instead')
const BalanceChangeNotify$json = {
  '1': 'BalanceChangeNotify',
  '2': [
    {'1': 'coinBalance', '3': 1, '4': 1, '5': 3, '10': 'coinBalance'},
  ],
};

/// Descriptor for `BalanceChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balanceChangeNotifyDescriptor = $convert.base64Decode(
    'ChNCYWxhbmNlQ2hhbmdlTm90aWZ5EiAKC2NvaW5CYWxhbmNlGAEgASgDUgtjb2luQmFsYW5jZQ'
    '==');

@$core.Deprecated('Use hostCloseSoonNotifyDescriptor instead')
const HostCloseSoonNotify$json = {
  '1': 'HostCloseSoonNotify',
};

/// Descriptor for `HostCloseSoonNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hostCloseSoonNotifyDescriptor = $convert.base64Decode(
    'ChNIb3N0Q2xvc2VTb29uTm90aWZ5');

@$core.Deprecated('Use secretGiftDescriptor instead')
const SecretGift$json = {
  '1': 'SecretGift',
  '2': [
    {'1': 'senderId', '3': 1, '4': 1, '5': 3, '10': 'senderId'},
    {'1': 'receiverId', '3': 2, '4': 1, '5': 3, '10': 'receiverId'},
    {'1': 'gift', '3': 3, '4': 1, '5': 11, '6': '.pb_msg_live_room.LiveGift', '10': 'gift'},
  ],
};

/// Descriptor for `SecretGift`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretGiftDescriptor = $convert.base64Decode(
    'CgpTZWNyZXRHaWZ0EhoKCHNlbmRlcklkGAEgASgDUghzZW5kZXJJZBIeCgpyZWNlaXZlcklkGA'
    'IgASgDUgpyZWNlaXZlcklkEi4KBGdpZnQYAyABKAsyGi5wYl9tc2dfbGl2ZV9yb29tLkxpdmVH'
    'aWZ0UgRnaWZ0');

