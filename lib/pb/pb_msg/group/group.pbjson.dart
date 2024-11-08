//
//  Generated code. Do not modify.
//  source: pb_msg/group/group.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use groupTypeDescriptor instead')
const GroupType$json = {
  '1': 'GroupType',
  '2': [
    {'1': 'Comm', '2': 0},
    {'1': 'ChatRoom', '2': 1},
    {'1': 'Channel', '2': 2},
    {'1': 'SystemNotice', '2': 3},
  ],
};

/// Descriptor for `GroupType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List groupTypeDescriptor = $convert.base64Decode(
    'CglHcm91cFR5cGUSCAoEQ29tbRAAEgwKCENoYXRSb29tEAESCwoHQ2hhbm5lbBACEhAKDFN5c3'
    'RlbU5vdGljZRAD');

@$core.Deprecated('Use applyRspStatusDescriptor instead')
const ApplyRspStatus$json = {
  '1': 'ApplyRspStatus',
  '2': [
    {'1': 'WaitConfirm', '2': 0},
    {'1': 'SuccessAddedToGroup', '2': 1},
  ],
};

/// Descriptor for `ApplyRspStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List applyRspStatusDescriptor = $convert.base64Decode(
    'Cg5BcHBseVJzcFN0YXR1cxIPCgtXYWl0Q29uZmlybRAAEhcKE1N1Y2Nlc3NBZGRlZFRvR3JvdX'
    'AQAQ==');

@$core.Deprecated('Use enterGroupTypeDescriptor instead')
const EnterGroupType$json = {
  '1': 'EnterGroupType',
  '2': [
    {'1': 'Create', '2': 0},
    {'1': 'Apply', '2': 1},
    {'1': 'Invite', '2': 2},
    {'1': 'ScanCode', '2': 3},
  ],
};

/// Descriptor for `EnterGroupType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List enterGroupTypeDescriptor = $convert.base64Decode(
    'Cg5FbnRlckdyb3VwVHlwZRIKCgZDcmVhdGUQABIJCgVBcHBseRABEgoKBkludml0ZRACEgwKCF'
    'NjYW5Db2RlEAM=');

@$core.Deprecated('Use createGroupReqDescriptor instead')
const CreateGroupReq$json = {
  '1': 'CreateGroupReq',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'memberIds', '3': 2, '4': 3, '5': 3, '10': 'memberIds'},
    {'1': 'memberCountLimit', '3': 4, '4': 1, '5': 5, '10': 'memberCountLimit'},
    {'1': 'groupType', '3': 5, '4': 1, '5': 14, '6': '.pb_msg_group.GroupType', '10': 'groupType'},
  ],
};

/// Descriptor for `CreateGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGroupReqDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVHcm91cFJlcRISCgRuYW1lGAEgASgJUgRuYW1lEhwKCW1lbWJlcklkcxgCIAMoA1'
    'IJbWVtYmVySWRzEioKEG1lbWJlckNvdW50TGltaXQYBCABKAVSEG1lbWJlckNvdW50TGltaXQS'
    'NQoJZ3JvdXBUeXBlGAUgASgOMhcucGJfbXNnX2dyb3VwLkdyb3VwVHlwZVIJZ3JvdXBUeXBl');

@$core.Deprecated('Use createGroupRspDescriptor instead')
const CreateGroupRsp$json = {
  '1': 'CreateGroupRsp',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'memberCountLimit', '3': 3, '4': 1, '5': 5, '10': 'memberCountLimit'},
  ],
};

/// Descriptor for `CreateGroupRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGroupRspDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVHcm91cFJzcBIYCgdncm91cElkGAEgASgDUgdncm91cElkEioKEG1lbWJlckNvdW'
    '50TGltaXQYAyABKAVSEG1lbWJlckNvdW50TGltaXQ=');

@$core.Deprecated('Use createGroupNotifyDescriptor instead')
const CreateGroupNotify$json = {
  '1': 'CreateGroupNotify',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateGroupNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGroupNotifyDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVHcm91cE5vdGlmeRISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use inviteReqDescriptor instead')
const InviteReq$json = {
  '1': 'InviteReq',
  '2': [
    {'1': 'inviteeIds', '3': 1, '4': 3, '5': 3, '10': 'inviteeIds'},
    {'1': 'shareMsgCount', '3': 2, '4': 1, '5': 3, '10': 'shareMsgCount'},
  ],
};

/// Descriptor for `InviteReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteReqDescriptor = $convert.base64Decode(
    'CglJbnZpdGVSZXESHgoKaW52aXRlZUlkcxgBIAMoA1IKaW52aXRlZUlkcxIkCg1zaGFyZU1zZ0'
    'NvdW50GAIgASgDUg1zaGFyZU1zZ0NvdW50');

@$core.Deprecated('Use inviteRspDescriptor instead')
const InviteRsp$json = {
  '1': 'InviteRsp',
};

/// Descriptor for `InviteRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteRspDescriptor = $convert.base64Decode(
    'CglJbnZpdGVSc3A=');

@$core.Deprecated('Use inviteAnswerReqDescriptor instead')
const InviteAnswerReq$json = {
  '1': 'InviteAnswerReq',
  '2': [
    {'1': 'agree', '3': 1, '4': 1, '5': 8, '10': 'agree'},
  ],
};

/// Descriptor for `InviteAnswerReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteAnswerReqDescriptor = $convert.base64Decode(
    'Cg9JbnZpdGVBbnN3ZXJSZXESFAoFYWdyZWUYASABKAhSBWFncmVl');

@$core.Deprecated('Use inviteAnswerRspDescriptor instead')
const InviteAnswerRsp$json = {
  '1': 'InviteAnswerRsp',
};

/// Descriptor for `InviteAnswerRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteAnswerRspDescriptor = $convert.base64Decode(
    'Cg9JbnZpdGVBbnN3ZXJSc3A=');

@$core.Deprecated('Use inviteeAgreedNotifyDescriptor instead')
const InviteeAgreedNotify$json = {
  '1': 'InviteeAgreedNotify',
  '2': [
    {'1': 'inviterId', '3': 1, '4': 1, '5': 3, '10': 'inviterId'},
    {'1': 'inviteeId', '3': 2, '4': 1, '5': 3, '10': 'inviteeId'},
    {'1': 'memberCount', '3': 3, '4': 1, '5': 5, '10': 'memberCount'},
  ],
};

/// Descriptor for `InviteeAgreedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteeAgreedNotifyDescriptor = $convert.base64Decode(
    'ChNJbnZpdGVlQWdyZWVkTm90aWZ5EhwKCWludml0ZXJJZBgBIAEoA1IJaW52aXRlcklkEhwKCW'
    'ludml0ZWVJZBgCIAEoA1IJaW52aXRlZUlkEiAKC21lbWJlckNvdW50GAMgASgFUgttZW1iZXJD'
    'b3VudA==');

@$core.Deprecated('Use inviteesAgreedNotifyDescriptor instead')
const InviteesAgreedNotify$json = {
  '1': 'InviteesAgreedNotify',
  '2': [
    {'1': 'inviterId', '3': 1, '4': 1, '5': 3, '10': 'inviterId'},
    {'1': 'inviteeIds', '3': 2, '4': 3, '5': 3, '10': 'inviteeIds'},
    {'1': 'inviteeNames', '3': 3, '4': 3, '5': 9, '10': 'inviteeNames'},
    {'1': 'memberCount', '3': 4, '4': 1, '5': 5, '10': 'memberCount'},
  ],
};

/// Descriptor for `InviteesAgreedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteesAgreedNotifyDescriptor = $convert.base64Decode(
    'ChRJbnZpdGVlc0FncmVlZE5vdGlmeRIcCglpbnZpdGVySWQYASABKANSCWludml0ZXJJZBIeCg'
    'ppbnZpdGVlSWRzGAIgAygDUgppbnZpdGVlSWRzEiIKDGludml0ZWVOYW1lcxgDIAMoCVIMaW52'
    'aXRlZU5hbWVzEiAKC21lbWJlckNvdW50GAQgASgFUgttZW1iZXJDb3VudA==');

@$core.Deprecated('Use applyReqDescriptor instead')
const ApplyReq$json = {
  '1': 'ApplyReq',
  '2': [
    {'1': 'scanCodeKey', '3': 1, '4': 1, '5': 9, '10': 'scanCodeKey'},
  ],
};

/// Descriptor for `ApplyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyReqDescriptor = $convert.base64Decode(
    'CghBcHBseVJlcRIgCgtzY2FuQ29kZUtleRgBIAEoCVILc2NhbkNvZGVLZXk=');

@$core.Deprecated('Use applyRspDescriptor instead')
const ApplyRsp$json = {
  '1': 'ApplyRsp',
  '2': [
    {'1': 'scanCodeKey', '3': 1, '4': 1, '5': 9, '10': 'scanCodeKey'},
    {'1': 'applyStatus', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_group.ApplyRspStatus', '10': 'applyStatus'},
  ],
};

/// Descriptor for `ApplyRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyRspDescriptor = $convert.base64Decode(
    'CghBcHBseVJzcBIgCgtzY2FuQ29kZUtleRgBIAEoCVILc2NhbkNvZGVLZXkSPgoLYXBwbHlTdG'
    'F0dXMYAiABKA4yHC5wYl9tc2dfZ3JvdXAuQXBwbHlSc3BTdGF0dXNSC2FwcGx5U3RhdHVz');

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
};

/// Descriptor for `ApplyAnswerRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyAnswerRspDescriptor = $convert.base64Decode(
    'Cg5BcHBseUFuc3dlclJzcA==');

@$core.Deprecated('Use approverApprovedNotifyDescriptor instead')
const approverApprovedNotify$json = {
  '1': 'approverApprovedNotify',
  '2': [
    {'1': 'applicantId', '3': 1, '4': 1, '5': 3, '10': 'applicantId'},
    {'1': 'approverId', '3': 2, '4': 1, '5': 3, '10': 'approverId'},
    {'1': 'enterGroutType', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_group.EnterGroupType', '10': 'enterGroutType'},
    {'1': 'memberCount', '3': 4, '4': 1, '5': 5, '10': 'memberCount'},
  ],
};

/// Descriptor for `approverApprovedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List approverApprovedNotifyDescriptor = $convert.base64Decode(
    'ChZhcHByb3ZlckFwcHJvdmVkTm90aWZ5EiAKC2FwcGxpY2FudElkGAEgASgDUgthcHBsaWNhbn'
    'RJZBIeCgphcHByb3ZlcklkGAIgASgDUgphcHByb3ZlcklkEkQKDmVudGVyR3JvdXRUeXBlGAMg'
    'ASgOMhwucGJfbXNnX2dyb3VwLkVudGVyR3JvdXBUeXBlUg5lbnRlckdyb3V0VHlwZRIgCgttZW'
    '1iZXJDb3VudBgEIAEoBVILbWVtYmVyQ291bnQ=');

@$core.Deprecated('Use groupDescriptor instead')
const Group$json = {
  '1': 'Group',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'top', '3': 4, '4': 1, '5': 8, '10': 'top'},
    {'1': 'newMemberRemindClosed', '3': 5, '4': 1, '5': 8, '10': 'newMemberRemindClosed'},
    {'1': 'groupType', '3': 6, '4': 1, '5': 14, '6': '.pb_msg_group.GroupType', '10': 'groupType'},
  ],
};

/// Descriptor for `Group`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupDescriptor = $convert.base64Decode(
    'CgVHcm91cBIYCgdncm91cElkGAEgASgDUgdncm91cElkEhIKBG5hbWUYAiABKAlSBG5hbWUSFg'
    'oGYXZhdGFyGAMgASgJUgZhdmF0YXISEAoDdG9wGAQgASgIUgN0b3ASNAoVbmV3TWVtYmVyUmVt'
    'aW5kQ2xvc2VkGAUgASgIUhVuZXdNZW1iZXJSZW1pbmRDbG9zZWQSNQoJZ3JvdXBUeXBlGAYgAS'
    'gOMhcucGJfbXNnX2dyb3VwLkdyb3VwVHlwZVIJZ3JvdXBUeXBl');

@$core.Deprecated('Use groupsReqDescriptor instead')
const GroupsReq$json = {
  '1': 'GroupsReq',
};

/// Descriptor for `GroupsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupsReqDescriptor = $convert.base64Decode(
    'CglHcm91cHNSZXE=');

@$core.Deprecated('Use groupsRspDescriptor instead')
const GroupsRsp$json = {
  '1': 'GroupsRsp',
  '2': [
    {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_group.Group', '10': 'groups'},
  ],
};

/// Descriptor for `GroupsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupsRspDescriptor = $convert.base64Decode(
    'CglHcm91cHNSc3ASKwoGZ3JvdXBzGAEgAygLMhMucGJfbXNnX2dyb3VwLkdyb3VwUgZncm91cH'
    'M=');

@$core.Deprecated('Use groupIdsReqDescriptor instead')
const GroupIdsReq$json = {
  '1': 'GroupIdsReq',
};

/// Descriptor for `GroupIdsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupIdsReqDescriptor = $convert.base64Decode(
    'CgtHcm91cElkc1JlcQ==');

@$core.Deprecated('Use groupIdsRspDescriptor instead')
const GroupIdsRsp$json = {
  '1': 'GroupIdsRsp',
  '2': [
    {'1': 'ids', '3': 1, '4': 3, '5': 3, '10': 'ids'},
  ],
};

/// Descriptor for `GroupIdsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupIdsRspDescriptor = $convert.base64Decode(
    'CgtHcm91cElkc1JzcBIQCgNpZHMYASADKANSA2lkcw==');

@$core.Deprecated('Use groupDetailReqDescriptor instead')
const GroupDetailReq$json = {
  '1': 'GroupDetailReq',
};

/// Descriptor for `GroupDetailReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupDetailReqDescriptor = $convert.base64Decode(
    'Cg5Hcm91cERldGFpbFJlcQ==');

@$core.Deprecated('Use groupDetailRspDescriptor instead')
const GroupDetailRsp$json = {
  '1': 'GroupDetailRsp',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'disbanded', '3': 3, '4': 1, '5': 8, '10': 'disbanded'},
    {'1': 'banned', '3': 4, '4': 1, '5': 8, '10': 'banned'},
    {'1': 'memberCount', '3': 5, '4': 1, '5': 5, '10': 'memberCount'},
    {'1': 'notice', '3': 6, '4': 1, '5': 9, '10': 'notice'},
    {'1': 'ownerId', '3': 7, '4': 1, '5': 3, '10': 'ownerId'},
    {'1': 'avatar', '3': 8, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'bgPic', '3': 9, '4': 1, '5': 9, '10': 'bgPic'},
    {'1': 'memberCountLimit', '3': 11, '4': 1, '5': 5, '10': 'memberCountLimit'},
    {'1': 'inviteRoleLimit', '3': 12, '4': 1, '5': 5, '10': 'inviteRoleLimit'},
    {'1': 'top', '3': 13, '4': 1, '5': 8, '10': 'top'},
    {'1': 'remark', '3': 14, '4': 1, '5': 9, '10': 'remark'},
    {'1': 'memberChatBannedStatus', '3': 15, '4': 1, '5': 5, '10': 'memberChatBannedStatus'},
    {'1': 'newMemberRemindClosed', '3': 16, '4': 1, '5': 8, '10': 'newMemberRemindClosed'},
    {'1': 'ScanCodeJoinGroupSwitchStatus', '3': 17, '4': 1, '5': 8, '10': 'ScanCodeJoinGroupSwitchStatus'},
    {'1': 'ScanCodeJoinGroupParam', '3': 18, '4': 1, '5': 9, '10': 'ScanCodeJoinGroupParam'},
    {'1': 'noticeVersion', '3': 19, '4': 1, '5': 5, '10': 'noticeVersion'},
    {'1': 'freeJoin', '3': 20, '4': 1, '5': 8, '10': 'freeJoin'},
    {'1': 'groupType', '3': 21, '4': 1, '5': 14, '6': '.pb_msg_group.GroupType', '10': 'groupType'},
    {'1': 'forbiddenAddFriendsToEachOther', '3': 22, '4': 1, '5': 8, '10': 'forbiddenAddFriendsToEachOther'},
  ],
};

/// Descriptor for `GroupDetailRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupDetailRspDescriptor = $convert.base64Decode(
    'Cg5Hcm91cERldGFpbFJzcBIYCgdncm91cElkGAEgASgDUgdncm91cElkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSHAoJZGlzYmFuZGVkGAMgASgIUglkaXNiYW5kZWQSFgoGYmFubmVkGAQgASgIUgZi'
    'YW5uZWQSIAoLbWVtYmVyQ291bnQYBSABKAVSC21lbWJlckNvdW50EhYKBm5vdGljZRgGIAEoCV'
    'IGbm90aWNlEhgKB293bmVySWQYByABKANSB293bmVySWQSFgoGYXZhdGFyGAggASgJUgZhdmF0'
    'YXISFAoFYmdQaWMYCSABKAlSBWJnUGljEioKEG1lbWJlckNvdW50TGltaXQYCyABKAVSEG1lbW'
    'JlckNvdW50TGltaXQSKAoPaW52aXRlUm9sZUxpbWl0GAwgASgFUg9pbnZpdGVSb2xlTGltaXQS'
    'EAoDdG9wGA0gASgIUgN0b3ASFgoGcmVtYXJrGA4gASgJUgZyZW1hcmsSNgoWbWVtYmVyQ2hhdE'
    'Jhbm5lZFN0YXR1cxgPIAEoBVIWbWVtYmVyQ2hhdEJhbm5lZFN0YXR1cxI0ChVuZXdNZW1iZXJS'
    'ZW1pbmRDbG9zZWQYECABKAhSFW5ld01lbWJlclJlbWluZENsb3NlZBJECh1TY2FuQ29kZUpvaW'
    '5Hcm91cFN3aXRjaFN0YXR1cxgRIAEoCFIdU2NhbkNvZGVKb2luR3JvdXBTd2l0Y2hTdGF0dXMS'
    'NgoWU2NhbkNvZGVKb2luR3JvdXBQYXJhbRgSIAEoCVIWU2NhbkNvZGVKb2luR3JvdXBQYXJhbR'
    'IkCg1ub3RpY2VWZXJzaW9uGBMgASgFUg1ub3RpY2VWZXJzaW9uEhoKCGZyZWVKb2luGBQgASgI'
    'UghmcmVlSm9pbhI1Cglncm91cFR5cGUYFSABKA4yFy5wYl9tc2dfZ3JvdXAuR3JvdXBUeXBlUg'
    'lncm91cFR5cGUSRgoeZm9yYmlkZGVuQWRkRnJpZW5kc1RvRWFjaE90aGVyGBYgASgIUh5mb3Ji'
    'aWRkZW5BZGRGcmllbmRzVG9FYWNoT3RoZXI=');

@$core.Deprecated('Use memberDescriptor instead')
const Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    {'1': 'remark', '3': 4, '4': 1, '5': 9, '10': 'remark'},
    {'1': 'avatar', '3': 5, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'role', '3': 6, '4': 1, '5': 5, '10': 'role'},
    {'1': 'banned', '3': 7, '4': 1, '5': 8, '10': 'banned'},
  ],
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode(
    'CgZNZW1iZXISFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSGAoHZ3JvdXBJZBgCIAEoA1IHZ3JvdX'
    'BJZBIaCgh1c2VybmFtZRgDIAEoCVIIdXNlcm5hbWUSFgoGcmVtYXJrGAQgASgJUgZyZW1hcmsS'
    'FgoGYXZhdGFyGAUgASgJUgZhdmF0YXISEgoEcm9sZRgGIAEoBVIEcm9sZRIWCgZiYW5uZWQYBy'
    'ABKAhSBmJhbm5lZA==');

@$core.Deprecated('Use membersReqDescriptor instead')
const MembersReq$json = {
  '1': 'MembersReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `MembersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List membersReqDescriptor = $convert.base64Decode(
    'CgpNZW1iZXJzUmVxEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpemUYAiABKAVSCHBhZ2'
    'VTaXpl');

@$core.Deprecated('Use membersRspDescriptor instead')
const MembersRsp$json = {
  '1': 'MembersRsp',
  '2': [
    {'1': 'members', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_group.Member', '10': 'members'},
    {'1': 'page', '3': 2, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 3, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'totalCount', '3': 4, '4': 1, '5': 3, '10': 'totalCount'},
  ],
};

/// Descriptor for `MembersRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List membersRspDescriptor = $convert.base64Decode(
    'CgpNZW1iZXJzUnNwEi4KB21lbWJlcnMYASADKAsyFC5wYl9tc2dfZ3JvdXAuTWVtYmVyUgdtZW'
    '1iZXJzEhIKBHBhZ2UYAiABKAVSBHBhZ2USGgoIcGFnZVNpemUYAyABKAVSCHBhZ2VTaXplEh4K'
    'CnRvdGFsQ291bnQYBCABKANSCnRvdGFsQ291bnQ=');

@$core.Deprecated('Use findMembersReqDescriptor instead')
const FindMembersReq$json = {
  '1': 'FindMembersReq',
  '2': [
    {'1': 'findString', '3': 1, '4': 1, '5': 9, '10': 'findString'},
  ],
};

/// Descriptor for `FindMembersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findMembersReqDescriptor = $convert.base64Decode(
    'Cg5GaW5kTWVtYmVyc1JlcRIeCgpmaW5kU3RyaW5nGAEgASgJUgpmaW5kU3RyaW5n');

@$core.Deprecated('Use findMembersRspDescriptor instead')
const FindMembersRsp$json = {
  '1': 'FindMembersRsp',
  '2': [
    {'1': 'members', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_group.Member', '10': 'members'},
  ],
};

/// Descriptor for `FindMembersRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findMembersRspDescriptor = $convert.base64Decode(
    'Cg5GaW5kTWVtYmVyc1JzcBIuCgdtZW1iZXJzGAEgAygLMhQucGJfbXNnX2dyb3VwLk1lbWJlcl'
    'IHbWVtYmVycw==');

@$core.Deprecated('Use memberDetailReqDescriptor instead')
const MemberDetailReq$json = {
  '1': 'MemberDetailReq',
};

/// Descriptor for `MemberDetailReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDetailReqDescriptor = $convert.base64Decode(
    'Cg9NZW1iZXJEZXRhaWxSZXE=');

@$core.Deprecated('Use memberDetailRspDescriptor instead')
const MemberDetailRsp$json = {
  '1': 'MemberDetailRsp',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    {'1': 'remark', '3': 4, '4': 1, '5': 9, '10': 'remark'},
    {'1': 'avatar', '3': 5, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'banned', '3': 6, '4': 1, '5': 8, '10': 'banned'},
    {'1': 'role', '3': 7, '4': 1, '5': 5, '10': 'role'},
  ],
};

/// Descriptor for `MemberDetailRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDetailRspDescriptor = $convert.base64Decode(
    'Cg9NZW1iZXJEZXRhaWxSc3ASFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSGAoHZ3JvdXBJZBgCIA'
    'EoA1IHZ3JvdXBJZBIaCgh1c2VybmFtZRgDIAEoCVIIdXNlcm5hbWUSFgoGcmVtYXJrGAQgASgJ'
    'UgZyZW1hcmsSFgoGYXZhdGFyGAUgASgJUgZhdmF0YXISFgoGYmFubmVkGAYgASgIUgZiYW5uZW'
    'QSEgoEcm9sZRgHIAEoBVIEcm9sZQ==');

@$core.Deprecated('Use applicationDescriptor instead')
const Application$json = {
  '1': 'Application',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'approverId', '3': 3, '4': 1, '5': 3, '10': 'approverId'},
    {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `Application`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationDescriptor = $convert.base64Decode(
    'CgtBcHBsaWNhdGlvbhIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIYCgdncm91cElkGAIgASgDUg'
    'dncm91cElkEh4KCmFwcHJvdmVySWQYAyABKANSCmFwcHJvdmVySWQSFgoGc3RhdHVzGAQgASgF'
    'UgZzdGF0dXM=');

@$core.Deprecated('Use applicationsReqDescriptor instead')
const ApplicationsReq$json = {
  '1': 'ApplicationsReq',
};

/// Descriptor for `ApplicationsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationsReqDescriptor = $convert.base64Decode(
    'Cg9BcHBsaWNhdGlvbnNSZXE=');

@$core.Deprecated('Use applicationsRspDescriptor instead')
const ApplicationsRsp$json = {
  '1': 'ApplicationsRsp',
  '2': [
    {'1': 'applications', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_group.Application', '10': 'applications'},
  ],
};

/// Descriptor for `ApplicationsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationsRspDescriptor = $convert.base64Decode(
    'Cg9BcHBsaWNhdGlvbnNSc3ASPQoMYXBwbGljYXRpb25zGAEgAygLMhkucGJfbXNnX2dyb3VwLk'
    'FwcGxpY2F0aW9uUgxhcHBsaWNhdGlvbnM=');

@$core.Deprecated('Use invitationDescriptor instead')
const Invitation$json = {
  '1': 'Invitation',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'inviterId', '3': 2, '4': 1, '5': 3, '10': 'inviterId'},
    {'1': 'inviteeId', '3': 3, '4': 1, '5': 3, '10': 'inviteeId'},
    {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `Invitation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitationDescriptor = $convert.base64Decode(
    'CgpJbnZpdGF0aW9uEhgKB2dyb3VwSWQYASABKANSB2dyb3VwSWQSHAoJaW52aXRlcklkGAIgAS'
    'gDUglpbnZpdGVySWQSHAoJaW52aXRlZUlkGAMgASgDUglpbnZpdGVlSWQSFgoGc3RhdHVzGAQg'
    'ASgFUgZzdGF0dXM=');

@$core.Deprecated('Use invitationsReqDescriptor instead')
const InvitationsReq$json = {
  '1': 'InvitationsReq',
};

/// Descriptor for `InvitationsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitationsReqDescriptor = $convert.base64Decode(
    'Cg5JbnZpdGF0aW9uc1JlcQ==');

@$core.Deprecated('Use invitationsRspDescriptor instead')
const InvitationsRsp$json = {
  '1': 'InvitationsRsp',
  '2': [
    {'1': 'invitations', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_group.Invitation', '10': 'invitations'},
  ],
};

/// Descriptor for `InvitationsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitationsRspDescriptor = $convert.base64Decode(
    'Cg5JbnZpdGF0aW9uc1JzcBI6CgtpbnZpdGF0aW9ucxgBIAMoCzIYLnBiX21zZ19ncm91cC5Jbn'
    'ZpdGF0aW9uUgtpbnZpdGF0aW9ucw==');

@$core.Deprecated('Use editNameReqDescriptor instead')
const EditNameReq$json = {
  '1': 'EditNameReq',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `EditNameReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editNameReqDescriptor = $convert.base64Decode(
    'CgtFZGl0TmFtZVJlcRISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use editNameRspDescriptor instead')
const EditNameRsp$json = {
  '1': 'EditNameRsp',
};

/// Descriptor for `EditNameRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editNameRspDescriptor = $convert.base64Decode(
    'CgtFZGl0TmFtZVJzcA==');

@$core.Deprecated('Use nameChangeNotifyDescriptor instead')
const NameChangeNotify$json = {
  '1': 'NameChangeNotify',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `NameChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nameChangeNotifyDescriptor = $convert.base64Decode(
    'ChBOYW1lQ2hhbmdlTm90aWZ5EhIKBG5hbWUYASABKAlSBG5hbWU=');

@$core.Deprecated('Use editAvatarReqDescriptor instead')
const EditAvatarReq$json = {
  '1': 'EditAvatarReq',
  '2': [
    {'1': 'avatar', '3': 1, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `EditAvatarReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editAvatarReqDescriptor = $convert.base64Decode(
    'Cg1FZGl0QXZhdGFyUmVxEhYKBmF2YXRhchgBIAEoCVIGYXZhdGFy');

@$core.Deprecated('Use editAvatarRspDescriptor instead')
const EditAvatarRsp$json = {
  '1': 'EditAvatarRsp',
};

/// Descriptor for `EditAvatarRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editAvatarRspDescriptor = $convert.base64Decode(
    'Cg1FZGl0QXZhdGFyUnNw');

@$core.Deprecated('Use avatarChangeNotifyDescriptor instead')
const AvatarChangeNotify$json = {
  '1': 'AvatarChangeNotify',
  '2': [
    {'1': 'avatar', '3': 1, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `AvatarChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List avatarChangeNotifyDescriptor = $convert.base64Decode(
    'ChJBdmF0YXJDaGFuZ2VOb3RpZnkSFgoGYXZhdGFyGAEgASgJUgZhdmF0YXI=');

@$core.Deprecated('Use editInviteRoleLimitReqDescriptor instead')
const EditInviteRoleLimitReq$json = {
  '1': 'EditInviteRoleLimitReq',
  '2': [
    {'1': 'roleLimit', '3': 1, '4': 1, '5': 5, '10': 'roleLimit'},
  ],
};

/// Descriptor for `EditInviteRoleLimitReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editInviteRoleLimitReqDescriptor = $convert.base64Decode(
    'ChZFZGl0SW52aXRlUm9sZUxpbWl0UmVxEhwKCXJvbGVMaW1pdBgBIAEoBVIJcm9sZUxpbWl0');

@$core.Deprecated('Use editInviteRoleLimitRspDescriptor instead')
const EditInviteRoleLimitRsp$json = {
  '1': 'EditInviteRoleLimitRsp',
  '2': [
    {'1': 'roleLimit', '3': 1, '4': 1, '5': 5, '10': 'roleLimit'},
  ],
};

/// Descriptor for `EditInviteRoleLimitRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editInviteRoleLimitRspDescriptor = $convert.base64Decode(
    'ChZFZGl0SW52aXRlUm9sZUxpbWl0UnNwEhwKCXJvbGVMaW1pdBgBIAEoBVIJcm9sZUxpbWl0');

@$core.Deprecated('Use inviteRoleLimitChangeNotifyDescriptor instead')
const InviteRoleLimitChangeNotify$json = {
  '1': 'InviteRoleLimitChangeNotify',
  '2': [
    {'1': 'roleLimit', '3': 1, '4': 1, '5': 5, '10': 'roleLimit'},
  ],
};

/// Descriptor for `InviteRoleLimitChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteRoleLimitChangeNotifyDescriptor = $convert.base64Decode(
    'ChtJbnZpdGVSb2xlTGltaXRDaGFuZ2VOb3RpZnkSHAoJcm9sZUxpbWl0GAEgASgFUglyb2xlTG'
    'ltaXQ=');

@$core.Deprecated('Use editNoticeReqDescriptor instead')
const EditNoticeReq$json = {
  '1': 'EditNoticeReq',
  '2': [
    {'1': 'notice', '3': 1, '4': 1, '5': 9, '10': 'notice'},
  ],
};

/// Descriptor for `EditNoticeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editNoticeReqDescriptor = $convert.base64Decode(
    'Cg1FZGl0Tm90aWNlUmVxEhYKBm5vdGljZRgBIAEoCVIGbm90aWNl');

@$core.Deprecated('Use editNoticeRspDescriptor instead')
const EditNoticeRsp$json = {
  '1': 'EditNoticeRsp',
};

/// Descriptor for `EditNoticeRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editNoticeRspDescriptor = $convert.base64Decode(
    'Cg1FZGl0Tm90aWNlUnNw');

@$core.Deprecated('Use noticeChangeNotifyDescriptor instead')
const NoticeChangeNotify$json = {
  '1': 'NoticeChangeNotify',
  '2': [
    {'1': 'notice', '3': 1, '4': 1, '5': 9, '10': 'notice'},
    {'1': 'noticeVersion', '3': 2, '4': 1, '5': 5, '10': 'noticeVersion'},
  ],
};

/// Descriptor for `NoticeChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeChangeNotifyDescriptor = $convert.base64Decode(
    'ChJOb3RpY2VDaGFuZ2VOb3RpZnkSFgoGbm90aWNlGAEgASgJUgZub3RpY2USJAoNbm90aWNlVm'
    'Vyc2lvbhgCIAEoBVINbm90aWNlVmVyc2lvbg==');

@$core.Deprecated('Use editRemarkReqDescriptor instead')
const EditRemarkReq$json = {
  '1': 'EditRemarkReq',
  '2': [
    {'1': 'remark', '3': 1, '4': 1, '5': 9, '10': 'remark'},
    {'1': 'editedUserId', '3': 2, '4': 1, '5': 3, '10': 'editedUserId'},
  ],
};

/// Descriptor for `EditRemarkReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editRemarkReqDescriptor = $convert.base64Decode(
    'Cg1FZGl0UmVtYXJrUmVxEhYKBnJlbWFyaxgBIAEoCVIGcmVtYXJrEiIKDGVkaXRlZFVzZXJJZB'
    'gCIAEoA1IMZWRpdGVkVXNlcklk');

@$core.Deprecated('Use editRemarkRspDescriptor instead')
const EditRemarkRsp$json = {
  '1': 'EditRemarkRsp',
  '2': [
    {'1': 'remark', '3': 1, '4': 1, '5': 9, '10': 'remark'},
    {'1': 'editedUserId', '3': 2, '4': 1, '5': 3, '10': 'editedUserId'},
  ],
};

/// Descriptor for `EditRemarkRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editRemarkRspDescriptor = $convert.base64Decode(
    'Cg1FZGl0UmVtYXJrUnNwEhYKBnJlbWFyaxgBIAEoCVIGcmVtYXJrEiIKDGVkaXRlZFVzZXJJZB'
    'gCIAEoA1IMZWRpdGVkVXNlcklk');

@$core.Deprecated('Use remarkChangeNotifyDescriptor instead')
const RemarkChangeNotify$json = {
  '1': 'RemarkChangeNotify',
  '2': [
    {'1': 'remark', '3': 1, '4': 1, '5': 9, '10': 'remark'},
    {'1': 'editedUserId', '3': 2, '4': 1, '5': 3, '10': 'editedUserId'},
  ],
};

/// Descriptor for `RemarkChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remarkChangeNotifyDescriptor = $convert.base64Decode(
    'ChJSZW1hcmtDaGFuZ2VOb3RpZnkSFgoGcmVtYXJrGAEgASgJUgZyZW1hcmsSIgoMZWRpdGVkVX'
    'NlcklkGAIgASgDUgxlZGl0ZWRVc2VySWQ=');

@$core.Deprecated('Use editBGPicReqDescriptor instead')
const EditBGPicReq$json = {
  '1': 'EditBGPicReq',
  '2': [
    {'1': 'bgPic', '3': 1, '4': 1, '5': 9, '10': 'bgPic'},
  ],
};

/// Descriptor for `EditBGPicReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editBGPicReqDescriptor = $convert.base64Decode(
    'CgxFZGl0QkdQaWNSZXESFAoFYmdQaWMYASABKAlSBWJnUGlj');

@$core.Deprecated('Use editBGPicRspDescriptor instead')
const EditBGPicRsp$json = {
  '1': 'EditBGPicRsp',
  '2': [
    {'1': 'bgPic', '3': 1, '4': 1, '5': 9, '10': 'bgPic'},
  ],
};

/// Descriptor for `EditBGPicRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editBGPicRspDescriptor = $convert.base64Decode(
    'CgxFZGl0QkdQaWNSc3ASFAoFYmdQaWMYASABKAlSBWJnUGlj');

@$core.Deprecated('Use bGPicChangeNotifyDescriptor instead')
const BGPicChangeNotify$json = {
  '1': 'BGPicChangeNotify',
  '2': [
    {'1': 'bgPic', '3': 1, '4': 1, '5': 9, '10': 'bgPic'},
  ],
};

/// Descriptor for `BGPicChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bGPicChangeNotifyDescriptor = $convert.base64Decode(
    'ChFCR1BpY0NoYW5nZU5vdGlmeRIUCgViZ1BpYxgBIAEoCVIFYmdQaWM=');

@$core.Deprecated('Use editNeedReceiptReqDescriptor instead')
const EditNeedReceiptReq$json = {
  '1': 'EditNeedReceiptReq',
  '2': [
    {'1': 'needReceipt', '3': 1, '4': 1, '5': 8, '10': 'needReceipt'},
  ],
};

/// Descriptor for `EditNeedReceiptReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editNeedReceiptReqDescriptor = $convert.base64Decode(
    'ChJFZGl0TmVlZFJlY2VpcHRSZXESIAoLbmVlZFJlY2VpcHQYASABKAhSC25lZWRSZWNlaXB0');

@$core.Deprecated('Use editNeedReceiptRspDescriptor instead')
const EditNeedReceiptRsp$json = {
  '1': 'EditNeedReceiptRsp',
  '2': [
    {'1': 'needReceipt', '3': 1, '4': 1, '5': 8, '10': 'needReceipt'},
  ],
};

/// Descriptor for `EditNeedReceiptRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editNeedReceiptRspDescriptor = $convert.base64Decode(
    'ChJFZGl0TmVlZFJlY2VpcHRSc3ASIAoLbmVlZFJlY2VpcHQYASABKAhSC25lZWRSZWNlaXB0');

@$core.Deprecated('Use needReceiptChangeNotifyDescriptor instead')
const NeedReceiptChangeNotify$json = {
  '1': 'NeedReceiptChangeNotify',
  '2': [
    {'1': 'needReceipt', '3': 1, '4': 1, '5': 8, '10': 'needReceipt'},
  ],
};

/// Descriptor for `NeedReceiptChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List needReceiptChangeNotifyDescriptor = $convert.base64Decode(
    'ChdOZWVkUmVjZWlwdENoYW5nZU5vdGlmeRIgCgtuZWVkUmVjZWlwdBgBIAEoCFILbmVlZFJlY2'
    'VpcHQ=');

@$core.Deprecated('Use editMemberCountLimitReqDescriptor instead')
const EditMemberCountLimitReq$json = {
  '1': 'EditMemberCountLimitReq',
  '2': [
    {'1': 'memberCountLimit', '3': 1, '4': 1, '5': 5, '10': 'memberCountLimit'},
  ],
};

/// Descriptor for `EditMemberCountLimitReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editMemberCountLimitReqDescriptor = $convert.base64Decode(
    'ChdFZGl0TWVtYmVyQ291bnRMaW1pdFJlcRIqChBtZW1iZXJDb3VudExpbWl0GAEgASgFUhBtZW'
    '1iZXJDb3VudExpbWl0');

@$core.Deprecated('Use editMemberCountLimitRspDescriptor instead')
const EditMemberCountLimitRsp$json = {
  '1': 'EditMemberCountLimitRsp',
  '2': [
    {'1': 'memberCountLimit', '3': 1, '4': 1, '5': 5, '10': 'memberCountLimit'},
  ],
};

/// Descriptor for `EditMemberCountLimitRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editMemberCountLimitRspDescriptor = $convert.base64Decode(
    'ChdFZGl0TWVtYmVyQ291bnRMaW1pdFJzcBIqChBtZW1iZXJDb3VudExpbWl0GAEgASgFUhBtZW'
    '1iZXJDb3VudExpbWl0');

@$core.Deprecated('Use memberCountLimitChangeNotifyDescriptor instead')
const MemberCountLimitChangeNotify$json = {
  '1': 'MemberCountLimitChangeNotify',
  '2': [
    {'1': 'memberCountLimit', '3': 1, '4': 1, '5': 5, '10': 'memberCountLimit'},
  ],
};

/// Descriptor for `MemberCountLimitChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberCountLimitChangeNotifyDescriptor = $convert.base64Decode(
    'ChxNZW1iZXJDb3VudExpbWl0Q2hhbmdlTm90aWZ5EioKEG1lbWJlckNvdW50TGltaXQYASABKA'
    'VSEG1lbWJlckNvdW50TGltaXQ=');

@$core.Deprecated('Use addAdminsReqDescriptor instead')
const AddAdminsReq$json = {
  '1': 'AddAdminsReq',
  '2': [
    {'1': 'memberIds', '3': 1, '4': 3, '5': 3, '10': 'memberIds'},
  ],
};

/// Descriptor for `AddAdminsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addAdminsReqDescriptor = $convert.base64Decode(
    'CgxBZGRBZG1pbnNSZXESHAoJbWVtYmVySWRzGAEgAygDUgltZW1iZXJJZHM=');

@$core.Deprecated('Use addAdminsRspDescriptor instead')
const AddAdminsRsp$json = {
  '1': 'AddAdminsRsp',
};

/// Descriptor for `AddAdminsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addAdminsRspDescriptor = $convert.base64Decode(
    'CgxBZGRBZG1pbnNSc3A=');

@$core.Deprecated('Use addAdminsNotifyDescriptor instead')
const AddAdminsNotify$json = {
  '1': 'AddAdminsNotify',
  '2': [
    {'1': 'memberIds', '3': 1, '4': 3, '5': 3, '10': 'memberIds'},
  ],
};

/// Descriptor for `AddAdminsNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addAdminsNotifyDescriptor = $convert.base64Decode(
    'Cg9BZGRBZG1pbnNOb3RpZnkSHAoJbWVtYmVySWRzGAEgAygDUgltZW1iZXJJZHM=');

@$core.Deprecated('Use removeAdminsReqDescriptor instead')
const RemoveAdminsReq$json = {
  '1': 'RemoveAdminsReq',
  '2': [
    {'1': 'memberIds', '3': 1, '4': 3, '5': 3, '10': 'memberIds'},
  ],
};

/// Descriptor for `RemoveAdminsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeAdminsReqDescriptor = $convert.base64Decode(
    'Cg9SZW1vdmVBZG1pbnNSZXESHAoJbWVtYmVySWRzGAEgAygDUgltZW1iZXJJZHM=');

@$core.Deprecated('Use removeAdminsRspDescriptor instead')
const RemoveAdminsRsp$json = {
  '1': 'RemoveAdminsRsp',
};

/// Descriptor for `RemoveAdminsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeAdminsRspDescriptor = $convert.base64Decode(
    'Cg9SZW1vdmVBZG1pbnNSc3A=');

@$core.Deprecated('Use removeAdminsNotifyDescriptor instead')
const RemoveAdminsNotify$json = {
  '1': 'RemoveAdminsNotify',
  '2': [
    {'1': 'memberIds', '3': 1, '4': 3, '5': 3, '10': 'memberIds'},
  ],
};

/// Descriptor for `RemoveAdminsNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeAdminsNotifyDescriptor = $convert.base64Decode(
    'ChJSZW1vdmVBZG1pbnNOb3RpZnkSHAoJbWVtYmVySWRzGAEgAygDUgltZW1iZXJJZHM=');

@$core.Deprecated('Use groupTransferReqDescriptor instead')
const GroupTransferReq$json = {
  '1': 'GroupTransferReq',
};

/// Descriptor for `GroupTransferReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupTransferReqDescriptor = $convert.base64Decode(
    'ChBHcm91cFRyYW5zZmVyUmVx');

@$core.Deprecated('Use groupTransferRspDescriptor instead')
const GroupTransferRsp$json = {
  '1': 'GroupTransferRsp',
};

/// Descriptor for `GroupTransferRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupTransferRspDescriptor = $convert.base64Decode(
    'ChBHcm91cFRyYW5zZmVyUnNw');

@$core.Deprecated('Use groupTransferNotifyDescriptor instead')
const GroupTransferNotify$json = {
  '1': 'GroupTransferNotify',
  '2': [
    {'1': 'ownerId', '3': 1, '4': 1, '5': 3, '10': 'ownerId'},
  ],
};

/// Descriptor for `GroupTransferNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupTransferNotifyDescriptor = $convert.base64Decode(
    'ChNHcm91cFRyYW5zZmVyTm90aWZ5EhgKB293bmVySWQYASABKANSB293bmVySWQ=');

@$core.Deprecated('Use banGroupsReqDescriptor instead')
const BanGroupsReq$json = {
  '1': 'BanGroupsReq',
  '2': [
    {'1': 'groupIds', '3': 1, '4': 3, '5': 3, '10': 'groupIds'},
  ],
};

/// Descriptor for `BanGroupsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banGroupsReqDescriptor = $convert.base64Decode(
    'CgxCYW5Hcm91cHNSZXESGgoIZ3JvdXBJZHMYASADKANSCGdyb3VwSWRz');

@$core.Deprecated('Use banGroupsRspDescriptor instead')
const BanGroupsRsp$json = {
  '1': 'BanGroupsRsp',
};

/// Descriptor for `BanGroupsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banGroupsRspDescriptor = $convert.base64Decode(
    'CgxCYW5Hcm91cHNSc3A=');

@$core.Deprecated('Use groupBannedNotifyDescriptor instead')
const GroupBannedNotify$json = {
  '1': 'GroupBannedNotify',
};

/// Descriptor for `GroupBannedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupBannedNotifyDescriptor = $convert.base64Decode(
    'ChFHcm91cEJhbm5lZE5vdGlmeQ==');

@$core.Deprecated('Use unbanGroupsReqDescriptor instead')
const UnbanGroupsReq$json = {
  '1': 'UnbanGroupsReq',
  '2': [
    {'1': 'groupIds', '3': 1, '4': 3, '5': 3, '10': 'groupIds'},
  ],
};

/// Descriptor for `UnbanGroupsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbanGroupsReqDescriptor = $convert.base64Decode(
    'Cg5VbmJhbkdyb3Vwc1JlcRIaCghncm91cElkcxgBIAMoA1IIZ3JvdXBJZHM=');

@$core.Deprecated('Use unbanGroupsRspDescriptor instead')
const UnbanGroupsRsp$json = {
  '1': 'UnbanGroupsRsp',
};

/// Descriptor for `UnbanGroupsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbanGroupsRspDescriptor = $convert.base64Decode(
    'Cg5VbmJhbkdyb3Vwc1JzcA==');

@$core.Deprecated('Use groupUnbannedNotifyDescriptor instead')
const GroupUnbannedNotify$json = {
  '1': 'GroupUnbannedNotify',
};

/// Descriptor for `GroupUnbannedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupUnbannedNotifyDescriptor = $convert.base64Decode(
    'ChNHcm91cFVuYmFubmVkTm90aWZ5');

@$core.Deprecated('Use disbandGroupsReqDescriptor instead')
const DisbandGroupsReq$json = {
  '1': 'DisbandGroupsReq',
  '2': [
    {'1': 'groupIds', '3': 1, '4': 3, '5': 3, '10': 'groupIds'},
  ],
};

/// Descriptor for `DisbandGroupsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disbandGroupsReqDescriptor = $convert.base64Decode(
    'ChBEaXNiYW5kR3JvdXBzUmVxEhoKCGdyb3VwSWRzGAEgAygDUghncm91cElkcw==');

@$core.Deprecated('Use disbandGroupsRspDescriptor instead')
const DisbandGroupsRsp$json = {
  '1': 'DisbandGroupsRsp',
};

/// Descriptor for `DisbandGroupsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disbandGroupsRspDescriptor = $convert.base64Decode(
    'ChBEaXNiYW5kR3JvdXBzUnNw');

@$core.Deprecated('Use groupDisbandedNotifyDescriptor instead')
const GroupDisbandedNotify$json = {
  '1': 'GroupDisbandedNotify',
};

/// Descriptor for `GroupDisbandedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupDisbandedNotifyDescriptor = $convert.base64Decode(
    'ChRHcm91cERpc2JhbmRlZE5vdGlmeQ==');

@$core.Deprecated('Use quitReqDescriptor instead')
const QuitReq$json = {
  '1': 'QuitReq',
};

/// Descriptor for `QuitReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quitReqDescriptor = $convert.base64Decode(
    'CgdRdWl0UmVx');

@$core.Deprecated('Use quitRspDescriptor instead')
const QuitRsp$json = {
  '1': 'QuitRsp',
};

/// Descriptor for `QuitRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quitRspDescriptor = $convert.base64Decode(
    'CgdRdWl0UnNw');

@$core.Deprecated('Use quitNotifyDescriptor instead')
const QuitNotify$json = {
  '1': 'QuitNotify',
  '2': [
    {'1': 'memberId', '3': 1, '4': 1, '5': 3, '10': 'memberId'},
  ],
};

/// Descriptor for `QuitNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quitNotifyDescriptor = $convert.base64Decode(
    'CgpRdWl0Tm90aWZ5EhoKCG1lbWJlcklkGAEgASgDUghtZW1iZXJJZA==');

@$core.Deprecated('Use banMemberReqDescriptor instead')
const BanMemberReq$json = {
  '1': 'BanMemberReq',
};

/// Descriptor for `BanMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banMemberReqDescriptor = $convert.base64Decode(
    'CgxCYW5NZW1iZXJSZXE=');

@$core.Deprecated('Use banMemberRspDescriptor instead')
const BanMemberRsp$json = {
  '1': 'BanMemberRsp',
};

/// Descriptor for `BanMemberRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banMemberRspDescriptor = $convert.base64Decode(
    'CgxCYW5NZW1iZXJSc3A=');

@$core.Deprecated('Use banMemberNotifyDescriptor instead')
const BanMemberNotify$json = {
  '1': 'BanMemberNotify',
  '2': [
    {'1': 'memberId', '3': 1, '4': 1, '5': 3, '10': 'memberId'},
  ],
};

/// Descriptor for `BanMemberNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banMemberNotifyDescriptor = $convert.base64Decode(
    'Cg9CYW5NZW1iZXJOb3RpZnkSGgoIbWVtYmVySWQYASABKANSCG1lbWJlcklk');

@$core.Deprecated('Use unbanMemberReqDescriptor instead')
const UnbanMemberReq$json = {
  '1': 'UnbanMemberReq',
};

/// Descriptor for `UnbanMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbanMemberReqDescriptor = $convert.base64Decode(
    'Cg5VbmJhbk1lbWJlclJlcQ==');

@$core.Deprecated('Use unbanMemberRspDescriptor instead')
const UnbanMemberRsp$json = {
  '1': 'UnbanMemberRsp',
};

/// Descriptor for `UnbanMemberRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbanMemberRspDescriptor = $convert.base64Decode(
    'Cg5VbmJhbk1lbWJlclJzcA==');

@$core.Deprecated('Use unbanMemberNotifyDescriptor instead')
const UnbanMemberNotify$json = {
  '1': 'UnbanMemberNotify',
  '2': [
    {'1': 'memberId', '3': 1, '4': 1, '5': 3, '10': 'memberId'},
  ],
};

/// Descriptor for `UnbanMemberNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbanMemberNotifyDescriptor = $convert.base64Decode(
    'ChFVbmJhbk1lbWJlck5vdGlmeRIaCghtZW1iZXJJZBgBIAEoA1IIbWVtYmVySWQ=');

@$core.Deprecated('Use kickoutReqDescriptor instead')
const KickoutReq$json = {
  '1': 'KickoutReq',
};

/// Descriptor for `KickoutReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickoutReqDescriptor = $convert.base64Decode(
    'CgpLaWNrb3V0UmVx');

@$core.Deprecated('Use kickoutRspDescriptor instead')
const KickoutRsp$json = {
  '1': 'KickoutRsp',
};

/// Descriptor for `KickoutRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickoutRspDescriptor = $convert.base64Decode(
    'CgpLaWNrb3V0UnNw');

@$core.Deprecated('Use kickoutNotifyDescriptor instead')
const KickoutNotify$json = {
  '1': 'KickoutNotify',
  '2': [
    {'1': 'memberId', '3': 1, '4': 1, '5': 3, '10': 'memberId'},
    {'1': 'memberCount', '3': 2, '4': 1, '5': 5, '10': 'memberCount'},
  ],
};

/// Descriptor for `KickoutNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickoutNotifyDescriptor = $convert.base64Decode(
    'Cg1LaWNrb3V0Tm90aWZ5EhoKCG1lbWJlcklkGAEgASgDUghtZW1iZXJJZBIgCgttZW1iZXJDb3'
    'VudBgCIAEoBVILbWVtYmVyQ291bnQ=');

@$core.Deprecated('Use groupHistoryMsgReqDescriptor instead')
const GroupHistoryMsgReq$json = {
  '1': 'GroupHistoryMsgReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'filterNew', '3': 3, '4': 1, '5': 8, '10': 'filterNew'},
  ],
};

/// Descriptor for `GroupHistoryMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupHistoryMsgReqDescriptor = $convert.base64Decode(
    'ChJHcm91cEhpc3RvcnlNc2dSZXESEgoEcGFnZRgBIAEoA1IEcGFnZRIaCghwYWdlU2l6ZRgCIA'
    'EoA1IIcGFnZVNpemUSHAoJZmlsdGVyTmV3GAMgASgIUglmaWx0ZXJOZXc=');

@$core.Deprecated('Use groupHistoryMsgRspDescriptor instead')
const GroupHistoryMsgRsp$json = {
  '1': 'GroupHistoryMsgRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 3, '10': 'totalCount'},
    {'1': 'pbHisMsg', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_group.GroupHistoryMsg', '10': 'pbHisMsg'},
  ],
};

/// Descriptor for `GroupHistoryMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupHistoryMsgRspDescriptor = $convert.base64Decode(
    'ChJHcm91cEhpc3RvcnlNc2dSc3ASEgoEcGFnZRgBIAEoA1IEcGFnZRIaCghwYWdlU2l6ZRgCIA'
    'EoA1IIcGFnZVNpemUSHgoKdG90YWxDb3VudBgDIAEoA1IKdG90YWxDb3VudBI5CghwYkhpc01z'
    'ZxgEIAMoCzIdLnBiX21zZ19ncm91cC5Hcm91cEhpc3RvcnlNc2dSCHBiSGlzTXNn');

@$core.Deprecated('Use oneGroupHistoryMsgReqDescriptor instead')
const OneGroupHistoryMsgReq$json = {
  '1': 'OneGroupHistoryMsgReq',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'msgSn', '3': 2, '4': 1, '5': 3, '10': 'msgSn'},
  ],
};

/// Descriptor for `OneGroupHistoryMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneGroupHistoryMsgReqDescriptor = $convert.base64Decode(
    'ChVPbmVHcm91cEhpc3RvcnlNc2dSZXESDgoCaWQYASABKANSAmlkEhQKBW1zZ1NuGAIgASgDUg'
    'Vtc2dTbg==');

@$core.Deprecated('Use oneGroupHistoryMsgRspDescriptor instead')
const OneGroupHistoryMsgRsp$json = {
  '1': 'OneGroupHistoryMsgRsp',
  '2': [
    {'1': 'groupHistoryMsg', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_group.GroupHistoryMsg', '10': 'groupHistoryMsg'},
  ],
};

/// Descriptor for `OneGroupHistoryMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneGroupHistoryMsgRspDescriptor = $convert.base64Decode(
    'ChVPbmVHcm91cEhpc3RvcnlNc2dSc3ASRwoPZ3JvdXBIaXN0b3J5TXNnGAEgASgLMh0ucGJfbX'
    'NnX2dyb3VwLkdyb3VwSGlzdG9yeU1zZ1IPZ3JvdXBIaXN0b3J5TXNn');

@$core.Deprecated('Use delGroupHistoryMsgReqDescriptor instead')
const DelGroupHistoryMsgReq$json = {
  '1': 'DelGroupHistoryMsgReq',
  '2': [
    {'1': 'id', '3': 1, '4': 3, '5': 3, '10': 'id'},
    {'1': 'msgSn', '3': 2, '4': 3, '5': 3, '10': 'msgSn'},
  ],
};

/// Descriptor for `DelGroupHistoryMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delGroupHistoryMsgReqDescriptor = $convert.base64Decode(
    'ChVEZWxHcm91cEhpc3RvcnlNc2dSZXESDgoCaWQYASADKANSAmlkEhQKBW1zZ1NuGAIgAygDUg'
    'Vtc2dTbg==');

@$core.Deprecated('Use delGroupHistoryMsgRspDescriptor instead')
const DelGroupHistoryMsgRsp$json = {
  '1': 'DelGroupHistoryMsgRsp',
};

/// Descriptor for `DelGroupHistoryMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delGroupHistoryMsgRspDescriptor = $convert.base64Decode(
    'ChVEZWxHcm91cEhpc3RvcnlNc2dSc3A=');

@$core.Deprecated('Use readUserInfoDescriptor instead')
const ReadUserInfo$json = {
  '1': 'ReadUserInfo',
  '2': [
    {'1': 'readerUserId', '3': 1, '4': 1, '5': 3, '10': 'readerUserId'},
    {'1': 'readStatus', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.MSG_STATE', '10': 'readStatus'},
    {'1': 'upDateAt', '3': 3, '4': 1, '5': 3, '10': 'upDateAt'},
  ],
};

/// Descriptor for `ReadUserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readUserInfoDescriptor = $convert.base64Decode(
    'CgxSZWFkVXNlckluZm8SIgoMcmVhZGVyVXNlcklkGAEgASgDUgxyZWFkZXJVc2VySWQSMQoKcm'
    'VhZFN0YXR1cxgCIAEoDjIRLnBiX3B1Yi5NU0dfU1RBVEVSCnJlYWRTdGF0dXMSGgoIdXBEYXRl'
    'QXQYAyABKANSCHVwRGF0ZUF0');

@$core.Deprecated('Use groupMsgReadListReqDescriptor instead')
const GroupMsgReadListReq$json = {
  '1': 'GroupMsgReadListReq',
  '2': [
    {'1': 'msgSn', '3': 1, '4': 1, '5': 3, '10': 'msgSn'},
  ],
};

/// Descriptor for `GroupMsgReadListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupMsgReadListReqDescriptor = $convert.base64Decode(
    'ChNHcm91cE1zZ1JlYWRMaXN0UmVxEhQKBW1zZ1NuGAEgASgDUgVtc2dTbg==');

@$core.Deprecated('Use groupMsgReadListRspDescriptor instead')
const GroupMsgReadListRsp$json = {
  '1': 'GroupMsgReadListRsp',
  '2': [
    {'1': 'msgSn', '3': 1, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'readUserInfo', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_group.ReadUserInfo', '10': 'readUserInfo'},
  ],
};

/// Descriptor for `GroupMsgReadListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupMsgReadListRspDescriptor = $convert.base64Decode(
    'ChNHcm91cE1zZ1JlYWRMaXN0UnNwEhQKBW1zZ1NuGAEgASgDUgVtc2dTbhI+CgxyZWFkVXNlck'
    'luZm8YAiADKAsyGi5wYl9tc2dfZ3JvdXAuUmVhZFVzZXJJbmZvUgxyZWFkVXNlckluZm8=');

@$core.Deprecated('Use groupChatDescriptor instead')
const GroupChat$json = {
  '1': 'GroupChat',
  '2': [
    {'1': 'aim_user_id', '3': 2, '4': 1, '5': 3, '10': 'aimUserId'},
    {'1': 'chat_type', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.TextChatType', '10': 'chatType'},
    {'1': 'data', '3': 4, '4': 1, '5': 9, '10': 'data'},
    {'1': 'text', '3': 5, '4': 1, '5': 9, '10': 'text'},
    {'1': 'exp', '3': 6, '4': 3, '5': 11, '6': '.pb_msg_group.GroupChat.ExpEntry', '10': 'exp'},
    {'1': 'aimUserAppId', '3': 7, '4': 1, '5': 3, '10': 'aimUserAppId'},
    {'1': 'aimUserAppUserId', '3': 8, '4': 1, '5': 9, '10': 'aimUserAppUserId'},
  ],
  '3': [GroupChat_ExpEntry$json],
};

@$core.Deprecated('Use groupChatDescriptor instead')
const GroupChat_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GroupChat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupChatDescriptor = $convert.base64Decode(
    'CglHcm91cENoYXQSHgoLYWltX3VzZXJfaWQYAiABKANSCWFpbVVzZXJJZBIxCgljaGF0X3R5cG'
    'UYAyABKA4yFC5wYl9wdWIuVGV4dENoYXRUeXBlUghjaGF0VHlwZRISCgRkYXRhGAQgASgJUgRk'
    'YXRhEhIKBHRleHQYBSABKAlSBHRleHQSMgoDZXhwGAYgAygLMiAucGJfbXNnX2dyb3VwLkdyb3'
    'VwQ2hhdC5FeHBFbnRyeVIDZXhwEiIKDGFpbVVzZXJBcHBJZBgHIAEoA1IMYWltVXNlckFwcElk'
    'EioKEGFpbVVzZXJBcHBVc2VySWQYCCABKAlSEGFpbVVzZXJBcHBVc2VySWQaNgoIRXhwRW50cn'
    'kSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use groupEmoticonDescriptor instead')
const GroupEmoticon$json = {
  '1': 'GroupEmoticon',
  '2': [
    {'1': 'packageId', '3': 1, '4': 1, '5': 5, '10': 'packageId'},
    {'1': 'emoticonId', '3': 2, '4': 1, '5': 5, '10': 'emoticonId'},
  ],
};

/// Descriptor for `GroupEmoticon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupEmoticonDescriptor = $convert.base64Decode(
    'Cg1Hcm91cEVtb3RpY29uEhwKCXBhY2thZ2VJZBgBIAEoBVIJcGFja2FnZUlkEh4KCmVtb3RpY2'
    '9uSWQYAiABKAVSCmVtb3RpY29uSWQ=');

@$core.Deprecated('Use groupMediaDescriptor instead')
const GroupMedia$json = {
  '1': 'GroupMedia',
  '2': [
    {'1': 'mediaType', '3': 1, '4': 1, '5': 5, '10': 'mediaType'},
    {'1': 'srcPath', '3': 2, '4': 1, '5': 9, '10': 'srcPath'},
  ],
};

/// Descriptor for `GroupMedia`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupMediaDescriptor = $convert.base64Decode(
    'CgpHcm91cE1lZGlhEhwKCW1lZGlhVHlwZRgBIAEoBVIJbWVkaWFUeXBlEhgKB3NyY1BhdGgYAi'
    'ABKAlSB3NyY1BhdGg=');

@$core.Deprecated('Use groupGiftDescriptor instead')
const GroupGift$json = {
  '1': 'GroupGift',
  '2': [
    {'1': 'giftId', '3': 1, '4': 1, '5': 5, '10': 'giftId'},
  ],
};

/// Descriptor for `GroupGift`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupGiftDescriptor = $convert.base64Decode(
    'CglHcm91cEdpZnQSFgoGZ2lmdElkGAEgASgFUgZnaWZ0SWQ=');

@$core.Deprecated('Use bigGroupHisMsgDescriptor instead')
const BigGroupHisMsg$json = {
  '1': 'BigGroupHisMsg',
  '2': [
    {'1': 'msgId', '3': 1, '4': 1, '5': 3, '10': 'msgId'},
    {'1': 'groupId', '3': 2, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'msgSn', '3': 3, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'srcId', '3': 4, '4': 1, '5': 3, '10': 'srcId'},
    {'1': 'createdAt', '3': 7, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'atList', '3': 8, '4': 3, '5': 3, '10': 'atList'},
    {'1': 'pbName', '3': 5, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 6, '4': 1, '5': 12, '10': 'pbData'},
  ],
};

/// Descriptor for `BigGroupHisMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bigGroupHisMsgDescriptor = $convert.base64Decode(
    'Cg5CaWdHcm91cEhpc01zZxIUCgVtc2dJZBgBIAEoA1IFbXNnSWQSGAoHZ3JvdXBJZBgCIAEoA1'
    'IHZ3JvdXBJZBIUCgVtc2dTbhgDIAEoA1IFbXNnU24SFAoFc3JjSWQYBCABKANSBXNyY0lkEhwK'
    'CWNyZWF0ZWRBdBgHIAEoA1IJY3JlYXRlZEF0EhYKBmF0TGlzdBgIIAMoA1IGYXRMaXN0EhYKBn'
    'BiTmFtZRgFIAEoCVIGcGJOYW1lEhYKBnBiRGF0YRgGIAEoDFIGcGJEYXRh');

@$core.Deprecated('Use userReadStatusDescriptor instead')
const UserReadStatus$json = {
  '1': 'UserReadStatus',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'readStatus', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.MSG_STATE', '10': 'readStatus'},
  ],
};

/// Descriptor for `UserReadStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userReadStatusDescriptor = $convert.base64Decode(
    'Cg5Vc2VyUmVhZFN0YXR1cxIWCgZ1c2VySWQYASABKANSBnVzZXJJZBIxCgpyZWFkU3RhdHVzGA'
    'IgASgOMhEucGJfcHViLk1TR19TVEFURVIKcmVhZFN0YXR1cw==');

@$core.Deprecated('Use groupHistoryMsgDescriptor instead')
const GroupHistoryMsg$json = {
  '1': 'GroupHistoryMsg',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'groupMsgSn', '3': 2, '4': 1, '5': 3, '10': 'groupMsgSn'},
    {'1': 'msgSn', '3': 3, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'srcId', '3': 4, '4': 1, '5': 3, '10': 'srcId'},
    {'1': 'pbName', '3': 5, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 6, '4': 1, '5': 12, '10': 'pbData'},
    {'1': 'msgStatus', '3': 7, '4': 1, '5': 14, '6': '.pb_pub.MSG_STATE', '10': 'msgStatus'},
    {'1': 'atUserReadStatus', '3': 8, '4': 3, '5': 11, '6': '.pb_msg_group.UserReadStatus', '10': 'atUserReadStatus'},
    {'1': 'createdAt', '3': 9, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 10, '4': 1, '5': 3, '10': 'updatedAt'},
    {'1': 'pbCommData', '3': 11, '4': 1, '5': 12, '10': 'pbCommData'},
  ],
};

/// Descriptor for `GroupHistoryMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupHistoryMsgDescriptor = $convert.base64Decode(
    'Cg9Hcm91cEhpc3RvcnlNc2cSGAoHZ3JvdXBJZBgBIAEoA1IHZ3JvdXBJZBIeCgpncm91cE1zZ1'
    'NuGAIgASgDUgpncm91cE1zZ1NuEhQKBW1zZ1NuGAMgASgDUgVtc2dTbhIUCgVzcmNJZBgEIAEo'
    'A1IFc3JjSWQSFgoGcGJOYW1lGAUgASgJUgZwYk5hbWUSFgoGcGJEYXRhGAYgASgMUgZwYkRhdG'
    'ESLwoJbXNnU3RhdHVzGAcgASgOMhEucGJfcHViLk1TR19TVEFURVIJbXNnU3RhdHVzEkgKEGF0'
    'VXNlclJlYWRTdGF0dXMYCCADKAsyHC5wYl9tc2dfZ3JvdXAuVXNlclJlYWRTdGF0dXNSEGF0VX'
    'NlclJlYWRTdGF0dXMSHAoJY3JlYXRlZEF0GAkgASgDUgljcmVhdGVkQXQSHAoJdXBkYXRlZEF0'
    'GAogASgDUgl1cGRhdGVkQXQSHgoKcGJDb21tRGF0YRgLIAEoDFIKcGJDb21tRGF0YQ==');

@$core.Deprecated('Use readyForGroupsNewMsgInfoReqDescriptor instead')
const ReadyForGroupsNewMsgInfoReq$json = {
  '1': 'ReadyForGroupsNewMsgInfoReq',
};

/// Descriptor for `ReadyForGroupsNewMsgInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readyForGroupsNewMsgInfoReqDescriptor = $convert.base64Decode(
    'ChtSZWFkeUZvckdyb3Vwc05ld01zZ0luZm9SZXE=');

@$core.Deprecated('Use readyForGroupsNewMsgInfoRspDescriptor instead')
const ReadyForGroupsNewMsgInfoRsp$json = {
  '1': 'ReadyForGroupsNewMsgInfoRsp',
};

/// Descriptor for `ReadyForGroupsNewMsgInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readyForGroupsNewMsgInfoRspDescriptor = $convert.base64Decode(
    'ChtSZWFkeUZvckdyb3Vwc05ld01zZ0luZm9Sc3A=');

@$core.Deprecated('Use userGroupsNewMsgInfoDescriptor instead')
const UserGroupsNewMsgInfo$json = {
  '1': 'UserGroupsNewMsgInfo',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'newMsgCount', '3': 2, '4': 1, '5': 5, '10': 'newMsgCount'},
    {'1': 'lastHisMsg', '3': 3, '4': 1, '5': 11, '6': '.pb_msg_group.GroupHistoryMsg', '10': 'lastHisMsg'},
  ],
};

/// Descriptor for `UserGroupsNewMsgInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userGroupsNewMsgInfoDescriptor = $convert.base64Decode(
    'ChRVc2VyR3JvdXBzTmV3TXNnSW5mbxIYCgdncm91cElkGAEgASgDUgdncm91cElkEiAKC25ld0'
    '1zZ0NvdW50GAIgASgFUgtuZXdNc2dDb3VudBI9CgpsYXN0SGlzTXNnGAMgASgLMh0ucGJfbXNn'
    'X2dyb3VwLkdyb3VwSGlzdG9yeU1zZ1IKbGFzdEhpc01zZw==');

@$core.Deprecated('Use groupsNewMsgInfoNotifyDescriptor instead')
const GroupsNewMsgInfoNotify$json = {
  '1': 'GroupsNewMsgInfoNotify',
  '2': [
    {'1': 'infoItem', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_group.UserGroupsNewMsgInfo', '10': 'infoItem'},
  ],
};

/// Descriptor for `GroupsNewMsgInfoNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupsNewMsgInfoNotifyDescriptor = $convert.base64Decode(
    'ChZHcm91cHNOZXdNc2dJbmZvTm90aWZ5Ej4KCGluZm9JdGVtGAQgAygLMiIucGJfbXNnX2dyb3'
    'VwLlVzZXJHcm91cHNOZXdNc2dJbmZvUghpbmZvSXRlbQ==');

@$core.Deprecated('Use fetchGroupHistoryMsgReqDescriptor instead')
const FetchGroupHistoryMsgReq$json = {
  '1': 'FetchGroupHistoryMsgReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'startCreatedAt', '3': 3, '4': 1, '5': 3, '10': 'startCreatedAt'},
    {'1': 'endCreatedAt', '3': 4, '4': 1, '5': 3, '10': 'endCreatedAt'},
    {'1': 'startUpdatedAt', '3': 5, '4': 1, '5': 3, '10': 'startUpdatedAt'},
    {'1': 'endUpdatedAt', '3': 6, '4': 1, '5': 3, '10': 'endUpdatedAt'},
    {'1': 'msgSn', '3': 7, '4': 1, '5': 3, '10': 'msgSn'},
    {'1': 'groupId', '3': 8, '4': 1, '5': 3, '10': 'groupId'},
    {'1': 'msgStatus', '3': 9, '4': 1, '5': 5, '10': 'msgStatus'},
    {'1': 'srcId', '3': 10, '4': 1, '5': 3, '10': 'srcId'},
    {'1': 'pbName', '3': 11, '4': 1, '5': 9, '10': 'pbName'},
  ],
};

/// Descriptor for `FetchGroupHistoryMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchGroupHistoryMsgReqDescriptor = $convert.base64Decode(
    'ChdGZXRjaEdyb3VwSGlzdG9yeU1zZ1JlcRISCgRwYWdlGAEgASgDUgRwYWdlEhoKCHBhZ2VTaX'
    'plGAIgASgDUghwYWdlU2l6ZRImCg5zdGFydENyZWF0ZWRBdBgDIAEoA1IOc3RhcnRDcmVhdGVk'
    'QXQSIgoMZW5kQ3JlYXRlZEF0GAQgASgDUgxlbmRDcmVhdGVkQXQSJgoOc3RhcnRVcGRhdGVkQX'
    'QYBSABKANSDnN0YXJ0VXBkYXRlZEF0EiIKDGVuZFVwZGF0ZWRBdBgGIAEoA1IMZW5kVXBkYXRl'
    'ZEF0EhQKBW1zZ1NuGAcgASgDUgVtc2dTbhIYCgdncm91cElkGAggASgDUgdncm91cElkEhwKCW'
    '1zZ1N0YXR1cxgJIAEoBVIJbXNnU3RhdHVzEhQKBXNyY0lkGAogASgDUgVzcmNJZBIWCgZwYk5h'
    'bWUYCyABKAlSBnBiTmFtZQ==');

@$core.Deprecated('Use fetchGroupHistoryMsgRspDescriptor instead')
const FetchGroupHistoryMsgRsp$json = {
  '1': 'FetchGroupHistoryMsgRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 3, '10': 'pageSize'},
    {'1': 'total', '3': 3, '4': 1, '5': 3, '10': 'total'},
    {'1': 'pbHisMsg', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_group.GroupHistoryMsg', '10': 'pbHisMsg'},
  ],
};

/// Descriptor for `FetchGroupHistoryMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchGroupHistoryMsgRspDescriptor = $convert.base64Decode(
    'ChdGZXRjaEdyb3VwSGlzdG9yeU1zZ1JzcBISCgRwYWdlGAEgASgDUgRwYWdlEhoKCHBhZ2VTaX'
    'plGAIgASgDUghwYWdlU2l6ZRIUCgV0b3RhbBgDIAEoA1IFdG90YWwSOQoIcGJIaXNNc2cYBCAD'
    'KAsyHS5wYl9tc2dfZ3JvdXAuR3JvdXBIaXN0b3J5TXNnUghwYkhpc01zZw==');

@$core.Deprecated('Use fetchGroupHistoryMsgFromGroupMsgSnReqDescriptor instead')
const FetchGroupHistoryMsgFromGroupMsgSnReq$json = {
  '1': 'FetchGroupHistoryMsgFromGroupMsgSnReq',
  '2': [
    {'1': 'startGroupMsgSn', '3': 1, '4': 1, '5': 3, '10': 'startGroupMsgSn'},
    {'1': 'wantCount', '3': 2, '4': 1, '5': 3, '10': 'wantCount'},
    {'1': 'orderDesc', '3': 3, '4': 1, '5': 8, '10': 'orderDesc'},
  ],
};

/// Descriptor for `FetchGroupHistoryMsgFromGroupMsgSnReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchGroupHistoryMsgFromGroupMsgSnReqDescriptor = $convert.base64Decode(
    'CiVGZXRjaEdyb3VwSGlzdG9yeU1zZ0Zyb21Hcm91cE1zZ1NuUmVxEigKD3N0YXJ0R3JvdXBNc2'
    'dTbhgBIAEoA1IPc3RhcnRHcm91cE1zZ1NuEhwKCXdhbnRDb3VudBgCIAEoA1IJd2FudENvdW50'
    'EhwKCW9yZGVyRGVzYxgDIAEoCFIJb3JkZXJEZXNj');

@$core.Deprecated('Use fetchGroupHistoryMsgFromGroupMsgSnRspDescriptor instead')
const FetchGroupHistoryMsgFromGroupMsgSnRsp$json = {
  '1': 'FetchGroupHistoryMsgFromGroupMsgSnRsp',
  '2': [
    {'1': 'startGroupMsgSn', '3': 1, '4': 1, '5': 3, '10': 'startGroupMsgSn'},
    {'1': 'wantCount', '3': 2, '4': 1, '5': 3, '10': 'wantCount'},
    {'1': 'orderDesc', '3': 3, '4': 1, '5': 8, '10': 'orderDesc'},
    {'1': 'pbHisMsg', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_group.GroupHistoryMsg', '10': 'pbHisMsg'},
  ],
};

/// Descriptor for `FetchGroupHistoryMsgFromGroupMsgSnRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchGroupHistoryMsgFromGroupMsgSnRspDescriptor = $convert.base64Decode(
    'CiVGZXRjaEdyb3VwSGlzdG9yeU1zZ0Zyb21Hcm91cE1zZ1NuUnNwEigKD3N0YXJ0R3JvdXBNc2'
    'dTbhgBIAEoA1IPc3RhcnRHcm91cE1zZ1NuEhwKCXdhbnRDb3VudBgCIAEoA1IJd2FudENvdW50'
    'EhwKCW9yZGVyRGVzYxgDIAEoCFIJb3JkZXJEZXNjEjkKCHBiSGlzTXNnGAQgAygLMh0ucGJfbX'
    'NnX2dyb3VwLkdyb3VwSGlzdG9yeU1zZ1IIcGJIaXNNc2c=');

@$core.Deprecated('Use groupTopSetReqDescriptor instead')
const GroupTopSetReq$json = {
  '1': 'GroupTopSetReq',
  '2': [
    {'1': 'top', '3': 1, '4': 1, '5': 8, '10': 'top'},
  ],
};

/// Descriptor for `GroupTopSetReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupTopSetReqDescriptor = $convert.base64Decode(
    'Cg5Hcm91cFRvcFNldFJlcRIQCgN0b3AYASABKAhSA3RvcA==');

@$core.Deprecated('Use groupTopSetRspDescriptor instead')
const GroupTopSetRsp$json = {
  '1': 'GroupTopSetRsp',
  '2': [
    {'1': 'top', '3': 1, '4': 1, '5': 8, '10': 'top'},
  ],
};

/// Descriptor for `GroupTopSetRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupTopSetRspDescriptor = $convert.base64Decode(
    'Cg5Hcm91cFRvcFNldFJzcBIQCgN0b3AYASABKAhSA3RvcA==');

@$core.Deprecated('Use editGroupRemarkReqDescriptor instead')
const EditGroupRemarkReq$json = {
  '1': 'EditGroupRemarkReq',
  '2': [
    {'1': 'remark', '3': 1, '4': 1, '5': 9, '10': 'remark'},
  ],
};

/// Descriptor for `EditGroupRemarkReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editGroupRemarkReqDescriptor = $convert.base64Decode(
    'ChJFZGl0R3JvdXBSZW1hcmtSZXESFgoGcmVtYXJrGAEgASgJUgZyZW1hcms=');

@$core.Deprecated('Use editGroupRemarkRspDescriptor instead')
const EditGroupRemarkRsp$json = {
  '1': 'EditGroupRemarkRsp',
  '2': [
    {'1': 'remark', '3': 1, '4': 1, '5': 9, '10': 'remark'},
  ],
};

/// Descriptor for `EditGroupRemarkRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editGroupRemarkRspDescriptor = $convert.base64Decode(
    'ChJFZGl0R3JvdXBSZW1hcmtSc3ASFgoGcmVtYXJrGAEgASgJUgZyZW1hcms=');

@$core.Deprecated('Use editMemberRemarkReqDescriptor instead')
const EditMemberRemarkReq$json = {
  '1': 'EditMemberRemarkReq',
  '2': [
    {'1': 'remarkedUserId', '3': 1, '4': 1, '5': 3, '10': 'remarkedUserId'},
    {'1': 'remark', '3': 2, '4': 1, '5': 9, '10': 'remark'},
  ],
};

/// Descriptor for `EditMemberRemarkReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editMemberRemarkReqDescriptor = $convert.base64Decode(
    'ChNFZGl0TWVtYmVyUmVtYXJrUmVxEiYKDnJlbWFya2VkVXNlcklkGAEgASgDUg5yZW1hcmtlZF'
    'VzZXJJZBIWCgZyZW1hcmsYAiABKAlSBnJlbWFyaw==');

@$core.Deprecated('Use editMemberRemarkRspDescriptor instead')
const EditMemberRemarkRsp$json = {
  '1': 'EditMemberRemarkRsp',
  '2': [
    {'1': 'remarkedUserId', '3': 1, '4': 1, '5': 3, '10': 'remarkedUserId'},
    {'1': 'remark', '3': 2, '4': 1, '5': 9, '10': 'remark'},
  ],
};

/// Descriptor for `EditMemberRemarkRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editMemberRemarkRspDescriptor = $convert.base64Decode(
    'ChNFZGl0TWVtYmVyUmVtYXJrUnNwEiYKDnJlbWFya2VkVXNlcklkGAEgASgDUg5yZW1hcmtlZF'
    'VzZXJJZBIWCgZyZW1hcmsYAiABKAlSBnJlbWFyaw==');

@$core.Deprecated('Use isGroupMemberReqDescriptor instead')
const IsGroupMemberReq$json = {
  '1': 'IsGroupMemberReq',
};

/// Descriptor for `IsGroupMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isGroupMemberReqDescriptor = $convert.base64Decode(
    'ChBJc0dyb3VwTWVtYmVyUmVx');

@$core.Deprecated('Use isGroupMemberRspDescriptor instead')
const IsGroupMemberRsp$json = {
  '1': 'IsGroupMemberRsp',
  '2': [
    {'1': 'IsGroupMember', '3': 1, '4': 1, '5': 8, '10': 'IsGroupMember'},
  ],
};

/// Descriptor for `IsGroupMemberRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isGroupMemberRspDescriptor = $convert.base64Decode(
    'ChBJc0dyb3VwTWVtYmVyUnNwEiQKDUlzR3JvdXBNZW1iZXIYASABKAhSDUlzR3JvdXBNZW1iZX'
    'I=');

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

@$core.Deprecated('Use groupOfflineMsgStatusChangeNotifyDescriptor instead')
const GroupOfflineMsgStatusChangeNotify$json = {
  '1': 'GroupOfflineMsgStatusChangeNotify',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 3, '10': 'session'},
    {'1': 'StatusChangeItems', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_group.StatusChangeItem', '10': 'StatusChangeItems'},
  ],
};

/// Descriptor for `GroupOfflineMsgStatusChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupOfflineMsgStatusChangeNotifyDescriptor = $convert.base64Decode(
    'CiFHcm91cE9mZmxpbmVNc2dTdGF0dXNDaGFuZ2VOb3RpZnkSGAoHc2Vzc2lvbhgBIAEoA1IHc2'
    'Vzc2lvbhJMChFTdGF0dXNDaGFuZ2VJdGVtcxgCIAMoCzIeLnBiX21zZ19ncm91cC5TdGF0dXND'
    'aGFuZ2VJdGVtUhFTdGF0dXNDaGFuZ2VJdGVtcw==');

@$core.Deprecated('Use groupOfflineMsgStatusChangeNotifyReceivedDescriptor instead')
const GroupOfflineMsgStatusChangeNotifyReceived$json = {
  '1': 'GroupOfflineMsgStatusChangeNotifyReceived',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 3, '10': 'session'},
  ],
};

/// Descriptor for `GroupOfflineMsgStatusChangeNotifyReceived`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupOfflineMsgStatusChangeNotifyReceivedDescriptor = $convert.base64Decode(
    'CilHcm91cE9mZmxpbmVNc2dTdGF0dXNDaGFuZ2VOb3RpZnlSZWNlaXZlZBIYCgdzZXNzaW9uGA'
    'EgASgDUgdzZXNzaW9u');

@$core.Deprecated('Use setMemberChatBannedStatusReqDescriptor instead')
const SetMemberChatBannedStatusReq$json = {
  '1': 'SetMemberChatBannedStatusReq',
  '2': [
    {'1': 'bannedStatus', '3': 1, '4': 1, '5': 5, '10': 'bannedStatus'},
  ],
};

/// Descriptor for `SetMemberChatBannedStatusReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setMemberChatBannedStatusReqDescriptor = $convert.base64Decode(
    'ChxTZXRNZW1iZXJDaGF0QmFubmVkU3RhdHVzUmVxEiIKDGJhbm5lZFN0YXR1cxgBIAEoBVIMYm'
    'FubmVkU3RhdHVz');

@$core.Deprecated('Use setMemberChatBannedStatusRspDescriptor instead')
const SetMemberChatBannedStatusRsp$json = {
  '1': 'SetMemberChatBannedStatusRsp',
  '2': [
    {'1': 'bannedStatus', '3': 1, '4': 1, '5': 5, '10': 'bannedStatus'},
  ],
};

/// Descriptor for `SetMemberChatBannedStatusRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setMemberChatBannedStatusRspDescriptor = $convert.base64Decode(
    'ChxTZXRNZW1iZXJDaGF0QmFubmVkU3RhdHVzUnNwEiIKDGJhbm5lZFN0YXR1cxgBIAEoBVIMYm'
    'FubmVkU3RhdHVz');

@$core.Deprecated('Use setNewMemberRemindReqDescriptor instead')
const SetNewMemberRemindReq$json = {
  '1': 'SetNewMemberRemindReq',
  '2': [
    {'1': 'newMemberRemindClosed', '3': 1, '4': 1, '5': 8, '10': 'newMemberRemindClosed'},
  ],
};

/// Descriptor for `SetNewMemberRemindReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setNewMemberRemindReqDescriptor = $convert.base64Decode(
    'ChVTZXROZXdNZW1iZXJSZW1pbmRSZXESNAoVbmV3TWVtYmVyUmVtaW5kQ2xvc2VkGAEgASgIUh'
    'VuZXdNZW1iZXJSZW1pbmRDbG9zZWQ=');

@$core.Deprecated('Use setNewMemberRemindRspDescriptor instead')
const SetNewMemberRemindRsp$json = {
  '1': 'SetNewMemberRemindRsp',
  '2': [
    {'1': 'newMemberRemindClosed', '3': 1, '4': 1, '5': 8, '10': 'newMemberRemindClosed'},
  ],
};

/// Descriptor for `SetNewMemberRemindRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setNewMemberRemindRspDescriptor = $convert.base64Decode(
    'ChVTZXROZXdNZW1iZXJSZW1pbmRSc3ASNAoVbmV3TWVtYmVyUmVtaW5kQ2xvc2VkGAEgASgIUh'
    'VuZXdNZW1iZXJSZW1pbmRDbG9zZWQ=');

@$core.Deprecated('Use memberChatBannedStatusChangeNotifyDescriptor instead')
const MemberChatBannedStatusChangeNotify$json = {
  '1': 'MemberChatBannedStatusChangeNotify',
  '2': [
    {'1': 'bannedStatus', '3': 1, '4': 1, '5': 5, '10': 'bannedStatus'},
  ],
};

/// Descriptor for `MemberChatBannedStatusChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberChatBannedStatusChangeNotifyDescriptor = $convert.base64Decode(
    'CiJNZW1iZXJDaGF0QmFubmVkU3RhdHVzQ2hhbmdlTm90aWZ5EiIKDGJhbm5lZFN0YXR1cxgBIA'
    'EoBVIMYmFubmVkU3RhdHVz');

@$core.Deprecated('Use setScanCodeJoinGroupSwitchReqDescriptor instead')
const SetScanCodeJoinGroupSwitchReq$json = {
  '1': 'SetScanCodeJoinGroupSwitchReq',
  '2': [
    {'1': 'switchStatus', '3': 1, '4': 1, '5': 8, '10': 'switchStatus'},
  ],
};

/// Descriptor for `SetScanCodeJoinGroupSwitchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setScanCodeJoinGroupSwitchReqDescriptor = $convert.base64Decode(
    'Ch1TZXRTY2FuQ29kZUpvaW5Hcm91cFN3aXRjaFJlcRIiCgxzd2l0Y2hTdGF0dXMYASABKAhSDH'
    'N3aXRjaFN0YXR1cw==');

@$core.Deprecated('Use setScanCodeJoinGroupSwitchRspDescriptor instead')
const SetScanCodeJoinGroupSwitchRsp$json = {
  '1': 'SetScanCodeJoinGroupSwitchRsp',
  '2': [
    {'1': 'switchStatus', '3': 1, '4': 1, '5': 8, '10': 'switchStatus'},
    {'1': 'scanCodeKey', '3': 2, '4': 1, '5': 9, '10': 'scanCodeKey'},
  ],
};

/// Descriptor for `SetScanCodeJoinGroupSwitchRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setScanCodeJoinGroupSwitchRspDescriptor = $convert.base64Decode(
    'Ch1TZXRTY2FuQ29kZUpvaW5Hcm91cFN3aXRjaFJzcBIiCgxzd2l0Y2hTdGF0dXMYASABKAhSDH'
    'N3aXRjaFN0YXR1cxIgCgtzY2FuQ29kZUtleRgCIAEoCVILc2NhbkNvZGVLZXk=');

@$core.Deprecated('Use scanCodeJoinGroupSwitchStatusChangeNotifyDescriptor instead')
const ScanCodeJoinGroupSwitchStatusChangeNotify$json = {
  '1': 'ScanCodeJoinGroupSwitchStatusChangeNotify',
  '2': [
    {'1': 'switchStatus', '3': 1, '4': 1, '5': 8, '10': 'switchStatus'},
    {'1': 'scanCodeKey', '3': 2, '4': 1, '5': 9, '10': 'scanCodeKey'},
  ],
};

/// Descriptor for `ScanCodeJoinGroupSwitchStatusChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanCodeJoinGroupSwitchStatusChangeNotifyDescriptor = $convert.base64Decode(
    'CilTY2FuQ29kZUpvaW5Hcm91cFN3aXRjaFN0YXR1c0NoYW5nZU5vdGlmeRIiCgxzd2l0Y2hTdG'
    'F0dXMYASABKAhSDHN3aXRjaFN0YXR1cxIgCgtzY2FuQ29kZUtleRgCIAEoCVILc2NhbkNvZGVL'
    'ZXk=');

@$core.Deprecated('Use clearHisMsgReqDescriptor instead')
const ClearHisMsgReq$json = {
  '1': 'ClearHisMsgReq',
};

/// Descriptor for `ClearHisMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clearHisMsgReqDescriptor = $convert.base64Decode(
    'Cg5DbGVhckhpc01zZ1JlcQ==');

@$core.Deprecated('Use clearHisMsgRspDescriptor instead')
const ClearHisMsgRsp$json = {
  '1': 'ClearHisMsgRsp',
};

/// Descriptor for `ClearHisMsgRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clearHisMsgRspDescriptor = $convert.base64Decode(
    'Cg5DbGVhckhpc01zZ1JzcA==');

@$core.Deprecated('Use setFreeJoinStatusReqDescriptor instead')
const SetFreeJoinStatusReq$json = {
  '1': 'SetFreeJoinStatusReq',
  '2': [
    {'1': 'freeJoinStatus', '3': 1, '4': 1, '5': 8, '10': 'freeJoinStatus'},
  ],
};

/// Descriptor for `SetFreeJoinStatusReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFreeJoinStatusReqDescriptor = $convert.base64Decode(
    'ChRTZXRGcmVlSm9pblN0YXR1c1JlcRImCg5mcmVlSm9pblN0YXR1cxgBIAEoCFIOZnJlZUpvaW'
    '5TdGF0dXM=');

@$core.Deprecated('Use setFreeJoinStatusRspDescriptor instead')
const SetFreeJoinStatusRsp$json = {
  '1': 'SetFreeJoinStatusRsp',
  '2': [
    {'1': 'freeJoinStatus', '3': 1, '4': 1, '5': 8, '10': 'freeJoinStatus'},
  ],
};

/// Descriptor for `SetFreeJoinStatusRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFreeJoinStatusRspDescriptor = $convert.base64Decode(
    'ChRTZXRGcmVlSm9pblN0YXR1c1JzcBImCg5mcmVlSm9pblN0YXR1cxgBIAEoCFIOZnJlZUpvaW'
    '5TdGF0dXM=');

@$core.Deprecated('Use freeJoinStatusChangeNotifyDescriptor instead')
const FreeJoinStatusChangeNotify$json = {
  '1': 'FreeJoinStatusChangeNotify',
  '2': [
    {'1': 'freeJoinStatus', '3': 1, '4': 1, '5': 8, '10': 'freeJoinStatus'},
  ],
};

/// Descriptor for `FreeJoinStatusChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List freeJoinStatusChangeNotifyDescriptor = $convert.base64Decode(
    'ChpGcmVlSm9pblN0YXR1c0NoYW5nZU5vdGlmeRImCg5mcmVlSm9pblN0YXR1cxgBIAEoCFIOZn'
    'JlZUpvaW5TdGF0dXM=');

@$core.Deprecated('Use setGroupPropReqDescriptor instead')
const SetGroupPropReq$json = {
  '1': 'SetGroupPropReq',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SetGroupPropReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setGroupPropReqDescriptor = $convert.base64Decode(
    'Cg9TZXRHcm91cFByb3BSZXESEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbH'
    'Vl');

@$core.Deprecated('Use groupPropChangeNotifyDescriptor instead')
const GroupPropChangeNotify$json = {
  '1': 'GroupPropChangeNotify',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `GroupPropChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupPropChangeNotifyDescriptor = $convert.base64Decode(
    'ChVHcm91cFByb3BDaGFuZ2VOb3RpZnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKA'
    'lSBXZhbHVl');

