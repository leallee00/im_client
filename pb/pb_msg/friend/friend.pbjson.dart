//
//  Generated code. Do not modify.
//  source: pb_msg/friend/friend.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fRIEND_APPLY_STATEDescriptor instead')
const FRIEND_APPLY_STATE$json = {
  '1': 'FRIEND_APPLY_STATE',
  '2': [
    {'1': 'Init', '2': 0},
    {'1': 'Request', '2': 1},
    {'1': 'Agree', '2': 2},
    {'1': 'Reject', '2': 3},
    {'1': 'OverTime', '2': 4},
  ],
};

/// Descriptor for `FRIEND_APPLY_STATE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fRIEND_APPLY_STATEDescriptor = $convert.base64Decode(
    'ChJGUklFTkRfQVBQTFlfU1RBVEUSCAoESW5pdBAAEgsKB1JlcXVlc3QQARIJCgVBZ3JlZRACEg'
    'oKBlJlamVjdBADEgwKCE92ZXJUaW1lEAQ=');

@$core.Deprecated('Use enIsInBlackListStatusDescriptor instead')
const EnIsInBlackListStatus$json = {
  '1': 'EnIsInBlackListStatus',
  '2': [
    {'1': 'NotInBlackList', '2': 0},
    {'1': 'InMyBlackList', '2': 1},
    {'1': 'InFriendBlackList', '2': 2},
  ],
};

/// Descriptor for `EnIsInBlackListStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List enIsInBlackListStatusDescriptor = $convert.base64Decode(
    'ChVFbklzSW5CbGFja0xpc3RTdGF0dXMSEgoOTm90SW5CbGFja0xpc3QQABIRCg1Jbk15QmxhY2'
    'tMaXN0EAESFQoRSW5GcmllbmRCbGFja0xpc3QQAg==');

@$core.Deprecated('Use applyReqDescriptor instead')
const ApplyReq$json = {
  '1': 'ApplyReq',
  '2': [
    {'1': 'msg', '3': 1, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `ApplyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyReqDescriptor = $convert.base64Decode(
    'CghBcHBseVJlcRIQCgNtc2cYASABKAlSA21zZw==');

@$core.Deprecated('Use applyRspDescriptor instead')
const ApplyRsp$json = {
  '1': 'ApplyRsp',
};

/// Descriptor for `ApplyRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyRspDescriptor = $convert.base64Decode(
    'CghBcHBseVJzcA==');

@$core.Deprecated('Use applyAnswerReqDescriptor instead')
const ApplyAnswerReq$json = {
  '1': 'ApplyAnswerReq',
  '2': [
    {'1': 'agree', '3': 1, '4': 1, '5': 8, '10': 'agree'},
  ],
};

/// Descriptor for `ApplyAnswerReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyAnswerReqDescriptor = $convert.base64Decode(
    'Cg5BcHBseUFuc3dlclJlcRIUCgVhZ3JlZRgBIAEoCFIFYWdyZWU=');

@$core.Deprecated('Use applyAnswerRspDescriptor instead')
const ApplyAnswerRsp$json = {
  '1': 'ApplyAnswerRsp',
  '2': [
    {'1': 'agree', '3': 1, '4': 1, '5': 8, '10': 'agree'},
  ],
};

/// Descriptor for `ApplyAnswerRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyAnswerRspDescriptor = $convert.base64Decode(
    'Cg5BcHBseUFuc3dlclJzcBIUCgVhZ3JlZRgBIAEoCFIFYWdyZWU=');

@$core.Deprecated('Use applicationDescriptor instead')
const Application$json = {
  '1': 'Application',
  '2': [
    {'1': 'applicantId', '3': 1, '4': 1, '5': 3, '10': 'applicantId'},
    {'1': 'respondentId', '3': 2, '4': 1, '5': 3, '10': 'respondentId'},
    {'1': 'status', '3': 3, '4': 1, '5': 5, '10': 'status'},
    {'1': 'msg', '3': 4, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'createAt', '3': 5, '4': 1, '5': 3, '10': 'createAt'},
  ],
};

/// Descriptor for `Application`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationDescriptor = $convert.base64Decode(
    'CgtBcHBsaWNhdGlvbhIgCgthcHBsaWNhbnRJZBgBIAEoA1ILYXBwbGljYW50SWQSIgoMcmVzcG'
    '9uZGVudElkGAIgASgDUgxyZXNwb25kZW50SWQSFgoGc3RhdHVzGAMgASgFUgZzdGF0dXMSEAoD'
    'bXNnGAQgASgJUgNtc2cSGgoIY3JlYXRlQXQYBSABKANSCGNyZWF0ZUF0');

@$core.Deprecated('Use applicationsReqDescriptor instead')
const ApplicationsReq$json = {
  '1': 'ApplicationsReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
  ],
};

/// Descriptor for `ApplicationsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationsReqDescriptor = $convert.base64Decode(
    'Cg9BcHBsaWNhdGlvbnNSZXESEgoEcGFnZRgBIAEoA1IEcGFnZRIaCghwYWdlU2l6ZRgCIAEoA1'
    'IIcGFnZVNpemU=');

@$core.Deprecated('Use applicationsRspDescriptor instead')
const ApplicationsRsp$json = {
  '1': 'ApplicationsRsp',
  '2': [
    {'1': 'applications', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_friend.Application', '10': 'applications'},
    {'1': 'page', '3': 2, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 3, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'totalCount', '3': 4, '4': 1, '5': 3, '10': 'totalCount'},
  ],
};

/// Descriptor for `ApplicationsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationsRspDescriptor = $convert.base64Decode(
    'Cg9BcHBsaWNhdGlvbnNSc3ASPgoMYXBwbGljYXRpb25zGAEgAygLMhoucGJfbXNnX2ZyaWVuZC'
    '5BcHBsaWNhdGlvblIMYXBwbGljYXRpb25zEhIKBHBhZ2UYAiABKANSBHBhZ2USGgoIcGFnZVNp'
    'emUYAyABKANSCHBhZ2VTaXplEh4KCnRvdGFsQ291bnQYBCABKANSCnRvdGFsQ291bnQ=');

@$core.Deprecated('Use friendDescriptor instead')
const Friend$json = {
  '1': 'Friend',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'remark', '3': 5, '4': 1, '5': 9, '10': 'remark'},
    {'1': 'mobile', '3': 6, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    {'1': 'card', '3': 8, '4': 1, '5': 9, '10': 'card'},
    {'1': 'sign', '3': 9, '4': 1, '5': 9, '10': 'sign'},
    {'1': 'tags', '3': 10, '4': 1, '5': 9, '10': 'tags'},
    {'1': 'blocked', '3': 11, '4': 1, '5': 8, '10': 'blocked'},
    {'1': 'stared', '3': 12, '4': 1, '5': 8, '10': 'stared'},
    {'1': 'deleted', '3': 13, '4': 1, '5': 8, '10': 'deleted'},
    {'1': 'background', '3': 14, '4': 1, '5': 9, '10': 'background'},
    {'1': 'source', '3': 15, '4': 1, '5': 5, '10': 'source'},
    {'1': 'top', '3': 16, '4': 1, '5': 8, '10': 'top'},
  ],
};

/// Descriptor for `Friend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendDescriptor = $convert.base64Decode(
    'CgZGcmllbmQSFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSGgoIdXNlcm5hbWUYAiABKAlSCHVzZX'
    'JuYW1lEhYKBmF2YXRhchgDIAEoCVIGYXZhdGFyEhIKBG5hbWUYBCABKAlSBG5hbWUSFgoGcmVt'
    'YXJrGAUgASgJUgZyZW1hcmsSFgoGbW9iaWxlGAYgASgJUgZtb2JpbGUSIAoLZGVzY3JpcHRpb2'
    '4YByABKAlSC2Rlc2NyaXB0aW9uEhIKBGNhcmQYCCABKAlSBGNhcmQSEgoEc2lnbhgJIAEoCVIE'
    'c2lnbhISCgR0YWdzGAogASgJUgR0YWdzEhgKB2Jsb2NrZWQYCyABKAhSB2Jsb2NrZWQSFgoGc3'
    'RhcmVkGAwgASgIUgZzdGFyZWQSGAoHZGVsZXRlZBgNIAEoCFIHZGVsZXRlZBIeCgpiYWNrZ3Jv'
    'dW5kGA4gASgJUgpiYWNrZ3JvdW5kEhYKBnNvdXJjZRgPIAEoBVIGc291cmNlEhAKA3RvcBgQIA'
    'EoCFIDdG9w');

@$core.Deprecated('Use friendsReqDescriptor instead')
const FriendsReq$json = {
  '1': 'FriendsReq',
};

/// Descriptor for `FriendsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendsReqDescriptor = $convert.base64Decode(
    'CgpGcmllbmRzUmVx');

@$core.Deprecated('Use friendsRspDescriptor instead')
const FriendsRsp$json = {
  '1': 'FriendsRsp',
  '2': [
    {'1': 'friends', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_friend.Friend', '10': 'friends'},
  ],
};

/// Descriptor for `FriendsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendsRspDescriptor = $convert.base64Decode(
    'CgpGcmllbmRzUnNwEi8KB2ZyaWVuZHMYASADKAsyFS5wYl9tc2dfZnJpZW5kLkZyaWVuZFIHZn'
    'JpZW5kcw==');

@$core.Deprecated('Use friendDetailReqDescriptor instead')
const FriendDetailReq$json = {
  '1': 'FriendDetailReq',
};

/// Descriptor for `FriendDetailReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendDetailReqDescriptor = $convert.base64Decode(
    'Cg9GcmllbmREZXRhaWxSZXE=');

@$core.Deprecated('Use friendDetailRspDescriptor instead')
const FriendDetailRsp$json = {
  '1': 'FriendDetailRsp',
  '2': [
    {'1': 'friend', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_friend.Friend', '10': 'friend'},
  ],
};

/// Descriptor for `FriendDetailRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendDetailRspDescriptor = $convert.base64Decode(
    'Cg9GcmllbmREZXRhaWxSc3ASLQoGZnJpZW5kGAEgASgLMhUucGJfbXNnX2ZyaWVuZC5Gcmllbm'
    'RSBmZyaWVuZA==');

@$core.Deprecated('Use deleteFriendReqDescriptor instead')
const DeleteFriendReq$json = {
  '1': 'DeleteFriendReq',
};

/// Descriptor for `DeleteFriendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFriendReqDescriptor = $convert.base64Decode(
    'Cg9EZWxldGVGcmllbmRSZXE=');

@$core.Deprecated('Use deleteFriendRspDescriptor instead')
const DeleteFriendRsp$json = {
  '1': 'DeleteFriendRsp',
};

/// Descriptor for `DeleteFriendRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFriendRspDescriptor = $convert.base64Decode(
    'Cg9EZWxldGVGcmllbmRSc3A=');

@$core.Deprecated('Use updateFriendReqDescriptor instead')
const UpdateFriendReq$json = {
  '1': 'UpdateFriendReq',
  '2': [
    {'1': 'friend', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_friend.Friend', '10': 'friend'},
    {'1': 'keys', '3': 2, '4': 3, '5': 9, '10': 'keys'},
  ],
};

/// Descriptor for `UpdateFriendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateFriendReqDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVGcmllbmRSZXESLQoGZnJpZW5kGAEgASgLMhUucGJfbXNnX2ZyaWVuZC5Gcmllbm'
    'RSBmZyaWVuZBISCgRrZXlzGAIgAygJUgRrZXlz');

@$core.Deprecated('Use updateFriendRspDescriptor instead')
const UpdateFriendRsp$json = {
  '1': 'UpdateFriendRsp',
};

/// Descriptor for `UpdateFriendRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateFriendRspDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVGcmllbmRSc3A=');

@$core.Deprecated('Use gmMakeFriendRelationReqDescriptor instead')
const GmMakeFriendRelationReq$json = {
  '1': 'GmMakeFriendRelationReq',
  '2': [
    {'1': 'userId1', '3': 1, '4': 1, '5': 3, '10': 'userId1'},
    {'1': 'userId2', '3': 2, '4': 1, '5': 3, '10': 'userId2'},
  ],
};

/// Descriptor for `GmMakeFriendRelationReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gmMakeFriendRelationReqDescriptor = $convert.base64Decode(
    'ChdHbU1ha2VGcmllbmRSZWxhdGlvblJlcRIYCgd1c2VySWQxGAEgASgDUgd1c2VySWQxEhgKB3'
    'VzZXJJZDIYAiABKANSB3VzZXJJZDI=');

@$core.Deprecated('Use gmMakeFriendRelationRspDescriptor instead')
const GmMakeFriendRelationRsp$json = {
  '1': 'GmMakeFriendRelationRsp',
  '2': [
    {'1': 'userId1', '3': 1, '4': 1, '5': 3, '10': 'userId1'},
    {'1': 'userId2', '3': 2, '4': 1, '5': 3, '10': 'userId2'},
  ],
};

/// Descriptor for `GmMakeFriendRelationRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gmMakeFriendRelationRspDescriptor = $convert.base64Decode(
    'ChdHbU1ha2VGcmllbmRSZWxhdGlvblJzcBIYCgd1c2VySWQxGAEgASgDUgd1c2VySWQxEhgKB3'
    'VzZXJJZDIYAiABKANSB3VzZXJJZDI=');

@$core.Deprecated('Use isFriendReqDescriptor instead')
const IsFriendReq$json = {
  '1': 'IsFriendReq',
  '2': [
    {'1': 'userId1', '3': 1, '4': 1, '5': 3, '10': 'userId1'},
    {'1': 'userId2', '3': 2, '4': 1, '5': 3, '10': 'userId2'},
  ],
};

/// Descriptor for `IsFriendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isFriendReqDescriptor = $convert.base64Decode(
    'CgtJc0ZyaWVuZFJlcRIYCgd1c2VySWQxGAEgASgDUgd1c2VySWQxEhgKB3VzZXJJZDIYAiABKA'
    'NSB3VzZXJJZDI=');

@$core.Deprecated('Use isFriendRspDescriptor instead')
const IsFriendRsp$json = {
  '1': 'IsFriendRsp',
  '2': [
    {'1': 'IsFriend', '3': 1, '4': 1, '5': 8, '10': 'IsFriend'},
    {'1': 'IsBlocked', '3': 2, '4': 1, '5': 8, '10': 'IsBlocked'},
    {'1': 'isInBlackListStatus', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_friend.EnIsInBlackListStatus', '10': 'isInBlackListStatus'},
  ],
};

/// Descriptor for `IsFriendRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isFriendRspDescriptor = $convert.base64Decode(
    'CgtJc0ZyaWVuZFJzcBIaCghJc0ZyaWVuZBgBIAEoCFIISXNGcmllbmQSHAoJSXNCbG9ja2VkGA'
    'IgASgIUglJc0Jsb2NrZWQSVgoTaXNJbkJsYWNrTGlzdFN0YXR1cxgDIAEoDjIkLnBiX21zZ19m'
    'cmllbmQuRW5Jc0luQmxhY2tMaXN0U3RhdHVzUhNpc0luQmxhY2tMaXN0U3RhdHVz');

@$core.Deprecated('Use readBlackListReqDescriptor instead')
const ReadBlackListReq$json = {
  '1': 'ReadBlackListReq',
};

/// Descriptor for `ReadBlackListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readBlackListReqDescriptor = $convert.base64Decode(
    'ChBSZWFkQmxhY2tMaXN0UmVx');

@$core.Deprecated('Use readBlackListRspDescriptor instead')
const ReadBlackListRsp$json = {
  '1': 'ReadBlackListRsp',
  '2': [
    {'1': 'blackUserId', '3': 1, '4': 3, '5': 3, '10': 'blackUserId'},
  ],
};

/// Descriptor for `ReadBlackListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readBlackListRspDescriptor = $convert.base64Decode(
    'ChBSZWFkQmxhY2tMaXN0UnNwEiAKC2JsYWNrVXNlcklkGAEgAygDUgtibGFja1VzZXJJZA==');

@$core.Deprecated('Use isInBlackListReqDescriptor instead')
const IsInBlackListReq$json = {
  '1': 'IsInBlackListReq',
};

/// Descriptor for `IsInBlackListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isInBlackListReqDescriptor = $convert.base64Decode(
    'ChBJc0luQmxhY2tMaXN0UmVx');

@$core.Deprecated('Use isInBlackListRspDescriptor instead')
const IsInBlackListRsp$json = {
  '1': 'IsInBlackListRsp',
  '2': [
    {'1': 'isInBlackListStatus', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_friend.EnIsInBlackListStatus', '10': 'isInBlackListStatus'},
  ],
};

/// Descriptor for `IsInBlackListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isInBlackListRspDescriptor = $convert.base64Decode(
    'ChBJc0luQmxhY2tMaXN0UnNwElYKE2lzSW5CbGFja0xpc3RTdGF0dXMYAiABKA4yJC5wYl9tc2'
    'dfZnJpZW5kLkVuSXNJbkJsYWNrTGlzdFN0YXR1c1ITaXNJbkJsYWNrTGlzdFN0YXR1cw==');

