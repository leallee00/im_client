//
//  Generated code. Do not modify.
//  source: pb_msg/call/call.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use businessTypeDescriptor instead')
const BusinessType$json = {
  '1': 'BusinessType',
  '2': [
    {'1': 'NORMAL', '2': 0},
    {'1': 'MATCH', '2': 1},
  ],
};

/// Descriptor for `BusinessType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List businessTypeDescriptor = $convert.base64Decode(
    'CgxCdXNpbmVzc1R5cGUSCgoGTk9STUFMEAASCQoFTUFUQ0gQAQ==');

@$core.Deprecated('Use callTypeDescriptor instead')
const CallType$json = {
  '1': 'CallType',
  '2': [
    {'1': 'VOICE', '2': 0},
    {'1': 'VIDEO', '2': 1},
  ],
};

/// Descriptor for `CallType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List callTypeDescriptor = $convert.base64Decode(
    'CghDYWxsVHlwZRIJCgVWT0lDRRAAEgkKBVZJREVPEAE=');

@$core.Deprecated('Use sDKDescriptor instead')
const SDK$json = {
  '1': 'SDK',
  '2': [
    {'1': 'ZEGO', '2': 0},
    {'1': 'QINIU', '2': 1},
  ],
};

/// Descriptor for `SDK`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sDKDescriptor = $convert.base64Decode(
    'CgNTREsSCAoEWkVHTxAAEgkKBVFJTklVEAE=');

@$core.Deprecated('Use reasonDescriptor instead')
const Reason$json = {
  '1': 'Reason',
  '2': [
    {'1': 'CALLER_HEARTBEAT_TIMEOUT', '2': 0},
    {'1': 'CALLEE_HEARTBEAT_TIMEOUT', '2': 10},
    {'1': 'USER_NO_MONEY', '2': 20},
    {'1': 'CALLING_TIMEOUT', '2': 21},
  ],
};

/// Descriptor for `Reason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List reasonDescriptor = $convert.base64Decode(
    'CgZSZWFzb24SHAoYQ0FMTEVSX0hFQVJUQkVBVF9USU1FT1VUEAASHAoYQ0FMTEVFX0hFQVJUQk'
    'VBVF9USU1FT1VUEAoSEQoNVVNFUl9OT19NT05FWRAUEhMKD0NBTExJTkdfVElNRU9VVBAV');

@$core.Deprecated('Use callReqDescriptor instead')
const CallReq$json = {
  '1': 'CallReq',
  '2': [
    {'1': 'businessType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_call.BusinessType', '10': 'businessType'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_call.CallType', '10': 'type'},
    {'1': 'channel', '3': 3, '4': 1, '5': 9, '10': 'channel'},
    {'1': 'sdk', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_call.SDK', '10': 'sdk'},
    {'1': 'callId', '3': 5, '4': 1, '5': 3, '10': 'callId'},
    {'1': 'roomToken', '3': 6, '4': 1, '5': 9, '10': 'roomToken'},
    {'1': 'callAt', '3': 7, '4': 1, '5': 3, '10': 'callAt'},
    {'1': 'price', '3': 8, '4': 1, '5': 3, '10': 'price'},
    {'1': 'exp', '3': 10, '4': 3, '5': 11, '6': '.pb_msg_call.CallReq.ExpEntry', '10': 'exp'},
  ],
  '3': [CallReq_ExpEntry$json],
};

@$core.Deprecated('Use callReqDescriptor instead')
const CallReq_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CallReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callReqDescriptor = $convert.base64Decode(
    'CgdDYWxsUmVxEj0KDGJ1c2luZXNzVHlwZRgBIAEoDjIZLnBiX21zZ19jYWxsLkJ1c2luZXNzVH'
    'lwZVIMYnVzaW5lc3NUeXBlEikKBHR5cGUYAiABKA4yFS5wYl9tc2dfY2FsbC5DYWxsVHlwZVIE'
    'dHlwZRIYCgdjaGFubmVsGAMgASgJUgdjaGFubmVsEiIKA3NkaxgEIAEoDjIQLnBiX21zZ19jYW'
    'xsLlNES1IDc2RrEhYKBmNhbGxJZBgFIAEoA1IGY2FsbElkEhwKCXJvb21Ub2tlbhgGIAEoCVIJ'
    'cm9vbVRva2VuEhYKBmNhbGxBdBgHIAEoA1IGY2FsbEF0EhQKBXByaWNlGAggASgDUgVwcmljZR'
    'IvCgNleHAYCiADKAsyHS5wYl9tc2dfY2FsbC5DYWxsUmVxLkV4cEVudHJ5UgNleHAaNgoIRXhw'
    'RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use callRspDescriptor instead')
const CallRsp$json = {
  '1': 'CallRsp',
  '2': [
    {'1': 'callId', '3': 1, '4': 1, '5': 3, '10': 'callId'},
    {'1': 'roomToken', '3': 2, '4': 1, '5': 9, '10': 'roomToken'},
    {'1': 'callAt', '3': 3, '4': 1, '5': 3, '10': 'callAt'},
    {'1': 'price', '3': 4, '4': 1, '5': 3, '10': 'price'},
  ],
};

/// Descriptor for `CallRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callRspDescriptor = $convert.base64Decode(
    'CgdDYWxsUnNwEhYKBmNhbGxJZBgBIAEoA1IGY2FsbElkEhwKCXJvb21Ub2tlbhgCIAEoCVIJcm'
    '9vbVRva2VuEhYKBmNhbGxBdBgDIAEoA1IGY2FsbEF0EhQKBXByaWNlGAQgASgDUgVwcmljZQ==');

@$core.Deprecated('Use acceptReqDescriptor instead')
const AcceptReq$json = {
  '1': 'AcceptReq',
  '2': [
    {'1': 'callId', '3': 1, '4': 1, '5': 3, '10': 'callId'},
    {'1': 'acceptAt', '3': 2, '4': 1, '5': 3, '10': 'acceptAt'},
    {'1': 'exp', '3': 10, '4': 3, '5': 11, '6': '.pb_msg_call.AcceptReq.ExpEntry', '10': 'exp'},
  ],
  '3': [AcceptReq_ExpEntry$json],
};

@$core.Deprecated('Use acceptReqDescriptor instead')
const AcceptReq_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AcceptReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptReqDescriptor = $convert.base64Decode(
    'CglBY2NlcHRSZXESFgoGY2FsbElkGAEgASgDUgZjYWxsSWQSGgoIYWNjZXB0QXQYAiABKANSCG'
    'FjY2VwdEF0EjEKA2V4cBgKIAMoCzIfLnBiX21zZ19jYWxsLkFjY2VwdFJlcS5FeHBFbnRyeVID'
    'ZXhwGjYKCEV4cEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZT'
    'oCOAE=');

@$core.Deprecated('Use acceptRspDescriptor instead')
const AcceptRsp$json = {
  '1': 'AcceptRsp',
  '2': [
    {'1': 'acceptAt', '3': 1, '4': 1, '5': 3, '10': 'acceptAt'},
  ],
};

/// Descriptor for `AcceptRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptRspDescriptor = $convert.base64Decode(
    'CglBY2NlcHRSc3ASGgoIYWNjZXB0QXQYASABKANSCGFjY2VwdEF0');

@$core.Deprecated('Use declineReqDescriptor instead')
const DeclineReq$json = {
  '1': 'DeclineReq',
  '2': [
    {'1': 'callId', '3': 1, '4': 1, '5': 3, '10': 'callId'},
    {'1': 'declineAt', '3': 2, '4': 1, '5': 3, '10': 'declineAt'},
    {'1': 'callerId', '3': 3, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'exp', '3': 10, '4': 3, '5': 11, '6': '.pb_msg_call.DeclineReq.ExpEntry', '10': 'exp'},
  ],
  '3': [DeclineReq_ExpEntry$json],
};

@$core.Deprecated('Use declineReqDescriptor instead')
const DeclineReq_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DeclineReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List declineReqDescriptor = $convert.base64Decode(
    'CgpEZWNsaW5lUmVxEhYKBmNhbGxJZBgBIAEoA1IGY2FsbElkEhwKCWRlY2xpbmVBdBgCIAEoA1'
    'IJZGVjbGluZUF0EhoKCGNhbGxlcklkGAMgASgDUghjYWxsZXJJZBIyCgNleHAYCiADKAsyIC5w'
    'Yl9tc2dfY2FsbC5EZWNsaW5lUmVxLkV4cEVudHJ5UgNleHAaNgoIRXhwRW50cnkSEAoDa2V5GA'
    'EgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use declineRspDescriptor instead')
const DeclineRsp$json = {
  '1': 'DeclineRsp',
  '2': [
    {'1': 'declineAt', '3': 1, '4': 1, '5': 3, '10': 'declineAt'},
  ],
};

/// Descriptor for `DeclineRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List declineRspDescriptor = $convert.base64Decode(
    'CgpEZWNsaW5lUnNwEhwKCWRlY2xpbmVBdBgBIAEoA1IJZGVjbGluZUF0');

@$core.Deprecated('Use acceptedNotifyDescriptor instead')
const AcceptedNotify$json = {
  '1': 'AcceptedNotify',
  '2': [
    {'1': 'callId', '3': 1, '4': 1, '5': 3, '10': 'callId'},
  ],
};

/// Descriptor for `AcceptedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptedNotifyDescriptor = $convert.base64Decode(
    'Cg5BY2NlcHRlZE5vdGlmeRIWCgZjYWxsSWQYASABKANSBmNhbGxJZA==');

@$core.Deprecated('Use overNotifyDescriptor instead')
const OverNotify$json = {
  '1': 'OverNotify',
  '2': [
    {'1': 'callId', '3': 1, '4': 1, '5': 3, '10': 'callId'},
    {'1': 'reason', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_call.Reason', '10': 'reason'},
    {'1': 'overAt', '3': 3, '4': 1, '5': 3, '10': 'overAt'},
    {'1': 'feeUserId', '3': 4, '4': 1, '5': 3, '10': 'feeUserId'},
  ],
};

/// Descriptor for `OverNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List overNotifyDescriptor = $convert.base64Decode(
    'CgpPdmVyTm90aWZ5EhYKBmNhbGxJZBgBIAEoA1IGY2FsbElkEisKBnJlYXNvbhgCIAEoDjITLn'
    'BiX21zZ19jYWxsLlJlYXNvblIGcmVhc29uEhYKBm92ZXJBdBgDIAEoA1IGb3ZlckF0EhwKCWZl'
    'ZVVzZXJJZBgEIAEoA1IJZmVlVXNlcklk');

@$core.Deprecated('Use statsNotifyDescriptor instead')
const StatsNotify$json = {
  '1': 'StatsNotify',
  '2': [
    {'1': 'callId', '3': 1, '4': 1, '5': 3, '10': 'callId'},
    {'1': 'duration', '3': 2, '4': 1, '5': 3, '10': 'duration'},
  ],
};

/// Descriptor for `StatsNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statsNotifyDescriptor = $convert.base64Decode(
    'CgtTdGF0c05vdGlmeRIWCgZjYWxsSWQYASABKANSBmNhbGxJZBIaCghkdXJhdGlvbhgCIAEoA1'
    'IIZHVyYXRpb24=');

@$core.Deprecated('Use noFreeTimeNotifyDescriptor instead')
const NoFreeTimeNotify$json = {
  '1': 'NoFreeTimeNotify',
  '2': [
    {'1': 'callId', '3': 1, '4': 1, '5': 3, '10': 'callId'},
  ],
};

/// Descriptor for `NoFreeTimeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noFreeTimeNotifyDescriptor = $convert.base64Decode(
    'ChBOb0ZyZWVUaW1lTm90aWZ5EhYKBmNhbGxJZBgBIAEoA1IGY2FsbElk');

@$core.Deprecated('Use noMoneyNotifyDescriptor instead')
const NoMoneyNotify$json = {
  '1': 'NoMoneyNotify',
  '2': [
    {'1': 'callId', '3': 1, '4': 1, '5': 3, '10': 'callId'},
  ],
};

/// Descriptor for `NoMoneyNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noMoneyNotifyDescriptor = $convert.base64Decode(
    'Cg1Ob01vbmV5Tm90aWZ5EhYKBmNhbGxJZBgBIAEoA1IGY2FsbElk');

@$core.Deprecated('Use zegoRecordOverReqDescriptor instead')
const ZegoRecordOverReq$json = {
  '1': 'ZegoRecordOverReq',
  '2': [
    {'1': 'TaskId', '3': 1, '4': 1, '5': 9, '10': 'TaskId'},
    {'1': 'RoomId', '3': 2, '4': 1, '5': 9, '10': 'RoomId'},
    {'1': 'ReplayUrl', '3': 3, '4': 1, '5': 9, '10': 'ReplayUrl'},
  ],
};

/// Descriptor for `ZegoRecordOverReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List zegoRecordOverReqDescriptor = $convert.base64Decode(
    'ChFaZWdvUmVjb3JkT3ZlclJlcRIWCgZUYXNrSWQYASABKAlSBlRhc2tJZBIWCgZSb29tSWQYAi'
    'ABKAlSBlJvb21JZBIcCglSZXBsYXlVcmwYAyABKAlSCVJlcGxheVVybA==');

@$core.Deprecated('Use zegoRecordOverRspDescriptor instead')
const ZegoRecordOverRsp$json = {
  '1': 'ZegoRecordOverRsp',
};

/// Descriptor for `ZegoRecordOverRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List zegoRecordOverRspDescriptor = $convert.base64Decode(
    'ChFaZWdvUmVjb3JkT3ZlclJzcA==');

