//
//  Generated code. Do not modify.
//  source: pb_msg/commim_uaa/commim_uaa.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eNBackgroundImageModelTypeDescriptor instead')
const ENBackgroundImageModelType$json = {
  '1': 'ENBackgroundImageModelType',
  '2': [
    {'1': 'ENBackgroundImageModelChat', '2': 0},
    {'1': 'ENBackgroundImageModelAudio', '2': 1},
    {'1': 'ENBackgroundImageModelGroup', '2': 2},
  ],
};

/// Descriptor for `ENBackgroundImageModelType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eNBackgroundImageModelTypeDescriptor = $convert.base64Decode(
    'ChpFTkJhY2tncm91bmRJbWFnZU1vZGVsVHlwZRIeChpFTkJhY2tncm91bmRJbWFnZU1vZGVsQ2'
    'hhdBAAEh8KG0VOQmFja2dyb3VuZEltYWdlTW9kZWxBdWRpbxABEh8KG0VOQmFja2dyb3VuZElt'
    'YWdlTW9kZWxHcm91cBAC');

@$core.Deprecated('Use taskLoopTypeDescriptor instead')
const TaskLoopType$json = {
  '1': 'TaskLoopType',
  '2': [
    {'1': 'TaskLoopOnce', '2': 0},
    {'1': 'TaskLoopPeriodicity', '2': 1},
  ],
};

/// Descriptor for `TaskLoopType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskLoopTypeDescriptor = $convert.base64Decode(
    'CgxUYXNrTG9vcFR5cGUSEAoMVGFza0xvb3BPbmNlEAASFwoTVGFza0xvb3BQZXJpb2RpY2l0eR'
    'AB');

@$core.Deprecated('Use taskPeriodDescriptor instead')
const TaskPeriod$json = {
  '1': 'TaskPeriod',
  '2': [
    {'1': 'Day', '2': 0},
    {'1': 'Week', '2': 1},
  ],
};

/// Descriptor for `TaskPeriod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskPeriodDescriptor = $convert.base64Decode(
    'CgpUYXNrUGVyaW9kEgcKA0RheRAAEggKBFdlZWsQAQ==');

@$core.Deprecated('Use taskStatusDescriptor instead')
const TaskStatus$json = {
  '1': 'TaskStatus',
  '2': [
    {'1': 'Edit', '2': 0},
    {'1': 'OnLine', '2': 1},
    {'1': 'OffLine', '2': 2},
  ],
};

/// Descriptor for `TaskStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskStatusDescriptor = $convert.base64Decode(
    'CgpUYXNrU3RhdHVzEggKBEVkaXQQABIKCgZPbkxpbmUQARILCgdPZmZMaW5lEAI=');

@$core.Deprecated('Use taskGoingStatusDescriptor instead')
const TaskGoingStatus$json = {
  '1': 'TaskGoingStatus',
  '2': [
    {'1': 'Default', '2': 0},
    {'1': 'Receipted', '2': 1},
    {'1': 'Going', '2': 2},
    {'1': 'Completed', '2': 3},
    {'1': 'Rewarded', '2': 4},
  ],
};

/// Descriptor for `TaskGoingStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskGoingStatusDescriptor = $convert.base64Decode(
    'Cg9UYXNrR29pbmdTdGF0dXMSCwoHRGVmYXVsdBAAEg0KCVJlY2VpcHRlZBABEgkKBUdvaW5nEA'
    'ISDQoJQ29tcGxldGVkEAMSDAoIUmV3YXJkZWQQBA==');

@$core.Deprecated('Use checkAccountExistReqDescriptor instead')
const CheckAccountExistReq$json = {
  '1': 'CheckAccountExistReq',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
  ],
};

/// Descriptor for `CheckAccountExistReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkAccountExistReqDescriptor = $convert.base64Decode(
    'ChRDaGVja0FjY291bnRFeGlzdFJlcRIYCgdhY2NvdW50GAEgASgJUgdhY2NvdW50');

@$core.Deprecated('Use checkAccountExistRspDescriptor instead')
const CheckAccountExistRsp$json = {
  '1': 'CheckAccountExistRsp',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    {'1': 'Exist', '3': 2, '4': 1, '5': 8, '10': 'Exist'},
  ],
};

/// Descriptor for `CheckAccountExistRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkAccountExistRspDescriptor = $convert.base64Decode(
    'ChRDaGVja0FjY291bnRFeGlzdFJzcBIYCgdhY2NvdW50GAEgASgJUgdhY2NvdW50EhQKBUV4aX'
    'N0GAIgASgIUgVFeGlzdA==');

@$core.Deprecated('Use signupReqDescriptor instead')
const SignupReq$json = {
  '1': 'SignupReq',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    {'1': 'code', '3': 5, '4': 1, '5': 5, '10': 'code'},
    {'1': 'nickname', '3': 6, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'sysInviteCode', '3': 7, '4': 1, '5': 9, '10': 'sysInviteCode'},
    {'1': 'avatar', '3': 8, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `SignupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signupReqDescriptor = $convert.base64Decode(
    'CglTaWdudXBSZXESGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhQKBXBob25lGAIgASgJUg'
    'VwaG9uZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSGgoIcGFzc3dvcmQYBCABKAlSCHBhc3N3b3Jk'
    'EhIKBGNvZGUYBSABKAVSBGNvZGUSGgoIbmlja25hbWUYBiABKAlSCG5pY2tuYW1lEiQKDXN5c0'
    'ludml0ZUNvZGUYByABKAlSDXN5c0ludml0ZUNvZGUSFgoGYXZhdGFyGAggASgJUgZhdmF0YXI=');

@$core.Deprecated('Use signupRspDescriptor instead')
const SignupRsp$json = {
  '1': 'SignupRsp',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.UserInfo', '10': 'info'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    {'1': 'imToken', '3': 3, '4': 1, '5': 9, '10': 'imToken'},
  ],
};

/// Descriptor for `SignupRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signupRspDescriptor = $convert.base64Decode(
    'CglTaWdudXBSc3ASLwoEaW5mbxgBIAEoCzIbLnBiX21zZ19jb21taW1fdWFhLlVzZXJJbmZvUg'
    'RpbmZvEhQKBXRva2VuGAIgASgJUgV0b2tlbhIYCgdpbVRva2VuGAMgASgJUgdpbVRva2Vu');

@$core.Deprecated('Use unregisterReqDescriptor instead')
const UnregisterReq$json = {
  '1': 'UnregisterReq',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    {'1': 'code', '3': 5, '4': 1, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `UnregisterReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unregisterReqDescriptor = $convert.base64Decode(
    'Cg1VbnJlZ2lzdGVyUmVxEhgKB2FjY291bnQYASABKAlSB2FjY291bnQSFAoFcGhvbmUYAiABKA'
    'lSBXBob25lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBIaCghwYXNzd29yZBgEIAEoCVIIcGFzc3dv'
    'cmQSEgoEY29kZRgFIAEoBVIEY29kZQ==');

@$core.Deprecated('Use sendPhoneCodeReqDescriptor instead')
const SendPhoneCodeReq$json = {
  '1': 'SendPhoneCodeReq',
  '2': [
    {'1': 'PhoneNo', '3': 1, '4': 1, '5': 9, '10': 'PhoneNo'},
    {'1': 'Code', '3': 2, '4': 1, '5': 9, '10': 'Code'},
  ],
};

/// Descriptor for `SendPhoneCodeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendPhoneCodeReqDescriptor = $convert.base64Decode(
    'ChBTZW5kUGhvbmVDb2RlUmVxEhgKB1Bob25lTm8YASABKAlSB1Bob25lTm8SEgoEQ29kZRgCIA'
    'EoCVIEQ29kZQ==');

@$core.Deprecated('Use sendEmailCodeReqDescriptor instead')
const SendEmailCodeReq$json = {
  '1': 'SendEmailCodeReq',
  '2': [
    {'1': 'EmailAddr', '3': 1, '4': 1, '5': 9, '10': 'EmailAddr'},
    {'1': 'Code', '3': 2, '4': 1, '5': 9, '10': 'Code'},
  ],
};

/// Descriptor for `SendEmailCodeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendEmailCodeReqDescriptor = $convert.base64Decode(
    'ChBTZW5kRW1haWxDb2RlUmVxEhwKCUVtYWlsQWRkchgBIAEoCVIJRW1haWxBZGRyEhIKBENvZG'
    'UYAiABKAlSBENvZGU=');

@$core.Deprecated('Use loginReqDescriptor instead')
const LoginReq$json = {
  '1': 'LoginReq',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    {'1': 'code', '3': 5, '4': 1, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `LoginReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginReqDescriptor = $convert.base64Decode(
    'CghMb2dpblJlcRIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSFAoFcGhvbmUYAiABKAlSBX'
    'Bob25lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBIaCghwYXNzd29yZBgEIAEoCVIIcGFzc3dvcmQS'
    'EgoEY29kZRgFIAEoBVIEY29kZQ==');

@$core.Deprecated('Use loginRspDescriptor instead')
const LoginRsp$json = {
  '1': 'LoginRsp',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.UserInfo', '10': 'info'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    {'1': 'imToken', '3': 3, '4': 1, '5': 9, '10': 'imToken'},
  ],
};

/// Descriptor for `LoginRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRspDescriptor = $convert.base64Decode(
    'CghMb2dpblJzcBIvCgRpbmZvGAEgASgLMhsucGJfbXNnX2NvbW1pbV91YWEuVXNlckluZm9SBG'
    'luZm8SFAoFdG9rZW4YAiABKAlSBXRva2VuEhgKB2ltVG9rZW4YAyABKAlSB2ltVG9rZW4=');

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'imId', '3': 3, '4': 1, '5': 3, '10': 'imId'},
    {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 6, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'role', '3': 7, '4': 1, '5': 5, '10': 'role'},
    {'1': 'avatar', '3': 8, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'banned', '3': 9, '4': 1, '5': 8, '10': 'banned'},
    {'1': 'gender', '3': 10, '4': 1, '5': 5, '10': 'gender'},
    {'1': 'sign', '3': 11, '4': 1, '5': 9, '10': 'sign'},
    {'1': 'level', '3': 12, '4': 1, '5': 5, '10': 'level'},
    {'1': 'userSourceVersion', '3': 13, '4': 1, '5': 5, '10': 'userSourceVersion'},
    {'1': 'passWord', '3': 14, '4': 1, '5': 9, '10': 'passWord'},
    {'1': 'code', '3': 15, '4': 1, '5': 9, '10': 'code'},
    {'1': 'freeAddMeFriend', '3': 16, '4': 1, '5': 8, '10': 'freeAddMeFriend'},
  ],
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxIWCgZ1c2VySWQYASABKAlSBnVzZXJJZBIaCgh1c2VybmFtZRgCIAEoCVIIdX'
    'Nlcm5hbWUSEgoEaW1JZBgDIAEoA1IEaW1JZBIUCgVwaG9uZRgEIAEoCVIFcGhvbmUSFAoFZW1h'
    'aWwYBSABKAlSBWVtYWlsEhoKCG5pY2tuYW1lGAYgASgJUghuaWNrbmFtZRISCgRyb2xlGAcgAS'
    'gFUgRyb2xlEhYKBmF2YXRhchgIIAEoCVIGYXZhdGFyEhYKBmJhbm5lZBgJIAEoCFIGYmFubmVk'
    'EhYKBmdlbmRlchgKIAEoBVIGZ2VuZGVyEhIKBHNpZ24YCyABKAlSBHNpZ24SFAoFbGV2ZWwYDC'
    'ABKAVSBWxldmVsEiwKEXVzZXJTb3VyY2VWZXJzaW9uGA0gASgFUhF1c2VyU291cmNlVmVyc2lv'
    'bhIaCghwYXNzV29yZBgOIAEoCVIIcGFzc1dvcmQSEgoEY29kZRgPIAEoCVIEY29kZRIoCg9mcm'
    'VlQWRkTWVGcmllbmQYECABKAhSD2ZyZWVBZGRNZUZyaWVuZA==');

@$core.Deprecated('Use userInfoReqDescriptor instead')
const UserInfoReq$json = {
  '1': 'UserInfoReq',
};

/// Descriptor for `UserInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoReqDescriptor = $convert.base64Decode(
    'CgtVc2VySW5mb1JlcQ==');

@$core.Deprecated('Use userInfoRspDescriptor instead')
const UserInfoRsp$json = {
  '1': 'UserInfoRsp',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.UserInfo', '10': 'info'},
  ],
};

/// Descriptor for `UserInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoRspDescriptor = $convert.base64Decode(
    'CgtVc2VySW5mb1JzcBIvCgRpbmZvGAEgASgLMhsucGJfbXNnX2NvbW1pbV91YWEuVXNlckluZm'
    '9SBGluZm8=');

@$core.Deprecated('Use findUserInfoIntellReqDescriptor instead')
const FindUserInfoIntellReq$json = {
  '1': 'FindUserInfoIntellReq',
  '2': [
    {'1': 'param', '3': 1, '4': 1, '5': 9, '10': 'param'},
  ],
};

/// Descriptor for `FindUserInfoIntellReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findUserInfoIntellReqDescriptor = $convert.base64Decode(
    'ChVGaW5kVXNlckluZm9JbnRlbGxSZXESFAoFcGFyYW0YASABKAlSBXBhcmFt');

@$core.Deprecated('Use updateUserInfoReqDescriptor instead')
const UpdateUserInfoReq$json = {
  '1': 'UpdateUserInfoReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.UserInfo', '10': 'info'},
    {'1': 'keys', '3': 3, '4': 3, '5': 9, '10': 'keys'},
  ],
};

/// Descriptor for `UpdateUserInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserInfoReqDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VySW5mb1JlcRIWCgZ1c2VySWQYASABKAlSBnVzZXJJZBIvCgRpbmZvGAIgAS'
    'gLMhsucGJfbXNnX2NvbW1pbV91YWEuVXNlckluZm9SBGluZm8SEgoEa2V5cxgDIAMoCVIEa2V5'
    'cw==');

@$core.Deprecated('Use updateUserInfoRspDescriptor instead')
const UpdateUserInfoRsp$json = {
  '1': 'UpdateUserInfoRsp',
  '2': [
    {'1': 'userSourceNewVersion', '3': 1, '4': 1, '5': 5, '10': 'userSourceNewVersion'},
  ],
};

/// Descriptor for `UpdateUserInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserInfoRspDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VySW5mb1JzcBIyChR1c2VyU291cmNlTmV3VmVyc2lvbhgBIAEoBVIUdXNlcl'
    'NvdXJjZU5ld1ZlcnNpb24=');

@$core.Deprecated('Use bannedUserNotifyDescriptor instead')
const BannedUserNotify$json = {
  '1': 'BannedUserNotify',
  '2': [
    {'1': 'optUaaUserId', '3': 1, '4': 1, '5': 9, '10': 'optUaaUserId'},
    {'1': 'aimUaaUserId', '3': 2, '4': 1, '5': 9, '10': 'aimUaaUserId'},
    {'1': 'reason', '3': 3, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'banned', '3': 4, '4': 1, '5': 8, '10': 'banned'},
  ],
};

/// Descriptor for `BannedUserNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bannedUserNotifyDescriptor = $convert.base64Decode(
    'ChBCYW5uZWRVc2VyTm90aWZ5EiIKDG9wdFVhYVVzZXJJZBgBIAEoCVIMb3B0VWFhVXNlcklkEi'
    'IKDGFpbVVhYVVzZXJJZBgCIAEoCVIMYWltVWFhVXNlcklkEhYKBnJlYXNvbhgDIAEoCVIGcmVh'
    'c29uEhYKBmJhbm5lZBgEIAEoCFIGYmFubmVk');

@$core.Deprecated('Use suggestDescriptor instead')
const Suggest$json = {
  '1': 'Suggest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'suggest', '3': 2, '4': 1, '5': 9, '10': 'suggest'},
    {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
    {'1': 'kind', '3': 4, '4': 1, '5': 5, '10': 'kind'},
    {'1': 'emergentLevel', '3': 5, '4': 1, '5': 5, '10': 'emergentLevel'},
    {'1': 'replyCount', '3': 6, '4': 1, '5': 5, '10': 'replyCount'},
    {'1': 'state', '3': 7, '4': 1, '5': 5, '10': 'state'},
    {'1': 'userId', '3': 8, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'replyUserId', '3': 9, '4': 1, '5': 3, '10': 'replyUserId'},
    {'1': 'closeUserId', '3': 10, '4': 1, '5': 3, '10': 'closeUserId'},
    {'1': 'createdAt', '3': 11, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 12, '4': 1, '5': 3, '10': 'updatedAt'},
    {'1': 'results', '3': 13, '4': 1, '5': 9, '10': 'results'},
    {'1': 'relationSuggestId', '3': 14, '4': 1, '5': 3, '10': 'relationSuggestId'},
    {'1': 'ProblemTime', '3': 15, '4': 1, '5': 3, '10': 'ProblemTime'},
    {'1': 'Pics', '3': 16, '4': 1, '5': 9, '10': 'Pics'},
    {'1': 'PhoneNo', '3': 17, '4': 1, '5': 9, '10': 'PhoneNo'},
    {'1': 'associationId', '3': 18, '4': 1, '5': 3, '10': 'associationId'},
    {'1': 'associationInfo', '3': 19, '4': 1, '5': 9, '10': 'associationInfo'},
  ],
};

/// Descriptor for `Suggest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List suggestDescriptor = $convert.base64Decode(
    'CgdTdWdnZXN0Eg4KAmlkGAEgASgDUgJpZBIYCgdzdWdnZXN0GAIgASgJUgdzdWdnZXN0EhIKBH'
    'R5cGUYAyABKAVSBHR5cGUSEgoEa2luZBgEIAEoBVIEa2luZBIkCg1lbWVyZ2VudExldmVsGAUg'
    'ASgFUg1lbWVyZ2VudExldmVsEh4KCnJlcGx5Q291bnQYBiABKAVSCnJlcGx5Q291bnQSFAoFc3'
    'RhdGUYByABKAVSBXN0YXRlEhYKBnVzZXJJZBgIIAEoA1IGdXNlcklkEiAKC3JlcGx5VXNlcklk'
    'GAkgASgDUgtyZXBseVVzZXJJZBIgCgtjbG9zZVVzZXJJZBgKIAEoA1ILY2xvc2VVc2VySWQSHA'
    'oJY3JlYXRlZEF0GAsgASgDUgljcmVhdGVkQXQSHAoJdXBkYXRlZEF0GAwgASgDUgl1cGRhdGVk'
    'QXQSGAoHcmVzdWx0cxgNIAEoCVIHcmVzdWx0cxIsChFyZWxhdGlvblN1Z2dlc3RJZBgOIAEoA1'
    'IRcmVsYXRpb25TdWdnZXN0SWQSIAoLUHJvYmxlbVRpbWUYDyABKANSC1Byb2JsZW1UaW1lEhIK'
    'BFBpY3MYECABKAlSBFBpY3MSGAoHUGhvbmVObxgRIAEoCVIHUGhvbmVObxIkCg1hc3NvY2lhdG'
    'lvbklkGBIgASgDUg1hc3NvY2lhdGlvbklkEigKD2Fzc29jaWF0aW9uSW5mbxgTIAEoCVIPYXNz'
    'b2NpYXRpb25JbmZv');

@$core.Deprecated('Use suggestReplyDescriptor instead')
const SuggestReply$json = {
  '1': 'SuggestReply',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'suggestId', '3': 2, '4': 1, '5': 3, '10': 'suggestId'},
    {'1': 'relationReplyId', '3': 3, '4': 1, '5': 3, '10': 'relationReplyId'},
    {'1': 'reply', '3': 4, '4': 1, '5': 9, '10': 'reply'},
    {'1': 'createdAt', '3': 5, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 6, '4': 1, '5': 3, '10': 'updatedAt'},
    {'1': 'replyUserId', '3': 7, '4': 1, '5': 3, '10': 'replyUserId'},
  ],
};

/// Descriptor for `SuggestReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List suggestReplyDescriptor = $convert.base64Decode(
    'CgxTdWdnZXN0UmVwbHkSDgoCaWQYASABKANSAmlkEhwKCXN1Z2dlc3RJZBgCIAEoA1IJc3VnZ2'
    'VzdElkEigKD3JlbGF0aW9uUmVwbHlJZBgDIAEoA1IPcmVsYXRpb25SZXBseUlkEhQKBXJlcGx5'
    'GAQgASgJUgVyZXBseRIcCgljcmVhdGVkQXQYBSABKANSCWNyZWF0ZWRBdBIcCgl1cGRhdGVkQX'
    'QYBiABKANSCXVwZGF0ZWRBdBIgCgtyZXBseVVzZXJJZBgHIAEoA1ILcmVwbHlVc2VySWQ=');

@$core.Deprecated('Use addSuggestReqDescriptor instead')
const AddSuggestReq$json = {
  '1': 'AddSuggestReq',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'kind', '3': 2, '4': 1, '5': 5, '10': 'kind'},
    {'1': 'suggest', '3': 3, '4': 1, '5': 9, '10': 'suggest'},
    {'1': 'emergentLevel', '3': 4, '4': 1, '5': 5, '10': 'emergentLevel'},
    {'1': 'relationSuggestId', '3': 5, '4': 1, '5': 3, '10': 'relationSuggestId'},
    {'1': 'suggestData', '3': 6, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.Suggest', '10': 'suggestData'},
  ],
};

/// Descriptor for `AddSuggestReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSuggestReqDescriptor = $convert.base64Decode(
    'Cg1BZGRTdWdnZXN0UmVxEhIKBHR5cGUYASABKAVSBHR5cGUSEgoEa2luZBgCIAEoBVIEa2luZB'
    'IYCgdzdWdnZXN0GAMgASgJUgdzdWdnZXN0EiQKDWVtZXJnZW50TGV2ZWwYBCABKAVSDWVtZXJn'
    'ZW50TGV2ZWwSLAoRcmVsYXRpb25TdWdnZXN0SWQYBSABKANSEXJlbGF0aW9uU3VnZ2VzdElkEj'
    'wKC3N1Z2dlc3REYXRhGAYgASgLMhoucGJfbXNnX2NvbW1pbV91YWEuU3VnZ2VzdFILc3VnZ2Vz'
    'dERhdGE=');

@$core.Deprecated('Use addSuggestRspDescriptor instead')
const AddSuggestRsp$json = {
  '1': 'AddSuggestRsp',
  '2': [
    {'1': 'suggest', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.Suggest', '10': 'suggest'},
  ],
};

/// Descriptor for `AddSuggestRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSuggestRspDescriptor = $convert.base64Decode(
    'Cg1BZGRTdWdnZXN0UnNwEjQKB3N1Z2dlc3QYASABKAsyGi5wYl9tc2dfY29tbWltX3VhYS5TdW'
    'dnZXN0UgdzdWdnZXN0');

@$core.Deprecated('Use getSuggestListReqDescriptor instead')
const GetSuggestListReq$json = {
  '1': 'GetSuggestListReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 5, '10': 'totalCount'},
    {'1': 'suggestCondition', '3': 4, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.Suggest', '10': 'suggestCondition'},
  ],
};

/// Descriptor for `GetSuggestListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSuggestListReqDescriptor = $convert.base64Decode(
    'ChFHZXRTdWdnZXN0TGlzdFJlcRISCgRwYWdlGAEgASgFUgRwYWdlEhoKCHBhZ2VTaXplGAIgAS'
    'gFUghwYWdlU2l6ZRIeCgp0b3RhbENvdW50GAMgASgFUgp0b3RhbENvdW50EkYKEHN1Z2dlc3RD'
    'b25kaXRpb24YBCABKAsyGi5wYl9tc2dfY29tbWltX3VhYS5TdWdnZXN0UhBzdWdnZXN0Q29uZG'
    'l0aW9u');

@$core.Deprecated('Use getSuggestListRspDescriptor instead')
const GetSuggestListRsp$json = {
  '1': 'GetSuggestListRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 5, '10': 'totalCount'},
    {'1': 'suggestList', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.Suggest', '10': 'suggestList'},
  ],
};

/// Descriptor for `GetSuggestListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSuggestListRspDescriptor = $convert.base64Decode(
    'ChFHZXRTdWdnZXN0TGlzdFJzcBISCgRwYWdlGAEgASgFUgRwYWdlEhoKCHBhZ2VTaXplGAIgAS'
    'gFUghwYWdlU2l6ZRIeCgp0b3RhbENvdW50GAMgASgFUgp0b3RhbENvdW50EjwKC3N1Z2dlc3RM'
    'aXN0GAQgAygLMhoucGJfbXNnX2NvbW1pbV91YWEuU3VnZ2VzdFILc3VnZ2VzdExpc3Q=');

@$core.Deprecated('Use addSuggestReplyReqDescriptor instead')
const AddSuggestReplyReq$json = {
  '1': 'AddSuggestReplyReq',
  '2': [
    {'1': 'suggestId', '3': 1, '4': 1, '5': 3, '10': 'suggestId'},
    {'1': 'relationReplyId', '3': 2, '4': 1, '5': 3, '10': 'relationReplyId'},
    {'1': 'reply', '3': 3, '4': 1, '5': 9, '10': 'reply'},
  ],
};

/// Descriptor for `AddSuggestReplyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSuggestReplyReqDescriptor = $convert.base64Decode(
    'ChJBZGRTdWdnZXN0UmVwbHlSZXESHAoJc3VnZ2VzdElkGAEgASgDUglzdWdnZXN0SWQSKAoPcm'
    'VsYXRpb25SZXBseUlkGAIgASgDUg9yZWxhdGlvblJlcGx5SWQSFAoFcmVwbHkYAyABKAlSBXJl'
    'cGx5');

@$core.Deprecated('Use addSuggestReplyRspDescriptor instead')
const AddSuggestReplyRsp$json = {
  '1': 'AddSuggestReplyRsp',
  '2': [
    {'1': 'suggestReply', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.SuggestReply', '10': 'suggestReply'},
  ],
};

/// Descriptor for `AddSuggestReplyRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSuggestReplyRspDescriptor = $convert.base64Decode(
    'ChJBZGRTdWdnZXN0UmVwbHlSc3ASQwoMc3VnZ2VzdFJlcGx5GAEgASgLMh8ucGJfbXNnX2NvbW'
    '1pbV91YWEuU3VnZ2VzdFJlcGx5UgxzdWdnZXN0UmVwbHk=');

@$core.Deprecated('Use getSuggestDetailReqDescriptor instead')
const GetSuggestDetailReq$json = {
  '1': 'GetSuggestDetailReq',
  '2': [
    {'1': 'SuggestId', '3': 1, '4': 1, '5': 3, '10': 'SuggestId'},
  ],
};

/// Descriptor for `GetSuggestDetailReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSuggestDetailReqDescriptor = $convert.base64Decode(
    'ChNHZXRTdWdnZXN0RGV0YWlsUmVxEhwKCVN1Z2dlc3RJZBgBIAEoA1IJU3VnZ2VzdElk');

@$core.Deprecated('Use getSuggestDetailRspDescriptor instead')
const GetSuggestDetailRsp$json = {
  '1': 'GetSuggestDetailRsp',
  '2': [
    {'1': 'suggest', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.Suggest', '10': 'suggest'},
  ],
};

/// Descriptor for `GetSuggestDetailRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSuggestDetailRspDescriptor = $convert.base64Decode(
    'ChNHZXRTdWdnZXN0RGV0YWlsUnNwEjQKB3N1Z2dlc3QYASABKAsyGi5wYl9tc2dfY29tbWltX3'
    'VhYS5TdWdnZXN0UgdzdWdnZXN0');

@$core.Deprecated('Use getSuggestReplyListReqDescriptor instead')
const GetSuggestReplyListReq$json = {
  '1': 'GetSuggestReplyListReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 5, '10': 'totalCount'},
    {'1': 'SuggestId', '3': 4, '4': 1, '5': 3, '10': 'SuggestId'},
  ],
};

/// Descriptor for `GetSuggestReplyListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSuggestReplyListReqDescriptor = $convert.base64Decode(
    'ChZHZXRTdWdnZXN0UmVwbHlMaXN0UmVxEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpem'
    'UYAiABKAVSCHBhZ2VTaXplEh4KCnRvdGFsQ291bnQYAyABKAVSCnRvdGFsQ291bnQSHAoJU3Vn'
    'Z2VzdElkGAQgASgDUglTdWdnZXN0SWQ=');

@$core.Deprecated('Use getSuggestReplyListRspDescriptor instead')
const GetSuggestReplyListRsp$json = {
  '1': 'GetSuggestReplyListRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 5, '10': 'totalCount'},
    {'1': 'SuggestId', '3': 4, '4': 1, '5': 3, '10': 'SuggestId'},
    {'1': 'suggestReplyList', '3': 5, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.SuggestReply', '10': 'suggestReplyList'},
  ],
};

/// Descriptor for `GetSuggestReplyListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSuggestReplyListRspDescriptor = $convert.base64Decode(
    'ChZHZXRTdWdnZXN0UmVwbHlMaXN0UnNwEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpem'
    'UYAiABKAVSCHBhZ2VTaXplEh4KCnRvdGFsQ291bnQYAyABKAVSCnRvdGFsQ291bnQSHAoJU3Vn'
    'Z2VzdElkGAQgASgDUglTdWdnZXN0SWQSSwoQc3VnZ2VzdFJlcGx5TGlzdBgFIAMoCzIfLnBiX2'
    '1zZ19jb21taW1fdWFhLlN1Z2dlc3RSZXBseVIQc3VnZ2VzdFJlcGx5TGlzdA==');

@$core.Deprecated('Use setSuggestStatusReqDescriptor instead')
const SetSuggestStatusReq$json = {
  '1': 'SetSuggestStatusReq',
  '2': [
    {'1': 'suggestId', '3': 1, '4': 1, '5': 3, '10': 'suggestId'},
    {'1': 'status', '3': 2, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `SetSuggestStatusReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSuggestStatusReqDescriptor = $convert.base64Decode(
    'ChNTZXRTdWdnZXN0U3RhdHVzUmVxEhwKCXN1Z2dlc3RJZBgBIAEoA1IJc3VnZ2VzdElkEhYKBn'
    'N0YXR1cxgCIAEoBVIGc3RhdHVz');

@$core.Deprecated('Use setSuggestReplyStatusRspDescriptor instead')
const SetSuggestReplyStatusRsp$json = {
  '1': 'SetSuggestReplyStatusRsp',
  '2': [
    {'1': 'suggestId', '3': 1, '4': 1, '5': 3, '10': 'suggestId'},
    {'1': 'status', '3': 2, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `SetSuggestReplyStatusRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSuggestReplyStatusRspDescriptor = $convert.base64Decode(
    'ChhTZXRTdWdnZXN0UmVwbHlTdGF0dXNSc3ASHAoJc3VnZ2VzdElkGAEgASgDUglzdWdnZXN0SW'
    'QSFgoGc3RhdHVzGAIgASgFUgZzdGF0dXM=');

@$core.Deprecated('Use checkVersionReqDescriptor instead')
const CheckVersionReq$json = {
  '1': 'CheckVersionReq',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 3, '10': 'version'},
    {'1': 'clientRunEnv', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.CLIENT_RUN_ENV_TYPE', '10': 'clientRunEnv'},
  ],
};

/// Descriptor for `CheckVersionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkVersionReqDescriptor = $convert.base64Decode(
    'Cg9DaGVja1ZlcnNpb25SZXESGAoHdmVyc2lvbhgBIAEoA1IHdmVyc2lvbhI/CgxjbGllbnRSdW'
    '5FbnYYAiABKA4yGy5wYl9wdWIuQ0xJRU5UX1JVTl9FTlZfVFlQRVIMY2xpZW50UnVuRW52');

@$core.Deprecated('Use checkVersionRspDescriptor instead')
const CheckVersionRsp$json = {
  '1': 'CheckVersionRsp',
  '2': [
    {'1': 'LatestVersion', '3': 1, '4': 1, '5': 3, '10': 'LatestVersion'},
    {'1': 'needForcedUpdate', '3': 2, '4': 1, '5': 8, '10': 'needForcedUpdate'},
    {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    {'1': 'versionDesc', '3': 4, '4': 1, '5': 9, '10': 'versionDesc'},
    {'1': 'clientRunEnv', '3': 5, '4': 1, '5': 14, '6': '.pb_pub.CLIENT_RUN_ENV_TYPE', '10': 'clientRunEnv'},
    {'1': 'needCleanCatchData', '3': 6, '4': 1, '5': 8, '10': 'needCleanCatchData'},
  ],
};

/// Descriptor for `CheckVersionRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkVersionRspDescriptor = $convert.base64Decode(
    'Cg9DaGVja1ZlcnNpb25Sc3ASJAoNTGF0ZXN0VmVyc2lvbhgBIAEoA1INTGF0ZXN0VmVyc2lvbh'
    'IqChBuZWVkRm9yY2VkVXBkYXRlGAIgASgIUhBuZWVkRm9yY2VkVXBkYXRlEhAKA3VybBgDIAEo'
    'CVIDdXJsEiAKC3ZlcnNpb25EZXNjGAQgASgJUgt2ZXJzaW9uRGVzYxI/CgxjbGllbnRSdW5Fbn'
    'YYBSABKA4yGy5wYl9wdWIuQ0xJRU5UX1JVTl9FTlZfVFlQRVIMY2xpZW50UnVuRW52Ei4KEm5l'
    'ZWRDbGVhbkNhdGNoRGF0YRgGIAEoCFISbmVlZENsZWFuQ2F0Y2hEYXRh');

@$core.Deprecated('Use imEndPointDescriptor instead')
const ImEndPoint$json = {
  '1': 'ImEndPoint',
  '2': [
    {'1': 'cfgAllocatorUrl', '3': 1, '4': 1, '5': 9, '10': 'cfgAllocatorUrl'},
    {'1': 'urlUploadFile', '3': 2, '4': 1, '5': 9, '10': 'urlUploadFile'},
    {'1': 'cfgImInterApiUrl', '3': 3, '4': 1, '5': 9, '10': 'cfgImInterApiUrl'},
    {'1': 'cfgImOutApiUrl', '3': 4, '4': 1, '5': 9, '10': 'cfgImOutApiUrl'},
    {'1': 'cfgAppGateApiHost', '3': 5, '4': 1, '5': 9, '10': 'cfgAppGateApiHost'},
    {'1': 'cfgGrpcUrl', '3': 6, '4': 1, '5': 9, '10': 'cfgGrpcUrl'},
    {'1': 'appId', '3': 7, '4': 1, '5': 5, '10': 'appId'},
    {'1': 'score', '3': 8, '4': 1, '5': 5, '10': 'score'},
    {'1': 'delay', '3': 9, '4': 1, '5': 5, '10': 'delay'},
    {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ImEndPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imEndPointDescriptor = $convert.base64Decode(
    'CgpJbUVuZFBvaW50EigKD2NmZ0FsbG9jYXRvclVybBgBIAEoCVIPY2ZnQWxsb2NhdG9yVXJsEi'
    'QKDXVybFVwbG9hZEZpbGUYAiABKAlSDXVybFVwbG9hZEZpbGUSKgoQY2ZnSW1JbnRlckFwaVVy'
    'bBgDIAEoCVIQY2ZnSW1JbnRlckFwaVVybBImCg5jZmdJbU91dEFwaVVybBgEIAEoCVIOY2ZnSW'
    '1PdXRBcGlVcmwSLAoRY2ZnQXBwR2F0ZUFwaUhvc3QYBSABKAlSEWNmZ0FwcEdhdGVBcGlIb3N0'
    'Eh4KCmNmZ0dycGNVcmwYBiABKAlSCmNmZ0dycGNVcmwSFAoFYXBwSWQYByABKAVSBWFwcElkEh'
    'QKBXNjb3JlGAggASgFUgVzY29yZRIUCgVkZWxheRgJIAEoBVIFZGVsYXkSEgoEbmFtZRgKIAEo'
    'CVIEbmFtZQ==');

@$core.Deprecated('Use fetchEndPointReqDescriptor instead')
const FetchEndPointReq$json = {
  '1': 'FetchEndPointReq',
};

/// Descriptor for `FetchEndPointReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchEndPointReqDescriptor = $convert.base64Decode(
    'ChBGZXRjaEVuZFBvaW50UmVx');

@$core.Deprecated('Use fetchEndPointRspDescriptor instead')
const FetchEndPointRsp$json = {
  '1': 'FetchEndPointRsp',
  '2': [
    {'1': 'endPoints', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.ImEndPoint', '10': 'endPoints'},
  ],
};

/// Descriptor for `FetchEndPointRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchEndPointRspDescriptor = $convert.base64Decode(
    'ChBGZXRjaEVuZFBvaW50UnNwEjsKCWVuZFBvaW50cxgBIAMoCzIdLnBiX21zZ19jb21taW1fdW'
    'FhLkltRW5kUG9pbnRSCWVuZFBvaW50cw==');

@$core.Deprecated('Use checkDelayReqDescriptor instead')
const CheckDelayReq$json = {
  '1': 'CheckDelayReq',
};

/// Descriptor for `CheckDelayReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkDelayReqDescriptor = $convert.base64Decode(
    'Cg1DaGVja0RlbGF5UmVx');

@$core.Deprecated('Use checkDelayRspDescriptor instead')
const CheckDelayRsp$json = {
  '1': 'CheckDelayRsp',
};

/// Descriptor for `CheckDelayRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkDelayRspDescriptor = $convert.base64Decode(
    'Cg1DaGVja0RlbGF5UnNw');

@$core.Deprecated('Use getSysCfgReqDescriptor instead')
const GetSysCfgReq$json = {
  '1': 'GetSysCfgReq',
  '2': [
    {'1': 'appId', '3': 1, '4': 1, '5': 3, '10': 'appId'},
  ],
};

/// Descriptor for `GetSysCfgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSysCfgReqDescriptor = $convert.base64Decode(
    'CgxHZXRTeXNDZmdSZXESFAoFYXBwSWQYASABKANSBWFwcElk');

@$core.Deprecated('Use getSysCfgRspDescriptor instead')
const GetSysCfgRsp$json = {
  '1': 'GetSysCfgRsp',
  '2': [
    {'1': 'sysCfg', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.GetSysCfgRsp.SysCfgEntry', '10': 'sysCfg'},
  ],
  '3': [GetSysCfgRsp_SysCfgEntry$json],
};

@$core.Deprecated('Use getSysCfgRspDescriptor instead')
const GetSysCfgRsp_SysCfgEntry$json = {
  '1': 'SysCfgEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GetSysCfgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSysCfgRspDescriptor = $convert.base64Decode(
    'CgxHZXRTeXNDZmdSc3ASQwoGc3lzQ2ZnGAEgAygLMisucGJfbXNnX2NvbW1pbV91YWEuR2V0U3'
    'lzQ2ZnUnNwLlN5c0NmZ0VudHJ5UgZzeXNDZmcaOQoLU3lzQ2ZnRW50cnkSEAoDa2V5GAEgASgJ'
    'UgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use imLoginConfirmReqDescriptor instead')
const ImLoginConfirmReq$json = {
  '1': 'ImLoginConfirmReq',
  '2': [
    {'1': 'imUserId', '3': 1, '4': 1, '5': 3, '10': 'imUserId'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `ImLoginConfirmReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imLoginConfirmReqDescriptor = $convert.base64Decode(
    'ChFJbUxvZ2luQ29uZmlybVJlcRIaCghpbVVzZXJJZBgBIAEoA1IIaW1Vc2VySWQSFAoFdG9rZW'
    '4YAiABKAlSBXRva2Vu');

@$core.Deprecated('Use imLoginConfirmRspDescriptor instead')
const ImLoginConfirmRsp$json = {
  '1': 'ImLoginConfirmRsp',
  '2': [
    {'1': 'pass', '3': 1, '4': 1, '5': 8, '10': 'pass'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `ImLoginConfirmRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imLoginConfirmRspDescriptor = $convert.base64Decode(
    'ChFJbUxvZ2luQ29uZmlybVJzcBISCgRwYXNzGAEgASgIUgRwYXNzEhYKBnJlYXNvbhgCIAEoCV'
    'IGcmVhc29u');

@$core.Deprecated('Use resetPasswordReqDescriptor instead')
const ResetPasswordReq$json = {
  '1': 'ResetPasswordReq',
  '2': [
    {'1': 'phone', '3': 1, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    {'1': 'code', '3': 4, '4': 1, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `ResetPasswordReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordReqDescriptor = $convert.base64Decode(
    'ChBSZXNldFBhc3N3b3JkUmVxEhQKBXBob25lGAEgASgJUgVwaG9uZRIUCgVlbWFpbBgCIAEoCV'
    'IFZW1haWwSGgoIcGFzc3dvcmQYAyABKAlSCHBhc3N3b3JkEhIKBGNvZGUYBCABKAVSBGNvZGU=');

@$core.Deprecated('Use resetPasswordRspDescriptor instead')
const ResetPasswordRsp$json = {
  '1': 'ResetPasswordRsp',
  '2': [
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.google.rpc.Status', '10': 'status'},
  ],
};

/// Descriptor for `ResetPasswordRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordRspDescriptor = $convert.base64Decode(
    'ChBSZXNldFBhc3N3b3JkUnNwEioKBnN0YXR1cxgCIAEoCzISLmdvb2dsZS5ycGMuU3RhdHVzUg'
    'ZzdGF0dXM=');

@$core.Deprecated('Use userAddressDescriptor instead')
const UserAddress$json = {
  '1': 'UserAddress',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'contacts', '3': 2, '4': 1, '5': 9, '10': 'contacts'},
    {'1': 'phoneCode', '3': 3, '4': 1, '5': 9, '10': 'phoneCode'},
    {'1': 'area', '3': 4, '4': 1, '5': 9, '10': 'area'},
    {'1': 'detailAddress', '3': 5, '4': 1, '5': 9, '10': 'detailAddress'},
    {'1': 'postCode', '3': 6, '4': 1, '5': 9, '10': 'postCode'},
    {'1': 'isDefault', '3': 7, '4': 1, '5': 8, '10': 'isDefault'},
  ],
};

/// Descriptor for `UserAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAddressDescriptor = $convert.base64Decode(
    'CgtVc2VyQWRkcmVzcxIOCgJpZBgBIAEoA1ICaWQSGgoIY29udGFjdHMYAiABKAlSCGNvbnRhY3'
    'RzEhwKCXBob25lQ29kZRgDIAEoCVIJcGhvbmVDb2RlEhIKBGFyZWEYBCABKAlSBGFyZWESJAoN'
    'ZGV0YWlsQWRkcmVzcxgFIAEoCVINZGV0YWlsQWRkcmVzcxIaCghwb3N0Q29kZRgGIAEoCVIIcG'
    '9zdENvZGUSHAoJaXNEZWZhdWx0GAcgASgIUglpc0RlZmF1bHQ=');

@$core.Deprecated('Use addAddressReqDescriptor instead')
const AddAddressReq$json = {
  '1': 'AddAddressReq',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.UserAddress', '10': 'address'},
  ],
};

/// Descriptor for `AddAddressReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addAddressReqDescriptor = $convert.base64Decode(
    'Cg1BZGRBZGRyZXNzUmVxEjgKB2FkZHJlc3MYASABKAsyHi5wYl9tc2dfY29tbWltX3VhYS5Vc2'
    'VyQWRkcmVzc1IHYWRkcmVzcw==');

@$core.Deprecated('Use addAddressRspDescriptor instead')
const AddAddressRsp$json = {
  '1': 'AddAddressRsp',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.UserAddress', '10': 'address'},
  ],
};

/// Descriptor for `AddAddressRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addAddressRspDescriptor = $convert.base64Decode(
    'Cg1BZGRBZGRyZXNzUnNwEjgKB2FkZHJlc3MYASABKAsyHi5wYl9tc2dfY29tbWltX3VhYS5Vc2'
    'VyQWRkcmVzc1IHYWRkcmVzcw==');

@$core.Deprecated('Use delAddressReqDescriptor instead')
const DelAddressReq$json = {
  '1': 'DelAddressReq',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `DelAddressReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delAddressReqDescriptor = $convert.base64Decode(
    'Cg1EZWxBZGRyZXNzUmVxEg4KAmlkGAEgASgDUgJpZA==');

@$core.Deprecated('Use editAddressReqDescriptor instead')
const EditAddressReq$json = {
  '1': 'EditAddressReq',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.UserAddress', '10': 'address'},
  ],
};

/// Descriptor for `EditAddressReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editAddressReqDescriptor = $convert.base64Decode(
    'Cg5FZGl0QWRkcmVzc1JlcRI4CgdhZGRyZXNzGAEgASgLMh4ucGJfbXNnX2NvbW1pbV91YWEuVX'
    'NlckFkZHJlc3NSB2FkZHJlc3M=');

@$core.Deprecated('Use fetchAddressReqDescriptor instead')
const FetchAddressReq$json = {
  '1': 'FetchAddressReq',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `FetchAddressReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchAddressReqDescriptor = $convert.base64Decode(
    'Cg9GZXRjaEFkZHJlc3NSZXESDgoCaWQYASABKANSAmlk');

@$core.Deprecated('Use fetchAddressRspDescriptor instead')
const FetchAddressRsp$json = {
  '1': 'FetchAddressRsp',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.UserAddress', '10': 'address'},
  ],
};

/// Descriptor for `FetchAddressRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchAddressRspDescriptor = $convert.base64Decode(
    'Cg9GZXRjaEFkZHJlc3NSc3ASOAoHYWRkcmVzcxgBIAEoCzIeLnBiX21zZ19jb21taW1fdWFhLl'
    'VzZXJBZGRyZXNzUgdhZGRyZXNz');

@$core.Deprecated('Use fetchDefaultAddressReqDescriptor instead')
const FetchDefaultAddressReq$json = {
  '1': 'FetchDefaultAddressReq',
};

/// Descriptor for `FetchDefaultAddressReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchDefaultAddressReqDescriptor = $convert.base64Decode(
    'ChZGZXRjaERlZmF1bHRBZGRyZXNzUmVx');

@$core.Deprecated('Use fetchDefaultAddressRspDescriptor instead')
const FetchDefaultAddressRsp$json = {
  '1': 'FetchDefaultAddressRsp',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.UserAddress', '10': 'address'},
  ],
};

/// Descriptor for `FetchDefaultAddressRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchDefaultAddressRspDescriptor = $convert.base64Decode(
    'ChZGZXRjaERlZmF1bHRBZGRyZXNzUnNwEjgKB2FkZHJlc3MYASABKAsyHi5wYl9tc2dfY29tbW'
    'ltX3VhYS5Vc2VyQWRkcmVzc1IHYWRkcmVzcw==');

@$core.Deprecated('Use fetchAddressListReqDescriptor instead')
const FetchAddressListReq$json = {
  '1': 'FetchAddressListReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `FetchAddressListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchAddressListReqDescriptor = $convert.base64Decode(
    'ChNGZXRjaEFkZHJlc3NMaXN0UmVxEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpemUYAi'
    'ABKAVSCHBhZ2VTaXpl');

@$core.Deprecated('Use fetchAddressListRspDescriptor instead')
const FetchAddressListRsp$json = {
  '1': 'FetchAddressListRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'total', '3': 3, '4': 1, '5': 3, '10': 'total'},
    {'1': 'addressList', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.UserAddress', '10': 'addressList'},
  ],
};

/// Descriptor for `FetchAddressListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchAddressListRspDescriptor = $convert.base64Decode(
    'ChNGZXRjaEFkZHJlc3NMaXN0UnNwEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpemUYAi'
    'ABKAVSCHBhZ2VTaXplEhQKBXRvdGFsGAMgASgDUgV0b3RhbBJACgthZGRyZXNzTGlzdBgEIAMo'
    'CzIeLnBiX21zZ19jb21taW1fdWFhLlVzZXJBZGRyZXNzUgthZGRyZXNzTGlzdA==');

@$core.Deprecated('Use categorizeTagDescriptor instead')
const CategorizeTag$json = {
  '1': 'CategorizeTag',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'tag', '3': 2, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'memberCount', '3': 3, '4': 1, '5': 3, '10': 'memberCount'},
  ],
};

/// Descriptor for `CategorizeTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categorizeTagDescriptor = $convert.base64Decode(
    'Cg1DYXRlZ29yaXplVGFnEg4KAmlkGAEgASgDUgJpZBIQCgN0YWcYAiABKAlSA3RhZxIgCgttZW'
    '1iZXJDb3VudBgDIAEoA1ILbWVtYmVyQ291bnQ=');

@$core.Deprecated('Use categorizeTagMemberDescriptor instead')
const CategorizeTagMember$json = {
  '1': 'CategorizeTagMember',
  '2': [
    {'1': 'tagId', '3': 1, '4': 1, '5': 3, '10': 'tagId'},
    {'1': 'memberId', '3': 2, '4': 1, '5': 3, '10': 'memberId'},
  ],
};

/// Descriptor for `CategorizeTagMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categorizeTagMemberDescriptor = $convert.base64Decode(
    'ChNDYXRlZ29yaXplVGFnTWVtYmVyEhQKBXRhZ0lkGAEgASgDUgV0YWdJZBIaCghtZW1iZXJJZB'
    'gCIAEoA1IIbWVtYmVySWQ=');

@$core.Deprecated('Use addCategorizeTagReqDescriptor instead')
const AddCategorizeTagReq$json = {
  '1': 'AddCategorizeTagReq',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'member', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.CategorizeTagMember', '10': 'member'},
  ],
};

/// Descriptor for `AddCategorizeTagReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCategorizeTagReqDescriptor = $convert.base64Decode(
    'ChNBZGRDYXRlZ29yaXplVGFnUmVxEhAKA3RhZxgBIAEoCVIDdGFnEj4KBm1lbWJlchgCIAMoCz'
    'ImLnBiX21zZ19jb21taW1fdWFhLkNhdGVnb3JpemVUYWdNZW1iZXJSBm1lbWJlcg==');

@$core.Deprecated('Use addCategorizeTagRspDescriptor instead')
const AddCategorizeTagRsp$json = {
  '1': 'AddCategorizeTagRsp',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.CategorizeTag', '10': 'tag'},
    {'1': 'member', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.CategorizeTagMember', '10': 'member'},
  ],
};

/// Descriptor for `AddCategorizeTagRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCategorizeTagRspDescriptor = $convert.base64Decode(
    'ChNBZGRDYXRlZ29yaXplVGFnUnNwEjIKA3RhZxgBIAEoCzIgLnBiX21zZ19jb21taW1fdWFhLk'
    'NhdGVnb3JpemVUYWdSA3RhZxI+CgZtZW1iZXIYAiADKAsyJi5wYl9tc2dfY29tbWltX3VhYS5D'
    'YXRlZ29yaXplVGFnTWVtYmVyUgZtZW1iZXI=');

@$core.Deprecated('Use delCategorizeTagReqDescriptor instead')
const DelCategorizeTagReq$json = {
  '1': 'DelCategorizeTagReq',
  '2': [
    {'1': 'tagId', '3': 1, '4': 1, '5': 3, '10': 'tagId'},
  ],
};

/// Descriptor for `DelCategorizeTagReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delCategorizeTagReqDescriptor = $convert.base64Decode(
    'ChNEZWxDYXRlZ29yaXplVGFnUmVxEhQKBXRhZ0lkGAEgASgDUgV0YWdJZA==');

@$core.Deprecated('Use editCategorizeTagReqDescriptor instead')
const EditCategorizeTagReq$json = {
  '1': 'EditCategorizeTagReq',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.CategorizeTag', '10': 'tag'},
  ],
};

/// Descriptor for `EditCategorizeTagReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editCategorizeTagReqDescriptor = $convert.base64Decode(
    'ChRFZGl0Q2F0ZWdvcml6ZVRhZ1JlcRIyCgN0YWcYASABKAsyIC5wYl9tc2dfY29tbWltX3VhYS'
    '5DYXRlZ29yaXplVGFnUgN0YWc=');

@$core.Deprecated('Use fetchCategorizeTagListReqDescriptor instead')
const FetchCategorizeTagListReq$json = {
  '1': 'FetchCategorizeTagListReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `FetchCategorizeTagListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchCategorizeTagListReqDescriptor = $convert.base64Decode(
    'ChlGZXRjaENhdGVnb3JpemVUYWdMaXN0UmVxEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZV'
    'NpemUYAiABKAVSCHBhZ2VTaXpl');

@$core.Deprecated('Use fetchCategorizeTagListRspDescriptor instead')
const FetchCategorizeTagListRsp$json = {
  '1': 'FetchCategorizeTagListRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'total', '3': 3, '4': 1, '5': 3, '10': 'total'},
    {'1': 'tagList', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.CategorizeTag', '10': 'tagList'},
  ],
};

/// Descriptor for `FetchCategorizeTagListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchCategorizeTagListRspDescriptor = $convert.base64Decode(
    'ChlGZXRjaENhdGVnb3JpemVUYWdMaXN0UnNwEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZV'
    'NpemUYAiABKAVSCHBhZ2VTaXplEhQKBXRvdGFsGAMgASgDUgV0b3RhbBI6Cgd0YWdMaXN0GAQg'
    'AygLMiAucGJfbXNnX2NvbW1pbV91YWEuQ2F0ZWdvcml6ZVRhZ1IHdGFnTGlzdA==');

@$core.Deprecated('Use addCategorizeTagMemberReqDescriptor instead')
const AddCategorizeTagMemberReq$json = {
  '1': 'AddCategorizeTagMemberReq',
  '2': [
    {'1': 'member', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.CategorizeTagMember', '10': 'member'},
  ],
};

/// Descriptor for `AddCategorizeTagMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCategorizeTagMemberReqDescriptor = $convert.base64Decode(
    'ChlBZGRDYXRlZ29yaXplVGFnTWVtYmVyUmVxEj4KBm1lbWJlchgBIAEoCzImLnBiX21zZ19jb2'
    '1taW1fdWFhLkNhdGVnb3JpemVUYWdNZW1iZXJSBm1lbWJlcg==');

@$core.Deprecated('Use addCategorizeTagMemberRspDescriptor instead')
const AddCategorizeTagMemberRsp$json = {
  '1': 'AddCategorizeTagMemberRsp',
  '2': [
    {'1': 'member', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.CategorizeTagMember', '10': 'member'},
    {'1': 'tagMemberTotalCount', '3': 2, '4': 1, '5': 3, '10': 'tagMemberTotalCount'},
  ],
};

/// Descriptor for `AddCategorizeTagMemberRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCategorizeTagMemberRspDescriptor = $convert.base64Decode(
    'ChlBZGRDYXRlZ29yaXplVGFnTWVtYmVyUnNwEj4KBm1lbWJlchgBIAEoCzImLnBiX21zZ19jb2'
    '1taW1fdWFhLkNhdGVnb3JpemVUYWdNZW1iZXJSBm1lbWJlchIwChN0YWdNZW1iZXJUb3RhbENv'
    'dW50GAIgASgDUhN0YWdNZW1iZXJUb3RhbENvdW50');

@$core.Deprecated('Use delCategorizeTagMemberReqDescriptor instead')
const DelCategorizeTagMemberReq$json = {
  '1': 'DelCategorizeTagMemberReq',
  '2': [
    {'1': 'member', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.CategorizeTagMember', '10': 'member'},
  ],
};

/// Descriptor for `DelCategorizeTagMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delCategorizeTagMemberReqDescriptor = $convert.base64Decode(
    'ChlEZWxDYXRlZ29yaXplVGFnTWVtYmVyUmVxEj4KBm1lbWJlchgBIAEoCzImLnBiX21zZ19jb2'
    '1taW1fdWFhLkNhdGVnb3JpemVUYWdNZW1iZXJSBm1lbWJlcg==');

@$core.Deprecated('Use delCategorizeTagMemberRspDescriptor instead')
const DelCategorizeTagMemberRsp$json = {
  '1': 'DelCategorizeTagMemberRsp',
  '2': [
    {'1': 'tagMemberTotalCount', '3': 1, '4': 1, '5': 3, '10': 'tagMemberTotalCount'},
  ],
};

/// Descriptor for `DelCategorizeTagMemberRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delCategorizeTagMemberRspDescriptor = $convert.base64Decode(
    'ChlEZWxDYXRlZ29yaXplVGFnTWVtYmVyUnNwEjAKE3RhZ01lbWJlclRvdGFsQ291bnQYASABKA'
    'NSE3RhZ01lbWJlclRvdGFsQ291bnQ=');

@$core.Deprecated('Use fetchCategorizeTagMemberListReqDescriptor instead')
const FetchCategorizeTagMemberListReq$json = {
  '1': 'FetchCategorizeTagMemberListReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'tagId', '3': 3, '4': 1, '5': 3, '10': 'tagId'},
  ],
};

/// Descriptor for `FetchCategorizeTagMemberListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchCategorizeTagMemberListReqDescriptor = $convert.base64Decode(
    'Ch9GZXRjaENhdGVnb3JpemVUYWdNZW1iZXJMaXN0UmVxEhIKBHBhZ2UYASABKAVSBHBhZ2USGg'
    'oIcGFnZVNpemUYAiABKAVSCHBhZ2VTaXplEhQKBXRhZ0lkGAMgASgDUgV0YWdJZA==');

@$core.Deprecated('Use fetchCategorizeTagMemberListRspDescriptor instead')
const FetchCategorizeTagMemberListRsp$json = {
  '1': 'FetchCategorizeTagMemberListRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'total', '3': 3, '4': 1, '5': 3, '10': 'total'},
    {'1': 'memberList', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.CategorizeTagMember', '10': 'memberList'},
  ],
};

/// Descriptor for `FetchCategorizeTagMemberListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchCategorizeTagMemberListRspDescriptor = $convert.base64Decode(
    'Ch9GZXRjaENhdGVnb3JpemVUYWdNZW1iZXJMaXN0UnNwEhIKBHBhZ2UYASABKAVSBHBhZ2USGg'
    'oIcGFnZVNpemUYAiABKAVSCHBhZ2VTaXplEhQKBXRvdGFsGAMgASgDUgV0b3RhbBJGCgptZW1i'
    'ZXJMaXN0GAQgAygLMiYucGJfbXNnX2NvbW1pbV91YWEuQ2F0ZWdvcml6ZVRhZ01lbWJlclIKbW'
    'VtYmVyTGlzdA==');

@$core.Deprecated('Use backgroundImageInfoDescriptor instead')
const BackgroundImageInfo$json = {
  '1': 'BackgroundImageInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'createdAt', '3': 2, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'modelType', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_commim_uaa.ENBackgroundImageModelType', '10': 'modelType'},
    {'1': 'modelRelationId', '3': 5, '4': 1, '5': 3, '10': 'modelRelationId'},
    {'1': 'imageUrl', '3': 6, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `BackgroundImageInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backgroundImageInfoDescriptor = $convert.base64Decode(
    'ChNCYWNrZ3JvdW5kSW1hZ2VJbmZvEg4KAmlkGAEgASgDUgJpZBIcCgljcmVhdGVkQXQYAiABKA'
    'NSCWNyZWF0ZWRBdBIWCgZ1c2VySWQYAyABKANSBnVzZXJJZBJLCgltb2RlbFR5cGUYBCABKA4y'
    'LS5wYl9tc2dfY29tbWltX3VhYS5FTkJhY2tncm91bmRJbWFnZU1vZGVsVHlwZVIJbW9kZWxUeX'
    'BlEigKD21vZGVsUmVsYXRpb25JZBgFIAEoA1IPbW9kZWxSZWxhdGlvbklkEhoKCGltYWdlVXJs'
    'GAYgASgJUghpbWFnZVVybA==');

@$core.Deprecated('Use addBackgroundReqDescriptor instead')
const AddBackgroundReq$json = {
  '1': 'AddBackgroundReq',
  '2': [
    {'1': 'imageInfo', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.BackgroundImageInfo', '10': 'imageInfo'},
  ],
};

/// Descriptor for `AddBackgroundReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addBackgroundReqDescriptor = $convert.base64Decode(
    'ChBBZGRCYWNrZ3JvdW5kUmVxEkQKCWltYWdlSW5mbxgBIAEoCzImLnBiX21zZ19jb21taW1fdW'
    'FhLkJhY2tncm91bmRJbWFnZUluZm9SCWltYWdlSW5mbw==');

@$core.Deprecated('Use addBackgroundRspDescriptor instead')
const AddBackgroundRsp$json = {
  '1': 'AddBackgroundRsp',
  '2': [
    {'1': 'imageInfo', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.BackgroundImageInfo', '10': 'imageInfo'},
  ],
};

/// Descriptor for `AddBackgroundRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addBackgroundRspDescriptor = $convert.base64Decode(
    'ChBBZGRCYWNrZ3JvdW5kUnNwEkQKCWltYWdlSW5mbxgBIAEoCzImLnBiX21zZ19jb21taW1fdW'
    'FhLkJhY2tncm91bmRJbWFnZUluZm9SCWltYWdlSW5mbw==');

@$core.Deprecated('Use delBackgroundPicReqDescriptor instead')
const DelBackgroundPicReq$json = {
  '1': 'DelBackgroundPicReq',
  '2': [
    {'1': 'imageInfo', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.BackgroundImageInfo', '10': 'imageInfo'},
  ],
};

/// Descriptor for `DelBackgroundPicReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delBackgroundPicReqDescriptor = $convert.base64Decode(
    'ChNEZWxCYWNrZ3JvdW5kUGljUmVxEkQKCWltYWdlSW5mbxgBIAEoCzImLnBiX21zZ19jb21taW'
    '1fdWFhLkJhY2tncm91bmRJbWFnZUluZm9SCWltYWdlSW5mbw==');

@$core.Deprecated('Use delBackgroundRspDescriptor instead')
const DelBackgroundRsp$json = {
  '1': 'DelBackgroundRsp',
  '2': [
    {'1': 'imageInfo', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.BackgroundImageInfo', '10': 'imageInfo'},
  ],
};

/// Descriptor for `DelBackgroundRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delBackgroundRspDescriptor = $convert.base64Decode(
    'ChBEZWxCYWNrZ3JvdW5kUnNwEkQKCWltYWdlSW5mbxgBIAEoCzImLnBiX21zZ19jb21taW1fdW'
    'FhLkJhY2tncm91bmRJbWFnZUluZm9SCWltYWdlSW5mbw==');

@$core.Deprecated('Use fetchBackgroundPicListReqDescriptor instead')
const FetchBackgroundPicListReq$json = {
  '1': 'FetchBackgroundPicListReq',
  '2': [
    {'1': 'imageInfo', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.BackgroundImageInfo', '10': 'imageInfo'},
  ],
};

/// Descriptor for `FetchBackgroundPicListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchBackgroundPicListReqDescriptor = $convert.base64Decode(
    'ChlGZXRjaEJhY2tncm91bmRQaWNMaXN0UmVxEkQKCWltYWdlSW5mbxgBIAEoCzImLnBiX21zZ1'
    '9jb21taW1fdWFhLkJhY2tncm91bmRJbWFnZUluZm9SCWltYWdlSW5mbw==');

@$core.Deprecated('Use fetchBackgroundPicListRspDescriptor instead')
const FetchBackgroundPicListRsp$json = {
  '1': 'FetchBackgroundPicListRsp',
  '2': [
    {'1': 'imageInfoList', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.BackgroundImageInfo', '10': 'imageInfoList'},
  ],
};

/// Descriptor for `FetchBackgroundPicListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchBackgroundPicListRspDescriptor = $convert.base64Decode(
    'ChlGZXRjaEJhY2tncm91bmRQaWNMaXN0UnNwEkwKDWltYWdlSW5mb0xpc3QYASADKAsyJi5wYl'
    '9tc2dfY29tbWltX3VhYS5CYWNrZ3JvdW5kSW1hZ2VJbmZvUg1pbWFnZUluZm9MaXN0');

@$core.Deprecated('Use walletDescriptor instead')
const Wallet$json = {
  '1': 'Wallet',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'value', '3': 3, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `Wallet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletDescriptor = $convert.base64Decode(
    'CgZXYWxsZXQSDgoCaWQYASABKANSAmlkEh4KCndhbGxldFR5cGUYAiABKAVSCndhbGxldFR5cG'
    'USFAoFdmFsdWUYAyABKANSBXZhbHVl');

@$core.Deprecated('Use walletGetInfoReqDescriptor instead')
const WalletGetInfoReq$json = {
  '1': 'WalletGetInfoReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
  ],
};

/// Descriptor for `WalletGetInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletGetInfoReqDescriptor = $convert.base64Decode(
    'ChBXYWxsZXRHZXRJbmZvUmVxEhYKBnVzZXJJZBgBIAEoA1IGdXNlcklkEh4KCndhbGxldFR5cG'
    'UYAiABKAVSCndhbGxldFR5cGU=');

@$core.Deprecated('Use walletGetInfoRspDescriptor instead')
const WalletGetInfoRsp$json = {
  '1': 'WalletGetInfoRsp',
  '2': [
    {'1': 'wallet', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.Wallet', '10': 'wallet'},
    {'1': 'hasePassWorld', '3': 2, '4': 1, '5': 8, '10': 'hasePassWorld'},
  ],
};

/// Descriptor for `WalletGetInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletGetInfoRspDescriptor = $convert.base64Decode(
    'ChBXYWxsZXRHZXRJbmZvUnNwEjEKBndhbGxldBgBIAMoCzIZLnBiX21zZ19jb21taW1fdWFhLl'
    'dhbGxldFIGd2FsbGV0EiQKDWhhc2VQYXNzV29ybGQYAiABKAhSDWhhc2VQYXNzV29ybGQ=');

@$core.Deprecated('Use walletAddValueReqDescriptor instead')
const WalletAddValueReq$json = {
  '1': 'WalletAddValueReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'addValue', '3': 3, '4': 1, '5': 3, '10': 'addValue'},
    {'1': 'optUserId', '3': 4, '4': 1, '5': 3, '10': 'optUserId'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `WalletAddValueReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletAddValueReqDescriptor = $convert.base64Decode(
    'ChFXYWxsZXRBZGRWYWx1ZVJlcRIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIeCgp3YWxsZXRUeX'
    'BlGAIgASgFUgp3YWxsZXRUeXBlEhoKCGFkZFZhbHVlGAMgASgDUghhZGRWYWx1ZRIcCglvcHRV'
    'c2VySWQYBCABKANSCW9wdFVzZXJJZBIgCgtkZXNjcmlwdGlvbhgFIAEoCVILZGVzY3JpcHRpb2'
    '4=');

@$core.Deprecated('Use walletAddValueRspDescriptor instead')
const WalletAddValueRsp$json = {
  '1': 'WalletAddValueRsp',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'addValue', '3': 3, '4': 1, '5': 3, '10': 'addValue'},
    {'1': 'optUserId', '3': 4, '4': 1, '5': 3, '10': 'optUserId'},
    {'1': 'latestValue', '3': 5, '4': 1, '5': 3, '10': 'latestValue'},
  ],
};

/// Descriptor for `WalletAddValueRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletAddValueRspDescriptor = $convert.base64Decode(
    'ChFXYWxsZXRBZGRWYWx1ZVJzcBIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIeCgp3YWxsZXRUeX'
    'BlGAIgASgFUgp3YWxsZXRUeXBlEhoKCGFkZFZhbHVlGAMgASgDUghhZGRWYWx1ZRIcCglvcHRV'
    'c2VySWQYBCABKANSCW9wdFVzZXJJZBIgCgtsYXRlc3RWYWx1ZRgFIAEoA1ILbGF0ZXN0VmFsdW'
    'U=');

@$core.Deprecated('Use walletReduceValueReqDescriptor instead')
const WalletReduceValueReq$json = {
  '1': 'WalletReduceValueReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'reduceValue', '3': 3, '4': 1, '5': 3, '10': 'reduceValue'},
    {'1': 'optUserId', '3': 4, '4': 1, '5': 3, '10': 'optUserId'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'passwd', '3': 6, '4': 1, '5': 9, '10': 'passwd'},
  ],
};

/// Descriptor for `WalletReduceValueReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletReduceValueReqDescriptor = $convert.base64Decode(
    'ChRXYWxsZXRSZWR1Y2VWYWx1ZVJlcRIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIeCgp3YWxsZX'
    'RUeXBlGAIgASgFUgp3YWxsZXRUeXBlEiAKC3JlZHVjZVZhbHVlGAMgASgDUgtyZWR1Y2VWYWx1'
    'ZRIcCglvcHRVc2VySWQYBCABKANSCW9wdFVzZXJJZBIgCgtkZXNjcmlwdGlvbhgFIAEoCVILZG'
    'VzY3JpcHRpb24SFgoGcGFzc3dkGAYgASgJUgZwYXNzd2Q=');

@$core.Deprecated('Use walletReduceValueRspDescriptor instead')
const WalletReduceValueRsp$json = {
  '1': 'WalletReduceValueRsp',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'reduceValue', '3': 3, '4': 1, '5': 3, '10': 'reduceValue'},
    {'1': 'optUserId', '3': 4, '4': 1, '5': 3, '10': 'optUserId'},
    {'1': 'latestValue', '3': 5, '4': 1, '5': 3, '10': 'latestValue'},
  ],
};

/// Descriptor for `WalletReduceValueRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletReduceValueRspDescriptor = $convert.base64Decode(
    'ChRXYWxsZXRSZWR1Y2VWYWx1ZVJzcBIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIeCgp3YWxsZX'
    'RUeXBlGAIgASgFUgp3YWxsZXRUeXBlEiAKC3JlZHVjZVZhbHVlGAMgASgDUgtyZWR1Y2VWYWx1'
    'ZRIcCglvcHRVc2VySWQYBCABKANSCW9wdFVzZXJJZBIgCgtsYXRlc3RWYWx1ZRgFIAEoA1ILbG'
    'F0ZXN0VmFsdWU=');

@$core.Deprecated('Use walletChangeNotifyDescriptor instead')
const WalletChangeNotify$json = {
  '1': 'WalletChangeNotify',
  '2': [
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'changeValue', '3': 3, '4': 1, '5': 3, '10': 'changeValue'},
    {'1': 'optUserId', '3': 4, '4': 1, '5': 3, '10': 'optUserId'},
    {'1': 'latestValue', '3': 5, '4': 1, '5': 3, '10': 'latestValue'},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `WalletChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletChangeNotifyDescriptor = $convert.base64Decode(
    'ChJXYWxsZXRDaGFuZ2VOb3RpZnkSHgoKd2FsbGV0VHlwZRgCIAEoBVIKd2FsbGV0VHlwZRIgCg'
    'tjaGFuZ2VWYWx1ZRgDIAEoA1ILY2hhbmdlVmFsdWUSHAoJb3B0VXNlcklkGAQgASgDUglvcHRV'
    'c2VySWQSIAoLbGF0ZXN0VmFsdWUYBSABKANSC2xhdGVzdFZhbHVlEiAKC2Rlc2NyaXB0aW9uGA'
    'YgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use walletChangeFlowItemDescriptor instead')
const WalletChangeFlowItem$json = {
  '1': 'WalletChangeFlowItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'createdAt', '3': 2, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 3, '4': 1, '5': 3, '10': 'updatedAt'},
    {'1': 'userId', '3': 4, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'walletType', '3': 5, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'changeValue', '3': 6, '4': 1, '5': 3, '10': 'changeValue'},
    {'1': 'optUserId', '3': 7, '4': 1, '5': 3, '10': 'optUserId'},
    {'1': 'latestValue', '3': 8, '4': 1, '5': 3, '10': 'latestValue'},
    {'1': 'description', '3': 9, '4': 1, '5': 9, '10': 'description'},
    {'1': 'Status', '3': 10, '4': 1, '5': 5, '10': 'Status'},
    {'1': 'StatusDesc', '3': 11, '4': 1, '5': 9, '10': 'StatusDesc'},
    {'1': 'ChannelId', '3': 12, '4': 1, '5': 5, '10': 'ChannelId'},
    {'1': 'ChannelName', '3': 13, '4': 1, '5': 9, '10': 'ChannelName'},
  ],
};

/// Descriptor for `WalletChangeFlowItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletChangeFlowItemDescriptor = $convert.base64Decode(
    'ChRXYWxsZXRDaGFuZ2VGbG93SXRlbRIOCgJpZBgBIAEoA1ICaWQSHAoJY3JlYXRlZEF0GAIgAS'
    'gDUgljcmVhdGVkQXQSHAoJdXBkYXRlZEF0GAMgASgDUgl1cGRhdGVkQXQSFgoGdXNlcklkGAQg'
    'ASgDUgZ1c2VySWQSHgoKd2FsbGV0VHlwZRgFIAEoBVIKd2FsbGV0VHlwZRIgCgtjaGFuZ2VWYW'
    'x1ZRgGIAEoA1ILY2hhbmdlVmFsdWUSHAoJb3B0VXNlcklkGAcgASgDUglvcHRVc2VySWQSIAoL'
    'bGF0ZXN0VmFsdWUYCCABKANSC2xhdGVzdFZhbHVlEiAKC2Rlc2NyaXB0aW9uGAkgASgJUgtkZX'
    'NjcmlwdGlvbhIWCgZTdGF0dXMYCiABKAVSBlN0YXR1cxIeCgpTdGF0dXNEZXNjGAsgASgJUgpT'
    'dGF0dXNEZXNjEhwKCUNoYW5uZWxJZBgMIAEoBVIJQ2hhbm5lbElkEiAKC0NoYW5uZWxOYW1lGA'
    '0gASgJUgtDaGFubmVsTmFtZQ==');

@$core.Deprecated('Use walletGetChangeFlowReqDescriptor instead')
const WalletGetChangeFlowReq$json = {
  '1': 'WalletGetChangeFlowReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'SortingRules', '3': 3, '4': 1, '5': 5, '10': 'SortingRules'},
    {'1': 'beginTime', '3': 4, '4': 1, '5': 3, '10': 'beginTime'},
    {'1': 'endTime', '3': 5, '4': 1, '5': 3, '10': 'endTime'},
  ],
};

/// Descriptor for `WalletGetChangeFlowReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletGetChangeFlowReqDescriptor = $convert.base64Decode(
    'ChZXYWxsZXRHZXRDaGFuZ2VGbG93UmVxEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpem'
    'UYAiABKAVSCHBhZ2VTaXplEiIKDFNvcnRpbmdSdWxlcxgDIAEoBVIMU29ydGluZ1J1bGVzEhwK'
    'CWJlZ2luVGltZRgEIAEoA1IJYmVnaW5UaW1lEhgKB2VuZFRpbWUYBSABKANSB2VuZFRpbWU=');

@$core.Deprecated('Use walletGetChangeFlowRspDescriptor instead')
const WalletGetChangeFlowRsp$json = {
  '1': 'WalletGetChangeFlowRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'SortingRules', '3': 3, '4': 1, '5': 5, '10': 'SortingRules'},
    {'1': 'beginTime', '3': 4, '4': 1, '5': 3, '10': 'beginTime'},
    {'1': 'endTime', '3': 5, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'totalCount', '3': 6, '4': 1, '5': 3, '10': 'totalCount'},
    {'1': 'items', '3': 7, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.WalletChangeFlowItem', '10': 'items'},
  ],
};

/// Descriptor for `WalletGetChangeFlowRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletGetChangeFlowRspDescriptor = $convert.base64Decode(
    'ChZXYWxsZXRHZXRDaGFuZ2VGbG93UnNwEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpem'
    'UYAiABKAVSCHBhZ2VTaXplEiIKDFNvcnRpbmdSdWxlcxgDIAEoBVIMU29ydGluZ1J1bGVzEhwK'
    'CWJlZ2luVGltZRgEIAEoA1IJYmVnaW5UaW1lEhgKB2VuZFRpbWUYBSABKANSB2VuZFRpbWUSHg'
    'oKdG90YWxDb3VudBgGIAEoA1IKdG90YWxDb3VudBI9CgVpdGVtcxgHIAMoCzInLnBiX21zZ19j'
    'b21taW1fdWFhLldhbGxldENoYW5nZUZsb3dJdGVtUgVpdGVtcw==');

@$core.Deprecated('Use walletSetPasswordReqDescriptor instead')
const WalletSetPasswordReq$json = {
  '1': 'WalletSetPasswordReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'phoneCode', '3': 3, '4': 1, '5': 9, '10': 'phoneCode'},
    {'1': 'oldPassword', '3': 4, '4': 1, '5': 9, '10': 'oldPassword'},
    {'1': 'newPassword', '3': 5, '4': 1, '5': 9, '10': 'newPassword'},
    {'1': 'changeReason', '3': 6, '4': 1, '5': 9, '10': 'changeReason'},
    {'1': 'optUserId', '3': 7, '4': 1, '5': 3, '10': 'optUserId'},
  ],
};

/// Descriptor for `WalletSetPasswordReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletSetPasswordReqDescriptor = $convert.base64Decode(
    'ChRXYWxsZXRTZXRQYXNzd29yZFJlcRIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIeCgp3YWxsZX'
    'RUeXBlGAIgASgFUgp3YWxsZXRUeXBlEhwKCXBob25lQ29kZRgDIAEoCVIJcGhvbmVDb2RlEiAK'
    'C29sZFBhc3N3b3JkGAQgASgJUgtvbGRQYXNzd29yZBIgCgtuZXdQYXNzd29yZBgFIAEoCVILbm'
    'V3UGFzc3dvcmQSIgoMY2hhbmdlUmVhc29uGAYgASgJUgxjaGFuZ2VSZWFzb24SHAoJb3B0VXNl'
    'cklkGAcgASgDUglvcHRVc2VySWQ=');

@$core.Deprecated('Use cardDescriptor instead')
const Card$json = {
  '1': 'Card',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'code', '3': 4, '4': 1, '5': 9, '10': 'code'},
    {'1': 'awardsUrl', '3': 5, '4': 1, '5': 9, '10': 'awardsUrl'},
    {'1': 'createTime', '3': 6, '4': 1, '5': 3, '10': 'createTime'},
    {'1': 'expireTime', '3': 7, '4': 1, '5': 3, '10': 'expireTime'},
  ],
};

/// Descriptor for `Card`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDescriptor = $convert.base64Decode(
    'CgRDYXJkEg4KAmlkGAEgASgDUgJpZBISCgRpY29uGAIgASgJUgRpY29uEhIKBG5hbWUYAyABKA'
    'lSBG5hbWUSEgoEY29kZRgEIAEoCVIEY29kZRIcCglhd2FyZHNVcmwYBSABKAlSCWF3YXJkc1Vy'
    'bBIeCgpjcmVhdGVUaW1lGAYgASgDUgpjcmVhdGVUaW1lEh4KCmV4cGlyZVRpbWUYByABKANSCm'
    'V4cGlyZVRpbWU=');

@$core.Deprecated('Use getCardPackageItemsReqDescriptor instead')
const GetCardPackageItemsReq$json = {
  '1': 'GetCardPackageItemsReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `GetCardPackageItemsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCardPackageItemsReqDescriptor = $convert.base64Decode(
    'ChZHZXRDYXJkUGFja2FnZUl0ZW1zUmVxEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpem'
    'UYAiABKAVSCHBhZ2VTaXpl');

@$core.Deprecated('Use getCardPackageItemsRspDescriptor instead')
const GetCardPackageItemsRsp$json = {
  '1': 'GetCardPackageItemsRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 5, '10': 'totalCount'},
    {'1': 'cardItems', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.Card', '10': 'cardItems'},
  ],
};

/// Descriptor for `GetCardPackageItemsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCardPackageItemsRspDescriptor = $convert.base64Decode(
    'ChZHZXRDYXJkUGFja2FnZUl0ZW1zUnNwEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpem'
    'UYAiABKAVSCHBhZ2VTaXplEh4KCnRvdGFsQ291bnQYAyABKAVSCnRvdGFsQ291bnQSNQoJY2Fy'
    'ZEl0ZW1zGAQgAygLMhcucGJfbXNnX2NvbW1pbV91YWEuQ2FyZFIJY2FyZEl0ZW1z');

@$core.Deprecated('Use taskSignUpReqDescriptor instead')
const TaskSignUpReq$json = {
  '1': 'TaskSignUpReq',
};

/// Descriptor for `TaskSignUpReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskSignUpReqDescriptor = $convert.base64Decode(
    'Cg1UYXNrU2lnblVwUmVx');

@$core.Deprecated('Use taskSignUpRspDescriptor instead')
const TaskSignUpRsp$json = {
  '1': 'TaskSignUpRsp',
  '2': [
    {'1': 'continuTimes', '3': 1, '4': 1, '5': 5, '10': 'continuTimes'},
    {'1': 'awards', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.AwardsInstance', '10': 'awards'},
  ],
};

/// Descriptor for `TaskSignUpRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskSignUpRspDescriptor = $convert.base64Decode(
    'Cg1UYXNrU2lnblVwUnNwEiIKDGNvbnRpbnVUaW1lcxgBIAEoBVIMY29udGludVRpbWVzEjkKBm'
    'F3YXJkcxgCIAMoCzIhLnBiX21zZ19jb21taW1fdWFhLkF3YXJkc0luc3RhbmNlUgZhd2FyZHM=');

@$core.Deprecated('Use signUpLogDescriptor instead')
const SignUpLog$json = {
  '1': 'SignUpLog',
  '2': [
    {'1': 'createdAt', '3': 1, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'continueTimes', '3': 2, '4': 1, '5': 5, '10': 'continueTimes'},
  ],
};

/// Descriptor for `SignUpLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUpLogDescriptor = $convert.base64Decode(
    'CglTaWduVXBMb2cSHAoJY3JlYXRlZEF0GAEgASgDUgljcmVhdGVkQXQSJAoNY29udGludWVUaW'
    '1lcxgCIAEoBVINY29udGludWVUaW1lcw==');

@$core.Deprecated('Use taskSignUpStatusReqDescriptor instead')
const TaskSignUpStatusReq$json = {
  '1': 'TaskSignUpStatusReq',
};

/// Descriptor for `TaskSignUpStatusReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskSignUpStatusReqDescriptor = $convert.base64Decode(
    'ChNUYXNrU2lnblVwU3RhdHVzUmVx');

@$core.Deprecated('Use taskSignUpStatusRspDescriptor instead')
const TaskSignUpStatusRsp$json = {
  '1': 'TaskSignUpStatusRsp',
  '2': [
    {'1': 'periodBeginTime', '3': 1, '4': 1, '5': 3, '10': 'periodBeginTime'},
    {'1': 'createdTime', '3': 2, '4': 1, '5': 3, '10': 'createdTime'},
    {'1': 'continuTimes', '3': 3, '4': 1, '5': 5, '10': 'continuTimes'},
    {'1': 'signUpLog', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.SignUpLog', '10': 'signUpLog'},
  ],
};

/// Descriptor for `TaskSignUpStatusRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskSignUpStatusRspDescriptor = $convert.base64Decode(
    'ChNUYXNrU2lnblVwU3RhdHVzUnNwEigKD3BlcmlvZEJlZ2luVGltZRgBIAEoA1IPcGVyaW9kQm'
    'VnaW5UaW1lEiAKC2NyZWF0ZWRUaW1lGAIgASgDUgtjcmVhdGVkVGltZRIiCgxjb250aW51VGlt'
    'ZXMYAyABKAVSDGNvbnRpbnVUaW1lcxI6CglzaWduVXBMb2cYBCADKAsyHC5wYl9tc2dfY29tbW'
    'ltX3VhYS5TaWduVXBMb2dSCXNpZ25VcExvZw==');

@$core.Deprecated('Use taskSignUpInfoReqDescriptor instead')
const TaskSignUpInfoReq$json = {
  '1': 'TaskSignUpInfoReq',
};

/// Descriptor for `TaskSignUpInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskSignUpInfoReqDescriptor = $convert.base64Decode(
    'ChFUYXNrU2lnblVwSW5mb1JlcQ==');

@$core.Deprecated('Use awardsDescriptor instead')
const Awards$json = {
  '1': 'Awards',
  '2': [
    {'1': 'awardsId', '3': 1, '4': 1, '5': 3, '10': 'awardsId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'data', '3': 6, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `Awards`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List awardsDescriptor = $convert.base64Decode(
    'CgZBd2FyZHMSGgoIYXdhcmRzSWQYASABKANSCGF3YXJkc0lkEhIKBG5hbWUYAyABKAlSBG5hbW'
    'USEgoEaWNvbhgEIAEoCVIEaWNvbhIgCgtkZXNjcmlwdGlvbhgFIAEoCVILZGVzY3JpcHRpb24S'
    'EgoEZGF0YRgGIAEoCVIEZGF0YQ==');

@$core.Deprecated('Use awardsInstanceDescriptor instead')
const AwardsInstance$json = {
  '1': 'AwardsInstance',
  '2': [
    {'1': 'awardsTemplate', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.Awards', '10': 'awardsTemplate'},
    {'1': 'awardsInstanceData', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.AwardsInstance.AwardsInstanceDataEntry', '10': 'awardsInstanceData'},
    {'1': 'awardsInstanceJson', '3': 3, '4': 1, '5': 9, '10': 'awardsInstanceJson'},
  ],
  '3': [AwardsInstance_AwardsInstanceDataEntry$json],
};

@$core.Deprecated('Use awardsInstanceDescriptor instead')
const AwardsInstance_AwardsInstanceDataEntry$json = {
  '1': 'AwardsInstanceDataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AwardsInstance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List awardsInstanceDescriptor = $convert.base64Decode(
    'Cg5Bd2FyZHNJbnN0YW5jZRJBCg5hd2FyZHNUZW1wbGF0ZRgBIAEoCzIZLnBiX21zZ19jb21taW'
    '1fdWFhLkF3YXJkc1IOYXdhcmRzVGVtcGxhdGUSaQoSYXdhcmRzSW5zdGFuY2VEYXRhGAIgAygL'
    'MjkucGJfbXNnX2NvbW1pbV91YWEuQXdhcmRzSW5zdGFuY2UuQXdhcmRzSW5zdGFuY2VEYXRhRW'
    '50cnlSEmF3YXJkc0luc3RhbmNlRGF0YRIuChJhd2FyZHNJbnN0YW5jZUpzb24YAyABKAlSEmF3'
    'YXJkc0luc3RhbmNlSnNvbhpFChdBd2FyZHNJbnN0YW5jZURhdGFFbnRyeRIQCgNrZXkYASABKA'
    'lSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use taskDescriptor instead')
const Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'loopType', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_commim_uaa.TaskLoopType', '10': 'loopType'},
    {'1': 'period', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_commim_uaa.TaskPeriod', '10': 'period'},
    {'1': 'periodCounts', '3': 5, '4': 1, '5': 5, '10': 'periodCounts'},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 7, '4': 1, '5': 14, '6': '.pb_msg_commim_uaa.TaskStatus', '10': 'status'},
    {'1': 'subTask', '3': 8, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.SubTask', '10': 'subTask'},
    {'1': 'awards', '3': 9, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.Awards', '10': 'awards'},
  ],
};

/// Descriptor for `Task`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskDescriptor = $convert.base64Decode(
    'CgRUYXNrEg4KAmlkGAEgASgDUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEjsKCGxvb3BUeXBlGA'
    'MgASgOMh8ucGJfbXNnX2NvbW1pbV91YWEuVGFza0xvb3BUeXBlUghsb29wVHlwZRI1CgZwZXJp'
    'b2QYBCABKA4yHS5wYl9tc2dfY29tbWltX3VhYS5UYXNrUGVyaW9kUgZwZXJpb2QSIgoMcGVyaW'
    '9kQ291bnRzGAUgASgFUgxwZXJpb2RDb3VudHMSIAoLZGVzY3JpcHRpb24YBiABKAlSC2Rlc2Ny'
    'aXB0aW9uEjUKBnN0YXR1cxgHIAEoDjIdLnBiX21zZ19jb21taW1fdWFhLlRhc2tTdGF0dXNSBn'
    'N0YXR1cxI0CgdzdWJUYXNrGAggAygLMhoucGJfbXNnX2NvbW1pbV91YWEuU3ViVGFza1IHc3Vi'
    'VGFzaxIxCgZhd2FyZHMYCSADKAsyGS5wYl9tc2dfY29tbWltX3VhYS5Bd2FyZHNSBmF3YXJkcw'
    '==');

@$core.Deprecated('Use subTaskDescriptor instead')
const SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'subTaskId', '3': 1, '4': 1, '5': 3, '10': 'subTaskId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'orderId', '3': 4, '4': 1, '5': 5, '10': 'orderId'},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.pb_msg_commim_uaa.TaskStatus', '10': 'status'},
    {'1': 'completionConditions', '3': 6, '4': 1, '5': 9, '10': 'completionConditions'},
    {'1': 'awardsList', '3': 7, '4': 3, '5': 11, '6': '.pb_msg_commim_uaa.Awards', '10': 'awardsList'},
    {'1': 'taskGoingStatus', '3': 8, '4': 1, '5': 14, '6': '.pb_msg_commim_uaa.TaskGoingStatus', '10': 'taskGoingStatus'},
  ],
};

/// Descriptor for `SubTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subTaskDescriptor = $convert.base64Decode(
    'CgdTdWJUYXNrEhwKCXN1YlRhc2tJZBgBIAEoA1IJc3ViVGFza0lkEhIKBG5hbWUYAiABKAlSBG'
    '5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhgKB29yZGVySWQYBCABKAVS'
    'B29yZGVySWQSNQoGc3RhdHVzGAUgASgOMh0ucGJfbXNnX2NvbW1pbV91YWEuVGFza1N0YXR1c1'
    'IGc3RhdHVzEjIKFGNvbXBsZXRpb25Db25kaXRpb25zGAYgASgJUhRjb21wbGV0aW9uQ29uZGl0'
    'aW9ucxI5Cgphd2FyZHNMaXN0GAcgAygLMhkucGJfbXNnX2NvbW1pbV91YWEuQXdhcmRzUgphd2'
    'FyZHNMaXN0EkwKD3Rhc2tHb2luZ1N0YXR1cxgIIAEoDjIiLnBiX21zZ19jb21taW1fdWFhLlRh'
    'c2tHb2luZ1N0YXR1c1IPdGFza0dvaW5nU3RhdHVz');

@$core.Deprecated('Use taskSignUpInfoRspDescriptor instead')
const TaskSignUpInfoRsp$json = {
  '1': 'TaskSignUpInfoRsp',
  '2': [
    {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_commim_uaa.Task', '10': 'task'},
  ],
};

/// Descriptor for `TaskSignUpInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskSignUpInfoRspDescriptor = $convert.base64Decode(
    'ChFUYXNrU2lnblVwSW5mb1JzcBIrCgR0YXNrGAEgASgLMhcucGJfbXNnX2NvbW1pbV91YWEuVG'
    'Fza1IEdGFzaw==');

