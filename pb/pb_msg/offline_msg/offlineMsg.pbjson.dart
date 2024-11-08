//
//  Generated code. Do not modify.
//  source: pb_msg/offline_msg/offlineMsg.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cHAT_SESSION_TYPEDescriptor instead')
const CHAT_SESSION_TYPE$json = {
  '1': 'CHAT_SESSION_TYPE',
  '2': [
    {'1': 'CHAT_SESSION_TYPE_GROUP_CHAT', '2': 0},
    {'1': 'CHAT_SESSION_TYPE_PRIVATE_CHAT', '2': 100},
  ],
};

/// Descriptor for `CHAT_SESSION_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cHAT_SESSION_TYPEDescriptor = $convert.base64Decode(
    'ChFDSEFUX1NFU1NJT05fVFlQRRIgChxDSEFUX1NFU1NJT05fVFlQRV9HUk9VUF9DSEFUEAASIg'
    'oeQ0hBVF9TRVNTSU9OX1RZUEVfUFJJVkFURV9DSEFUEGQ=');

@$core.Deprecated('Use fETCH_SESSION_RANGEDescriptor instead')
const FETCH_SESSION_RANGE$json = {
  '1': 'FETCH_SESSION_RANGE',
  '2': [
    {'1': 'ALL', '2': 0},
    {'1': 'PRIVATE_CHAT', '2': 1},
    {'1': 'GROUP_CHAT', '2': 2},
  ],
};

/// Descriptor for `FETCH_SESSION_RANGE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fETCH_SESSION_RANGEDescriptor = $convert.base64Decode(
    'ChNGRVRDSF9TRVNTSU9OX1JBTkdFEgcKA0FMTBAAEhAKDFBSSVZBVEVfQ0hBVBABEg4KCkdST1'
    'VQX0NIQVQQAg==');

@$core.Deprecated('Use saveOfflineMsgReqDescriptor instead')
const SaveOfflineMsgReq$json = {
  '1': 'SaveOfflineMsgReq',
  '2': [
    {'1': 'src_userid', '3': 1, '4': 1, '5': 3, '10': 'srcUserid'},
    {'1': 'aim_userid', '3': 2, '4': 1, '5': 3, '10': 'aimUserid'},
    {'1': 'sn', '3': 3, '4': 1, '5': 3, '10': 'sn'},
    {'1': 'pb_name', '3': 4, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pb_data', '3': 5, '4': 1, '5': 12, '10': 'pbData'},
    {'1': 'time', '3': 6, '4': 1, '5': 3, '10': 'time'},
    {'1': 'pbCommData', '3': 7, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'relationUserIds', '3': 8, '4': 3, '5': 3, '10': 'relationUserIds'},
  ],
};

/// Descriptor for `SaveOfflineMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveOfflineMsgReqDescriptor = $convert.base64Decode(
    'ChFTYXZlT2ZmbGluZU1zZ1JlcRIdCgpzcmNfdXNlcmlkGAEgASgDUglzcmNVc2VyaWQSHQoKYW'
    'ltX3VzZXJpZBgCIAEoA1IJYWltVXNlcmlkEg4KAnNuGAMgASgDUgJzbhIXCgdwYl9uYW1lGAQg'
    'ASgJUgZwYk5hbWUSFwoHcGJfZGF0YRgFIAEoDFIGcGJEYXRhEhIKBHRpbWUYBiABKANSBHRpbW'
    'USMgoKcGJDb21tRGF0YRgHIAEoCzISLnBiX3B1Yi5QQkNvbW1EYXRhUgpwYkNvbW1EYXRhEigK'
    'D3JlbGF0aW9uVXNlcklkcxgIIAMoA1IPcmVsYXRpb25Vc2VySWRz');

@$core.Deprecated('Use saveOfflineMsgRspDescriptor instead')
const SaveOfflineMsgRsp$json = {
  '1': 'SaveOfflineMsgRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
  ],
};

/// Descriptor for `SaveOfflineMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveOfflineMsgRspDescriptor = $convert.base64Decode(
    'ChFTYXZlT2ZmbGluZU1zZ1JzcBInCgZyZXN1bHQYASABKA4yDy5wYl9wdWIuRXJyQ29kZVIGcm'
    'VzdWx0');

@$core.Deprecated('Use readOfflineMsgReqDescriptor instead')
const ReadOfflineMsgReq$json = {
  '1': 'ReadOfflineMsgReq',
  '2': [
    {'1': 'userid', '3': 1, '4': 1, '5': 3, '10': 'userid'},
    {'1': 'num', '3': 2, '4': 1, '5': 3, '10': 'num'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
  ],
};

/// Descriptor for `ReadOfflineMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readOfflineMsgReqDescriptor = $convert.base64Decode(
    'ChFSZWFkT2ZmbGluZU1zZ1JlcRIWCgZ1c2VyaWQYASABKANSBnVzZXJpZBIQCgNudW0YAiABKA'
    'NSA251bRISCgR0aW1lGAMgASgDUgR0aW1l');

@$core.Deprecated('Use readOfflineMsgRspDescriptor instead')
const ReadOfflineMsgRsp$json = {
  '1': 'ReadOfflineMsgRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'msg_num', '3': 2, '4': 1, '5': 3, '10': 'msgNum'},
    {'1': 'msg_list', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_offlineMsg.ReadOfflineMsgRsp.MsgList', '10': 'msgList'},
  ],
  '3': [ReadOfflineMsgRsp_MsgList$json],
};

@$core.Deprecated('Use readOfflineMsgRspDescriptor instead')
const ReadOfflineMsgRsp_MsgList$json = {
  '1': 'MsgList',
  '2': [
    {'1': 'pb_name', '3': 1, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pb_data', '3': 2, '4': 1, '5': 12, '10': 'pbData'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
    {'1': 'sn', '3': 4, '4': 1, '5': 3, '10': 'sn'},
    {'1': 'src_userid', '3': 5, '4': 1, '5': 3, '10': 'srcUserid'},
    {'1': 'aim_userid', '3': 6, '4': 1, '5': 3, '10': 'aimUserid'},
    {'1': 'pbCommData', '3': 7, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
  ],
};

/// Descriptor for `ReadOfflineMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readOfflineMsgRspDescriptor = $convert.base64Decode(
    'ChFSZWFkT2ZmbGluZU1zZ1JzcBInCgZyZXN1bHQYASABKA4yDy5wYl9wdWIuRXJyQ29kZVIGcm'
    'VzdWx0EhcKB21zZ19udW0YAiABKANSBm1zZ051bRJHCghtc2dfbGlzdBgDIAMoCzIsLnBiX21z'
    'Z19vZmZsaW5lTXNnLlJlYWRPZmZsaW5lTXNnUnNwLk1zZ0xpc3RSB21zZ0xpc3Qa0QEKB01zZ0'
    'xpc3QSFwoHcGJfbmFtZRgBIAEoCVIGcGJOYW1lEhcKB3BiX2RhdGEYAiABKAxSBnBiRGF0YRIS'
    'CgR0aW1lGAMgASgDUgR0aW1lEg4KAnNuGAQgASgDUgJzbhIdCgpzcmNfdXNlcmlkGAUgASgDUg'
    'lzcmNVc2VyaWQSHQoKYWltX3VzZXJpZBgGIAEoA1IJYWltVXNlcmlkEjIKCnBiQ29tbURhdGEY'
    'ByABKAsyEi5wYl9wdWIuUEJDb21tRGF0YVIKcGJDb21tRGF0YQ==');

@$core.Deprecated('Use historyMsgDescriptor instead')
const HistoryMsg$json = {
  '1': 'HistoryMsg',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'service', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.Service', '10': 'service'},
    {'1': 'groupId', '3': 3, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'msgSn', '3': 4, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'srcId', '3': 5, '4': 1, '5': 3, '10': 'srcId'},
    {'1': 'aimId', '3': 6, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'pbName', '3': 7, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 8, '4': 1, '5': 12, '10': 'pbData'},
    {'1': 'msgStatus', '3': 9, '4': 1, '5': 14, '6': '.pb_pub.MSG_STATE', '10': 'msgStatus'},
    {'1': 'readStatus', '3': 10, '4': 3, '5': 11, '6': '.pb_msg_offlineMsg.ReadStatusOfDiffClients', '10': 'readStatus'},
    {'1': 'createdAt', '3': 11, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updateAt', '3': 12, '4': 1, '5': 3, '10': 'updateAt'},
    {'1': 'pbCommData', '3': 13, '4': 1, '5': 12, '10': 'pbCommData'},
    {'1': 'groupMsgSn', '3': 14, '4': 1, '5': 3, '10': 'groupMsgSn'},
    {'1': 'Session', '3': 15, '4': 1, '5': 3, '10': 'Session'},
    {'1': 'SessionCurSn', '3': 16, '4': 1, '5': 3, '10': 'SessionCurSn'},
  ],
};

/// Descriptor for `HistoryMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyMsgDescriptor = $convert.base64Decode(
    'CgpIaXN0b3J5TXNnEg4KAmlkGAEgASgDUgJpZBIpCgdzZXJ2aWNlGAIgASgOMg8ucGJfcHViLl'
    'NlcnZpY2VSB3NlcnZpY2USGAoHZ3JvdXBJZBgDIAEoA1IHZ3JvdXBJZBIUCgVtc2dTbhgEIAEo'
    'A1IFbXNnU24SFAoFc3JjSWQYBSABKANSBXNyY0lkEhQKBWFpbUlkGAYgASgDUgVhaW1JZBIWCg'
    'ZwYk5hbWUYByABKAlSBnBiTmFtZRIWCgZwYkRhdGEYCCABKAxSBnBiRGF0YRIvCgltc2dTdGF0'
    'dXMYCSABKA4yES5wYl9wdWIuTVNHX1NUQVRFUgltc2dTdGF0dXMSSgoKcmVhZFN0YXR1cxgKIA'
    'MoCzIqLnBiX21zZ19vZmZsaW5lTXNnLlJlYWRTdGF0dXNPZkRpZmZDbGllbnRzUgpyZWFkU3Rh'
    'dHVzEhwKCWNyZWF0ZWRBdBgLIAEoA1IJY3JlYXRlZEF0EhoKCHVwZGF0ZUF0GAwgASgDUgh1cG'
    'RhdGVBdBIeCgpwYkNvbW1EYXRhGA0gASgMUgpwYkNvbW1EYXRhEh4KCmdyb3VwTXNnU24YDiAB'
    'KANSCmdyb3VwTXNnU24SGAoHU2Vzc2lvbhgPIAEoA1IHU2Vzc2lvbhIiCgxTZXNzaW9uQ3VyU2'
    '4YECABKANSDFNlc3Npb25DdXJTbg==');

@$core.Deprecated('Use readStatusOfDiffClientsDescriptor instead')
const ReadStatusOfDiffClients$json = {
  '1': 'ReadStatusOfDiffClients',
  '2': [
    {'1': 'clientType', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.CLIENT_TYPE', '10': 'clientType'},
    {'1': 'readStatus', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.MSG_STATE', '10': 'readStatus'},
    {'1': 'upDateAt', '3': 3, '4': 1, '5': 3, '10': 'upDateAt'},
  ],
};

/// Descriptor for `ReadStatusOfDiffClients`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readStatusOfDiffClientsDescriptor = $convert.base64Decode(
    'ChdSZWFkU3RhdHVzT2ZEaWZmQ2xpZW50cxIzCgpjbGllbnRUeXBlGAEgASgOMhMucGJfcHViLk'
    'NMSUVOVF9UWVBFUgpjbGllbnRUeXBlEjEKCnJlYWRTdGF0dXMYAiABKA4yES5wYl9wdWIuTVNH'
    'X1NUQVRFUgpyZWFkU3RhdHVzEhoKCHVwRGF0ZUF0GAMgASgDUgh1cERhdGVBdA==');

@$core.Deprecated('Use fetchHistoryMsgReqDescriptor instead')
const FetchHistoryMsgReq$json = {
  '1': 'FetchHistoryMsgReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 3, '10': 'totalCount'},
    {'1': 'filterNew', '3': 4, '4': 1, '5': 8, '10': 'filterNew'},
    {'1': 'orderDesc', '3': 5, '4': 1, '5': 8, '10': 'orderDesc'},
    {'1': 'startCreatedAt', '3': 6, '4': 1, '5': 3, '10': 'startCreatedAt'},
    {'1': 'endCreatedAt', '3': 7, '4': 1, '5': 3, '10': 'endCreatedAt'},
    {'1': 'startUpdatedAt', '3': 8, '4': 1, '5': 3, '10': 'startUpdatedAt'},
    {'1': 'endUpdatedAt', '3': 9, '4': 1, '5': 3, '10': 'endUpdatedAt'},
    {'1': 'id', '3': 10, '4': 1, '5': 3, '10': 'id'},
    {'1': 'msgSn', '3': 11, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'groupId', '3': 12, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'srcId', '3': 13, '4': 1, '5': 3, '10': 'srcId'},
    {'1': 'aimId', '3': 14, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'pbName', '3': 15, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'msgStatus', '3': 16, '4': 1, '5': 5, '10': 'msgStatus'},
    {'1': 'sort', '3': 17, '4': 1, '5': 9, '10': 'sort'},
    {'1': 'order', '3': 18, '4': 1, '5': 9, '10': 'order'},
  ],
};

/// Descriptor for `FetchHistoryMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchHistoryMsgReqDescriptor = $convert.base64Decode(
    'ChJGZXRjaEhpc3RvcnlNc2dSZXESEgoEcGFnZRgBIAEoA1IEcGFnZRIaCghwYWdlU2l6ZRgCIA'
    'EoA1IIcGFnZVNpemUSHgoKdG90YWxDb3VudBgDIAEoA1IKdG90YWxDb3VudBIcCglmaWx0ZXJO'
    'ZXcYBCABKAhSCWZpbHRlck5ldxIcCglvcmRlckRlc2MYBSABKAhSCW9yZGVyRGVzYxImCg5zdG'
    'FydENyZWF0ZWRBdBgGIAEoA1IOc3RhcnRDcmVhdGVkQXQSIgoMZW5kQ3JlYXRlZEF0GAcgASgD'
    'UgxlbmRDcmVhdGVkQXQSJgoOc3RhcnRVcGRhdGVkQXQYCCABKANSDnN0YXJ0VXBkYXRlZEF0Ei'
    'IKDGVuZFVwZGF0ZWRBdBgJIAEoA1IMZW5kVXBkYXRlZEF0Eg4KAmlkGAogASgDUgJpZBIUCgVt'
    'c2dTbhgLIAEoA1IFbXNnU24SGAoHZ3JvdXBJZBgMIAEoA1IHZ3JvdXBJZBIUCgVzcmNJZBgNIA'
    'EoA1IFc3JjSWQSFAoFYWltSWQYDiABKANSBWFpbUlkEhYKBnBiTmFtZRgPIAEoCVIGcGJOYW1l'
    'EhwKCW1zZ1N0YXR1cxgQIAEoBVIJbXNnU3RhdHVzEhIKBHNvcnQYESABKAlSBHNvcnQSFAoFb3'
    'JkZXIYEiABKAlSBW9yZGVy');

@$core.Deprecated('Use fetchHistoryMsgRspDescriptor instead')
const FetchHistoryMsgRsp$json = {
  '1': 'FetchHistoryMsgRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 3, '10': 'totalCount'},
    {'1': 'pbHisMsg', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_offlineMsg.HistoryMsg', '10': 'pbHisMsg'},
  ],
};

/// Descriptor for `FetchHistoryMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchHistoryMsgRspDescriptor = $convert.base64Decode(
    'ChJGZXRjaEhpc3RvcnlNc2dSc3ASEgoEcGFnZRgBIAEoA1IEcGFnZRIaCghwYWdlU2l6ZRgCIA'
    'EoA1IIcGFnZVNpemUSHgoKdG90YWxDb3VudBgDIAEoA1IKdG90YWxDb3VudBI5CghwYkhpc01z'
    'ZxgEIAMoCzIdLnBiX21zZ19vZmZsaW5lTXNnLkhpc3RvcnlNc2dSCHBiSGlzTXNn');

@$core.Deprecated('Use fetchNewHistoryMsgReqDescriptor instead')
const FetchNewHistoryMsgReq$json = {
  '1': 'FetchNewHistoryMsgReq',
  '2': [
    {'1': 'beginId', '3': 1, '4': 1, '5': 3, '10': 'beginId'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'orderDesc', '3': 3, '4': 1, '5': 8, '10': 'orderDesc'},
  ],
};

/// Descriptor for `FetchNewHistoryMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchNewHistoryMsgReqDescriptor = $convert.base64Decode(
    'ChVGZXRjaE5ld0hpc3RvcnlNc2dSZXESGAoHYmVnaW5JZBgBIAEoA1IHYmVnaW5JZBIaCghwYW'
    'dlU2l6ZRgCIAEoA1IIcGFnZVNpemUSHAoJb3JkZXJEZXNjGAMgASgIUglvcmRlckRlc2M=');

@$core.Deprecated('Use fetchNewHistoryMsgRspDescriptor instead')
const FetchNewHistoryMsgRsp$json = {
  '1': 'FetchNewHistoryMsgRsp',
  '2': [
    {'1': 'pageSize', '3': 1, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'totalCount', '3': 2, '4': 1, '5': 3, '10': 'totalCount'},
    {'1': 'pbHisMsg', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_offlineMsg.HistoryMsg', '10': 'pbHisMsg'},
  ],
};

/// Descriptor for `FetchNewHistoryMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchNewHistoryMsgRspDescriptor = $convert.base64Decode(
    'ChVGZXRjaE5ld0hpc3RvcnlNc2dSc3ASGgoIcGFnZVNpemUYASABKANSCHBhZ2VTaXplEh4KCn'
    'RvdGFsQ291bnQYAiABKANSCnRvdGFsQ291bnQSOQoIcGJIaXNNc2cYAyADKAsyHS5wYl9tc2df'
    'b2ZmbGluZU1zZy5IaXN0b3J5TXNnUghwYkhpc01zZw==');

@$core.Deprecated('Use fetchOneHistoryMsgReqDescriptor instead')
const FetchOneHistoryMsgReq$json = {
  '1': 'FetchOneHistoryMsgReq',
  '2': [
    {'1': 'msgSn', '3': 2, '4': 1, '5': 3, '10': 'msgSn'},
  ],
};

/// Descriptor for `FetchOneHistoryMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchOneHistoryMsgReqDescriptor = $convert.base64Decode(
    'ChVGZXRjaE9uZUhpc3RvcnlNc2dSZXESFAoFbXNnU24YAiABKANSBW1zZ1Nu');

@$core.Deprecated('Use fetchOneHistoryMsgRspDescriptor instead')
const FetchOneHistoryMsgRsp$json = {
  '1': 'FetchOneHistoryMsgRsp',
  '2': [
    {'1': 'privateHistoryMsg', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_offlineMsg.HistoryMsg', '10': 'privateHistoryMsg'},
  ],
};

/// Descriptor for `FetchOneHistoryMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchOneHistoryMsgRspDescriptor = $convert.base64Decode(
    'ChVGZXRjaE9uZUhpc3RvcnlNc2dSc3ASSwoRcHJpdmF0ZUhpc3RvcnlNc2cYASABKAsyHS5wYl'
    '9tc2dfb2ZmbGluZU1zZy5IaXN0b3J5TXNnUhFwcml2YXRlSGlzdG9yeU1zZw==');

@$core.Deprecated('Use delHistoryMsgReqDescriptor instead')
const DelHistoryMsgReq$json = {
  '1': 'DelHistoryMsgReq',
  '2': [
    {'1': 'msgSn', '3': 2, '4': 3, '5': 3, '10': 'msgSn'},
  ],
};

/// Descriptor for `DelHistoryMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delHistoryMsgReqDescriptor = $convert.base64Decode(
    'ChBEZWxIaXN0b3J5TXNnUmVxEhQKBW1zZ1NuGAIgAygDUgVtc2dTbg==');

@$core.Deprecated('Use delHistoryMsgRspDescriptor instead')
const DelHistoryMsgRsp$json = {
  '1': 'DelHistoryMsgRsp',
};

/// Descriptor for `DelHistoryMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delHistoryMsgRspDescriptor = $convert.base64Decode(
    'ChBEZWxIaXN0b3J5TXNnUnNw');

@$core.Deprecated('Use readyForSyncOfflineMsgStatusReqDescriptor instead')
const ReadyForSyncOfflineMsgStatusReq$json = {
  '1': 'ReadyForSyncOfflineMsgStatusReq',
};

/// Descriptor for `ReadyForSyncOfflineMsgStatusReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readyForSyncOfflineMsgStatusReqDescriptor = $convert.base64Decode(
    'Ch9SZWFkeUZvclN5bmNPZmZsaW5lTXNnU3RhdHVzUmVx');

@$core.Deprecated('Use readyForSyncOfflineMsgStatusRspDescriptor instead')
const ReadyForSyncOfflineMsgStatusRsp$json = {
  '1': 'ReadyForSyncOfflineMsgStatusRsp',
};

/// Descriptor for `ReadyForSyncOfflineMsgStatusRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readyForSyncOfflineMsgStatusRspDescriptor = $convert.base64Decode(
    'Ch9SZWFkeUZvclN5bmNPZmZsaW5lTXNnU3RhdHVzUnNw');

@$core.Deprecated('Use statusChangeItemDescriptor instead')
const StatusChangeItem$json = {
  '1': 'StatusChangeItem',
  '2': [
    {'1': 'msgSn', '3': 1, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'msgCurStatus', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.MSG_STATE', '10': 'msgCurStatus'},
  ],
};

/// Descriptor for `StatusChangeItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusChangeItemDescriptor = $convert.base64Decode(
    'ChBTdGF0dXNDaGFuZ2VJdGVtEhQKBW1zZ1NuGAEgASgDUgVtc2dTbhI1Cgxtc2dDdXJTdGF0dX'
    'MYAiABKA4yES5wYl9wdWIuTVNHX1NUQVRFUgxtc2dDdXJTdGF0dXM=');

@$core.Deprecated('Use offlineMsgStatueChangeNotifyDescriptor instead')
const OfflineMsgStatueChangeNotify$json = {
  '1': 'OfflineMsgStatueChangeNotify',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 3, '10': 'session'},
    {'1': 'StatusChangeItems', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_offlineMsg.StatusChangeItem', '10': 'StatusChangeItems'},
  ],
};

/// Descriptor for `OfflineMsgStatueChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offlineMsgStatueChangeNotifyDescriptor = $convert.base64Decode(
    'ChxPZmZsaW5lTXNnU3RhdHVlQ2hhbmdlTm90aWZ5EhgKB3Nlc3Npb24YASABKANSB3Nlc3Npb2'
    '4SUQoRU3RhdHVzQ2hhbmdlSXRlbXMYAiADKAsyIy5wYl9tc2dfb2ZmbGluZU1zZy5TdGF0dXND'
    'aGFuZ2VJdGVtUhFTdGF0dXNDaGFuZ2VJdGVtcw==');

@$core.Deprecated('Use offlineMsgStatueChangeNotifyReceivedDescriptor instead')
const OfflineMsgStatueChangeNotifyReceived$json = {
  '1': 'OfflineMsgStatueChangeNotifyReceived',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 3, '10': 'session'},
  ],
};

/// Descriptor for `OfflineMsgStatueChangeNotifyReceived`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offlineMsgStatueChangeNotifyReceivedDescriptor = $convert.base64Decode(
    'CiRPZmZsaW5lTXNnU3RhdHVlQ2hhbmdlTm90aWZ5UmVjZWl2ZWQSGAoHc2Vzc2lvbhgBIAEoA1'
    'IHc2Vzc2lvbg==');

@$core.Deprecated('Use userSessionStatusDescriptor instead')
const UserSessionStatus$json = {
  '1': 'UserSessionStatus',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'beginMsgRecordId', '3': 2, '4': 1, '5': 9, '10': 'beginMsgRecordId'},
    {'1': 'newMsgCount', '3': 3, '4': 1, '5': 3, '10': 'newMsgCount'},
  ],
};

/// Descriptor for `UserSessionStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSessionStatusDescriptor = $convert.base64Decode(
    'ChFVc2VyU2Vzc2lvblN0YXR1cxIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIqChBiZWdpbk1zZ1'
    'JlY29yZElkGAIgASgJUhBiZWdpbk1zZ1JlY29yZElkEiAKC25ld01zZ0NvdW50GAMgASgDUgtu'
    'ZXdNc2dDb3VudA==');

@$core.Deprecated('Use chatSessionDescriptor instead')
const ChatSession$json = {
  '1': 'ChatSession',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 3, '10': 'session'},
    {'1': 'SessionCurSubSn', '3': 2, '4': 1, '5': 3, '10': 'SessionCurSubSn'},
    {'1': 'LastMsgStatus', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.MSG_STATE', '10': 'LastMsgStatus'},
    {'1': 'sessionType', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_offlineMsg.CHAT_SESSION_TYPE', '10': 'sessionType'},
    {'1': 'SrcId', '3': 5, '4': 1, '5': 3, '10': 'SrcId'},
    {'1': 'PbName', '3': 6, '4': 1, '5': 9, '10': 'PbName'},
    {'1': 'PbData', '3': 7, '4': 1, '5': 12, '10': 'PbData'},
    {'1': 'CreatedAt', '3': 9, '4': 1, '5': 3, '10': 'CreatedAt'},
    {'1': 'UpdatedAt', '3': 10, '4': 1, '5': 3, '10': 'UpdatedAt'},
    {'1': 'PbCommData', '3': 11, '4': 1, '5': 12, '10': 'PbCommData'},
    {'1': 'newMsgCount', '3': 12, '4': 1, '5': 3, '10': 'newMsgCount'},
  ],
};

/// Descriptor for `ChatSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatSessionDescriptor = $convert.base64Decode(
    'CgtDaGF0U2Vzc2lvbhIYCgdzZXNzaW9uGAEgASgDUgdzZXNzaW9uEigKD1Nlc3Npb25DdXJTdW'
    'JTbhgCIAEoA1IPU2Vzc2lvbkN1clN1YlNuEjcKDUxhc3RNc2dTdGF0dXMYAyABKA4yES5wYl9w'
    'dWIuTVNHX1NUQVRFUg1MYXN0TXNnU3RhdHVzEkYKC3Nlc3Npb25UeXBlGAQgASgOMiQucGJfbX'
    'NnX29mZmxpbmVNc2cuQ0hBVF9TRVNTSU9OX1RZUEVSC3Nlc3Npb25UeXBlEhQKBVNyY0lkGAUg'
    'ASgDUgVTcmNJZBIWCgZQYk5hbWUYBiABKAlSBlBiTmFtZRIWCgZQYkRhdGEYByABKAxSBlBiRG'
    'F0YRIcCglDcmVhdGVkQXQYCSABKANSCUNyZWF0ZWRBdBIcCglVcGRhdGVkQXQYCiABKANSCVVw'
    'ZGF0ZWRBdBIeCgpQYkNvbW1EYXRhGAsgASgMUgpQYkNvbW1EYXRhEiAKC25ld01zZ0NvdW50GA'
    'wgASgDUgtuZXdNc2dDb3VudA==');

@$core.Deprecated('Use fetchChatSessionsReqDescriptor instead')
const FetchChatSessionsReq$json = {
  '1': 'FetchChatSessionsReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
    {'1': 'range', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_offlineMsg.FETCH_SESSION_RANGE', '10': 'range'},
  ],
};

/// Descriptor for `FetchChatSessionsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchChatSessionsReqDescriptor = $convert.base64Decode(
    'ChRGZXRjaENoYXRTZXNzaW9uc1JlcRISCgRwYWdlGAEgASgDUgRwYWdlEhoKCHBhZ2VTaXplGA'
    'IgASgDUghwYWdlU2l6ZRISCgR0aW1lGAMgASgDUgR0aW1lEjwKBXJhbmdlGAQgASgOMiYucGJf'
    'bXNnX29mZmxpbmVNc2cuRkVUQ0hfU0VTU0lPTl9SQU5HRVIFcmFuZ2U=');

@$core.Deprecated('Use fetchChatSessionsRspDescriptor instead')
const FetchChatSessionsRsp$json = {
  '1': 'FetchChatSessionsRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
    {'1': 'range', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_offlineMsg.FETCH_SESSION_RANGE', '10': 'range'},
    {'1': 'chatSessions', '3': 5, '4': 3, '5': 11, '6': '.pb_msg_offlineMsg.ChatSession', '10': 'chatSessions'},
    {'1': 'totalCount', '3': 6, '4': 1, '5': 3, '10': 'totalCount'},
  ],
};

/// Descriptor for `FetchChatSessionsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchChatSessionsRspDescriptor = $convert.base64Decode(
    'ChRGZXRjaENoYXRTZXNzaW9uc1JzcBISCgRwYWdlGAEgASgDUgRwYWdlEhoKCHBhZ2VTaXplGA'
    'IgASgDUghwYWdlU2l6ZRISCgR0aW1lGAMgASgDUgR0aW1lEjwKBXJhbmdlGAQgASgOMiYucGJf'
    'bXNnX29mZmxpbmVNc2cuRkVUQ0hfU0VTU0lPTl9SQU5HRVIFcmFuZ2USQgoMY2hhdFNlc3Npb2'
    '5zGAUgAygLMh4ucGJfbXNnX29mZmxpbmVNc2cuQ2hhdFNlc3Npb25SDGNoYXRTZXNzaW9ucxIe'
    'Cgp0b3RhbENvdW50GAYgASgDUgp0b3RhbENvdW50');

@$core.Deprecated('Use fetchChatHisMsgListOfSessionReqDescriptor instead')
const FetchChatHisMsgListOfSessionReq$json = {
  '1': 'FetchChatHisMsgListOfSessionReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
    {'1': 'session', '3': 4, '4': 1, '5': 3, '10': 'session'},
  ],
};

/// Descriptor for `FetchChatHisMsgListOfSessionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchChatHisMsgListOfSessionReqDescriptor = $convert.base64Decode(
    'Ch9GZXRjaENoYXRIaXNNc2dMaXN0T2ZTZXNzaW9uUmVxEhIKBHBhZ2UYASABKANSBHBhZ2USGg'
    'oIcGFnZVNpemUYAiABKANSCHBhZ2VTaXplEhIKBHRpbWUYAyABKANSBHRpbWUSGAoHc2Vzc2lv'
    'bhgEIAEoA1IHc2Vzc2lvbg==');

@$core.Deprecated('Use fetchChatHisMsgListOfSessionRspDescriptor instead')
const FetchChatHisMsgListOfSessionRsp$json = {
  '1': 'FetchChatHisMsgListOfSessionRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
    {'1': 'session', '3': 4, '4': 1, '5': 3, '10': 'session'},
    {'1': 'chatHisMsgs', '3': 5, '4': 3, '5': 11, '6': '.pb_msg_offlineMsg.HistoryMsg', '10': 'chatHisMsgs'},
    {'1': 'totalCount', '3': 6, '4': 1, '5': 3, '10': 'totalCount'},
  ],
};

/// Descriptor for `FetchChatHisMsgListOfSessionRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchChatHisMsgListOfSessionRspDescriptor = $convert.base64Decode(
    'Ch9GZXRjaENoYXRIaXNNc2dMaXN0T2ZTZXNzaW9uUnNwEhIKBHBhZ2UYASABKANSBHBhZ2USGg'
    'oIcGFnZVNpemUYAiABKANSCHBhZ2VTaXplEhIKBHRpbWUYAyABKANSBHRpbWUSGAoHc2Vzc2lv'
    'bhgEIAEoA1IHc2Vzc2lvbhI/CgtjaGF0SGlzTXNncxgFIAMoCzIdLnBiX21zZ19vZmZsaW5lTX'
    'NnLkhpc3RvcnlNc2dSC2NoYXRIaXNNc2dzEh4KCnRvdGFsQ291bnQYBiABKANSCnRvdGFsQ291'
    'bnQ=');

@$core.Deprecated('Use delChatSessionsReqDescriptor instead')
const DelChatSessionsReq$json = {
  '1': 'DelChatSessionsReq',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 3, '10': 'session'},
  ],
};

/// Descriptor for `DelChatSessionsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delChatSessionsReqDescriptor = $convert.base64Decode(
    'ChJEZWxDaGF0U2Vzc2lvbnNSZXESGAoHc2Vzc2lvbhgBIAEoA1IHc2Vzc2lvbg==');

@$core.Deprecated('Use delChatSessionsRspDescriptor instead')
const DelChatSessionsRsp$json = {
  '1': 'DelChatSessionsRsp',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 3, '10': 'session'},
  ],
};

/// Descriptor for `DelChatSessionsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delChatSessionsRspDescriptor = $convert.base64Decode(
    'ChJEZWxDaGF0U2Vzc2lvbnNSc3ASGAoHc2Vzc2lvbhgBIAEoA1IHc2Vzc2lvbg==');

@$core.Deprecated('Use clearMsgOfSessionReqDescriptor instead')
const ClearMsgOfSessionReq$json = {
  '1': 'ClearMsgOfSessionReq',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 3, '10': 'session'},
  ],
};

/// Descriptor for `ClearMsgOfSessionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clearMsgOfSessionReqDescriptor = $convert.base64Decode(
    'ChRDbGVhck1zZ09mU2Vzc2lvblJlcRIYCgdzZXNzaW9uGAEgASgDUgdzZXNzaW9u');

@$core.Deprecated('Use clearMsgOfSessionRspDescriptor instead')
const ClearMsgOfSessionRsp$json = {
  '1': 'ClearMsgOfSessionRsp',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 3, '10': 'session'},
  ],
};

/// Descriptor for `ClearMsgOfSessionRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clearMsgOfSessionRspDescriptor = $convert.base64Decode(
    'ChRDbGVhck1zZ09mU2Vzc2lvblJzcBIYCgdzZXNzaW9uGAEgASgDUgdzZXNzaW9u');

