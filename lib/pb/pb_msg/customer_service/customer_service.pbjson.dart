//
//  Generated code. Do not modify.
//  source: pb_msg/customer_service/customer_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mESSAGE_TYPEDescriptor instead')
const MESSAGE_TYPE$json = {
  '1': 'MESSAGE_TYPE',
  '2': [
    {'1': 'TEXT', '2': 0},
    {'1': 'IMAGE', '2': 1},
    {'1': 'AUDIO', '2': 2},
    {'1': 'VIDEO', '2': 3},
    {'1': 'PACT', '2': 4},
    {'1': 'GET_RED_PACKET', '2': 5},
    {'1': 'RED_PACKET', '2': 6},
    {'1': 'RED_PACKET_OPENED', '2': 7},
    {'1': 'CAT_CARD', '2': 8},
    {'1': 'PRODUCT_CARD', '2': 9},
    {'1': 'PHONE_CALL', '2': 10},
    {'1': 'GREETING', '2': 11},
  ],
};

/// Descriptor for `MESSAGE_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mESSAGE_TYPEDescriptor = $convert.base64Decode(
    'CgxNRVNTQUdFX1RZUEUSCAoEVEVYVBAAEgkKBUlNQUdFEAESCQoFQVVESU8QAhIJCgVWSURFTx'
    'ADEggKBFBBQ1QQBBISCg5HRVRfUkVEX1BBQ0tFVBAFEg4KClJFRF9QQUNLRVQQBhIVChFSRURf'
    'UEFDS0VUX09QRU5FRBAHEgwKCENBVF9DQVJEEAgSEAoMUFJPRFVDVF9DQVJEEAkSDgoKUEhPTk'
    'VfQ0FMTBAKEgwKCEdSRUVUSU5HEAs=');

@$core.Deprecated('Use uSER_TYPEDescriptor instead')
const USER_TYPE$json = {
  '1': 'USER_TYPE',
  '2': [
    {'1': 'KEHU', '2': 0},
    {'1': 'KEFU', '2': 1},
  ],
};

/// Descriptor for `USER_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List uSER_TYPEDescriptor = $convert.base64Decode(
    'CglVU0VSX1RZUEUSCAoES0VIVRAAEggKBEtFRlUQAQ==');

@$core.Deprecated('Use sTATEDescriptor instead')
const STATE$json = {
  '1': 'STATE',
  '2': [
    {'1': 'INIT', '2': 0},
    {'1': 'SEND', '2': 1},
    {'1': 'RECV', '2': 2},
    {'1': 'READ', '2': 3},
    {'1': 'OVER', '2': 4},
  ],
};

/// Descriptor for `STATE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sTATEDescriptor = $convert.base64Decode(
    'CgVTVEFURRIICgRJTklUEAASCAoEU0VORBABEggKBFJFQ1YQAhIICgRSRUFEEAMSCAoET1ZFUh'
    'AE');

@$core.Deprecated('Use kefuMessageDescriptor instead')
const KefuMessage$json = {
  '1': 'KefuMessage',
  '2': [
    {'1': 'userType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_customer_service.USER_TYPE', '10': 'userType'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'messageType', '3': 3, '4': 1, '5': 5, '10': 'messageType'},
    {'1': 'text', '3': 4, '4': 1, '5': 9, '10': 'text'},
    {'1': 'exp', '3': 5, '4': 3, '5': 11, '6': '.pb_msg_customer_service.KefuMessage.ExpEntry', '10': 'exp'},
  ],
  '3': [KefuMessage_ExpEntry$json],
};

@$core.Deprecated('Use kefuMessageDescriptor instead')
const KefuMessage_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `KefuMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kefuMessageDescriptor = $convert.base64Decode(
    'CgtLZWZ1TWVzc2FnZRI+Cgh1c2VyVHlwZRgBIAEoDjIiLnBiX21zZ19jdXN0b21lcl9zZXJ2aW'
    'NlLlVTRVJfVFlQRVIIdXNlclR5cGUSGAoHZ3JvdXBJZBgCIAEoA1IHZ3JvdXBJZBIgCgttZXNz'
    'YWdlVHlwZRgDIAEoBVILbWVzc2FnZVR5cGUSEgoEdGV4dBgEIAEoCVIEdGV4dBI/CgNleHAYBS'
    'ADKAsyLS5wYl9tc2dfY3VzdG9tZXJfc2VydmljZS5LZWZ1TWVzc2FnZS5FeHBFbnRyeVIDZXhw'
    'GjYKCEV4cEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOA'
    'E=');

@$core.Deprecated('Use kefuReceiptDescriptor instead')
const KefuReceipt$json = {
  '1': 'KefuReceipt',
  '2': [
    {'1': 'userType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_customer_service.USER_TYPE', '10': 'userType'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'sn', '3': 3, '4': 1, '5': 3, '10': 'sn'},
    {'1': 'state', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_customer_service.STATE', '10': 'state'},
    {'1': 'time', '3': 5, '4': 1, '5': 3, '10': 'time'},
  ],
};

/// Descriptor for `KefuReceipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kefuReceiptDescriptor = $convert.base64Decode(
    'CgtLZWZ1UmVjZWlwdBI+Cgh1c2VyVHlwZRgBIAEoDjIiLnBiX21zZ19jdXN0b21lcl9zZXJ2aW'
    'NlLlVTRVJfVFlQRVIIdXNlclR5cGUSGAoHZ3JvdXBJZBgCIAEoA1IHZ3JvdXBJZBIOCgJzbhgD'
    'IAEoA1ICc24SNAoFc3RhdGUYBCABKA4yHi5wYl9tc2dfY3VzdG9tZXJfc2VydmljZS5TVEFURV'
    'IFc3RhdGUSEgoEdGltZRgFIAEoA1IEdGltZQ==');

@$core.Deprecated('Use answerReqDescriptor instead')
const AnswerReq$json = {
  '1': 'AnswerReq',
  '2': [
    {'1': 'kehuId', '3': 1, '4': 1, '5': 3, '10': 'kehuId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `AnswerReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerReqDescriptor = $convert.base64Decode(
    'CglBbnN3ZXJSZXESFgoGa2VodUlkGAEgASgDUgZrZWh1SWQSGAoHZ3JvdXBJZBgCIAEoA1IHZ3'
    'JvdXBJZA==');

@$core.Deprecated('Use answerRspDescriptor instead')
const AnswerRsp$json = {
  '1': 'AnswerRsp',
};

/// Descriptor for `AnswerRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerRspDescriptor = $convert.base64Decode(
    'CglBbnN3ZXJSc3A=');

@$core.Deprecated('Use fetchWaitCustomersDescriptor instead')
const FetchWaitCustomers$json = {
  '1': 'FetchWaitCustomers',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `FetchWaitCustomers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchWaitCustomersDescriptor = $convert.base64Decode(
    'ChJGZXRjaFdhaXRDdXN0b21lcnMSGAoHZ3JvdXBJZBgBIAEoA1IHZ3JvdXBJZA==');

@$core.Deprecated('Use waitCustomerDescriptor instead')
const WaitCustomer$json = {
  '1': 'WaitCustomer',
  '2': [
    {'1': 'kehuId', '3': 1, '4': 1, '5': 3, '10': 'kehuId'},
    {'1': 'joinAt', '3': 2, '4': 1, '5': 3, '10': 'joinAt'},
    {'1': 'kefuId', '3': 3, '4': 1, '5': 3, '10': 'kefuId'},
    {'1': 'pbCommData', '3': 4, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'message', '3': 5, '4': 1, '5': 11, '6': '.pb_msg_customer_service.KefuMessage', '10': 'message'},
  ],
};

/// Descriptor for `WaitCustomer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitCustomerDescriptor = $convert.base64Decode(
    'CgxXYWl0Q3VzdG9tZXISFgoGa2VodUlkGAEgASgDUgZrZWh1SWQSFgoGam9pbkF0GAIgASgDUg'
    'Zqb2luQXQSFgoGa2VmdUlkGAMgASgDUgZrZWZ1SWQSMgoKcGJDb21tRGF0YRgEIAEoCzISLnBi'
    'X3B1Yi5QQkNvbW1EYXRhUgpwYkNvbW1EYXRhEj4KB21lc3NhZ2UYBSABKAsyJC5wYl9tc2dfY3'
    'VzdG9tZXJfc2VydmljZS5LZWZ1TWVzc2FnZVIHbWVzc2FnZQ==');

@$core.Deprecated('Use waitCustomersDescriptor instead')
const WaitCustomers$json = {
  '1': 'WaitCustomers',
  '2': [
    {'1': 'customers', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_customer_service.WaitCustomer', '10': 'customers'},
  ],
};

/// Descriptor for `WaitCustomers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitCustomersDescriptor = $convert.base64Decode(
    'Cg1XYWl0Q3VzdG9tZXJzEkMKCWN1c3RvbWVycxgCIAMoCzIlLnBiX21zZ19jdXN0b21lcl9zZX'
    'J2aWNlLldhaXRDdXN0b21lclIJY3VzdG9tZXJz');

@$core.Deprecated('Use historiesReqDescriptor instead')
const HistoriesReq$json = {
  '1': 'HistoriesReq',
  '2': [
    {'1': 'kehuId', '3': 1, '4': 1, '5': 3, '10': 'kehuId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
  ],
};

/// Descriptor for `HistoriesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historiesReqDescriptor = $convert.base64Decode(
    'CgxIaXN0b3JpZXNSZXESFgoGa2VodUlkGAEgASgDUgZrZWh1SWQSGAoHZ3JvdXBJZBgCIAEoA1'
    'IHZ3JvdXBJZBISCgR0aW1lGAMgASgDUgR0aW1l');

@$core.Deprecated('Use historyDescriptor instead')
const History$json = {
  '1': 'History',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_customer_service.KefuMessage', '10': 'message'},
    {'1': 'state', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_customer_service.STATE', '10': 'state'},
  ],
};

/// Descriptor for `History`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyDescriptor = $convert.base64Decode(
    'CgdIaXN0b3J5EjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUEJDb21tRGF0YVIKcGJDb2'
    '1tRGF0YRI+CgdtZXNzYWdlGAIgASgLMiQucGJfbXNnX2N1c3RvbWVyX3NlcnZpY2UuS2VmdU1l'
    'c3NhZ2VSB21lc3NhZ2USNAoFc3RhdGUYAyABKA4yHi5wYl9tc2dfY3VzdG9tZXJfc2VydmljZS'
    '5TVEFURVIFc3RhdGU=');

@$core.Deprecated('Use historiesRspDescriptor instead')
const HistoriesRsp$json = {
  '1': 'HistoriesRsp',
  '2': [
    {'1': 'histories', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_customer_service.History', '10': 'histories'},
  ],
};

/// Descriptor for `HistoriesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historiesRspDescriptor = $convert.base64Decode(
    'CgxIaXN0b3JpZXNSc3ASPgoJaGlzdG9yaWVzGAEgAygLMiAucGJfbXNnX2N1c3RvbWVyX3Nlcn'
    'ZpY2UuSGlzdG9yeVIJaGlzdG9yaWVz');

@$core.Deprecated('Use sessionsReqDescriptor instead')
const SessionsReq$json = {
  '1': 'SessionsReq',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'time', '3': 2, '4': 1, '5': 3, '10': 'time'},
  ],
};

/// Descriptor for `SessionsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionsReqDescriptor = $convert.base64Decode(
    'CgtTZXNzaW9uc1JlcRIYCgdncm91cElkGAEgASgDUgdncm91cElkEhIKBHRpbWUYAiABKANSBH'
    'RpbWU=');

@$core.Deprecated('Use sessionDescriptor instead')
const Session$json = {
  '1': 'Session',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_customer_service.KefuMessage', '10': 'message'},
  ],
};

/// Descriptor for `Session`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDescriptor = $convert.base64Decode(
    'CgdTZXNzaW9uEjIKCnBiQ29tbURhdGEYASABKAsyEi5wYl9wdWIuUEJDb21tRGF0YVIKcGJDb2'
    '1tRGF0YRI+CgdtZXNzYWdlGAIgASgLMiQucGJfbXNnX2N1c3RvbWVyX3NlcnZpY2UuS2VmdU1l'
    'c3NhZ2VSB21lc3NhZ2U=');

@$core.Deprecated('Use sessionsRspDescriptor instead')
const SessionsRsp$json = {
  '1': 'SessionsRsp',
  '2': [
    {'1': 'sessions', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_customer_service.Session', '10': 'sessions'},
  ],
};

/// Descriptor for `SessionsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionsRspDescriptor = $convert.base64Decode(
    'CgtTZXNzaW9uc1JzcBI8CghzZXNzaW9ucxgBIAMoCzIgLnBiX21zZ19jdXN0b21lcl9zZXJ2aW'
    'NlLlNlc3Npb25SCHNlc3Npb25z');

@$core.Deprecated('Use deleteSessionReqDescriptor instead')
const DeleteSessionReq$json = {
  '1': 'DeleteSessionReq',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'kehuId', '3': 2, '4': 1, '5': 3, '10': 'kehuId'},
  ],
};

/// Descriptor for `DeleteSessionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionReqDescriptor = $convert.base64Decode(
    'ChBEZWxldGVTZXNzaW9uUmVxEhgKB2dyb3VwSWQYASABKANSB2dyb3VwSWQSFgoGa2VodUlkGA'
    'IgASgDUgZrZWh1SWQ=');

@$core.Deprecated('Use deleteSessionRspDescriptor instead')
const DeleteSessionRsp$json = {
  '1': 'DeleteSessionRsp',
};

/// Descriptor for `DeleteSessionRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionRspDescriptor = $convert.base64Decode(
    'ChBEZWxldGVTZXNzaW9uUnNw');

@$core.Deprecated('Use kefuDescriptor instead')
const Kefu$json = {
  '1': 'Kefu',
  '2': [
    {'1': 'kefuId', '3': 1, '4': 1, '5': 3, '10': 'kefuId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'kefuName', '3': 3, '4': 1, '5': 9, '10': 'kefuName'},
    {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'online', '3': 5, '4': 1, '5': 8, '10': 'online'},
  ],
};

/// Descriptor for `Kefu`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kefuDescriptor = $convert.base64Decode(
    'CgRLZWZ1EhYKBmtlZnVJZBgBIAEoA1IGa2VmdUlkEhgKB2dyb3VwSWQYAiABKANSB2dyb3VwSW'
    'QSGgoIa2VmdU5hbWUYAyABKAlSCGtlZnVOYW1lEhQKBXBob25lGAQgASgJUgVwaG9uZRIWCgZv'
    'bmxpbmUYBSABKAhSBm9ubGluZQ==');

@$core.Deprecated('Use addKefuReqDescriptor instead')
const AddKefuReq$json = {
  '1': 'AddKefuReq',
  '2': [
    {'1': 'kefuId', '3': 1, '4': 1, '5': 3, '10': 'kefuId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'kefuName', '3': 3, '4': 1, '5': 9, '10': 'kefuName'},
    {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'online', '3': 5, '4': 1, '5': 8, '10': 'online'},
    {'1': 'appId', '3': 6, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'appUserId', '3': 7, '4': 1, '5': 9, '10': 'appUserId'},
  ],
};

/// Descriptor for `AddKefuReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addKefuReqDescriptor = $convert.base64Decode(
    'CgpBZGRLZWZ1UmVxEhYKBmtlZnVJZBgBIAEoA1IGa2VmdUlkEhgKB2dyb3VwSWQYAiABKANSB2'
    'dyb3VwSWQSGgoIa2VmdU5hbWUYAyABKAlSCGtlZnVOYW1lEhQKBXBob25lGAQgASgJUgVwaG9u'
    'ZRIWCgZvbmxpbmUYBSABKAhSBm9ubGluZRIUCgVhcHBJZBgGIAEoA1IFYXBwSWQSHAoJYXBwVX'
    'NlcklkGAcgASgJUglhcHBVc2VySWQ=');

@$core.Deprecated('Use addKefuRspDescriptor instead')
const AddKefuRsp$json = {
  '1': 'AddKefuRsp',
};

/// Descriptor for `AddKefuRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addKefuRspDescriptor = $convert.base64Decode(
    'CgpBZGRLZWZ1UnNw');

@$core.Deprecated('Use updateKefuReqDescriptor instead')
const UpdateKefuReq$json = {
  '1': 'UpdateKefuReq',
  '2': [
    {'1': 'kefu', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_customer_service.Kefu', '10': 'kefu'},
    {'1': 'keys', '3': 2, '4': 3, '5': 9, '10': 'keys'},
  ],
};

/// Descriptor for `UpdateKefuReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateKefuReqDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVLZWZ1UmVxEjEKBGtlZnUYASABKAsyHS5wYl9tc2dfY3VzdG9tZXJfc2VydmljZS'
    '5LZWZ1UgRrZWZ1EhIKBGtleXMYAiADKAlSBGtleXM=');

@$core.Deprecated('Use updateKefuRspDescriptor instead')
const UpdateKefuRsp$json = {
  '1': 'UpdateKefuRsp',
  '2': [
    {'1': 'kefu', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_customer_service.Kefu', '10': 'kefu'},
  ],
};

/// Descriptor for `UpdateKefuRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateKefuRspDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVLZWZ1UnNwEjEKBGtlZnUYASABKAsyHS5wYl9tc2dfY3VzdG9tZXJfc2VydmljZS'
    '5LZWZ1UgRrZWZ1');

@$core.Deprecated('Use deleteKefuReqDescriptor instead')
const DeleteKefuReq$json = {
  '1': 'DeleteKefuReq',
  '2': [
    {'1': 'kefuId', '3': 1, '4': 1, '5': 3, '10': 'kefuId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `DeleteKefuReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteKefuReqDescriptor = $convert.base64Decode(
    'Cg1EZWxldGVLZWZ1UmVxEhYKBmtlZnVJZBgBIAEoA1IGa2VmdUlkEhgKB2dyb3VwSWQYAiABKA'
    'NSB2dyb3VwSWQ=');

@$core.Deprecated('Use deleteKefuRspDescriptor instead')
const DeleteKefuRsp$json = {
  '1': 'DeleteKefuRsp',
};

/// Descriptor for `DeleteKefuRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteKefuRspDescriptor = $convert.base64Decode(
    'Cg1EZWxldGVLZWZ1UnNw');

@$core.Deprecated('Use getKefuReqDescriptor instead')
const GetKefuReq$json = {
  '1': 'GetKefuReq',
  '2': [
    {'1': 'kefuId', '3': 1, '4': 1, '5': 3, '10': 'kefuId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `GetKefuReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefuReqDescriptor = $convert.base64Decode(
    'CgpHZXRLZWZ1UmVxEhYKBmtlZnVJZBgBIAEoA1IGa2VmdUlkEhgKB2dyb3VwSWQYAiABKANSB2'
    'dyb3VwSWQ=');

@$core.Deprecated('Use getKefuRspDescriptor instead')
const GetKefuRsp$json = {
  '1': 'GetKefuRsp',
  '2': [
    {'1': 'kefu', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_customer_service.Kefu', '10': 'kefu'},
  ],
};

/// Descriptor for `GetKefuRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefuRspDescriptor = $convert.base64Decode(
    'CgpHZXRLZWZ1UnNwEjEKBGtlZnUYASABKAsyHS5wYl9tc2dfY3VzdG9tZXJfc2VydmljZS5LZW'
    'Z1UgRrZWZ1');

@$core.Deprecated('Use getKefusReqDescriptor instead')
const GetKefusReq$json = {
  '1': 'GetKefusReq',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `GetKefusReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefusReqDescriptor = $convert.base64Decode(
    'CgtHZXRLZWZ1c1JlcRIYCgdncm91cElkGAEgASgDUgdncm91cElk');

@$core.Deprecated('Use getKefusRspDescriptor instead')
const GetKefusRsp$json = {
  '1': 'GetKefusRsp',
  '2': [
    {'1': 'kefus', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_customer_service.Kefu', '10': 'kefus'},
  ],
};

/// Descriptor for `GetKefusRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefusRspDescriptor = $convert.base64Decode(
    'CgtHZXRLZWZ1c1JzcBIzCgVrZWZ1cxgBIAMoCzIdLnBiX21zZ19jdXN0b21lcl9zZXJ2aWNlLk'
    'tlZnVSBWtlZnVz');

@$core.Deprecated('Use getKefuRolesReqDescriptor instead')
const GetKefuRolesReq$json = {
  '1': 'GetKefuRolesReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `GetKefuRolesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefuRolesReqDescriptor = $convert.base64Decode(
    'Cg9HZXRLZWZ1Um9sZXNSZXESFgoGdXNlcklkGAEgASgDUgZ1c2VySWQ=');

@$core.Deprecated('Use getKefuRolesRspDescriptor instead')
const GetKefuRolesRsp$json = {
  '1': 'GetKefuRolesRsp',
  '2': [
    {'1': 'roles', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_customer_service.Kefu', '10': 'roles'},
  ],
};

/// Descriptor for `GetKefuRolesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefuRolesRspDescriptor = $convert.base64Decode(
    'Cg9HZXRLZWZ1Um9sZXNSc3ASMwoFcm9sZXMYASADKAsyHS5wYl9tc2dfY3VzdG9tZXJfc2Vydm'
    'ljZS5LZWZ1UgVyb2xlcw==');

@$core.Deprecated('Use kefuGroupDescriptor instead')
const KefuGroup$json = {
  '1': 'KefuGroup',
  '2': [
    {'1': 'appId', '3': 1, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 4, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `KefuGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kefuGroupDescriptor = $convert.base64Decode(
    'CglLZWZ1R3JvdXASFAoFYXBwSWQYASABKANSBWFwcElkEhgKB2dyb3VwSWQYAiABKANSB2dyb3'
    'VwSWQSEgoEbmFtZRgDIAEoCVIEbmFtZRIWCgZhdmF0YXIYBCABKAlSBmF2YXRhcg==');

@$core.Deprecated('Use addKefuGroupReqDescriptor instead')
const AddKefuGroupReq$json = {
  '1': 'AddKefuGroupReq',
  '2': [
    {'1': 'appId', '3': 1, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `AddKefuGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addKefuGroupReqDescriptor = $convert.base64Decode(
    'Cg9BZGRLZWZ1R3JvdXBSZXESFAoFYXBwSWQYASABKANSBWFwcElkEhIKBG5hbWUYAiABKAlSBG'
    '5hbWUSFgoGYXZhdGFyGAMgASgJUgZhdmF0YXI=');

@$core.Deprecated('Use addKefuGroupRspDescriptor instead')
const AddKefuGroupRsp$json = {
  '1': 'AddKefuGroupRsp',
  '2': [
    {'1': 'kefuGroup', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_customer_service.KefuGroup', '10': 'kefuGroup'},
  ],
};

/// Descriptor for `AddKefuGroupRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addKefuGroupRspDescriptor = $convert.base64Decode(
    'Cg9BZGRLZWZ1R3JvdXBSc3ASQAoJa2VmdUdyb3VwGAEgASgLMiIucGJfbXNnX2N1c3RvbWVyX3'
    'NlcnZpY2UuS2VmdUdyb3VwUglrZWZ1R3JvdXA=');

@$core.Deprecated('Use updateKefuGroupReqDescriptor instead')
const UpdateKefuGroupReq$json = {
  '1': 'UpdateKefuGroupReq',
  '2': [
    {'1': 'kefuGroup', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_customer_service.KefuGroup', '10': 'kefuGroup'},
    {'1': 'keys', '3': 2, '4': 3, '5': 9, '10': 'keys'},
  ],
};

/// Descriptor for `UpdateKefuGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateKefuGroupReqDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVLZWZ1R3JvdXBSZXESQAoJa2VmdUdyb3VwGAEgASgLMiIucGJfbXNnX2N1c3RvbW'
    'VyX3NlcnZpY2UuS2VmdUdyb3VwUglrZWZ1R3JvdXASEgoEa2V5cxgCIAMoCVIEa2V5cw==');

@$core.Deprecated('Use updateKefuGroupRspDescriptor instead')
const UpdateKefuGroupRsp$json = {
  '1': 'UpdateKefuGroupRsp',
  '2': [
    {'1': 'kefuGroup', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_customer_service.KefuGroup', '10': 'kefuGroup'},
  ],
};

/// Descriptor for `UpdateKefuGroupRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateKefuGroupRspDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVLZWZ1R3JvdXBSc3ASQAoJa2VmdUdyb3VwGAEgASgLMiIucGJfbXNnX2N1c3RvbW'
    'VyX3NlcnZpY2UuS2VmdUdyb3VwUglrZWZ1R3JvdXA=');

@$core.Deprecated('Use deleteKefuGroupReqDescriptor instead')
const DeleteKefuGroupReq$json = {
  '1': 'DeleteKefuGroupReq',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `DeleteKefuGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteKefuGroupReqDescriptor = $convert.base64Decode(
    'ChJEZWxldGVLZWZ1R3JvdXBSZXESGAoHZ3JvdXBJZBgBIAEoA1IHZ3JvdXBJZA==');

@$core.Deprecated('Use deleteKefuGroupRspDescriptor instead')
const DeleteKefuGroupRsp$json = {
  '1': 'DeleteKefuGroupRsp',
};

/// Descriptor for `DeleteKefuGroupRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteKefuGroupRspDescriptor = $convert.base64Decode(
    'ChJEZWxldGVLZWZ1R3JvdXBSc3A=');

@$core.Deprecated('Use getKefuGroupReqDescriptor instead')
const GetKefuGroupReq$json = {
  '1': 'GetKefuGroupReq',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `GetKefuGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefuGroupReqDescriptor = $convert.base64Decode(
    'Cg9HZXRLZWZ1R3JvdXBSZXESGAoHZ3JvdXBJZBgBIAEoA1IHZ3JvdXBJZA==');

@$core.Deprecated('Use getKefuGroupRspDescriptor instead')
const GetKefuGroupRsp$json = {
  '1': 'GetKefuGroupRsp',
  '2': [
    {'1': 'kefuGroup', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_customer_service.KefuGroup', '10': 'kefuGroup'},
  ],
};

/// Descriptor for `GetKefuGroupRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefuGroupRspDescriptor = $convert.base64Decode(
    'Cg9HZXRLZWZ1R3JvdXBSc3ASQAoJa2VmdUdyb3VwGAEgASgLMiIucGJfbXNnX2N1c3RvbWVyX3'
    'NlcnZpY2UuS2VmdUdyb3VwUglrZWZ1R3JvdXA=');

@$core.Deprecated('Use getKefuGroupsReqDescriptor instead')
const GetKefuGroupsReq$json = {
  '1': 'GetKefuGroupsReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'length', '3': 2, '4': 1, '5': 3, '10': 'length'},
  ],
};

/// Descriptor for `GetKefuGroupsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefuGroupsReqDescriptor = $convert.base64Decode(
    'ChBHZXRLZWZ1R3JvdXBzUmVxEhYKBm9mZnNldBgBIAEoA1IGb2Zmc2V0EhYKBmxlbmd0aBgCIA'
    'EoA1IGbGVuZ3Ro');

@$core.Deprecated('Use getKefuGroupsRspDescriptor instead')
const GetKefuGroupsRsp$json = {
  '1': 'GetKefuGroupsRsp',
  '2': [
    {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_customer_service.KefuGroup', '10': 'groups'},
  ],
};

/// Descriptor for `GetKefuGroupsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKefuGroupsRspDescriptor = $convert.base64Decode(
    'ChBHZXRLZWZ1R3JvdXBzUnNwEjoKBmdyb3VwcxgBIAMoCzIiLnBiX21zZ19jdXN0b21lcl9zZX'
    'J2aWNlLktlZnVHcm91cFIGZ3JvdXBz');

