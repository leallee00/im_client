//
//  Generated code. Do not modify.
//  source: pb_grpc/user_center/userCenter.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userThirdInfoReqDescriptor instead')
const UserThirdInfoReq$json = {
  '1': 'UserThirdInfoReq',
  '2': [
    {'1': 'UserId', '3': 1, '4': 1, '5': 3, '10': 'UserId'},
  ],
};

/// Descriptor for `UserThirdInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userThirdInfoReqDescriptor = $convert.base64Decode(
    'ChBVc2VyVGhpcmRJbmZvUmVxEhYKBlVzZXJJZBgBIAEoA1IGVXNlcklk');

@$core.Deprecated('Use userThirdInfoRspDescriptor instead')
const UserThirdInfoRsp$json = {
  '1': 'UserThirdInfoRsp',
  '2': [
    {'1': 'UserId', '3': 1, '4': 1, '5': 3, '10': 'UserId'},
    {'1': 'ThirdUserIdOld', '3': 2, '4': 1, '5': 3, '10': 'ThirdUserIdOld'},
    {'1': 'ThirdAppId', '3': 3, '4': 1, '5': 3, '10': 'ThirdAppId'},
    {'1': 'State', '3': 4, '4': 1, '5': 14, '6': '.pb_pub.USER_STATE_TYPE', '10': 'State'},
    {'1': 'ThirdUserId', '3': 5, '4': 1, '5': 9, '10': 'ThirdUserId'},
  ],
};

/// Descriptor for `UserThirdInfoRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userThirdInfoRspDescriptor = $convert.base64Decode(
    'ChBVc2VyVGhpcmRJbmZvUnNwEhYKBlVzZXJJZBgBIAEoA1IGVXNlcklkEiYKDlRoaXJkVXNlck'
    'lkT2xkGAIgASgDUg5UaGlyZFVzZXJJZE9sZBIeCgpUaGlyZEFwcElkGAMgASgDUgpUaGlyZEFw'
    'cElkEi0KBVN0YXRlGAQgASgOMhcucGJfcHViLlVTRVJfU1RBVEVfVFlQRVIFU3RhdGUSIAoLVG'
    'hpcmRVc2VySWQYBSABKAlSC1RoaXJkVXNlcklk');

@$core.Deprecated('Use userStateReqDescriptor instead')
const UserStateReq$json = {
  '1': 'UserStateReq',
  '2': [
    {'1': 'UserId', '3': 1, '4': 1, '5': 3, '10': 'UserId'},
    {'1': 'clientType', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.CLIENT_TYPE', '10': 'clientType'},
  ],
};

/// Descriptor for `UserStateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStateReqDescriptor = $convert.base64Decode(
    'CgxVc2VyU3RhdGVSZXESFgoGVXNlcklkGAEgASgDUgZVc2VySWQSMwoKY2xpZW50VHlwZRgCIA'
    'EoDjITLnBiX3B1Yi5DTElFTlRfVFlQRVIKY2xpZW50VHlwZQ==');

@$core.Deprecated('Use userStateRspDescriptor instead')
const UserStateRsp$json = {
  '1': 'UserStateRsp',
  '2': [
    {'1': 'UserId', '3': 1, '4': 1, '5': 3, '10': 'UserId'},
    {'1': 'GateAddr', '3': 2, '4': 1, '5': 9, '10': 'GateAddr'},
    {'1': 'State', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.USER_STATE_TYPE', '10': 'State'},
    {'1': 'SwitchToBack', '3': 4, '4': 1, '5': 8, '10': 'SwitchToBack'},
    {'1': 'clients', '3': 5, '4': 3, '5': 11, '6': '.pb_grpc_userCenter.Client', '10': 'clients'},
  ],
};

/// Descriptor for `UserStateRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStateRspDescriptor = $convert.base64Decode(
    'CgxVc2VyU3RhdGVSc3ASFgoGVXNlcklkGAEgASgDUgZVc2VySWQSGgoIR2F0ZUFkZHIYAiABKA'
    'lSCEdhdGVBZGRyEi0KBVN0YXRlGAMgASgOMhcucGJfcHViLlVTRVJfU1RBVEVfVFlQRVIFU3Rh'
    'dGUSIgoMU3dpdGNoVG9CYWNrGAQgASgIUgxTd2l0Y2hUb0JhY2sSNAoHY2xpZW50cxgFIAMoCz'
    'IaLnBiX2dycGNfdXNlckNlbnRlci5DbGllbnRSB2NsaWVudHM=');

@$core.Deprecated('Use clientDescriptor instead')
const Client$json = {
  '1': 'Client',
  '2': [
    {'1': 'GateAddr', '3': 1, '4': 1, '5': 9, '10': 'GateAddr'},
    {'1': 'State', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.USER_STATE_TYPE', '10': 'State'},
    {'1': 'SwitchToBack', '3': 3, '4': 1, '5': 8, '10': 'SwitchToBack'},
    {'1': 'clientType', '3': 4, '4': 1, '5': 14, '6': '.pb_pub.CLIENT_TYPE', '10': 'clientType'},
  ],
};

/// Descriptor for `Client`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientDescriptor = $convert.base64Decode(
    'CgZDbGllbnQSGgoIR2F0ZUFkZHIYASABKAlSCEdhdGVBZGRyEi0KBVN0YXRlGAIgASgOMhcucG'
    'JfcHViLlVTRVJfU1RBVEVfVFlQRVIFU3RhdGUSIgoMU3dpdGNoVG9CYWNrGAMgASgIUgxTd2l0'
    'Y2hUb0JhY2sSMwoKY2xpZW50VHlwZRgEIAEoDjITLnBiX3B1Yi5DTElFTlRfVFlQRVIKY2xpZW'
    '50VHlwZQ==');

@$core.Deprecated('Use userstateDescriptor instead')
const Userstate$json = {
  '1': 'Userstate',
  '2': [
    {'1': 'UserId', '3': 1, '4': 1, '5': 3, '10': 'UserId'},
    {'1': 'GateAddr', '3': 2, '4': 1, '5': 9, '10': 'GateAddr'},
    {'1': 'State', '3': 3, '4': 1, '5': 14, '6': '.pb_pub.USER_STATE_TYPE', '10': 'State'},
    {'1': 'SwitchToBack', '3': 4, '4': 1, '5': 8, '10': 'SwitchToBack'},
  ],
};

/// Descriptor for `Userstate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userstateDescriptor = $convert.base64Decode(
    'CglVc2Vyc3RhdGUSFgoGVXNlcklkGAEgASgDUgZVc2VySWQSGgoIR2F0ZUFkZHIYAiABKAlSCE'
    'dhdGVBZGRyEi0KBVN0YXRlGAMgASgOMhcucGJfcHViLlVTRVJfU1RBVEVfVFlQRVIFU3RhdGUS'
    'IgoMU3dpdGNoVG9CYWNrGAQgASgIUgxTd2l0Y2hUb0JhY2s=');

@$core.Deprecated('Use userStateChangeReqDescriptor instead')
const UserStateChangeReq$json = {
  '1': 'UserStateChangeReq',
  '2': [
    {'1': 'UserId', '3': 1, '4': 1, '5': 3, '10': 'UserId'},
    {'1': 'State', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.USER_STATE_TYPE', '10': 'State'},
    {'1': 'GateAddr', '3': 3, '4': 1, '5': 9, '10': 'GateAddr'},
  ],
};

/// Descriptor for `UserStateChangeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStateChangeReqDescriptor = $convert.base64Decode(
    'ChJVc2VyU3RhdGVDaGFuZ2VSZXESFgoGVXNlcklkGAEgASgDUgZVc2VySWQSLQoFU3RhdGUYAi'
    'ABKA4yFy5wYl9wdWIuVVNFUl9TVEFURV9UWVBFUgVTdGF0ZRIaCghHYXRlQWRkchgDIAEoCVII'
    'R2F0ZUFkZHI=');

@$core.Deprecated('Use userLoginReqDescriptor instead')
const UserLoginReq$json = {
  '1': 'UserLoginReq',
  '2': [
    {'1': 'AppId', '3': 1, '4': 1, '5': 3, '10': 'AppId'},
    {'1': 'Secret', '3': 2, '4': 1, '5': 9, '10': 'Secret'},
    {'1': 'UnionId', '3': 3, '4': 1, '5': 9, '10': 'UnionId'},
  ],
};

/// Descriptor for `UserLoginReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLoginReqDescriptor = $convert.base64Decode(
    'CgxVc2VyTG9naW5SZXESFAoFQXBwSWQYASABKANSBUFwcElkEhYKBlNlY3JldBgCIAEoCVIGU2'
    'VjcmV0EhgKB1VuaW9uSWQYAyABKAlSB1VuaW9uSWQ=');

@$core.Deprecated('Use userLoginRspDescriptor instead')
const UserLoginRsp$json = {
  '1': 'UserLoginRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'UserID', '3': 2, '4': 1, '5': 3, '10': 'UserID'},
    {'1': 'Token', '3': 3, '4': 1, '5': 9, '10': 'Token'},
    {'1': 'TokenVersion', '3': 4, '4': 1, '5': 9, '10': 'TokenVersion'},
  ],
};

/// Descriptor for `UserLoginRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLoginRspDescriptor = $convert.base64Decode(
    'CgxVc2VyTG9naW5Sc3ASJwoGcmVzdWx0GAEgASgOMg8ucGJfcHViLkVyckNvZGVSBnJlc3VsdB'
    'IWCgZVc2VySUQYAiABKANSBlVzZXJJRBIUCgVUb2tlbhgDIAEoCVIFVG9rZW4SIgoMVG9rZW5W'
    'ZXJzaW9uGAQgASgJUgxUb2tlblZlcnNpb24=');

@$core.Deprecated('Use setProfileReqDescriptor instead')
const SetProfileReq$json = {
  '1': 'SetProfileReq',
  '2': [
    {'1': 'UserID', '3': 1, '4': 1, '5': 3, '10': 'UserID'},
    {'1': 'NickName', '3': 2, '4': 1, '5': 9, '10': 'NickName'},
    {'1': 'Gender', '3': 3, '4': 1, '5': 3, '10': 'Gender'},
    {'1': 'Language', '3': 4, '4': 1, '5': 9, '10': 'Language'},
    {'1': 'City', '3': 5, '4': 1, '5': 9, '10': 'City'},
    {'1': 'Province', '3': 6, '4': 1, '5': 9, '10': 'Province'},
    {'1': 'Country', '3': 7, '4': 1, '5': 9, '10': 'Country'},
    {'1': 'AvatarUrl', '3': 8, '4': 1, '5': 9, '10': 'AvatarUrl'},
  ],
};

/// Descriptor for `SetProfileReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setProfileReqDescriptor = $convert.base64Decode(
    'Cg1TZXRQcm9maWxlUmVxEhYKBlVzZXJJRBgBIAEoA1IGVXNlcklEEhoKCE5pY2tOYW1lGAIgAS'
    'gJUghOaWNrTmFtZRIWCgZHZW5kZXIYAyABKANSBkdlbmRlchIaCghMYW5ndWFnZRgEIAEoCVII'
    'TGFuZ3VhZ2USEgoEQ2l0eRgFIAEoCVIEQ2l0eRIaCghQcm92aW5jZRgGIAEoCVIIUHJvdmluY2'
    'USGAoHQ291bnRyeRgHIAEoCVIHQ291bnRyeRIcCglBdmF0YXJVcmwYCCABKAlSCUF2YXRhclVy'
    'bA==');

@$core.Deprecated('Use setProfileRspDescriptor instead')
const SetProfileRsp$json = {
  '1': 'SetProfileRsp',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.pb_pub.ErrCode', '10': 'result'},
    {'1': 'UserID', '3': 2, '4': 1, '5': 3, '10': 'UserID'},
  ],
};

/// Descriptor for `SetProfileRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setProfileRspDescriptor = $convert.base64Decode(
    'Cg1TZXRQcm9maWxlUnNwEicKBnJlc3VsdBgBIAEoDjIPLnBiX3B1Yi5FcnJDb2RlUgZyZXN1bH'
    'QSFgoGVXNlcklEGAIgASgDUgZVc2VySUQ=');

