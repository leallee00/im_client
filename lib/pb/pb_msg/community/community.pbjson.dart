//
//  Generated code. Do not modify.
//  source: pb_msg/community/community.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use refTypeDescriptor instead')
const RefType$json = {
  '1': 'RefType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'POST', '2': 1},
    {'1': 'COMMENT', '2': 2},
    {'1': 'REPLY', '2': 3},
    {'1': 'VIDEO', '2': 4},
    {'1': 'IMAGE', '2': 5},
    {'1': 'AUDIO', '2': 6},
    {'1': 'VOTE', '2': 7},
    {'1': 'LINK', '2': 8},
  ],
};

/// Descriptor for `RefType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List refTypeDescriptor = $convert.base64Decode(
    'CgdSZWZUeXBlEgsKB1VOS05PV04QABIICgRQT1NUEAESCwoHQ09NTUVOVBACEgkKBVJFUExZEA'
    'MSCQoFVklERU8QBBIJCgVJTUFHRRAFEgkKBUFVRElPEAYSCAoEVk9URRAHEggKBExJTksQCA==');

@$core.Deprecated('Use likeTypeDescriptor instead')
const LikeType$json = {
  '1': 'LikeType',
  '2': [
    {'1': 'UP', '2': 0},
    {'1': 'DOWN', '2': 1},
    {'1': 'A', '2': 2},
    {'1': 'B', '2': 3},
    {'1': 'C', '2': 4},
    {'1': 'D', '2': 5},
  ],
};

/// Descriptor for `LikeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List likeTypeDescriptor = $convert.base64Decode(
    'CghMaWtlVHlwZRIGCgJVUBAAEggKBERPV04QARIFCgFBEAISBQoBQhADEgUKAUMQBBIFCgFEEA'
    'U=');

@$core.Deprecated('Use joinTypeDescriptor instead')
const JoinType$json = {
  '1': 'JoinType',
  '2': [
    {'1': 'FREE', '2': 0},
    {'1': 'APPLY', '2': 1},
    {'1': 'PASSWORD', '2': 2},
    {'1': 'ANSWER', '2': 3},
  ],
};

/// Descriptor for `JoinType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List joinTypeDescriptor = $convert.base64Decode(
    'CghKb2luVHlwZRIICgRGUkVFEAASCQoFQVBQTFkQARIMCghQQVNTV09SRBACEgoKBkFOU1dFUh'
    'AD');

@$core.Deprecated('Use topicDescriptor instead')
const Topic$json = {
  '1': 'Topic',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'createAt', '3': 2, '4': 1, '5': 3, '10': 'createAt'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'cover', '3': 4, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'count', '3': 5, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `Topic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicDescriptor = $convert.base64Decode(
    'CgVUb3BpYxIOCgJpZBgBIAEoA1ICaWQSGgoIY3JlYXRlQXQYAiABKANSCGNyZWF0ZUF0EhIKBG'
    '5hbWUYAyABKAlSBG5hbWUSFAoFY292ZXIYBCABKAlSBWNvdmVyEhQKBWNvdW50GAUgASgDUgVj'
    'b3VudA==');

@$core.Deprecated('Use addTopicReqDescriptor instead')
const AddTopicReq$json = {
  '1': 'AddTopicReq',
  '2': [
    {'1': 'parentId', '3': 1, '4': 1, '5': 3, '10': 'parentId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'cover', '3': 3, '4': 1, '5': 9, '10': 'cover'},
  ],
};

/// Descriptor for `AddTopicReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTopicReqDescriptor = $convert.base64Decode(
    'CgtBZGRUb3BpY1JlcRIaCghwYXJlbnRJZBgBIAEoA1IIcGFyZW50SWQSEgoEbmFtZRgCIAEoCV'
    'IEbmFtZRIUCgVjb3ZlchgDIAEoCVIFY292ZXI=');

@$core.Deprecated('Use addTopicRspDescriptor instead')
const AddTopicRsp$json = {
  '1': 'AddTopicRsp',
};

/// Descriptor for `AddTopicRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTopicRspDescriptor = $convert.base64Decode(
    'CgtBZGRUb3BpY1JzcA==');

@$core.Deprecated('Use addGiftReqDescriptor instead')
const AddGiftReq$json = {
  '1': 'AddGiftReq',
  '2': [
    {'1': 'price', '3': 1, '4': 1, '5': 3, '10': 'price'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AddGiftReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addGiftReqDescriptor = $convert.base64Decode(
    'CgpBZGRHaWZ0UmVxEhQKBXByaWNlGAEgASgDUgVwcmljZRIQCgN1cmwYAiABKAlSA3VybBISCg'
    'RuYW1lGAMgASgJUgRuYW1l');

@$core.Deprecated('Use addGiftRspDescriptor instead')
const AddGiftRsp$json = {
  '1': 'AddGiftRsp',
};

/// Descriptor for `AddGiftRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addGiftRspDescriptor = $convert.base64Decode(
    'CgpBZGRHaWZ0UnNw');

@$core.Deprecated('Use communityDescriptor instead')
const Community$json = {
  '1': 'Community',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'createAt', '3': 2, '4': 1, '5': 3, '10': 'createAt'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 4, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'describe', '3': 5, '4': 1, '5': 9, '10': 'describe'},
    {'1': 'positiveRules', '3': 6, '4': 1, '5': 9, '10': 'positiveRules'},
    {'1': 'negativeRules', '3': 7, '4': 1, '5': 9, '10': 'negativeRules'},
    {'1': 'joinType', '3': 8, '4': 1, '5': 14, '6': '.pb_msg_community.JoinType', '10': 'joinType'},
    {'1': 'inviteJoin', '3': 12, '4': 1, '5': 8, '10': 'inviteJoin'},
    {'1': 'password', '3': 20, '4': 1, '5': 9, '10': 'password'},
    {'1': 'question', '3': 21, '4': 1, '5': 9, '10': 'question'},
    {'1': 'answer', '3': 22, '4': 1, '5': 9, '10': 'answer'},
  ],
};

/// Descriptor for `Community`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List communityDescriptor = $convert.base64Decode(
    'CglDb21tdW5pdHkSDgoCaWQYASABKANSAmlkEhoKCGNyZWF0ZUF0GAIgASgDUghjcmVhdGVBdB'
    'ISCgRuYW1lGAMgASgJUgRuYW1lEhYKBmF2YXRhchgEIAEoCVIGYXZhdGFyEhoKCGRlc2NyaWJl'
    'GAUgASgJUghkZXNjcmliZRIkCg1wb3NpdGl2ZVJ1bGVzGAYgASgJUg1wb3NpdGl2ZVJ1bGVzEi'
    'QKDW5lZ2F0aXZlUnVsZXMYByABKAlSDW5lZ2F0aXZlUnVsZXMSNgoIam9pblR5cGUYCCABKA4y'
    'Gi5wYl9tc2dfY29tbXVuaXR5LkpvaW5UeXBlUghqb2luVHlwZRIeCgppbnZpdGVKb2luGAwgAS'
    'gIUgppbnZpdGVKb2luEhoKCHBhc3N3b3JkGBQgASgJUghwYXNzd29yZBIaCghxdWVzdGlvbhgV'
    'IAEoCVIIcXVlc3Rpb24SFgoGYW5zd2VyGBYgASgJUgZhbnN3ZXI=');

@$core.Deprecated('Use createCommunityReqDescriptor instead')
const CreateCommunityReq$json = {
  '1': 'CreateCommunityReq',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 2, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'describe', '3': 3, '4': 1, '5': 9, '10': 'describe'},
    {'1': 'positiveRules', '3': 4, '4': 1, '5': 9, '10': 'positiveRules'},
    {'1': 'negativeRules', '3': 5, '4': 1, '5': 9, '10': 'negativeRules'},
    {'1': 'joinType', '3': 6, '4': 1, '5': 14, '6': '.pb_msg_community.JoinType', '10': 'joinType'},
    {'1': 'inviteJoin', '3': 12, '4': 1, '5': 8, '10': 'inviteJoin'},
    {'1': 'password', '3': 20, '4': 1, '5': 9, '10': 'password'},
    {'1': 'question', '3': 21, '4': 1, '5': 9, '10': 'question'},
    {'1': 'answer', '3': 22, '4': 1, '5': 9, '10': 'answer'},
  ],
};

/// Descriptor for `CreateCommunityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCommunityReqDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVDb21tdW5pdHlSZXESEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZhdmF0YXIYAiABKA'
    'lSBmF2YXRhchIaCghkZXNjcmliZRgDIAEoCVIIZGVzY3JpYmUSJAoNcG9zaXRpdmVSdWxlcxgE'
    'IAEoCVINcG9zaXRpdmVSdWxlcxIkCg1uZWdhdGl2ZVJ1bGVzGAUgASgJUg1uZWdhdGl2ZVJ1bG'
    'VzEjYKCGpvaW5UeXBlGAYgASgOMhoucGJfbXNnX2NvbW11bml0eS5Kb2luVHlwZVIIam9pblR5'
    'cGUSHgoKaW52aXRlSm9pbhgMIAEoCFIKaW52aXRlSm9pbhIaCghwYXNzd29yZBgUIAEoCVIIcG'
    'Fzc3dvcmQSGgoIcXVlc3Rpb24YFSABKAlSCHF1ZXN0aW9uEhYKBmFuc3dlchgWIAEoCVIGYW5z'
    'd2Vy');

@$core.Deprecated('Use createCommunityRspDescriptor instead')
const CreateCommunityRsp$json = {
  '1': 'CreateCommunityRsp',
  '2': [
    {'1': 'community', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Community', '10': 'community'},
  ],
};

/// Descriptor for `CreateCommunityRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCommunityRspDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVDb21tdW5pdHlSc3ASOQoJY29tbXVuaXR5GAEgASgLMhsucGJfbXNnX2NvbW11bm'
    'l0eS5Db21tdW5pdHlSCWNvbW11bml0eQ==');

@$core.Deprecated('Use updateCommunityReqDescriptor instead')
const UpdateCommunityReq$json = {
  '1': 'UpdateCommunityReq',
  '2': [
    {'1': 'community', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Community', '10': 'community'},
    {'1': 'keys', '3': 2, '4': 3, '5': 9, '10': 'keys'},
  ],
};

/// Descriptor for `UpdateCommunityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCommunityReqDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVDb21tdW5pdHlSZXESOQoJY29tbXVuaXR5GAEgASgLMhsucGJfbXNnX2NvbW11bm'
    'l0eS5Db21tdW5pdHlSCWNvbW11bml0eRISCgRrZXlzGAIgAygJUgRrZXlz');

@$core.Deprecated('Use updateCommunityRspDescriptor instead')
const UpdateCommunityRsp$json = {
  '1': 'UpdateCommunityRsp',
};

/// Descriptor for `UpdateCommunityRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCommunityRspDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVDb21tdW5pdHlSc3A=');

@$core.Deprecated('Use applyJoinReqDescriptor instead')
const ApplyJoinReq$json = {
  '1': 'ApplyJoinReq',
};

/// Descriptor for `ApplyJoinReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyJoinReqDescriptor = $convert.base64Decode(
    'CgxBcHBseUpvaW5SZXE=');

@$core.Deprecated('Use applyJoinRspDescriptor instead')
const ApplyJoinRsp$json = {
  '1': 'ApplyJoinRsp',
};

/// Descriptor for `ApplyJoinRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyJoinRspDescriptor = $convert.base64Decode(
    'CgxBcHBseUpvaW5Sc3A=');

@$core.Deprecated('Use answerApplyReqDescriptor instead')
const AnswerApplyReq$json = {
  '1': 'AnswerApplyReq',
  '2': [
    {'1': 'agree', '3': 1, '4': 1, '5': 8, '10': 'agree'},
  ],
};

/// Descriptor for `AnswerApplyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerApplyReqDescriptor = $convert.base64Decode(
    'Cg5BbnN3ZXJBcHBseVJlcRIUCgVhZ3JlZRgBIAEoCFIFYWdyZWU=');

@$core.Deprecated('Use answerApplyRspDescriptor instead')
const AnswerApplyRsp$json = {
  '1': 'AnswerApplyRsp',
};

/// Descriptor for `AnswerApplyRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerApplyRspDescriptor = $convert.base64Decode(
    'Cg5BbnN3ZXJBcHBseVJzcA==');

@$core.Deprecated('Use inviteJoinReqDescriptor instead')
const InviteJoinReq$json = {
  '1': 'InviteJoinReq',
  '2': [
    {'1': 'invitees', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.User', '10': 'invitees'},
  ],
};

/// Descriptor for `InviteJoinReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteJoinReqDescriptor = $convert.base64Decode(
    'Cg1JbnZpdGVKb2luUmVxEjIKCGludml0ZWVzGAEgAygLMhYucGJfbXNnX2NvbW11bml0eS5Vc2'
    'VyUghpbnZpdGVlcw==');

@$core.Deprecated('Use inviteJoinRspDescriptor instead')
const InviteJoinRsp$json = {
  '1': 'InviteJoinRsp',
};

/// Descriptor for `InviteJoinRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteJoinRspDescriptor = $convert.base64Decode(
    'Cg1JbnZpdGVKb2luUnNw');

@$core.Deprecated('Use answerInviteReqDescriptor instead')
const AnswerInviteReq$json = {
  '1': 'AnswerInviteReq',
  '2': [
    {'1': 'agree', '3': 1, '4': 1, '5': 8, '10': 'agree'},
  ],
};

/// Descriptor for `AnswerInviteReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerInviteReqDescriptor = $convert.base64Decode(
    'Cg9BbnN3ZXJJbnZpdGVSZXESFAoFYWdyZWUYASABKAhSBWFncmVl');

@$core.Deprecated('Use answerInviteRspDescriptor instead')
const AnswerInviteRsp$json = {
  '1': 'AnswerInviteRsp',
};

/// Descriptor for `AnswerInviteRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerInviteRspDescriptor = $convert.base64Decode(
    'Cg9BbnN3ZXJJbnZpdGVSc3A=');

@$core.Deprecated('Use joinCommunityReqDescriptor instead')
const JoinCommunityReq$json = {
  '1': 'JoinCommunityReq',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatr', '3': 2, '4': 1, '5': 9, '10': 'avatr'},
    {'1': 'answer', '3': 3, '4': 1, '5': 9, '10': 'answer'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `JoinCommunityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinCommunityReqDescriptor = $convert.base64Decode(
    'ChBKb2luQ29tbXVuaXR5UmVxEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIUCgVhdmF0ch'
    'gCIAEoCVIFYXZhdHISFgoGYW5zd2VyGAMgASgJUgZhbnN3ZXISGgoIcGFzc3dvcmQYBCABKAlS'
    'CHBhc3N3b3Jk');

@$core.Deprecated('Use joinCommunityRspDescriptor instead')
const JoinCommunityRsp$json = {
  '1': 'JoinCommunityRsp',
};

/// Descriptor for `JoinCommunityRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinCommunityRspDescriptor = $convert.base64Decode(
    'ChBKb2luQ29tbXVuaXR5UnNw');

@$core.Deprecated('Use quitCommunityReqDescriptor instead')
const QuitCommunityReq$json = {
  '1': 'QuitCommunityReq',
};

/// Descriptor for `QuitCommunityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quitCommunityReqDescriptor = $convert.base64Decode(
    'ChBRdWl0Q29tbXVuaXR5UmVx');

@$core.Deprecated('Use quitCommunityRspDescriptor instead')
const QuitCommunityRsp$json = {
  '1': 'QuitCommunityRsp',
};

/// Descriptor for `QuitCommunityRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quitCommunityRspDescriptor = $convert.base64Decode(
    'ChBRdWl0Q29tbXVuaXR5UnNw');

@$core.Deprecated('Use userCommunitiesReqDescriptor instead')
const UserCommunitiesReq$json = {
  '1': 'UserCommunitiesReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserCommunitiesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCommunitiesReqDescriptor = $convert.base64Decode(
    'ChJVc2VyQ29tbXVuaXRpZXNSZXESFgoGb2Zmc2V0GAEgASgDUgZvZmZzZXQSFAoFY291bnQYAi'
    'ABKANSBWNvdW50EhYKBnVzZXJJZBgDIAEoA1IGdXNlcklk');

@$core.Deprecated('Use userCommunitiesRspDescriptor instead')
const UserCommunitiesRsp$json = {
  '1': 'UserCommunitiesRsp',
  '2': [
    {'1': 'communities', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Community', '10': 'communities'},
  ],
};

/// Descriptor for `UserCommunitiesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCommunitiesRspDescriptor = $convert.base64Decode(
    'ChJVc2VyQ29tbXVuaXRpZXNSc3ASPQoLY29tbXVuaXRpZXMYASADKAsyGy5wYl9tc2dfY29tbX'
    'VuaXR5LkNvbW11bml0eVILY29tbXVuaXRpZXM=');

@$core.Deprecated('Use allCommunitiesReqDescriptor instead')
const AllCommunitiesReq$json = {
  '1': 'AllCommunitiesReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'keyWord', '3': 3, '4': 1, '5': 9, '10': 'keyWord'},
  ],
};

/// Descriptor for `AllCommunitiesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allCommunitiesReqDescriptor = $convert.base64Decode(
    'ChFBbGxDb21tdW5pdGllc1JlcRIWCgZvZmZzZXQYASABKANSBm9mZnNldBIUCgVjb3VudBgCIA'
    'EoA1IFY291bnQSGAoHa2V5V29yZBgDIAEoCVIHa2V5V29yZA==');

@$core.Deprecated('Use allCommunitiesRspDescriptor instead')
const AllCommunitiesRsp$json = {
  '1': 'AllCommunitiesRsp',
  '2': [
    {'1': 'communities', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Community', '10': 'communities'},
  ],
};

/// Descriptor for `AllCommunitiesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allCommunitiesRspDescriptor = $convert.base64Decode(
    'ChFBbGxDb21tdW5pdGllc1JzcBI9Cgtjb21tdW5pdGllcxgBIAMoCzIbLnBiX21zZ19jb21tdW'
    '5pdHkuQ29tbXVuaXR5Ugtjb21tdW5pdGllcw==');

@$core.Deprecated('Use communityDetailReqDescriptor instead')
const CommunityDetailReq$json = {
  '1': 'CommunityDetailReq',
};

/// Descriptor for `CommunityDetailReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List communityDetailReqDescriptor = $convert.base64Decode(
    'ChJDb21tdW5pdHlEZXRhaWxSZXE=');

@$core.Deprecated('Use communityDetailRspDescriptor instead')
const CommunityDetailRsp$json = {
  '1': 'CommunityDetailRsp',
  '2': [
    {'1': 'community', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Community', '10': 'community'},
  ],
};

/// Descriptor for `CommunityDetailRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List communityDetailRspDescriptor = $convert.base64Decode(
    'ChJDb21tdW5pdHlEZXRhaWxSc3ASOQoJY29tbXVuaXR5GAEgASgLMhsucGJfbXNnX2NvbW11bm'
    'l0eS5Db21tdW5pdHlSCWNvbW11bml0eQ==');

@$core.Deprecated('Use memberDescriptor instead')
const Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'appId', '3': 1, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'appUserId', '3': 2, '4': 1, '5': 9, '10': 'appUserId'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'username', '3': 4, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 5, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'role', '3': 6, '4': 1, '5': 5, '10': 'role'},
  ],
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode(
    'CgZNZW1iZXISFAoFYXBwSWQYASABKANSBWFwcElkEhwKCWFwcFVzZXJJZBgCIAEoCVIJYXBwVX'
    'NlcklkEhYKBnVzZXJJZBgDIAEoA1IGdXNlcklkEhoKCHVzZXJuYW1lGAQgASgJUgh1c2VybmFt'
    'ZRIWCgZhdmF0YXIYBSABKAlSBmF2YXRhchISCgRyb2xlGAYgASgFUgRyb2xl');

@$core.Deprecated('Use membersReqDescriptor instead')
const MembersReq$json = {
  '1': 'MembersReq',
};

/// Descriptor for `MembersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List membersReqDescriptor = $convert.base64Decode(
    'CgpNZW1iZXJzUmVx');

@$core.Deprecated('Use membersRspDescriptor instead')
const MembersRsp$json = {
  '1': 'MembersRsp',
  '2': [
    {'1': 'members', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Member', '10': 'members'},
  ],
};

/// Descriptor for `MembersRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List membersRspDescriptor = $convert.base64Decode(
    'CgpNZW1iZXJzUnNwEjIKB21lbWJlcnMYASADKAsyGC5wYl9tc2dfY29tbXVuaXR5Lk1lbWJlcl'
    'IHbWVtYmVycw==');

@$core.Deprecated('Use updateMemberReqDescriptor instead')
const UpdateMemberReq$json = {
  '1': 'UpdateMemberReq',
  '2': [
    {'1': 'member', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Member', '10': 'member'},
    {'1': 'keys', '3': 2, '4': 3, '5': 9, '10': 'keys'},
  ],
};

/// Descriptor for `UpdateMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMemberReqDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVNZW1iZXJSZXESMAoGbWVtYmVyGAEgASgLMhgucGJfbXNnX2NvbW11bml0eS5NZW'
    '1iZXJSBm1lbWJlchISCgRrZXlzGAIgAygJUgRrZXlz');

@$core.Deprecated('Use updateMemberRspDescriptor instead')
const UpdateMemberRsp$json = {
  '1': 'UpdateMemberRsp',
};

/// Descriptor for `UpdateMemberRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMemberRspDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVNZW1iZXJSc3A=');

@$core.Deprecated('Use videoDescriptor instead')
const Video$json = {
  '1': 'Video',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'Plays', '3': 3, '4': 1, '5': 3, '10': 'Plays'},
    {'1': 'Barrages', '3': 4, '4': 1, '5': 3, '10': 'Barrages'},
  ],
};

/// Descriptor for `Video`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoDescriptor = $convert.base64Decode(
    'CgVWaWRlbxIOCgJpZBgBIAEoA1ICaWQSEAoDdXJsGAIgASgJUgN1cmwSFAoFUGxheXMYAyABKA'
    'NSBVBsYXlzEhoKCEJhcnJhZ2VzGAQgASgDUghCYXJyYWdlcw==');

@$core.Deprecated('Use imageDescriptor instead')
const Image$json = {
  '1': 'Image',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'tags', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_community.Tag', '10': 'tags'},
  ],
};

/// Descriptor for `Image`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageDescriptor = $convert.base64Decode(
    'CgVJbWFnZRIOCgJpZBgBIAEoA1ICaWQSEAoDdXJsGAIgASgJUgN1cmwSKQoEdGFncxgDIAMoCz'
    'IVLnBiX21zZ19jb21tdW5pdHkuVGFnUgR0YWdz');

@$core.Deprecated('Use tagDescriptor instead')
const Tag$json = {
  '1': 'Tag',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    {'1': 'x', '3': 4, '4': 1, '5': 3, '10': 'x'},
    {'1': 'y', '3': 5, '4': 1, '5': 3, '10': 'y'},
  ],
};

/// Descriptor for `Tag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagDescriptor = $convert.base64Decode(
    'CgNUYWcSDgoCaWQYASABKANSAmlkEhIKBHR5cGUYAiABKAVSBHR5cGUSGAoHY29udGVudBgDIA'
    'EoCVIHY29udGVudBIMCgF4GAQgASgDUgF4EgwKAXkYBSABKANSAXk=');

@$core.Deprecated('Use audioDescriptor instead')
const Audio$json = {
  '1': 'Audio',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'cover', '3': 3, '4': 1, '5': 9, '10': 'cover'},
  ],
};

/// Descriptor for `Audio`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audioDescriptor = $convert.base64Decode(
    'CgVBdWRpbxIOCgJpZBgBIAEoA1ICaWQSEAoDdXJsGAIgASgJUgN1cmwSFAoFY292ZXIYAyABKA'
    'lSBWNvdmVy');

@$core.Deprecated('Use linkDescriptor instead')
const Link$json = {
  '1': 'Link',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `Link`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkDescriptor = $convert.base64Decode(
    'CgRMaW5rEg4KAmlkGAEgASgDUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhAKA3VybBgDIAEoCV'
    'IDdXJs');

@$core.Deprecated('Use voteDescriptor instead')
const Vote$json = {
  '1': 'Vote',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    {'1': 'options', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_community.Option', '10': 'options'},
  ],
};

/// Descriptor for `Vote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voteDescriptor = $convert.base64Decode(
    'CgRWb3RlEg4KAmlkGAEgASgDUgJpZBIYCgdjb250ZW50GAIgASgJUgdjb250ZW50EjIKB29wdG'
    'lvbnMYAyADKAsyGC5wYl9tc2dfY29tbXVuaXR5Lk9wdGlvblIHb3B0aW9ucw==');

@$core.Deprecated('Use optionDescriptor instead')
const Option$json = {
  '1': 'Option',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    {'1': 'count', '3': 3, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `Option`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionDescriptor = $convert.base64Decode(
    'CgZPcHRpb24SDgoCaWQYASABKANSAmlkEhgKB2NvbnRlbnQYAiABKAlSB2NvbnRlbnQSFAoFY2'
    '91bnQYAyABKANSBWNvdW50');

@$core.Deprecated('Use postDescriptor instead')
const Post$json = {
  '1': 'Post',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'createAt', '3': 2, '4': 1, '5': 3, '10': 'createAt'},
    {'1': 'topicId', '3': 3, '4': 1, '5': 3, '10': 'topicId'},
    {'1': 'topicName', '3': 4, '4': 1, '5': 9, '10': 'topicName'},
    {'1': 'appId', '3': 5, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'userId', '3': 6, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'appUserId', '3': 7, '4': 1, '5': 9, '10': 'appUserId'},
    {'1': 'username', '3': 8, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 9, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'content', '3': 10, '4': 1, '5': 9, '10': 'content'},
    {'1': 'communityId', '3': 11, '4': 1, '5': 3, '10': 'communityId'},
    {'1': 'communityName', '3': 12, '4': 1, '5': 9, '10': 'communityName'},
    {'1': 'videos', '3': 20, '4': 3, '5': 11, '6': '.pb_msg_community.Video', '10': 'videos'},
    {'1': 'images', '3': 21, '4': 3, '5': 11, '6': '.pb_msg_community.Image', '10': 'images'},
    {'1': 'audios', '3': 22, '4': 3, '5': 11, '6': '.pb_msg_community.Audio', '10': 'audios'},
    {'1': 'links', '3': 23, '4': 3, '5': 11, '6': '.pb_msg_community.Link', '10': 'links'},
    {'1': 'votes', '3': 24, '4': 3, '5': 11, '6': '.pb_msg_community.Vote', '10': 'votes'},
    {'1': 'likes', '3': 30, '4': 1, '5': 3, '10': 'likes'},
    {'1': 'likeas', '3': 31, '4': 1, '5': 3, '10': 'likeas'},
    {'1': 'likebs', '3': 32, '4': 1, '5': 3, '10': 'likebs'},
    {'1': 'likecs', '3': 33, '4': 1, '5': 3, '10': 'likecs'},
    {'1': 'likeds', '3': 34, '4': 1, '5': 3, '10': 'likeds'},
    {'1': 'shares', '3': 35, '4': 1, '5': 3, '10': 'shares'},
    {'1': 'watchs', '3': 36, '4': 1, '5': 3, '10': 'watchs'},
    {'1': 'comments', '3': 37, '4': 1, '5': 3, '10': 'comments'},
    {'1': 'award', '3': 50, '4': 1, '5': 8, '10': 'award'},
    {'1': 'awards', '3': 51, '4': 1, '5': 3, '10': 'awards'},
    {'1': 'topComments', '3': 60, '4': 3, '5': 11, '6': '.pb_msg_community.Comment', '10': 'topComments'},
  ],
};

/// Descriptor for `Post`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDescriptor = $convert.base64Decode(
    'CgRQb3N0Eg4KAmlkGAEgASgDUgJpZBIaCghjcmVhdGVBdBgCIAEoA1IIY3JlYXRlQXQSGAoHdG'
    '9waWNJZBgDIAEoA1IHdG9waWNJZBIcCgl0b3BpY05hbWUYBCABKAlSCXRvcGljTmFtZRIUCgVh'
    'cHBJZBgFIAEoA1IFYXBwSWQSFgoGdXNlcklkGAYgASgDUgZ1c2VySWQSHAoJYXBwVXNlcklkGA'
    'cgASgJUglhcHBVc2VySWQSGgoIdXNlcm5hbWUYCCABKAlSCHVzZXJuYW1lEhYKBmF2YXRhchgJ'
    'IAEoCVIGYXZhdGFyEhgKB2NvbnRlbnQYCiABKAlSB2NvbnRlbnQSIAoLY29tbXVuaXR5SWQYCy'
    'ABKANSC2NvbW11bml0eUlkEiQKDWNvbW11bml0eU5hbWUYDCABKAlSDWNvbW11bml0eU5hbWUS'
    'LwoGdmlkZW9zGBQgAygLMhcucGJfbXNnX2NvbW11bml0eS5WaWRlb1IGdmlkZW9zEi8KBmltYW'
    'dlcxgVIAMoCzIXLnBiX21zZ19jb21tdW5pdHkuSW1hZ2VSBmltYWdlcxIvCgZhdWRpb3MYFiAD'
    'KAsyFy5wYl9tc2dfY29tbXVuaXR5LkF1ZGlvUgZhdWRpb3MSLAoFbGlua3MYFyADKAsyFi5wYl'
    '9tc2dfY29tbXVuaXR5LkxpbmtSBWxpbmtzEiwKBXZvdGVzGBggAygLMhYucGJfbXNnX2NvbW11'
    'bml0eS5Wb3RlUgV2b3RlcxIUCgVsaWtlcxgeIAEoA1IFbGlrZXMSFgoGbGlrZWFzGB8gASgDUg'
    'ZsaWtlYXMSFgoGbGlrZWJzGCAgASgDUgZsaWtlYnMSFgoGbGlrZWNzGCEgASgDUgZsaWtlY3MS'
    'FgoGbGlrZWRzGCIgASgDUgZsaWtlZHMSFgoGc2hhcmVzGCMgASgDUgZzaGFyZXMSFgoGd2F0Y2'
    'hzGCQgASgDUgZ3YXRjaHMSGgoIY29tbWVudHMYJSABKANSCGNvbW1lbnRzEhQKBWF3YXJkGDIg'
    'ASgIUgVhd2FyZBIWCgZhd2FyZHMYMyABKANSBmF3YXJkcxI7Cgt0b3BDb21tZW50cxg8IAMoCz'
    'IZLnBiX21zZ19jb21tdW5pdHkuQ29tbWVudFILdG9wQ29tbWVudHM=');

@$core.Deprecated('Use postReqDescriptor instead')
const PostReq$json = {
  '1': 'PostReq',
  '2': [
    {'1': 'topicId', '3': 1, '4': 1, '5': 3, '10': 'topicId'},
    {'1': 'topicName', '3': 2, '4': 1, '5': 9, '10': 'topicName'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    {'1': 'award', '3': 4, '4': 1, '5': 8, '10': 'award'},
    {'1': 'videos', '3': 5, '4': 3, '5': 11, '6': '.pb_msg_community.Video', '10': 'videos'},
    {'1': 'audios', '3': 6, '4': 3, '5': 11, '6': '.pb_msg_community.Audio', '10': 'audios'},
    {'1': 'images', '3': 7, '4': 3, '5': 11, '6': '.pb_msg_community.Image', '10': 'images'},
    {'1': 'votes', '3': 8, '4': 3, '5': 11, '6': '.pb_msg_community.Vote', '10': 'votes'},
    {'1': 'links', '3': 9, '4': 3, '5': 11, '6': '.pb_msg_community.Link', '10': 'links'},
    {'1': 'communityId', '3': 10, '4': 1, '5': 3, '10': 'communityId'},
    {'1': 'communityName', '3': 11, '4': 1, '5': 9, '10': 'communityName'},
  ],
};

/// Descriptor for `PostReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postReqDescriptor = $convert.base64Decode(
    'CgdQb3N0UmVxEhgKB3RvcGljSWQYASABKANSB3RvcGljSWQSHAoJdG9waWNOYW1lGAIgASgJUg'
    'l0b3BpY05hbWUSGAoHY29udGVudBgDIAEoCVIHY29udGVudBIUCgVhd2FyZBgEIAEoCFIFYXdh'
    'cmQSLwoGdmlkZW9zGAUgAygLMhcucGJfbXNnX2NvbW11bml0eS5WaWRlb1IGdmlkZW9zEi8KBm'
    'F1ZGlvcxgGIAMoCzIXLnBiX21zZ19jb21tdW5pdHkuQXVkaW9SBmF1ZGlvcxIvCgZpbWFnZXMY'
    'ByADKAsyFy5wYl9tc2dfY29tbXVuaXR5LkltYWdlUgZpbWFnZXMSLAoFdm90ZXMYCCADKAsyFi'
    '5wYl9tc2dfY29tbXVuaXR5LlZvdGVSBXZvdGVzEiwKBWxpbmtzGAkgAygLMhYucGJfbXNnX2Nv'
    'bW11bml0eS5MaW5rUgVsaW5rcxIgCgtjb21tdW5pdHlJZBgKIAEoA1ILY29tbXVuaXR5SWQSJA'
    'oNY29tbXVuaXR5TmFtZRgLIAEoCVINY29tbXVuaXR5TmFtZQ==');

@$core.Deprecated('Use postRspDescriptor instead')
const PostRsp$json = {
  '1': 'PostRsp',
};

/// Descriptor for `PostRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postRspDescriptor = $convert.base64Decode(
    'CgdQb3N0UnNw');

@$core.Deprecated('Use commentDescriptor instead')
const Comment$json = {
  '1': 'Comment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'createAt', '3': 2, '4': 1, '5': 3, '10': 'createAt'},
    {'1': 'appId', '3': 3, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'userId', '3': 4, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'appUserId', '3': 5, '4': 1, '5': 9, '10': 'appUserId'},
    {'1': 'username', '3': 6, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 7, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'refId', '3': 8, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 9, '4': 1, '5': 5, '10': 'refType'},
    {'1': 'content', '3': 10, '4': 1, '5': 9, '10': 'content'},
    {'1': 'stamped', '3': 11, '4': 1, '5': 8, '10': 'stamped'},
    {'1': 'videos', '3': 20, '4': 3, '5': 11, '6': '.pb_msg_community.Video', '10': 'videos'},
    {'1': 'images', '3': 21, '4': 3, '5': 11, '6': '.pb_msg_community.Image', '10': 'images'},
    {'1': 'audios', '3': 22, '4': 3, '5': 11, '6': '.pb_msg_community.Audio', '10': 'audios'},
    {'1': 'likes', '3': 30, '4': 1, '5': 3, '10': 'likes'},
    {'1': 'shares', '3': 31, '4': 1, '5': 3, '10': 'shares'},
    {'1': 'watchs', '3': 32, '4': 1, '5': 3, '10': 'watchs'},
    {'1': 'replies', '3': 33, '4': 1, '5': 3, '10': 'replies'},
    {'1': 'topReplies', '3': 41, '4': 3, '5': 11, '6': '.pb_msg_community.Reply', '10': 'topReplies'},
  ],
};

/// Descriptor for `Comment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDescriptor = $convert.base64Decode(
    'CgdDb21tZW50Eg4KAmlkGAEgASgDUgJpZBIaCghjcmVhdGVBdBgCIAEoA1IIY3JlYXRlQXQSFA'
    'oFYXBwSWQYAyABKANSBWFwcElkEhYKBnVzZXJJZBgEIAEoA1IGdXNlcklkEhwKCWFwcFVzZXJJ'
    'ZBgFIAEoCVIJYXBwVXNlcklkEhoKCHVzZXJuYW1lGAYgASgJUgh1c2VybmFtZRIWCgZhdmF0YX'
    'IYByABKAlSBmF2YXRhchIUCgVyZWZJZBgIIAEoA1IFcmVmSWQSGAoHcmVmVHlwZRgJIAEoBVIH'
    'cmVmVHlwZRIYCgdjb250ZW50GAogASgJUgdjb250ZW50EhgKB3N0YW1wZWQYCyABKAhSB3N0YW'
    '1wZWQSLwoGdmlkZW9zGBQgAygLMhcucGJfbXNnX2NvbW11bml0eS5WaWRlb1IGdmlkZW9zEi8K'
    'BmltYWdlcxgVIAMoCzIXLnBiX21zZ19jb21tdW5pdHkuSW1hZ2VSBmltYWdlcxIvCgZhdWRpb3'
    'MYFiADKAsyFy5wYl9tc2dfY29tbXVuaXR5LkF1ZGlvUgZhdWRpb3MSFAoFbGlrZXMYHiABKANS'
    'BWxpa2VzEhYKBnNoYXJlcxgfIAEoA1IGc2hhcmVzEhYKBndhdGNocxggIAEoA1IGd2F0Y2hzEh'
    'gKB3JlcGxpZXMYISABKANSB3JlcGxpZXMSNwoKdG9wUmVwbGllcxgpIAMoCzIXLnBiX21zZ19j'
    'b21tdW5pdHkuUmVwbHlSCnRvcFJlcGxpZXM=');

@$core.Deprecated('Use commentReqDescriptor instead')
const CommentReq$json = {
  '1': 'CommentReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    {'1': 'videos', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_community.Video', '10': 'videos'},
    {'1': 'audios', '3': 5, '4': 3, '5': 11, '6': '.pb_msg_community.Audio', '10': 'audios'},
    {'1': 'images', '3': 6, '4': 3, '5': 11, '6': '.pb_msg_community.Image', '10': 'images'},
  ],
};

/// Descriptor for `CommentReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentReqDescriptor = $convert.base64Decode(
    'CgpDb21tZW50UmVxEhQKBXJlZklkGAEgASgDUgVyZWZJZBIYCgdyZWZUeXBlGAIgASgFUgdyZW'
    'ZUeXBlEhgKB2NvbnRlbnQYAyABKAlSB2NvbnRlbnQSLwoGdmlkZW9zGAQgAygLMhcucGJfbXNn'
    'X2NvbW11bml0eS5WaWRlb1IGdmlkZW9zEi8KBmF1ZGlvcxgFIAMoCzIXLnBiX21zZ19jb21tdW'
    '5pdHkuQXVkaW9SBmF1ZGlvcxIvCgZpbWFnZXMYBiADKAsyFy5wYl9tc2dfY29tbXVuaXR5Lklt'
    'YWdlUgZpbWFnZXM=');

@$core.Deprecated('Use commentRspDescriptor instead')
const CommentRsp$json = {
  '1': 'CommentRsp',
  '2': [
    {'1': 'comment', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Comment', '10': 'comment'},
  ],
};

/// Descriptor for `CommentRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentRspDescriptor = $convert.base64Decode(
    'CgpDb21tZW50UnNwEjMKB2NvbW1lbnQYASABKAsyGS5wYl9tc2dfY29tbXVuaXR5LkNvbW1lbn'
    'RSB2NvbW1lbnQ=');

@$core.Deprecated('Use replyDescriptor instead')
const Reply$json = {
  '1': 'Reply',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'createAt', '3': 2, '4': 1, '5': 3, '10': 'createAt'},
    {'1': 'appId', '3': 3, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'userId', '3': 4, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'appUserId', '3': 5, '4': 1, '5': 9, '10': 'appUserId'},
    {'1': 'username', '3': 6, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 7, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'commentId', '3': 8, '4': 1, '5': 3, '10': 'commentId'},
    {'1': 'content', '3': 9, '4': 1, '5': 9, '10': 'content'},
    {'1': 'talkId', '3': 10, '4': 1, '5': 3, '10': 'talkId'},
    {'1': 'toAppId', '3': 11, '4': 1, '5': 3, '10': 'toAppId'},
    {'1': 'toUserId', '3': 12, '4': 1, '5': 3, '10': 'toUserId'},
    {'1': 'toAppUserId', '3': 13, '4': 1, '5': 9, '10': 'toAppUserId'},
    {'1': 'toUsername', '3': 14, '4': 1, '5': 9, '10': 'toUsername'},
    {'1': 'videos', '3': 20, '4': 3, '5': 11, '6': '.pb_msg_community.Video', '10': 'videos'},
    {'1': 'images', '3': 21, '4': 3, '5': 11, '6': '.pb_msg_community.Image', '10': 'images'},
    {'1': 'audios', '3': 22, '4': 3, '5': 11, '6': '.pb_msg_community.Audio', '10': 'audios'},
    {'1': 'Likes', '3': 31, '4': 1, '5': 3, '10': 'Likes'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIOCgJpZBgBIAEoA1ICaWQSGgoIY3JlYXRlQXQYAiABKANSCGNyZWF0ZUF0EhQKBW'
    'FwcElkGAMgASgDUgVhcHBJZBIWCgZ1c2VySWQYBCABKANSBnVzZXJJZBIcCglhcHBVc2VySWQY'
    'BSABKAlSCWFwcFVzZXJJZBIaCgh1c2VybmFtZRgGIAEoCVIIdXNlcm5hbWUSFgoGYXZhdGFyGA'
    'cgASgJUgZhdmF0YXISHAoJY29tbWVudElkGAggASgDUgljb21tZW50SWQSGAoHY29udGVudBgJ'
    'IAEoCVIHY29udGVudBIWCgZ0YWxrSWQYCiABKANSBnRhbGtJZBIYCgd0b0FwcElkGAsgASgDUg'
    'd0b0FwcElkEhoKCHRvVXNlcklkGAwgASgDUgh0b1VzZXJJZBIgCgt0b0FwcFVzZXJJZBgNIAEo'
    'CVILdG9BcHBVc2VySWQSHgoKdG9Vc2VybmFtZRgOIAEoCVIKdG9Vc2VybmFtZRIvCgZ2aWRlb3'
    'MYFCADKAsyFy5wYl9tc2dfY29tbXVuaXR5LlZpZGVvUgZ2aWRlb3MSLwoGaW1hZ2VzGBUgAygL'
    'MhcucGJfbXNnX2NvbW11bml0eS5JbWFnZVIGaW1hZ2VzEi8KBmF1ZGlvcxgWIAMoCzIXLnBiX2'
    '1zZ19jb21tdW5pdHkuQXVkaW9SBmF1ZGlvcxIUCgVMaWtlcxgfIAEoA1IFTGlrZXM=');

@$core.Deprecated('Use replyReqDescriptor instead')
const ReplyReq$json = {
  '1': 'ReplyReq',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    {'1': 'commentId', '3': 2, '4': 1, '5': 3, '10': 'commentId'},
    {'1': 'talkId', '3': 3, '4': 1, '5': 3, '10': 'talkId'},
    {'1': 'toAppId', '3': 10, '4': 1, '5': 3, '10': 'toAppId'},
    {'1': 'toUserId', '3': 11, '4': 1, '5': 3, '10': 'toUserId'},
    {'1': 'toAppUserId', '3': 12, '4': 1, '5': 9, '10': 'toAppUserId'},
    {'1': 'toUsername', '3': 13, '4': 1, '5': 9, '10': 'toUsername'},
    {'1': 'videos', '3': 20, '4': 3, '5': 11, '6': '.pb_msg_community.Video', '10': 'videos'},
    {'1': 'audios', '3': 21, '4': 3, '5': 11, '6': '.pb_msg_community.Audio', '10': 'audios'},
    {'1': 'images', '3': 22, '4': 3, '5': 11, '6': '.pb_msg_community.Image', '10': 'images'},
  ],
};

/// Descriptor for `ReplyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyReqDescriptor = $convert.base64Decode(
    'CghSZXBseVJlcRIYCgdjb250ZW50GAEgASgJUgdjb250ZW50EhwKCWNvbW1lbnRJZBgCIAEoA1'
    'IJY29tbWVudElkEhYKBnRhbGtJZBgDIAEoA1IGdGFsa0lkEhgKB3RvQXBwSWQYCiABKANSB3Rv'
    'QXBwSWQSGgoIdG9Vc2VySWQYCyABKANSCHRvVXNlcklkEiAKC3RvQXBwVXNlcklkGAwgASgJUg'
    't0b0FwcFVzZXJJZBIeCgp0b1VzZXJuYW1lGA0gASgJUgp0b1VzZXJuYW1lEi8KBnZpZGVvcxgU'
    'IAMoCzIXLnBiX21zZ19jb21tdW5pdHkuVmlkZW9SBnZpZGVvcxIvCgZhdWRpb3MYFSADKAsyFy'
    '5wYl9tc2dfY29tbXVuaXR5LkF1ZGlvUgZhdWRpb3MSLwoGaW1hZ2VzGBYgAygLMhcucGJfbXNn'
    'X2NvbW11bml0eS5JbWFnZVIGaW1hZ2Vz');

@$core.Deprecated('Use replyRspDescriptor instead')
const ReplyRsp$json = {
  '1': 'ReplyRsp',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Reply', '10': 'reply'},
  ],
};

/// Descriptor for `ReplyRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyRspDescriptor = $convert.base64Decode(
    'CghSZXBseVJzcBItCgVyZXBseRgBIAEoCzIXLnBiX21zZ19jb21tdW5pdHkuUmVwbHlSBXJlcG'
    'x5');

@$core.Deprecated('Use barrageDescriptor instead')
const Barrage$json = {
  '1': 'Barrage',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    {'1': 'playAt', '3': 2, '4': 1, '5': 3, '10': 'playAt'},
    {'1': 'font', '3': 3, '4': 1, '5': 9, '10': 'font'},
  ],
};

/// Descriptor for `Barrage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List barrageDescriptor = $convert.base64Decode(
    'CgdCYXJyYWdlEhgKB2NvbnRlbnQYASABKAlSB2NvbnRlbnQSFgoGcGxheUF0GAIgASgDUgZwbG'
    'F5QXQSEgoEZm9udBgDIAEoCVIEZm9udA==');

@$core.Deprecated('Use shootReqDescriptor instead')
const ShootReq$json = {
  '1': 'ShootReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    {'1': 'playAt', '3': 4, '4': 1, '5': 3, '10': 'playAt'},
    {'1': 'font', '3': 5, '4': 1, '5': 9, '10': 'font'},
  ],
};

/// Descriptor for `ShootReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shootReqDescriptor = $convert.base64Decode(
    'CghTaG9vdFJlcRIUCgVyZWZJZBgBIAEoA1IFcmVmSWQSGAoHcmVmVHlwZRgCIAEoBVIHcmVmVH'
    'lwZRIYCgdjb250ZW50GAMgASgJUgdjb250ZW50EhYKBnBsYXlBdBgEIAEoA1IGcGxheUF0EhIK'
    'BGZvbnQYBSABKAlSBGZvbnQ=');

@$core.Deprecated('Use shootRspDescriptor instead')
const ShootRsp$json = {
  '1': 'ShootRsp',
};

/// Descriptor for `ShootRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shootRspDescriptor = $convert.base64Decode(
    'CghTaG9vdFJzcA==');

@$core.Deprecated('Use likeReqDescriptor instead')
const LikeReq$json = {
  '1': 'LikeReq',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 2, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'refId', '3': 3, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 4, '4': 1, '5': 5, '10': 'refType'},
    {'1': 'type', '3': 5, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `LikeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeReqDescriptor = $convert.base64Decode(
    'CgdMaWtlUmVxEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIWCgZhdmF0YXIYAiABKAlSBm'
    'F2YXRhchIUCgVyZWZJZBgDIAEoA1IFcmVmSWQSGAoHcmVmVHlwZRgEIAEoBVIHcmVmVHlwZRIS'
    'CgR0eXBlGAUgASgFUgR0eXBl');

@$core.Deprecated('Use likeRspDescriptor instead')
const LikeRsp$json = {
  '1': 'LikeRsp',
};

/// Descriptor for `LikeRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeRspDescriptor = $convert.base64Decode(
    'CgdMaWtlUnNw');

@$core.Deprecated('Use unlikeReqDescriptor instead')
const UnlikeReq$json = {
  '1': 'UnlikeReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
    {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `UnlikeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlikeReqDescriptor = $convert.base64Decode(
    'CglVbmxpa2VSZXESFAoFcmVmSWQYASABKANSBXJlZklkEhgKB3JlZlR5cGUYAiABKAVSB3JlZl'
    'R5cGUSEgoEdHlwZRgDIAEoBVIEdHlwZQ==');

@$core.Deprecated('Use unlikeRspDescriptor instead')
const UnlikeRsp$json = {
  '1': 'UnlikeRsp',
};

/// Descriptor for `UnlikeRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlikeRspDescriptor = $convert.base64Decode(
    'CglVbmxpa2VSc3A=');

@$core.Deprecated('Use shareReqDescriptor instead')
const ShareReq$json = {
  '1': 'ShareReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
  ],
};

/// Descriptor for `ShareReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareReqDescriptor = $convert.base64Decode(
    'CghTaGFyZVJlcRIUCgVyZWZJZBgBIAEoA1IFcmVmSWQSGAoHcmVmVHlwZRgCIAEoBVIHcmVmVH'
    'lwZQ==');

@$core.Deprecated('Use shareRspDescriptor instead')
const ShareRsp$json = {
  '1': 'ShareRsp',
};

/// Descriptor for `ShareRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareRspDescriptor = $convert.base64Decode(
    'CghTaGFyZVJzcA==');

@$core.Deprecated('Use ballotDescriptor instead')
const Ballot$json = {
  '1': 'Ballot',
  '2': [
    {'1': 'voteId', '3': 1, '4': 1, '5': 3, '10': 'voteId'},
    {'1': 'optionId', '3': 2, '4': 1, '5': 3, '10': 'optionId'},
  ],
};

/// Descriptor for `Ballot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ballotDescriptor = $convert.base64Decode(
    'CgZCYWxsb3QSFgoGdm90ZUlkGAEgASgDUgZ2b3RlSWQSGgoIb3B0aW9uSWQYAiABKANSCG9wdG'
    'lvbklk');

@$core.Deprecated('Use voteReqDescriptor instead')
const VoteReq$json = {
  '1': 'VoteReq',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 2, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'postId', '3': 3, '4': 1, '5': 3, '10': 'postId'},
    {'1': 'voteId', '3': 4, '4': 1, '5': 3, '10': 'voteId'},
    {'1': 'optionId', '3': 5, '4': 1, '5': 3, '10': 'optionId'},
  ],
};

/// Descriptor for `VoteReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voteReqDescriptor = $convert.base64Decode(
    'CgdWb3RlUmVxEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIWCgZhdmF0YXIYAiABKAlSBm'
    'F2YXRhchIWCgZwb3N0SWQYAyABKANSBnBvc3RJZBIWCgZ2b3RlSWQYBCABKANSBnZvdGVJZBIa'
    'CghvcHRpb25JZBgFIAEoA1IIb3B0aW9uSWQ=');

@$core.Deprecated('Use voteRspDescriptor instead')
const VoteRsp$json = {
  '1': 'VoteRsp',
};

/// Descriptor for `VoteRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voteRspDescriptor = $convert.base64Decode(
    'CgdWb3RlUnNw');

@$core.Deprecated('Use watchReqDescriptor instead')
const WatchReq$json = {
  '1': 'WatchReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
  ],
};

/// Descriptor for `WatchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchReqDescriptor = $convert.base64Decode(
    'CghXYXRjaFJlcRIUCgVyZWZJZBgBIAEoA1IFcmVmSWQSGAoHcmVmVHlwZRgCIAEoBVIHcmVmVH'
    'lwZQ==');

@$core.Deprecated('Use watchRspDescriptor instead')
const WatchRsp$json = {
  '1': 'WatchRsp',
};

/// Descriptor for `WatchRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchRspDescriptor = $convert.base64Decode(
    'CghXYXRjaFJzcA==');

@$core.Deprecated('Use unwatchReqDescriptor instead')
const UnwatchReq$json = {
  '1': 'UnwatchReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
  ],
};

/// Descriptor for `UnwatchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unwatchReqDescriptor = $convert.base64Decode(
    'CgpVbndhdGNoUmVxEhQKBXJlZklkGAEgASgDUgVyZWZJZBIYCgdyZWZUeXBlGAIgASgFUgdyZW'
    'ZUeXBl');

@$core.Deprecated('Use unwatchRspDescriptor instead')
const UnwatchRsp$json = {
  '1': 'UnwatchRsp',
};

/// Descriptor for `UnwatchRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unwatchRspDescriptor = $convert.base64Decode(
    'CgpVbndhdGNoUnNw');

@$core.Deprecated('Use awardReqDescriptor instead')
const AwardReq$json = {
  '1': 'AwardReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
    {'1': 'giftId', '3': 3, '4': 1, '5': 3, '10': 'giftId'},
    {'1': 'giftNumber', '3': 4, '4': 1, '5': 3, '10': 'giftNumber'},
    {'1': 'giftPrice', '3': 5, '4': 1, '5': 3, '10': 'giftPrice'},
  ],
};

/// Descriptor for `AwardReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List awardReqDescriptor = $convert.base64Decode(
    'CghBd2FyZFJlcRIUCgVyZWZJZBgBIAEoA1IFcmVmSWQSGAoHcmVmVHlwZRgCIAEoBVIHcmVmVH'
    'lwZRIWCgZnaWZ0SWQYAyABKANSBmdpZnRJZBIeCgpnaWZ0TnVtYmVyGAQgASgDUgpnaWZ0TnVt'
    'YmVyEhwKCWdpZnRQcmljZRgFIAEoA1IJZ2lmdFByaWNl');

@$core.Deprecated('Use awardRspDescriptor instead')
const AwardRsp$json = {
  '1': 'AwardRsp',
};

/// Descriptor for `AwardRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List awardRspDescriptor = $convert.base64Decode(
    'CghBd2FyZFJzcA==');

@$core.Deprecated('Use favoriteReqDescriptor instead')
const FavoriteReq$json = {
  '1': 'FavoriteReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
  ],
};

/// Descriptor for `FavoriteReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoriteReqDescriptor = $convert.base64Decode(
    'CgtGYXZvcml0ZVJlcRIUCgVyZWZJZBgBIAEoA1IFcmVmSWQSGAoHcmVmVHlwZRgCIAEoBVIHcm'
    'VmVHlwZQ==');

@$core.Deprecated('Use favoriteRspDescriptor instead')
const FavoriteRsp$json = {
  '1': 'FavoriteRsp',
};

/// Descriptor for `FavoriteRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoriteRspDescriptor = $convert.base64Decode(
    'CgtGYXZvcml0ZVJzcA==');

@$core.Deprecated('Use unfavoriteReqDescriptor instead')
const UnfavoriteReq$json = {
  '1': 'UnfavoriteReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
  ],
};

/// Descriptor for `UnfavoriteReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unfavoriteReqDescriptor = $convert.base64Decode(
    'Cg1VbmZhdm9yaXRlUmVxEhQKBXJlZklkGAEgASgDUgVyZWZJZBIYCgdyZWZUeXBlGAIgASgFUg'
    'dyZWZUeXBl');

@$core.Deprecated('Use unfavoriteRspDescriptor instead')
const UnfavoriteRsp$json = {
  '1': 'UnfavoriteRsp',
};

/// Descriptor for `UnfavoriteRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unfavoriteRspDescriptor = $convert.base64Decode(
    'Cg1VbmZhdm9yaXRlUnNw');

@$core.Deprecated('Use followReqDescriptor instead')
const FollowReq$json = {
  '1': 'FollowReq',
  '2': [
    {'1': 'followerUsername', '3': 1, '4': 1, '5': 9, '10': 'followerUsername'},
    {'1': 'followerAvatar', '3': 2, '4': 1, '5': 9, '10': 'followerAvatar'},
    {'1': 'followeeAppId', '3': 3, '4': 1, '5': 3, '10': 'followeeAppId'},
    {'1': 'followeeUserId', '3': 4, '4': 1, '5': 3, '10': 'followeeUserId'},
    {'1': 'followeeAppUserId', '3': 5, '4': 1, '5': 9, '10': 'followeeAppUserId'},
    {'1': 'followeeUsername', '3': 6, '4': 1, '5': 9, '10': 'followeeUsername'},
    {'1': 'followeeAvatar', '3': 7, '4': 1, '5': 9, '10': 'followeeAvatar'},
  ],
};

/// Descriptor for `FollowReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followReqDescriptor = $convert.base64Decode(
    'CglGb2xsb3dSZXESKgoQZm9sbG93ZXJVc2VybmFtZRgBIAEoCVIQZm9sbG93ZXJVc2VybmFtZR'
    'ImCg5mb2xsb3dlckF2YXRhchgCIAEoCVIOZm9sbG93ZXJBdmF0YXISJAoNZm9sbG93ZWVBcHBJ'
    'ZBgDIAEoA1INZm9sbG93ZWVBcHBJZBImCg5mb2xsb3dlZVVzZXJJZBgEIAEoA1IOZm9sbG93ZW'
    'VVc2VySWQSLAoRZm9sbG93ZWVBcHBVc2VySWQYBSABKAlSEWZvbGxvd2VlQXBwVXNlcklkEioK'
    'EGZvbGxvd2VlVXNlcm5hbWUYBiABKAlSEGZvbGxvd2VlVXNlcm5hbWUSJgoOZm9sbG93ZWVBdm'
    'F0YXIYByABKAlSDmZvbGxvd2VlQXZhdGFy');

@$core.Deprecated('Use followRspDescriptor instead')
const FollowRsp$json = {
  '1': 'FollowRsp',
};

/// Descriptor for `FollowRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followRspDescriptor = $convert.base64Decode(
    'CglGb2xsb3dSc3A=');

@$core.Deprecated('Use unfollowReqDescriptor instead')
const UnfollowReq$json = {
  '1': 'UnfollowReq',
  '2': [
    {'1': 'followeeAppId', '3': 1, '4': 1, '5': 3, '10': 'followeeAppId'},
    {'1': 'followeeUserId', '3': 2, '4': 1, '5': 3, '10': 'followeeUserId'},
    {'1': 'followeeAppUserId', '3': 3, '4': 1, '5': 9, '10': 'followeeAppUserId'},
  ],
};

/// Descriptor for `UnfollowReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unfollowReqDescriptor = $convert.base64Decode(
    'CgtVbmZvbGxvd1JlcRIkCg1mb2xsb3dlZUFwcElkGAEgASgDUg1mb2xsb3dlZUFwcElkEiYKDm'
    'ZvbGxvd2VlVXNlcklkGAIgASgDUg5mb2xsb3dlZVVzZXJJZBIsChFmb2xsb3dlZUFwcFVzZXJJ'
    'ZBgDIAEoCVIRZm9sbG93ZWVBcHBVc2VySWQ=');

@$core.Deprecated('Use unfollowRspDescriptor instead')
const UnfollowRsp$json = {
  '1': 'UnfollowRsp',
};

/// Descriptor for `UnfollowRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unfollowRspDescriptor = $convert.base64Decode(
    'CgtVbmZvbGxvd1JzcA==');

@$core.Deprecated('Use participateReqDescriptor instead')
const ParticipateReq$json = {
  '1': 'ParticipateReq',
  '2': [
    {'1': 'topicId', '3': 1, '4': 1, '5': 3, '10': 'topicId'},
  ],
};

/// Descriptor for `ParticipateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List participateReqDescriptor = $convert.base64Decode(
    'Cg5QYXJ0aWNpcGF0ZVJlcRIYCgd0b3BpY0lkGAEgASgDUgd0b3BpY0lk');

@$core.Deprecated('Use participateRspDescriptor instead')
const ParticipateRsp$json = {
  '1': 'ParticipateRsp',
};

/// Descriptor for `ParticipateRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List participateRspDescriptor = $convert.base64Decode(
    'Cg5QYXJ0aWNpcGF0ZVJzcA==');

@$core.Deprecated('Use unparticipateReqDescriptor instead')
const UnparticipateReq$json = {
  '1': 'UnparticipateReq',
  '2': [
    {'1': 'topicId', '3': 1, '4': 1, '5': 3, '10': 'topicId'},
  ],
};

/// Descriptor for `UnparticipateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unparticipateReqDescriptor = $convert.base64Decode(
    'ChBVbnBhcnRpY2lwYXRlUmVxEhgKB3RvcGljSWQYASABKANSB3RvcGljSWQ=');

@$core.Deprecated('Use unparticipateRspDescriptor instead')
const UnparticipateRsp$json = {
  '1': 'UnparticipateRsp',
};

/// Descriptor for `UnparticipateRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unparticipateRspDescriptor = $convert.base64Decode(
    'ChBVbnBhcnRpY2lwYXRlUnNw');

@$core.Deprecated('Use postsReqDescriptor instead')
const PostsReq$json = {
  '1': 'PostsReq',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_community.PostsReq.Type', '10': 'type'},
    {'1': 'video', '3': 11, '4': 1, '5': 8, '10': 'video'},
    {'1': 'image', '3': 12, '4': 1, '5': 8, '10': 'image'},
    {'1': 'audio', '3': 13, '4': 1, '5': 8, '10': 'audio'},
    {'1': 'vote', '3': 14, '4': 1, '5': 8, '10': 'vote'},
    {'1': 'link', '3': 15, '4': 1, '5': 8, '10': 'link'},
    {'1': 'order', '3': 21, '4': 1, '5': 14, '6': '.pb_msg_community.PostsReq.Order', '10': 'order'},
    {'1': 'offset', '3': 22, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 23, '4': 1, '5': 3, '10': 'count'},
  ],
  '4': [PostsReq_Type$json, PostsReq_Order$json],
};

@$core.Deprecated('Use postsReqDescriptor instead')
const PostsReq_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'Community', '2': 0},
    {'1': 'Followee', '2': 1},
    {'1': 'Recommend', '2': 2},
  ],
};

@$core.Deprecated('Use postsReqDescriptor instead')
const PostsReq_Order$json = {
  '1': 'Order',
  '2': [
    {'1': 'New', '2': 0},
    {'1': 'Hot', '2': 1},
  ],
};

/// Descriptor for `PostsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postsReqDescriptor = $convert.base64Decode(
    'CghQb3N0c1JlcRIzCgR0eXBlGAEgASgOMh8ucGJfbXNnX2NvbW11bml0eS5Qb3N0c1JlcS5UeX'
    'BlUgR0eXBlEhQKBXZpZGVvGAsgASgIUgV2aWRlbxIUCgVpbWFnZRgMIAEoCFIFaW1hZ2USFAoF'
    'YXVkaW8YDSABKAhSBWF1ZGlvEhIKBHZvdGUYDiABKAhSBHZvdGUSEgoEbGluaxgPIAEoCFIEbG'
    'luaxI2CgVvcmRlchgVIAEoDjIgLnBiX21zZ19jb21tdW5pdHkuUG9zdHNSZXEuT3JkZXJSBW9y'
    'ZGVyEhYKBm9mZnNldBgWIAEoA1IGb2Zmc2V0EhQKBWNvdW50GBcgASgDUgVjb3VudCIyCgRUeX'
    'BlEg0KCUNvbW11bml0eRAAEgwKCEZvbGxvd2VlEAESDQoJUmVjb21tZW5kEAIiGQoFT3JkZXIS'
    'BwoDTmV3EAASBwoDSG90EAE=');

@$core.Deprecated('Use postsRspDescriptor instead')
const PostsRsp$json = {
  '1': 'PostsRsp',
  '2': [
    {'1': 'posts', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Post', '10': 'posts'},
  ],
};

/// Descriptor for `PostsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postsRspDescriptor = $convert.base64Decode(
    'CghQb3N0c1JzcBIsCgVwb3N0cxgBIAMoCzIWLnBiX21zZ19jb21tdW5pdHkuUG9zdFIFcG9zdH'
    'M=');

@$core.Deprecated('Use postDetailReqDescriptor instead')
const PostDetailReq$json = {
  '1': 'PostDetailReq',
  '2': [
    {'1': 'postId', '3': 1, '4': 1, '5': 3, '10': 'postId'},
  ],
};

/// Descriptor for `PostDetailReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDetailReqDescriptor = $convert.base64Decode(
    'Cg1Qb3N0RGV0YWlsUmVxEhYKBnBvc3RJZBgBIAEoA1IGcG9zdElk');

@$core.Deprecated('Use postDetailRspDescriptor instead')
const PostDetailRsp$json = {
  '1': 'PostDetailRsp',
  '2': [
    {'1': 'post', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Post', '10': 'post'},
    {'1': 'comments', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_community.Comment', '10': 'comments'},
  ],
};

/// Descriptor for `PostDetailRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDetailRspDescriptor = $convert.base64Decode(
    'Cg1Qb3N0RGV0YWlsUnNwEioKBHBvc3QYASABKAsyFi5wYl9tc2dfY29tbXVuaXR5LlBvc3RSBH'
    'Bvc3QSNQoIY29tbWVudHMYAiADKAsyGS5wYl9tc2dfY29tbXVuaXR5LkNvbW1lbnRSCGNvbW1l'
    'bnRz');

@$core.Deprecated('Use commentsReqDescriptor instead')
const CommentsReq$json = {
  '1': 'CommentsReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
    {'1': 'order', '3': 10, '4': 1, '5': 14, '6': '.pb_msg_community.CommentsReq.Order', '10': 'order'},
    {'1': 'offset', '3': 11, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 12, '4': 1, '5': 3, '10': 'count'},
  ],
  '4': [CommentsReq_Order$json],
};

@$core.Deprecated('Use commentsReqDescriptor instead')
const CommentsReq_Order$json = {
  '1': 'Order',
  '2': [
    {'1': 'New', '2': 0},
    {'1': 'Hot', '2': 1},
  ],
};

/// Descriptor for `CommentsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentsReqDescriptor = $convert.base64Decode(
    'CgtDb21tZW50c1JlcRIUCgVyZWZJZBgBIAEoA1IFcmVmSWQSGAoHcmVmVHlwZRgCIAEoBVIHcm'
    'VmVHlwZRI5CgVvcmRlchgKIAEoDjIjLnBiX21zZ19jb21tdW5pdHkuQ29tbWVudHNSZXEuT3Jk'
    'ZXJSBW9yZGVyEhYKBm9mZnNldBgLIAEoA1IGb2Zmc2V0EhQKBWNvdW50GAwgASgDUgVjb3VudC'
    'IZCgVPcmRlchIHCgNOZXcQABIHCgNIb3QQAQ==');

@$core.Deprecated('Use commentsRspDescriptor instead')
const CommentsRsp$json = {
  '1': 'CommentsRsp',
  '2': [
    {'1': 'comments', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Comment', '10': 'comments'},
  ],
};

/// Descriptor for `CommentsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentsRspDescriptor = $convert.base64Decode(
    'CgtDb21tZW50c1JzcBI1Cghjb21tZW50cxgBIAMoCzIZLnBiX21zZ19jb21tdW5pdHkuQ29tbW'
    'VudFIIY29tbWVudHM=');

@$core.Deprecated('Use commentDetailReqDescriptor instead')
const CommentDetailReq$json = {
  '1': 'CommentDetailReq',
  '2': [
    {'1': 'commentId', '3': 1, '4': 1, '5': 3, '10': 'commentId'},
  ],
};

/// Descriptor for `CommentDetailReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDetailReqDescriptor = $convert.base64Decode(
    'ChBDb21tZW50RGV0YWlsUmVxEhwKCWNvbW1lbnRJZBgBIAEoA1IJY29tbWVudElk');

@$core.Deprecated('Use commentDetailRspDescriptor instead')
const CommentDetailRsp$json = {
  '1': 'CommentDetailRsp',
  '2': [
    {'1': 'comment', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Comment', '10': 'comment'},
    {'1': 'replies', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_community.Reply', '10': 'replies'},
  ],
};

/// Descriptor for `CommentDetailRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDetailRspDescriptor = $convert.base64Decode(
    'ChBDb21tZW50RGV0YWlsUnNwEjMKB2NvbW1lbnQYASABKAsyGS5wYl9tc2dfY29tbXVuaXR5Lk'
    'NvbW1lbnRSB2NvbW1lbnQSMQoHcmVwbGllcxgCIAMoCzIXLnBiX21zZ19jb21tdW5pdHkuUmVw'
    'bHlSB3JlcGxpZXM=');

@$core.Deprecated('Use repliesReqDescriptor instead')
const RepliesReq$json = {
  '1': 'RepliesReq',
  '2': [
    {'1': 'commentId', '3': 1, '4': 1, '5': 3, '10': 'commentId'},
    {'1': 'talkId', '3': 2, '4': 1, '5': 3, '10': 'talkId'},
    {'1': 'order', '3': 10, '4': 1, '5': 14, '6': '.pb_msg_community.RepliesReq.Order', '10': 'order'},
    {'1': 'offset', '3': 11, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 12, '4': 1, '5': 3, '10': 'count'},
  ],
  '4': [RepliesReq_Order$json],
};

@$core.Deprecated('Use repliesReqDescriptor instead')
const RepliesReq_Order$json = {
  '1': 'Order',
  '2': [
    {'1': 'New', '2': 0},
    {'1': 'Hot', '2': 1},
  ],
};

/// Descriptor for `RepliesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repliesReqDescriptor = $convert.base64Decode(
    'CgpSZXBsaWVzUmVxEhwKCWNvbW1lbnRJZBgBIAEoA1IJY29tbWVudElkEhYKBnRhbGtJZBgCIA'
    'EoA1IGdGFsa0lkEjgKBW9yZGVyGAogASgOMiIucGJfbXNnX2NvbW11bml0eS5SZXBsaWVzUmVx'
    'Lk9yZGVyUgVvcmRlchIWCgZvZmZzZXQYCyABKANSBm9mZnNldBIUCgVjb3VudBgMIAEoA1IFY2'
    '91bnQiGQoFT3JkZXISBwoDTmV3EAASBwoDSG90EAE=');

@$core.Deprecated('Use repliesRspDescriptor instead')
const RepliesRsp$json = {
  '1': 'RepliesRsp',
  '2': [
    {'1': 'replies', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Reply', '10': 'replies'},
  ],
};

/// Descriptor for `RepliesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repliesRspDescriptor = $convert.base64Decode(
    'CgpSZXBsaWVzUnNwEjEKB3JlcGxpZXMYASADKAsyFy5wYl9tc2dfY29tbXVuaXR5LlJlcGx5Ug'
    'dyZXBsaWVz');

@$core.Deprecated('Use barragesReqDescriptor instead')
const BarragesReq$json = {
  '1': 'BarragesReq',
  '2': [
    {'1': 'refId', '3': 1, '4': 1, '5': 3, '10': 'refId'},
    {'1': 'refType', '3': 2, '4': 1, '5': 5, '10': 'refType'},
    {'1': 'playAt', '3': 3, '4': 1, '5': 3, '10': 'playAt'},
  ],
};

/// Descriptor for `BarragesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List barragesReqDescriptor = $convert.base64Decode(
    'CgtCYXJyYWdlc1JlcRIUCgVyZWZJZBgBIAEoA1IFcmVmSWQSGAoHcmVmVHlwZRgCIAEoBVIHcm'
    'VmVHlwZRIWCgZwbGF5QXQYAyABKANSBnBsYXlBdA==');

@$core.Deprecated('Use barragesRspDescriptor instead')
const BarragesRsp$json = {
  '1': 'BarragesRsp',
  '2': [
    {'1': 'barrages', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Barrage', '10': 'barrages'},
  ],
};

/// Descriptor for `BarragesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List barragesRspDescriptor = $convert.base64Decode(
    'CgtCYXJyYWdlc1JzcBI1CghiYXJyYWdlcxgBIAMoCzIZLnBiX21zZ19jb21tdW5pdHkuQmFycm'
    'FnZVIIYmFycmFnZXM=');

@$core.Deprecated('Use commentRefDescriptor instead')
const CommentRef$json = {
  '1': 'CommentRef',
  '2': [
    {'1': 'comment', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Comment', '10': 'comment'},
    {'1': 'post', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_community.Post', '10': 'post'},
  ],
};

/// Descriptor for `CommentRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentRefDescriptor = $convert.base64Decode(
    'CgpDb21tZW50UmVmEjMKB2NvbW1lbnQYASABKAsyGS5wYl9tc2dfY29tbXVuaXR5LkNvbW1lbn'
    'RSB2NvbW1lbnQSKgoEcG9zdBgCIAEoCzIWLnBiX21zZ19jb21tdW5pdHkuUG9zdFIEcG9zdA==');

@$core.Deprecated('Use videoRefDescriptor instead')
const VideoRef$json = {
  '1': 'VideoRef',
  '2': [
    {'1': 'video', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Video', '10': 'video'},
    {'1': 'post', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_community.Post', '10': 'post'},
    {'1': 'comment', '3': 3, '4': 1, '5': 11, '6': '.pb_msg_community.CommentRef', '10': 'comment'},
  ],
};

/// Descriptor for `VideoRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoRefDescriptor = $convert.base64Decode(
    'CghWaWRlb1JlZhItCgV2aWRlbxgBIAEoCzIXLnBiX21zZ19jb21tdW5pdHkuVmlkZW9SBXZpZG'
    'VvEioKBHBvc3QYAiABKAsyFi5wYl9tc2dfY29tbXVuaXR5LlBvc3RSBHBvc3QSNgoHY29tbWVu'
    'dBgDIAEoCzIcLnBiX21zZ19jb21tdW5pdHkuQ29tbWVudFJlZlIHY29tbWVudA==');

@$core.Deprecated('Use ballotRefDescriptor instead')
const BallotRef$json = {
  '1': 'BallotRef',
  '2': [
    {'1': 'ballot', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_community.Ballot', '10': 'ballot'},
    {'1': 'vote', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_community.Vote', '10': 'vote'},
    {'1': 'post', '3': 3, '4': 1, '5': 11, '6': '.pb_msg_community.Post', '10': 'post'},
  ],
};

/// Descriptor for `BallotRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ballotRefDescriptor = $convert.base64Decode(
    'CglCYWxsb3RSZWYSMAoGYmFsbG90GAEgASgLMhgucGJfbXNnX2NvbW11bml0eS5CYWxsb3RSBm'
    'JhbGxvdBIqCgR2b3RlGAIgASgLMhYucGJfbXNnX2NvbW11bml0eS5Wb3RlUgR2b3RlEioKBHBv'
    'c3QYAyABKAsyFi5wYl9tc2dfY29tbXVuaXR5LlBvc3RSBHBvc3Q=');

@$core.Deprecated('Use userPostsReqDescriptor instead')
const UserPostsReq$json = {
  '1': 'UserPostsReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserPostsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPostsReqDescriptor = $convert.base64Decode(
    'CgxVc2VyUG9zdHNSZXESFgoGb2Zmc2V0GAEgASgDUgZvZmZzZXQSFAoFY291bnQYAiABKANSBW'
    'NvdW50EhYKBnVzZXJJZBgDIAEoA1IGdXNlcklk');

@$core.Deprecated('Use userPostsRspDescriptor instead')
const UserPostsRsp$json = {
  '1': 'UserPostsRsp',
  '2': [
    {'1': 'posts', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Post', '10': 'posts'},
  ],
};

/// Descriptor for `UserPostsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPostsRspDescriptor = $convert.base64Decode(
    'CgxVc2VyUG9zdHNSc3ASLAoFcG9zdHMYASADKAsyFi5wYl9tc2dfY29tbXVuaXR5LlBvc3RSBX'
    'Bvc3Rz');

@$core.Deprecated('Use userCommentsReqDescriptor instead')
const UserCommentsReq$json = {
  '1': 'UserCommentsReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserCommentsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCommentsReqDescriptor = $convert.base64Decode(
    'Cg9Vc2VyQ29tbWVudHNSZXESFgoGb2Zmc2V0GAEgASgDUgZvZmZzZXQSFAoFY291bnQYAiABKA'
    'NSBWNvdW50EhYKBnVzZXJJZBgDIAEoA1IGdXNlcklk');

@$core.Deprecated('Use userCommentsRspDescriptor instead')
const UserCommentsRsp$json = {
  '1': 'UserCommentsRsp',
  '2': [
    {'1': 'comments', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.CommentRef', '10': 'comments'},
  ],
};

/// Descriptor for `UserCommentsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCommentsRspDescriptor = $convert.base64Decode(
    'Cg9Vc2VyQ29tbWVudHNSc3ASOAoIY29tbWVudHMYASADKAsyHC5wYl9tc2dfY29tbXVuaXR5Lk'
    'NvbW1lbnRSZWZSCGNvbW1lbnRz');

@$core.Deprecated('Use userWatchsReqDescriptor instead')
const UserWatchsReq$json = {
  '1': 'UserWatchsReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserWatchsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userWatchsReqDescriptor = $convert.base64Decode(
    'Cg1Vc2VyV2F0Y2hzUmVxEhYKBm9mZnNldBgBIAEoA1IGb2Zmc2V0EhQKBWNvdW50GAIgASgDUg'
    'Vjb3VudBIWCgZ1c2VySWQYAyABKANSBnVzZXJJZA==');

@$core.Deprecated('Use userWatchsRspDescriptor instead')
const UserWatchsRsp$json = {
  '1': 'UserWatchsRsp',
  '2': [
    {'1': 'comments', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.CommentRef', '10': 'comments'},
    {'1': 'posts', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_community.Post', '10': 'posts'},
  ],
};

/// Descriptor for `UserWatchsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userWatchsRspDescriptor = $convert.base64Decode(
    'Cg1Vc2VyV2F0Y2hzUnNwEjgKCGNvbW1lbnRzGAEgAygLMhwucGJfbXNnX2NvbW11bml0eS5Db2'
    '1tZW50UmVmUghjb21tZW50cxIsCgVwb3N0cxgCIAMoCzIWLnBiX21zZ19jb21tdW5pdHkuUG9z'
    'dFIFcG9zdHM=');

@$core.Deprecated('Use userLikesReqDescriptor instead')
const UserLikesReq$json = {
  '1': 'UserLikesReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserLikesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLikesReqDescriptor = $convert.base64Decode(
    'CgxVc2VyTGlrZXNSZXESFgoGb2Zmc2V0GAEgASgDUgZvZmZzZXQSFAoFY291bnQYAiABKANSBW'
    'NvdW50EhYKBnVzZXJJZBgDIAEoA1IGdXNlcklk');

@$core.Deprecated('Use userLikesRspDescriptor instead')
const UserLikesRsp$json = {
  '1': 'UserLikesRsp',
  '2': [
    {'1': 'posts', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Post', '10': 'posts'},
    {'1': 'comments', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_community.CommentRef', '10': 'comments'},
    {'1': 'videos', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_community.VideoRef', '10': 'videos'},
  ],
};

/// Descriptor for `UserLikesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLikesRspDescriptor = $convert.base64Decode(
    'CgxVc2VyTGlrZXNSc3ASLAoFcG9zdHMYASADKAsyFi5wYl9tc2dfY29tbXVuaXR5LlBvc3RSBX'
    'Bvc3RzEjgKCGNvbW1lbnRzGAIgAygLMhwucGJfbXNnX2NvbW11bml0eS5Db21tZW50UmVmUghj'
    'b21tZW50cxIyCgZ2aWRlb3MYAyADKAsyGi5wYl9tc2dfY29tbXVuaXR5LlZpZGVvUmVmUgZ2aW'
    'Rlb3M=');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'appId', '3': 1, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'userId', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'appUserId', '3': 3, '4': 1, '5': 9, '10': 'appUserId'},
    {'1': 'username', '3': 4, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 5, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhQKBWFwcElkGAEgASgDUgVhcHBJZBIWCgZ1c2VySWQYAiABKANSBnVzZXJJZBIcCg'
    'lhcHBVc2VySWQYAyABKAlSCWFwcFVzZXJJZBIaCgh1c2VybmFtZRgEIAEoCVIIdXNlcm5hbWUS'
    'FgoGYXZhdGFyGAUgASgJUgZhdmF0YXI=');

@$core.Deprecated('Use userFollowersReqDescriptor instead')
const UserFollowersReq$json = {
  '1': 'UserFollowersReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserFollowersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFollowersReqDescriptor = $convert.base64Decode(
    'ChBVc2VyRm9sbG93ZXJzUmVxEhYKBm9mZnNldBgBIAEoA1IGb2Zmc2V0EhQKBWNvdW50GAIgAS'
    'gDUgVjb3VudBIWCgZ1c2VySWQYAyABKANSBnVzZXJJZA==');

@$core.Deprecated('Use userFollowersRspDescriptor instead')
const UserFollowersRsp$json = {
  '1': 'UserFollowersRsp',
  '2': [
    {'1': 'followers', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.User', '10': 'followers'},
  ],
};

/// Descriptor for `UserFollowersRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFollowersRspDescriptor = $convert.base64Decode(
    'ChBVc2VyRm9sbG93ZXJzUnNwEjQKCWZvbGxvd2VycxgBIAMoCzIWLnBiX21zZ19jb21tdW5pdH'
    'kuVXNlclIJZm9sbG93ZXJz');

@$core.Deprecated('Use userFolloweesReqDescriptor instead')
const UserFolloweesReq$json = {
  '1': 'UserFolloweesReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserFolloweesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFolloweesReqDescriptor = $convert.base64Decode(
    'ChBVc2VyRm9sbG93ZWVzUmVxEhYKBm9mZnNldBgBIAEoA1IGb2Zmc2V0EhQKBWNvdW50GAIgAS'
    'gDUgVjb3VudBIWCgZ1c2VySWQYAyABKANSBnVzZXJJZA==');

@$core.Deprecated('Use userFolloweesRspDescriptor instead')
const UserFolloweesRsp$json = {
  '1': 'UserFolloweesRsp',
  '2': [
    {'1': 'followees', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.User', '10': 'followees'},
  ],
};

/// Descriptor for `UserFolloweesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFolloweesRspDescriptor = $convert.base64Decode(
    'ChBVc2VyRm9sbG93ZWVzUnNwEjQKCWZvbGxvd2VlcxgBIAMoCzIWLnBiX21zZ19jb21tdW5pdH'
    'kuVXNlclIJZm9sbG93ZWVz');

@$core.Deprecated('Use userFavoritesReqDescriptor instead')
const UserFavoritesReq$json = {
  '1': 'UserFavoritesReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserFavoritesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFavoritesReqDescriptor = $convert.base64Decode(
    'ChBVc2VyRmF2b3JpdGVzUmVxEhYKBm9mZnNldBgBIAEoA1IGb2Zmc2V0EhQKBWNvdW50GAIgAS'
    'gDUgVjb3VudBIWCgZ1c2VySWQYAyABKANSBnVzZXJJZA==');

@$core.Deprecated('Use userFavoritesRspDescriptor instead')
const UserFavoritesRsp$json = {
  '1': 'UserFavoritesRsp',
  '2': [
    {'1': 'posts', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Post', '10': 'posts'},
  ],
};

/// Descriptor for `UserFavoritesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFavoritesRspDescriptor = $convert.base64Decode(
    'ChBVc2VyRmF2b3JpdGVzUnNwEiwKBXBvc3RzGAEgAygLMhYucGJfbXNnX2NvbW11bml0eS5Qb3'
    'N0UgVwb3N0cw==');

@$core.Deprecated('Use userParticipatesReqDescriptor instead')
const UserParticipatesReq$json = {
  '1': 'UserParticipatesReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserParticipatesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userParticipatesReqDescriptor = $convert.base64Decode(
    'ChNVc2VyUGFydGljaXBhdGVzUmVxEhYKBm9mZnNldBgBIAEoA1IGb2Zmc2V0EhQKBWNvdW50GA'
    'IgASgDUgVjb3VudBIWCgZ1c2VySWQYAyABKANSBnVzZXJJZA==');

@$core.Deprecated('Use userParticipatesRspDescriptor instead')
const UserParticipatesRsp$json = {
  '1': 'UserParticipatesRsp',
  '2': [
    {'1': 'topics', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Topic', '10': 'topics'},
  ],
};

/// Descriptor for `UserParticipatesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userParticipatesRspDescriptor = $convert.base64Decode(
    'ChNVc2VyUGFydGljaXBhdGVzUnNwEi8KBnRvcGljcxgBIAMoCzIXLnBiX21zZ19jb21tdW5pdH'
    'kuVG9waWNSBnRvcGljcw==');

@$core.Deprecated('Use userBallotsReqDescriptor instead')
const UserBallotsReq$json = {
  '1': 'UserBallotsReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserBallotsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBallotsReqDescriptor = $convert.base64Decode(
    'Cg5Vc2VyQmFsbG90c1JlcRIWCgZvZmZzZXQYASABKANSBm9mZnNldBIUCgVjb3VudBgCIAEoA1'
    'IFY291bnQSFgoGdXNlcklkGAMgASgDUgZ1c2VySWQ=');

@$core.Deprecated('Use userBallotsRspDescriptor instead')
const UserBallotsRsp$json = {
  '1': 'UserBallotsRsp',
  '2': [
    {'1': 'ballots', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.BallotRef', '10': 'ballots'},
  ],
};

/// Descriptor for `UserBallotsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBallotsRspDescriptor = $convert.base64Decode(
    'Cg5Vc2VyQmFsbG90c1JzcBI1CgdiYWxsb3RzGAEgAygLMhsucGJfbXNnX2NvbW11bml0eS5CYW'
    'xsb3RSZWZSB2JhbGxvdHM=');

@$core.Deprecated('Use userFilesReqDescriptor instead')
const UserFilesReq$json = {
  '1': 'UserFilesReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserFilesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFilesReqDescriptor = $convert.base64Decode(
    'CgxVc2VyRmlsZXNSZXESFgoGb2Zmc2V0GAEgASgDUgZvZmZzZXQSFAoFY291bnQYAiABKANSBW'
    'NvdW50EhYKBnVzZXJJZBgDIAEoA1IGdXNlcklk');

@$core.Deprecated('Use userFilesRspDescriptor instead')
const UserFilesRsp$json = {
  '1': 'UserFilesRsp',
  '2': [
    {'1': 'videos', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_community.Video', '10': 'videos'},
    {'1': 'images', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_community.Image', '10': 'images'},
    {'1': 'audios', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_community.Audio', '10': 'audios'},
  ],
};

/// Descriptor for `UserFilesRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFilesRspDescriptor = $convert.base64Decode(
    'CgxVc2VyRmlsZXNSc3ASLwoGdmlkZW9zGAEgAygLMhcucGJfbXNnX2NvbW11bml0eS5WaWRlb1'
    'IGdmlkZW9zEi8KBmltYWdlcxgCIAMoCzIXLnBiX21zZ19jb21tdW5pdHkuSW1hZ2VSBmltYWdl'
    'cxIvCgZhdWRpb3MYAyADKAsyFy5wYl9tc2dfY29tbXVuaXR5LkF1ZGlvUgZhdWRpb3M=');

@$core.Deprecated('Use userAwardsReqDescriptor instead')
const UserAwardsReq$json = {
  '1': 'UserAwardsReq',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'userId', '3': 3, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserAwardsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAwardsReqDescriptor = $convert.base64Decode(
    'Cg1Vc2VyQXdhcmRzUmVxEhYKBm9mZnNldBgBIAEoA1IGb2Zmc2V0EhQKBWNvdW50GAIgASgDUg'
    'Vjb3VudBIWCgZ1c2VySWQYAyABKANSBnVzZXJJZA==');

@$core.Deprecated('Use userAwardsRspDescriptor instead')
const UserAwardsRsp$json = {
  '1': 'UserAwardsRsp',
};

/// Descriptor for `UserAwardsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAwardsRspDescriptor = $convert.base64Decode(
    'Cg1Vc2VyQXdhcmRzUnNw');

@$core.Deprecated('Use userInfoReqDescriptor instead')
const UserInfoReq$json = {
  '1': 'UserInfoReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `UserInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoReqDescriptor = $convert.base64Decode(
    'CgtVc2VySW5mb1JlcRIWCgZ1c2VySWQYASABKANSBnVzZXJJZA==');

@$core.Deprecated('Use userInfoRspDescriptor instead')
const UserInfoRsp$json = {
  '1': 'UserInfoRsp',
  '2': [
    {'1': 'like', '3': 1, '4': 1, '5': 9, '10': 'like'},
    {'1': 'follow', '3': 2, '4': 1, '5': 9, '10': 'follow'},
    {'1': 'follower', '3': 3, '4': 1, '5': 9, '10': 'follower'},
  ],
};

/// Descriptor for `UserInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoRspDescriptor = $convert.base64Decode(
    'CgtVc2VySW5mb1JzcBISCgRsaWtlGAEgASgJUgRsaWtlEhYKBmZvbGxvdxgCIAEoCVIGZm9sbG'
    '93EhoKCGZvbGxvd2VyGAMgASgJUghmb2xsb3dlcg==');

