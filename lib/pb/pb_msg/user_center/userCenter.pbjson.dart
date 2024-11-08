//
//  Generated code. Do not modify.
//  source: pb_msg/user_center/userCenter.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use grantSceneDescriptor instead')
const GrantScene$json = {
  '1': 'GrantScene',
  '2': [
    {'1': 'PrivateChat', '2': 0},
    {'1': 'GroupChat', '2': 1},
  ],
};

/// Descriptor for `GrantScene`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List grantSceneDescriptor = $convert.base64Decode(
    'CgpHcmFudFNjZW5lEg8KC1ByaXZhdGVDaGF0EAASDQoJR3JvdXBDaGF0EAE=');

@$core.Deprecated('Use groupRedPacketTypeDescriptor instead')
const GroupRedPacketType$json = {
  '1': 'GroupRedPacketType',
  '2': [
    {'1': 'Lucky', '2': 0},
    {'1': 'Average', '2': 1},
  ],
};

/// Descriptor for `GroupRedPacketType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List groupRedPacketTypeDescriptor = $convert.base64Decode(
    'ChJHcm91cFJlZFBhY2tldFR5cGUSCQoFTHVja3kQABILCgdBdmVyYWdlEAE=');

@$core.Deprecated('Use redPacketStatusDescriptor instead')
const RedPacketStatus$json = {
  '1': 'RedPacketStatus',
  '2': [
    {'1': 'Edit', '2': 0},
    {'1': 'Going', '2': 1},
    {'1': 'Completed', '2': 2},
    {'1': 'Overtime', '2': 3},
    {'1': 'Refunded', '2': 4},
  ],
};

/// Descriptor for `RedPacketStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List redPacketStatusDescriptor = $convert.base64Decode(
    'Cg9SZWRQYWNrZXRTdGF0dXMSCAoERWRpdBAAEgkKBUdvaW5nEAESDQoJQ29tcGxldGVkEAISDA'
    'oIT3ZlcnRpbWUQAxIMCghSZWZ1bmRlZBAE');

@$core.Deprecated('Use friendInfoReqDescriptor instead')
const FriendInfoReq$json = {
  '1': 'FriendInfoReq',
  '2': [
    {'1': 'friendUserIds', '3': 1, '4': 3, '5': 3, '10': 'friendUserIds'},
  ],
};

/// Descriptor for `FriendInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendInfoReqDescriptor = $convert.base64Decode(
    'Cg1GcmllbmRJbmZvUmVxEiQKDWZyaWVuZFVzZXJJZHMYASADKANSDWZyaWVuZFVzZXJJZHM=');

@$core.Deprecated('Use friendInfoRspDescriptor instead')
const FriendInfoRsp$json = {
  '1': 'FriendInfoRsp',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_userCenter.FriendInfo', '10': 'results'},
  ],
};

/// Descriptor for `FriendInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendInfoRspDescriptor = $convert.base64Decode(
    'Cg1GcmllbmRJbmZvUnNwEjcKB3Jlc3VsdHMYASADKAsyHS5wYl9tc2dfdXNlckNlbnRlci5Gcm'
    'llbmRJbmZvUgdyZXN1bHRz');

@$core.Deprecated('Use usersInfoReqDescriptor instead')
const UsersInfoReq$json = {
  '1': 'UsersInfoReq',
  '2': [
    {'1': 'UserIds', '3': 1, '4': 3, '5': 3, '10': 'UserIds'},
  ],
};

/// Descriptor for `UsersInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usersInfoReqDescriptor = $convert.base64Decode(
    'CgxVc2Vyc0luZm9SZXESGAoHVXNlcklkcxgBIAMoA1IHVXNlcklkcw==');

@$core.Deprecated('Use usersInfoRspDescriptor instead')
const UsersInfoRsp$json = {
  '1': 'UsersInfoRsp',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_userCenter.UsersInfo', '10': 'results'},
  ],
};

/// Descriptor for `UsersInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usersInfoRspDescriptor = $convert.base64Decode(
    'CgxVc2Vyc0luZm9Sc3ASNgoHcmVzdWx0cxgBIAMoCzIcLnBiX21zZ191c2VyQ2VudGVyLlVzZX'
    'JzSW5mb1IHcmVzdWx0cw==');

@$core.Deprecated('Use usersInfoDescriptor instead')
const UsersInfo$json = {
  '1': 'UsersInfo',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'appUserId', '3': 2, '4': 1, '5': 9, '10': 'appUserId'},
    {'1': 'appId', '3': 3, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'registerApp', '3': 4, '4': 1, '5': 9, '10': 'registerApp'},
    {'1': 'gender', '3': 5, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'headerImageOriginal', '3': 6, '4': 1, '5': 9, '10': 'headerImageOriginal'},
    {'1': 'userLevel', '3': 7, '4': 1, '5': 9, '10': 'userLevel'},
    {'1': 'authAccess', '3': 8, '4': 1, '5': 9, '10': 'authAccess'},
    {'1': 'nickName', '3': 9, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'sign', '3': 10, '4': 1, '5': 9, '10': 'sign'},
    {'1': 'actorGrade', '3': 11, '4': 1, '5': 5, '10': 'actorGrade'},
    {'1': 'role', '3': 12, '4': 1, '5': 5, '10': 'role'},
    {'1': 'banned', '3': 13, '4': 1, '5': 8, '10': 'banned'},
    {'1': 'memberFlag', '3': 14, '4': 1, '5': 5, '10': 'memberFlag'},
    {'1': 'bigImageOriginal', '3': 15, '4': 1, '5': 9, '10': 'bigImageOriginal'},
    {'1': 'userSourceVersion', '3': 16, '4': 1, '5': 5, '10': 'userSourceVersion'},
    {'1': 'State', '3': 17, '4': 1, '5': 14, '6': '.pb_pub.USER_STATE_TYPE', '10': 'State'},
    {'1': 'freeAddMeFriend', '3': 18, '4': 1, '5': 8, '10': 'freeAddMeFriend'},
    {'1': 'status', '3': 19, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `UsersInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usersInfoDescriptor = $convert.base64Decode(
    'CglVc2Vyc0luZm8SFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSHAoJYXBwVXNlcklkGAIgASgJUg'
    'lhcHBVc2VySWQSFAoFYXBwSWQYAyABKANSBWFwcElkEiAKC3JlZ2lzdGVyQXBwGAQgASgJUgty'
    'ZWdpc3RlckFwcBIWCgZnZW5kZXIYBSABKAlSBmdlbmRlchIwChNoZWFkZXJJbWFnZU9yaWdpbm'
    'FsGAYgASgJUhNoZWFkZXJJbWFnZU9yaWdpbmFsEhwKCXVzZXJMZXZlbBgHIAEoCVIJdXNlckxl'
    'dmVsEh4KCmF1dGhBY2Nlc3MYCCABKAlSCmF1dGhBY2Nlc3MSGgoIbmlja05hbWUYCSABKAlSCG'
    '5pY2tOYW1lEhIKBHNpZ24YCiABKAlSBHNpZ24SHgoKYWN0b3JHcmFkZRgLIAEoBVIKYWN0b3JH'
    'cmFkZRISCgRyb2xlGAwgASgFUgRyb2xlEhYKBmJhbm5lZBgNIAEoCFIGYmFubmVkEh4KCm1lbW'
    'JlckZsYWcYDiABKAVSCm1lbWJlckZsYWcSKgoQYmlnSW1hZ2VPcmlnaW5hbBgPIAEoCVIQYmln'
    'SW1hZ2VPcmlnaW5hbBIsChF1c2VyU291cmNlVmVyc2lvbhgQIAEoBVIRdXNlclNvdXJjZVZlcn'
    'Npb24SLQoFU3RhdGUYESABKA4yFy5wYl9wdWIuVVNFUl9TVEFURV9UWVBFUgVTdGF0ZRIoCg9m'
    'cmVlQWRkTWVGcmllbmQYEiABKAhSD2ZyZWVBZGRNZUZyaWVuZBIWCgZzdGF0dXMYEyABKAVSBn'
    'N0YXR1cw==');

@$core.Deprecated('Use friendInfoDescriptor instead')
const FriendInfo$json = {
  '1': 'FriendInfo',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'gender', '3': 2, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'headerImageOriginal', '3': 3, '4': 1, '5': 9, '10': 'headerImageOriginal'},
    {'1': 'userLevel', '3': 4, '4': 1, '5': 9, '10': 'userLevel'},
    {'1': 'authAccess', '3': 5, '4': 1, '5': 9, '10': 'authAccess'},
    {'1': 'nickName', '3': 6, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'sign', '3': 7, '4': 1, '5': 9, '10': 'sign'},
    {'1': 'actorGrade', '3': 8, '4': 1, '5': 5, '10': 'actorGrade'},
    {'1': 'packageName', '3': 9, '4': 1, '5': 9, '10': 'packageName'},
    {'1': 'systemVersion', '3': 10, '4': 1, '5': 9, '10': 'systemVersion'},
    {'1': 'phoneModels', '3': 11, '4': 1, '5': 9, '10': 'phoneModels'},
    {'1': 'appVersion', '3': 12, '4': 1, '5': 9, '10': 'appVersion'},
    {'1': 'systemName', '3': 13, '4': 1, '5': 9, '10': 'systemName'},
    {'1': 'identifier', '3': 14, '4': 1, '5': 9, '10': 'identifier'},
    {'1': 'userState', '3': 15, '4': 1, '5': 14, '6': '.pb_pub.USER_STATE_TYPE', '10': 'userState'},
    {'1': 'switchToBack', '3': 16, '4': 1, '5': 8, '10': 'switchToBack'},
    {'1': 'updateTime', '3': 17, '4': 1, '5': 3, '10': 'updateTime'},
    {'1': 'exp', '3': 18, '4': 3, '5': 11, '6': '.pb_msg_userCenter.FriendInfo.ExpEntry', '10': 'exp'},
    {'1': 'appId', '3': 19, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'appUserId', '3': 20, '4': 1, '5': 9, '10': 'appUserId'},
    {'1': 'modelType', '3': 21, '4': 1, '5': 14, '6': '.pb_pub.MODEL_TYPE', '10': 'modelType'},
    {'1': 'userSourceVersion', '3': 22, '4': 1, '5': 5, '10': 'userSourceVersion'},
    {'1': 'status', '3': 23, '4': 1, '5': 5, '10': 'status'},
  ],
  '3': [FriendInfo_ExpEntry$json],
};

@$core.Deprecated('Use friendInfoDescriptor instead')
const FriendInfo_ExpEntry$json = {
  '1': 'ExpEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FriendInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendInfoDescriptor = $convert.base64Decode(
    'CgpGcmllbmRJbmZvEhYKBnVzZXJJZBgBIAEoA1IGdXNlcklkEhYKBmdlbmRlchgCIAEoCVIGZ2'
    'VuZGVyEjAKE2hlYWRlckltYWdlT3JpZ2luYWwYAyABKAlSE2hlYWRlckltYWdlT3JpZ2luYWwS'
    'HAoJdXNlckxldmVsGAQgASgJUgl1c2VyTGV2ZWwSHgoKYXV0aEFjY2VzcxgFIAEoCVIKYXV0aE'
    'FjY2VzcxIaCghuaWNrTmFtZRgGIAEoCVIIbmlja05hbWUSEgoEc2lnbhgHIAEoCVIEc2lnbhIe'
    'CgphY3RvckdyYWRlGAggASgFUgphY3RvckdyYWRlEiAKC3BhY2thZ2VOYW1lGAkgASgJUgtwYW'
    'NrYWdlTmFtZRIkCg1zeXN0ZW1WZXJzaW9uGAogASgJUg1zeXN0ZW1WZXJzaW9uEiAKC3Bob25l'
    'TW9kZWxzGAsgASgJUgtwaG9uZU1vZGVscxIeCgphcHBWZXJzaW9uGAwgASgJUgphcHBWZXJzaW'
    '9uEh4KCnN5c3RlbU5hbWUYDSABKAlSCnN5c3RlbU5hbWUSHgoKaWRlbnRpZmllchgOIAEoCVIK'
    'aWRlbnRpZmllchI1Cgl1c2VyU3RhdGUYDyABKA4yFy5wYl9wdWIuVVNFUl9TVEFURV9UWVBFUg'
    'l1c2VyU3RhdGUSIgoMc3dpdGNoVG9CYWNrGBAgASgIUgxzd2l0Y2hUb0JhY2sSHgoKdXBkYXRl'
    'VGltZRgRIAEoA1IKdXBkYXRlVGltZRI4CgNleHAYEiADKAsyJi5wYl9tc2dfdXNlckNlbnRlci'
    '5GcmllbmRJbmZvLkV4cEVudHJ5UgNleHASFAoFYXBwSWQYEyABKANSBWFwcElkEhwKCWFwcFVz'
    'ZXJJZBgUIAEoCVIJYXBwVXNlcklkEjAKCW1vZGVsVHlwZRgVIAEoDjISLnBiX3B1Yi5NT0RFTF'
    '9UWVBFUgltb2RlbFR5cGUSLAoRdXNlclNvdXJjZVZlcnNpb24YFiABKAVSEXVzZXJTb3VyY2VW'
    'ZXJzaW9uEhYKBnN0YXR1cxgXIAEoBVIGc3RhdHVzGjYKCEV4cEVudHJ5EhAKA2tleRgBIAEoCV'
    'IDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use appUidToImIdReqDescriptor instead')
const AppUidToImIdReq$json = {
  '1': 'AppUidToImIdReq',
  '2': [
    {'1': 'appId', '3': 1, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'appUserId', '3': 2, '4': 1, '5': 9, '10': 'appUserId'},
  ],
};

/// Descriptor for `AppUidToImIdReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appUidToImIdReqDescriptor = $convert.base64Decode(
    'Cg9BcHBVaWRUb0ltSWRSZXESFAoFYXBwSWQYASABKANSBWFwcElkEhwKCWFwcFVzZXJJZBgCIA'
    'EoCVIJYXBwVXNlcklk');

@$core.Deprecated('Use appUidToImIdRspDescriptor instead')
const AppUidToImIdRsp$json = {
  '1': 'AppUidToImIdRsp',
  '2': [
    {'1': 'appId', '3': 1, '4': 1, '5': 3, '10': 'appId'},
    {'1': 'userId', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'appUserId', '3': 3, '4': 1, '5': 9, '10': 'appUserId'},
  ],
};

/// Descriptor for `AppUidToImIdRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appUidToImIdRspDescriptor = $convert.base64Decode(
    'Cg9BcHBVaWRUb0ltSWRSc3ASFAoFYXBwSWQYASABKANSBWFwcElkEhYKBnVzZXJJZBgCIAEoA1'
    'IGdXNlcklkEhwKCWFwcFVzZXJJZBgDIAEoCVIJYXBwVXNlcklk');

@$core.Deprecated('Use onlineNotifyDescriptor instead')
const OnlineNotify$json = {
  '1': 'OnlineNotify',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `OnlineNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onlineNotifyDescriptor = $convert.base64Decode(
    'CgxPbmxpbmVOb3RpZnkSFgoGdXNlcklkGAEgASgDUgZ1c2VySWQ=');

@$core.Deprecated('Use offlineNotifyDescriptor instead')
const OfflineNotify$json = {
  '1': 'OfflineNotify',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `OfflineNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offlineNotifyDescriptor = $convert.base64Decode(
    'Cg1PZmZsaW5lTm90aWZ5EhYKBnVzZXJJZBgBIAEoA1IGdXNlcklk');

@$core.Deprecated('Use switchBackNotifyDescriptor instead')
const SwitchBackNotify$json = {
  '1': 'SwitchBackNotify',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `SwitchBackNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List switchBackNotifyDescriptor = $convert.base64Decode(
    'ChBTd2l0Y2hCYWNrTm90aWZ5EhYKBnVzZXJJZBgBIAEoA1IGdXNlcklk');

@$core.Deprecated('Use switchFrontNotifyDescriptor instead')
const SwitchFrontNotify$json = {
  '1': 'SwitchFrontNotify',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `SwitchFrontNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List switchFrontNotifyDescriptor = $convert.base64Decode(
    'ChFTd2l0Y2hGcm9udE5vdGlmeRIWCgZ1c2VySWQYASABKANSBnVzZXJJZA==');

@$core.Deprecated('Use heartbeatNotifyDescriptor instead')
const HeartbeatNotify$json = {
  '1': 'HeartbeatNotify',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `HeartbeatNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heartbeatNotifyDescriptor = $convert.base64Decode(
    'Cg9IZWFydGJlYXROb3RpZnkSFgoGdXNlcklkGAEgASgDUgZ1c2VySWQ=');

@$core.Deprecated('Use redPacketHandOutReqDescriptor instead')
const RedPacketHandOutReq$json = {
  '1': 'RedPacketHandOutReq',
  '2': [
    {'1': 'grantUserId', '3': 1, '4': 1, '5': 3, '10': 'grantUserId'},
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'grantScene', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_userCenter.GrantScene', '10': 'grantScene'},
    {'1': 'groupRedPacketType', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_userCenter.GroupRedPacketType', '10': 'groupRedPacketType'},
    {'1': 'aimId', '3': 5, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'groupAimId', '3': 6, '4': 1, '5': 3, '10': 'groupAimId'},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    {'1': 'createCount', '3': 8, '4': 1, '5': 5, '10': 'createCount'},
    {'1': 'createValue', '3': 9, '4': 1, '5': 3, '10': 'createValue'},
    {'1': 'walletPasswd', '3': 10, '4': 1, '5': 9, '10': 'walletPasswd'},
    {'1': 'aimName', '3': 11, '4': 1, '5': 9, '10': 'aimName'},
  ],
};

/// Descriptor for `RedPacketHandOutReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketHandOutReqDescriptor = $convert.base64Decode(
    'ChNSZWRQYWNrZXRIYW5kT3V0UmVxEiAKC2dyYW50VXNlcklkGAEgASgDUgtncmFudFVzZXJJZB'
    'IeCgp3YWxsZXRUeXBlGAIgASgFUgp3YWxsZXRUeXBlEj0KCmdyYW50U2NlbmUYAyABKA4yHS5w'
    'Yl9tc2dfdXNlckNlbnRlci5HcmFudFNjZW5lUgpncmFudFNjZW5lElUKEmdyb3VwUmVkUGFja2'
    'V0VHlwZRgEIAEoDjIlLnBiX21zZ191c2VyQ2VudGVyLkdyb3VwUmVkUGFja2V0VHlwZVISZ3Jv'
    'dXBSZWRQYWNrZXRUeXBlEhQKBWFpbUlkGAUgASgDUgVhaW1JZBIeCgpncm91cEFpbUlkGAYgAS'
    'gDUgpncm91cEFpbUlkEiAKC2Rlc2NyaXB0aW9uGAcgASgJUgtkZXNjcmlwdGlvbhIgCgtjcmVh'
    'dGVDb3VudBgIIAEoBVILY3JlYXRlQ291bnQSIAoLY3JlYXRlVmFsdWUYCSABKANSC2NyZWF0ZV'
    'ZhbHVlEiIKDHdhbGxldFBhc3N3ZBgKIAEoCVIMd2FsbGV0UGFzc3dkEhgKB2FpbU5hbWUYCyAB'
    'KAlSB2FpbU5hbWU=');

@$core.Deprecated('Use redPacketHandOutRspDescriptor instead')
const RedPacketHandOutRsp$json = {
  '1': 'RedPacketHandOutRsp',
  '2': [
    {'1': 'redPacketId', '3': 1, '4': 1, '5': 3, '10': 'redPacketId'},
    {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_userCenter.RedPacketInfo', '10': 'info'},
    {'1': 'errCode', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'errCode'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `RedPacketHandOutRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketHandOutRspDescriptor = $convert.base64Decode(
    'ChNSZWRQYWNrZXRIYW5kT3V0UnNwEiAKC3JlZFBhY2tldElkGAEgASgDUgtyZWRQYWNrZXRJZB'
    'I0CgRpbmZvGAIgASgLMiAucGJfbXNnX3VzZXJDZW50ZXIuUmVkUGFja2V0SW5mb1IEaW5mbxIp'
    'CgdlcnJDb2RlGAMgASgOMg8ucGJfcHViLkVyckNvZGVSB2VyckNvZGUSFgoGcmVhc29uGAQgAS'
    'gJUgZyZWFzb24=');

@$core.Deprecated('Use redPacketInfoDescriptor instead')
const RedPacketInfo$json = {
  '1': 'RedPacketInfo',
  '2': [
    {'1': 'redPacketId', '3': 1, '4': 1, '5': 3, '10': 'redPacketId'},
    {'1': 'grantUserId', '3': 2, '4': 1, '5': 3, '10': 'grantUserId'},
    {'1': 'grantScene', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_userCenter.GrantScene', '10': 'grantScene'},
    {'1': 'groupRedPacketType', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_userCenter.GroupRedPacketType', '10': 'groupRedPacketType'},
    {'1': 'aimId', '3': 5, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'groupAimId', '3': 6, '4': 1, '5': 3, '10': 'groupAimId'},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    {'1': 'createCount', '3': 8, '4': 1, '5': 5, '10': 'createCount'},
    {'1': 'createValue', '3': 9, '4': 1, '5': 3, '10': 'createValue'},
    {'1': 'remainCount', '3': 10, '4': 1, '5': 5, '10': 'remainCount'},
    {'1': 'remainValue', '3': 11, '4': 1, '5': 3, '10': 'remainValue'},
    {'1': 'status', '3': 12, '4': 1, '5': 14, '6': '.pb_msg_userCenter.RedPacketStatus', '10': 'status'},
    {'1': 'createTime', '3': 13, '4': 1, '5': 3, '10': 'createTime'},
  ],
};

/// Descriptor for `RedPacketInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketInfoDescriptor = $convert.base64Decode(
    'Cg1SZWRQYWNrZXRJbmZvEiAKC3JlZFBhY2tldElkGAEgASgDUgtyZWRQYWNrZXRJZBIgCgtncm'
    'FudFVzZXJJZBgCIAEoA1ILZ3JhbnRVc2VySWQSPQoKZ3JhbnRTY2VuZRgDIAEoDjIdLnBiX21z'
    'Z191c2VyQ2VudGVyLkdyYW50U2NlbmVSCmdyYW50U2NlbmUSVQoSZ3JvdXBSZWRQYWNrZXRUeX'
    'BlGAQgASgOMiUucGJfbXNnX3VzZXJDZW50ZXIuR3JvdXBSZWRQYWNrZXRUeXBlUhJncm91cFJl'
    'ZFBhY2tldFR5cGUSFAoFYWltSWQYBSABKANSBWFpbUlkEh4KCmdyb3VwQWltSWQYBiABKANSCm'
    'dyb3VwQWltSWQSIAoLZGVzY3JpcHRpb24YByABKAlSC2Rlc2NyaXB0aW9uEiAKC2NyZWF0ZUNv'
    'dW50GAggASgFUgtjcmVhdGVDb3VudBIgCgtjcmVhdGVWYWx1ZRgJIAEoA1ILY3JlYXRlVmFsdW'
    'USIAoLcmVtYWluQ291bnQYCiABKAVSC3JlbWFpbkNvdW50EiAKC3JlbWFpblZhbHVlGAsgASgD'
    'UgtyZW1haW5WYWx1ZRI6CgZzdGF0dXMYDCABKA4yIi5wYl9tc2dfdXNlckNlbnRlci5SZWRQYW'
    'NrZXRTdGF0dXNSBnN0YXR1cxIeCgpjcmVhdGVUaW1lGA0gASgDUgpjcmVhdGVUaW1l');

@$core.Deprecated('Use redPacketNotifyDescriptor instead')
const RedPacketNotify$json = {
  '1': 'RedPacketNotify',
  '2': [
    {'1': 'redPacketId', '3': 1, '4': 1, '5': 3, '10': 'redPacketId'},
    {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_userCenter.RedPacketInfo', '10': 'info'},
  ],
};

/// Descriptor for `RedPacketNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketNotifyDescriptor = $convert.base64Decode(
    'Cg9SZWRQYWNrZXROb3RpZnkSIAoLcmVkUGFja2V0SWQYASABKANSC3JlZFBhY2tldElkEjQKBG'
    'luZm8YAiABKAsyIC5wYl9tc2dfdXNlckNlbnRlci5SZWRQYWNrZXRJbmZvUgRpbmZv');

@$core.Deprecated('Use redPacketReceiveReqDescriptor instead')
const RedPacketReceiveReq$json = {
  '1': 'RedPacketReceiveReq',
  '2': [
    {'1': 'redPacketId', '3': 1, '4': 1, '5': 3, '10': 'redPacketId'},
  ],
};

/// Descriptor for `RedPacketReceiveReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketReceiveReqDescriptor = $convert.base64Decode(
    'ChNSZWRQYWNrZXRSZWNlaXZlUmVxEiAKC3JlZFBhY2tldElkGAEgASgDUgtyZWRQYWNrZXRJZA'
    '==');

@$core.Deprecated('Use redPacketReceiveRspDescriptor instead')
const RedPacketReceiveRsp$json = {
  '1': 'RedPacketReceiveRsp',
  '2': [
    {'1': 'redPacketId', '3': 1, '4': 1, '5': 3, '10': 'redPacketId'},
    {'1': 'walletType', '3': 2, '4': 1, '5': 5, '10': 'walletType'},
    {'1': 'receivedValue', '3': 3, '4': 1, '5': 3, '10': 'receivedValue'},
    {'1': 'grantUserId', '3': 4, '4': 1, '5': 3, '10': 'grantUserId'},
    {'1': 'grantScene', '3': 5, '4': 1, '5': 14, '6': '.pb_msg_userCenter.GrantScene', '10': 'grantScene'},
    {'1': 'groupRedPacketType', '3': 6, '4': 1, '5': 14, '6': '.pb_msg_userCenter.GroupRedPacketType', '10': 'groupRedPacketType'},
    {'1': 'aimId', '3': 7, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'status', '3': 12, '4': 1, '5': 14, '6': '.pb_msg_userCenter.RedPacketStatus', '10': 'status'},
  ],
};

/// Descriptor for `RedPacketReceiveRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketReceiveRspDescriptor = $convert.base64Decode(
    'ChNSZWRQYWNrZXRSZWNlaXZlUnNwEiAKC3JlZFBhY2tldElkGAEgASgDUgtyZWRQYWNrZXRJZB'
    'IeCgp3YWxsZXRUeXBlGAIgASgFUgp3YWxsZXRUeXBlEiQKDXJlY2VpdmVkVmFsdWUYAyABKANS'
    'DXJlY2VpdmVkVmFsdWUSIAoLZ3JhbnRVc2VySWQYBCABKANSC2dyYW50VXNlcklkEj0KCmdyYW'
    '50U2NlbmUYBSABKA4yHS5wYl9tc2dfdXNlckNlbnRlci5HcmFudFNjZW5lUgpncmFudFNjZW5l'
    'ElUKEmdyb3VwUmVkUGFja2V0VHlwZRgGIAEoDjIlLnBiX21zZ191c2VyQ2VudGVyLkdyb3VwUm'
    'VkUGFja2V0VHlwZVISZ3JvdXBSZWRQYWNrZXRUeXBlEhQKBWFpbUlkGAcgASgDUgVhaW1JZBI6'
    'CgZzdGF0dXMYDCABKA4yIi5wYl9tc2dfdXNlckNlbnRlci5SZWRQYWNrZXRTdGF0dXNSBnN0YX'
    'R1cw==');

@$core.Deprecated('Use redPacketReceivedNotifyDescriptor instead')
const RedPacketReceivedNotify$json = {
  '1': 'RedPacketReceivedNotify',
  '2': [
    {'1': 'redPacketId', '3': 1, '4': 1, '5': 3, '10': 'redPacketId'},
    {'1': 'receiveUserId', '3': 2, '4': 1, '5': 3, '10': 'receiveUserId'},
    {'1': 'grantUserId', '3': 3, '4': 1, '5': 3, '10': 'grantUserId'},
    {'1': 'aimId', '3': 4, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'receivedValue', '3': 5, '4': 1, '5': 3, '10': 'receivedValue'},
    {'1': 'remainCount', '3': 6, '4': 1, '5': 5, '10': 'remainCount'},
    {'1': 'remainValue', '3': 7, '4': 1, '5': 3, '10': 'remainValue'},
    {'1': 'status', '3': 8, '4': 1, '5': 14, '6': '.pb_msg_userCenter.RedPacketStatus', '10': 'status'},
  ],
};

/// Descriptor for `RedPacketReceivedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketReceivedNotifyDescriptor = $convert.base64Decode(
    'ChdSZWRQYWNrZXRSZWNlaXZlZE5vdGlmeRIgCgtyZWRQYWNrZXRJZBgBIAEoA1ILcmVkUGFja2'
    'V0SWQSJAoNcmVjZWl2ZVVzZXJJZBgCIAEoA1INcmVjZWl2ZVVzZXJJZBIgCgtncmFudFVzZXJJ'
    'ZBgDIAEoA1ILZ3JhbnRVc2VySWQSFAoFYWltSWQYBCABKANSBWFpbUlkEiQKDXJlY2VpdmVkVm'
    'FsdWUYBSABKANSDXJlY2VpdmVkVmFsdWUSIAoLcmVtYWluQ291bnQYBiABKAVSC3JlbWFpbkNv'
    'dW50EiAKC3JlbWFpblZhbHVlGAcgASgDUgtyZW1haW5WYWx1ZRI6CgZzdGF0dXMYCCABKA4yIi'
    '5wYl9tc2dfdXNlckNlbnRlci5SZWRQYWNrZXRTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use redPacketInfoReqDescriptor instead')
const RedPacketInfoReq$json = {
  '1': 'RedPacketInfoReq',
  '2': [
    {'1': 'redPacketId', '3': 1, '4': 1, '5': 3, '10': 'redPacketId'},
  ],
};

/// Descriptor for `RedPacketInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketInfoReqDescriptor = $convert.base64Decode(
    'ChBSZWRQYWNrZXRJbmZvUmVxEiAKC3JlZFBhY2tldElkGAEgASgDUgtyZWRQYWNrZXRJZA==');

@$core.Deprecated('Use redPacketInfoRspDescriptor instead')
const RedPacketInfoRsp$json = {
  '1': 'RedPacketInfoRsp',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_userCenter.RedPacketInfo', '10': 'data'},
    {'1': 'isMeReceived', '3': 2, '4': 1, '5': 8, '10': 'isMeReceived'},
    {'1': 'iReceivedCount', '3': 3, '4': 1, '5': 3, '10': 'iReceivedCount'},
  ],
};

/// Descriptor for `RedPacketInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketInfoRspDescriptor = $convert.base64Decode(
    'ChBSZWRQYWNrZXRJbmZvUnNwEjQKBGRhdGEYASABKAsyIC5wYl9tc2dfdXNlckNlbnRlci5SZW'
    'RQYWNrZXRJbmZvUgRkYXRhEiIKDGlzTWVSZWNlaXZlZBgCIAEoCFIMaXNNZVJlY2VpdmVkEiYK'
    'DmlSZWNlaXZlZENvdW50GAMgASgDUg5pUmVjZWl2ZWRDb3VudA==');

@$core.Deprecated('Use redPacketReceivedItemDescriptor instead')
const RedPacketReceivedItem$json = {
  '1': 'RedPacketReceivedItem',
  '2': [
    {'1': 'redPacketId', '3': 1, '4': 1, '5': 3, '10': 'redPacketId'},
    {'1': 'grantUserId', '3': 2, '4': 1, '5': 3, '10': 'grantUserId'},
    {'1': 'grantScene', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_userCenter.GrantScene', '10': 'grantScene'},
    {'1': 'groupRedPacketType', '3': 4, '4': 1, '5': 14, '6': '.pb_msg_userCenter.GroupRedPacketType', '10': 'groupRedPacketType'},
    {'1': 'aimId', '3': 5, '4': 1, '5': 3, '10': 'aimId'},
    {'1': 'groupAimId', '3': 6, '4': 1, '5': 3, '10': 'groupAimId'},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    {'1': 'recipientUserId', '3': 8, '4': 1, '5': 3, '10': 'recipientUserId'},
    {'1': 'receivedValue', '3': 9, '4': 1, '5': 3, '10': 'receivedValue'},
    {'1': 'createdTime', '3': 10, '4': 1, '5': 3, '10': 'createdTime'},
  ],
};

/// Descriptor for `RedPacketReceivedItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketReceivedItemDescriptor = $convert.base64Decode(
    'ChVSZWRQYWNrZXRSZWNlaXZlZEl0ZW0SIAoLcmVkUGFja2V0SWQYASABKANSC3JlZFBhY2tldE'
    'lkEiAKC2dyYW50VXNlcklkGAIgASgDUgtncmFudFVzZXJJZBI9CgpncmFudFNjZW5lGAMgASgO'
    'Mh0ucGJfbXNnX3VzZXJDZW50ZXIuR3JhbnRTY2VuZVIKZ3JhbnRTY2VuZRJVChJncm91cFJlZF'
    'BhY2tldFR5cGUYBCABKA4yJS5wYl9tc2dfdXNlckNlbnRlci5Hcm91cFJlZFBhY2tldFR5cGVS'
    'Emdyb3VwUmVkUGFja2V0VHlwZRIUCgVhaW1JZBgFIAEoA1IFYWltSWQSHgoKZ3JvdXBBaW1JZB'
    'gGIAEoA1IKZ3JvdXBBaW1JZBIgCgtkZXNjcmlwdGlvbhgHIAEoCVILZGVzY3JpcHRpb24SKAoP'
    'cmVjaXBpZW50VXNlcklkGAggASgDUg9yZWNpcGllbnRVc2VySWQSJAoNcmVjZWl2ZWRWYWx1ZR'
    'gJIAEoA1INcmVjZWl2ZWRWYWx1ZRIgCgtjcmVhdGVkVGltZRgKIAEoA1ILY3JlYXRlZFRpbWU=');

@$core.Deprecated('Use redPacketMyReceivedListReqDescriptor instead')
const RedPacketMyReceivedListReq$json = {
  '1': 'RedPacketMyReceivedListReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `RedPacketMyReceivedListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketMyReceivedListReqDescriptor = $convert.base64Decode(
    'ChpSZWRQYWNrZXRNeVJlY2VpdmVkTGlzdFJlcRISCgRwYWdlGAEgASgFUgRwYWdlEhoKCHBhZ2'
    'VTaXplGAIgASgFUghwYWdlU2l6ZQ==');

@$core.Deprecated('Use redPacketMyReceivedListRspDescriptor instead')
const RedPacketMyReceivedListRsp$json = {
  '1': 'RedPacketMyReceivedListRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 3, '10': 'totalCount'},
    {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_userCenter.RedPacketReceivedItem', '10': 'items'},
  ],
};

/// Descriptor for `RedPacketMyReceivedListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketMyReceivedListRspDescriptor = $convert.base64Decode(
    'ChpSZWRQYWNrZXRNeVJlY2VpdmVkTGlzdFJzcBISCgRwYWdlGAEgASgFUgRwYWdlEhoKCHBhZ2'
    'VTaXplGAIgASgFUghwYWdlU2l6ZRIeCgp0b3RhbENvdW50GAMgASgDUgp0b3RhbENvdW50Ej4K'
    'BWl0ZW1zGAQgAygLMigucGJfbXNnX3VzZXJDZW50ZXIuUmVkUGFja2V0UmVjZWl2ZWRJdGVtUg'
    'VpdGVtcw==');

@$core.Deprecated('Use redPacketMyHandedOutListReqDescriptor instead')
const RedPacketMyHandedOutListReq$json = {
  '1': 'RedPacketMyHandedOutListReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `RedPacketMyHandedOutListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketMyHandedOutListReqDescriptor = $convert.base64Decode(
    'ChtSZWRQYWNrZXRNeUhhbmRlZE91dExpc3RSZXESEgoEcGFnZRgBIAEoBVIEcGFnZRIaCghwYW'
    'dlU2l6ZRgCIAEoBVIIcGFnZVNpemU=');

@$core.Deprecated('Use redPacketMyHandedOutListRspDescriptor instead')
const RedPacketMyHandedOutListRsp$json = {
  '1': 'RedPacketMyHandedOutListRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 3, '10': 'totalCount'},
    {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_userCenter.RedPacketInfo', '10': 'items'},
  ],
};

/// Descriptor for `RedPacketMyHandedOutListRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketMyHandedOutListRspDescriptor = $convert.base64Decode(
    'ChtSZWRQYWNrZXRNeUhhbmRlZE91dExpc3RSc3ASEgoEcGFnZRgBIAEoBVIEcGFnZRIaCghwYW'
    'dlU2l6ZRgCIAEoBVIIcGFnZVNpemUSHgoKdG90YWxDb3VudBgDIAEoA1IKdG90YWxDb3VudBI2'
    'CgVpdGVtcxgEIAMoCzIgLnBiX21zZ191c2VyQ2VudGVyLlJlZFBhY2tldEluZm9SBWl0ZW1z');

@$core.Deprecated('Use redPacketFlowItemDescriptor instead')
const RedPacketFlowItem$json = {
  '1': 'RedPacketFlowItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'redPacketId', '3': 2, '4': 1, '5': 3, '10': 'redPacketId'},
    {'1': 'recipientUserId', '3': 3, '4': 1, '5': 3, '10': 'recipientUserId'},
    {'1': 'value', '3': 4, '4': 1, '5': 3, '10': 'value'},
    {'1': 'createTime', '3': 5, '4': 1, '5': 3, '10': 'createTime'},
  ],
};

/// Descriptor for `RedPacketFlowItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketFlowItemDescriptor = $convert.base64Decode(
    'ChFSZWRQYWNrZXRGbG93SXRlbRIOCgJpZBgBIAEoA1ICaWQSIAoLcmVkUGFja2V0SWQYAiABKA'
    'NSC3JlZFBhY2tldElkEigKD3JlY2lwaWVudFVzZXJJZBgDIAEoA1IPcmVjaXBpZW50VXNlcklk'
    'EhQKBXZhbHVlGAQgASgDUgV2YWx1ZRIeCgpjcmVhdGVUaW1lGAUgASgDUgpjcmVhdGVUaW1l');

@$core.Deprecated('Use redPacketCurFlowReqDescriptor instead')
const RedPacketCurFlowReq$json = {
  '1': 'RedPacketCurFlowReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'redPacketId', '3': 3, '4': 1, '5': 3, '10': 'redPacketId'},
  ],
};

/// Descriptor for `RedPacketCurFlowReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketCurFlowReqDescriptor = $convert.base64Decode(
    'ChNSZWRQYWNrZXRDdXJGbG93UmVxEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpemUYAi'
    'ABKAVSCHBhZ2VTaXplEiAKC3JlZFBhY2tldElkGAMgASgDUgtyZWRQYWNrZXRJZA==');

@$core.Deprecated('Use redPacketCurFlowRspDescriptor instead')
const RedPacketCurFlowRsp$json = {
  '1': 'RedPacketCurFlowRsp',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'totalCount', '3': 3, '4': 1, '5': 3, '10': 'totalCount'},
    {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_userCenter.RedPacketFlowItem', '10': 'items'},
  ],
};

/// Descriptor for `RedPacketCurFlowRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redPacketCurFlowRspDescriptor = $convert.base64Decode(
    'ChNSZWRQYWNrZXRDdXJGbG93UnNwEhIKBHBhZ2UYASABKAVSBHBhZ2USGgoIcGFnZVNpemUYAi'
    'ABKAVSCHBhZ2VTaXplEh4KCnRvdGFsQ291bnQYAyABKANSCnRvdGFsQ291bnQSOgoFaXRlbXMY'
    'BCADKAsyJC5wYl9tc2dfdXNlckNlbnRlci5SZWRQYWNrZXRGbG93SXRlbVIFaXRlbXM=');

