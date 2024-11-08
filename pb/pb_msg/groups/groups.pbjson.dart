//
//  Generated code. Do not modify.
//  source: pb_msg/groups/groups.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createGroupReqDescriptor instead')
const CreateGroupReq$json = {
  '1': 'CreateGroupReq',
};

/// Descriptor for `CreateGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGroupReqDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVHcm91cFJlcQ==');

@$core.Deprecated('Use createGroupRspDescriptor instead')
const CreateGroupRsp$json = {
  '1': 'CreateGroupRsp',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `CreateGroupRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGroupRspDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVHcm91cFJzcBIYCgdncm91cElkGAEgASgDUgdncm91cElk');

@$core.Deprecated('Use deleteGroupReqDescriptor instead')
const DeleteGroupReq$json = {
  '1': 'DeleteGroupReq',
};

/// Descriptor for `DeleteGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteGroupReqDescriptor = $convert.base64Decode(
    'Cg5EZWxldGVHcm91cFJlcQ==');

@$core.Deprecated('Use deleteGroupRspDescriptor instead')
const DeleteGroupRsp$json = {
  '1': 'DeleteGroupRsp',
};

/// Descriptor for `DeleteGroupRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteGroupRspDescriptor = $convert.base64Decode(
    'Cg5EZWxldGVHcm91cFJzcA==');

@$core.Deprecated('Use addMemberReqDescriptor instead')
const AddMemberReq$json = {
  '1': 'AddMemberReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `AddMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addMemberReqDescriptor = $convert.base64Decode(
    'CgxBZGRNZW1iZXJSZXESFgoGdXNlcklkGAEgASgDUgZ1c2VySWQ=');

@$core.Deprecated('Use addMemberRspDescriptor instead')
const AddMemberRsp$json = {
  '1': 'AddMemberRsp',
};

/// Descriptor for `AddMemberRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addMemberRspDescriptor = $convert.base64Decode(
    'CgxBZGRNZW1iZXJSc3A=');

@$core.Deprecated('Use removeMemberReqDescriptor instead')
const RemoveMemberReq$json = {
  '1': 'RemoveMemberReq',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `RemoveMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeMemberReqDescriptor = $convert.base64Decode(
    'Cg9SZW1vdmVNZW1iZXJSZXESFgoGdXNlcklkGAEgASgDUgZ1c2VySWQ=');

@$core.Deprecated('Use removeMemberRspDescriptor instead')
const RemoveMemberRsp$json = {
  '1': 'RemoveMemberRsp',
};

/// Descriptor for `RemoveMemberRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeMemberRspDescriptor = $convert.base64Decode(
    'Cg9SZW1vdmVNZW1iZXJSc3A=');

@$core.Deprecated('Use updateMemberReqDescriptor instead')
const UpdateMemberReq$json = {
  '1': 'UpdateMemberReq',
  '2': [
    {'1': 'online', '3': 1, '4': 1, '5': 8, '10': 'online'},
    {'1': 'addr', '3': 2, '4': 1, '5': 9, '10': 'addr'},
  ],
};

/// Descriptor for `UpdateMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMemberReqDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVNZW1iZXJSZXESFgoGb25saW5lGAEgASgIUgZvbmxpbmUSEgoEYWRkchgCIAEoCV'
    'IEYWRkcg==');

@$core.Deprecated('Use updateMemberRspDescriptor instead')
const UpdateMemberRsp$json = {
  '1': 'UpdateMemberRsp',
};

/// Descriptor for `UpdateMemberRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMemberRspDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVNZW1iZXJSc3A=');

@$core.Deprecated('Use updateUserReqDescriptor instead')
const UpdateUserReq$json = {
  '1': 'UpdateUserReq',
  '2': [
    {'1': 'online', '3': 1, '4': 1, '5': 8, '10': 'online'},
    {'1': 'addr', '3': 2, '4': 1, '5': 9, '10': 'addr'},
  ],
};

/// Descriptor for `UpdateUserReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserReqDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVVc2VyUmVxEhYKBm9ubGluZRgBIAEoCFIGb25saW5lEhIKBGFkZHIYAiABKAlSBG'
    'FkZHI=');

@$core.Deprecated('Use updateUserRspDescriptor instead')
const UpdateUserRsp$json = {
  '1': 'UpdateUserRsp',
};

/// Descriptor for `UpdateUserRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRspDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVVc2VyUnNw');

@$core.Deprecated('Use groupMembersReqDescriptor instead')
const GroupMembersReq$json = {
  '1': 'GroupMembersReq',
};

/// Descriptor for `GroupMembersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupMembersReqDescriptor = $convert.base64Decode(
    'Cg9Hcm91cE1lbWJlcnNSZXE=');

@$core.Deprecated('Use groupMembersRspDescriptor instead')
const GroupMembersRsp$json = {
  '1': 'GroupMembersRsp',
  '2': [
    {'1': 'members', '3': 1, '4': 3, '5': 3, '10': 'members'},
  ],
};

/// Descriptor for `GroupMembersRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupMembersRspDescriptor = $convert.base64Decode(
    'Cg9Hcm91cE1lbWJlcnNSc3ASGAoHbWVtYmVycxgBIAMoA1IHbWVtYmVycw==');

@$core.Deprecated('Use memberGroupsReqDescriptor instead')
const MemberGroupsReq$json = {
  '1': 'MemberGroupsReq',
};

/// Descriptor for `MemberGroupsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberGroupsReqDescriptor = $convert.base64Decode(
    'Cg9NZW1iZXJHcm91cHNSZXE=');

@$core.Deprecated('Use memberGroupsRspDescriptor instead')
const MemberGroupsRsp$json = {
  '1': 'MemberGroupsRsp',
  '2': [
    {'1': 'groups', '3': 2, '4': 3, '5': 3, '10': 'groups'},
  ],
};

/// Descriptor for `MemberGroupsRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberGroupsRspDescriptor = $convert.base64Decode(
    'Cg9NZW1iZXJHcm91cHNSc3ASFgoGZ3JvdXBzGAIgAygDUgZncm91cHM=');

@$core.Deprecated('Use groupMessageReqDescriptor instead')
const GroupMessageReq$json = {
  '1': 'GroupMessageReq',
  '2': [
    {'1': 'pbName', '3': 1, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 2, '4': 1, '5': 12, '10': 'pbData'},
  ],
};

/// Descriptor for `GroupMessageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupMessageReqDescriptor = $convert.base64Decode(
    'Cg9Hcm91cE1lc3NhZ2VSZXESFgoGcGJOYW1lGAEgASgJUgZwYk5hbWUSFgoGcGJEYXRhGAIgAS'
    'gMUgZwYkRhdGE=');

@$core.Deprecated('Use groupMessageRspDescriptor instead')
const GroupMessageRsp$json = {
  '1': 'GroupMessageRsp',
};

/// Descriptor for `GroupMessageRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupMessageRspDescriptor = $convert.base64Decode(
    'Cg9Hcm91cE1lc3NhZ2VSc3A=');

@$core.Deprecated('Use memberDescriptor instead')
const Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'client', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.CLIENT_TYPE', '10': 'client'},
    {'1': 'online', '3': 3, '4': 1, '5': 8, '10': 'online'},
    {'1': 'addr', '3': 4, '4': 1, '5': 9, '10': 'addr'},
  ],
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode(
    'CgZNZW1iZXISDgoCaWQYASABKANSAmlkEisKBmNsaWVudBgCIAEoDjITLnBiX3B1Yi5DTElFTl'
    'RfVFlQRVIGY2xpZW50EhYKBm9ubGluZRgDIAEoCFIGb25saW5lEhIKBGFkZHIYBCABKAlSBGFk'
    'ZHI=');

