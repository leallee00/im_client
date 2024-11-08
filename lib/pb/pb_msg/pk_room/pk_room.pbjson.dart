//
//  Generated code. Do not modify.
//  source: pb_msg/pk_room/pk_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aNSWERDescriptor instead')
const ANSWER$json = {
  '1': 'ANSWER',
  '2': [
    {'1': 'REFUSE', '2': 0},
    {'1': 'AGREE', '2': 1},
  ],
};

/// Descriptor for `ANSWER`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aNSWERDescriptor = $convert.base64Decode(
    'CgZBTlNXRVISCgoGUkVGVVNFEAASCQoFQUdSRUUQAQ==');

@$core.Deprecated('Use pK_TYPEDescriptor instead')
const PK_TYPE$json = {
  '1': 'PK_TYPE',
  '2': [
    {'1': 'RANDOM', '2': 0},
    {'1': 'RANK', '2': 1},
    {'1': 'INVITE', '2': 2},
    {'1': 'GRAND_RANK', '2': 3},
    {'1': 'SUMMIT_FINAL', '2': 4},
  ],
};

/// Descriptor for `PK_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pK_TYPEDescriptor = $convert.base64Decode(
    'CgdQS19UWVBFEgoKBlJBTkRPTRAAEggKBFJBTksQARIKCgZJTlZJVEUQAhIOCgpHUkFORF9SQU'
    '5LEAMSEAoMU1VNTUlUX0ZJTkFMEAQ=');

@$core.Deprecated('Use eND_TYPEDescriptor instead')
const END_TYPE$json = {
  '1': 'END_TYPE',
  '2': [
    {'1': 'NATURAL', '2': 0},
    {'1': 'MANUAL', '2': 1},
  ],
};

/// Descriptor for `END_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eND_TYPEDescriptor = $convert.base64Decode(
    'CghFTkRfVFlQRRILCgdOQVRVUkFMEAASCgoGTUFOVUFMEAE=');

@$core.Deprecated('Use pK_STATUSDescriptor instead')
const PK_STATUS$json = {
  '1': 'PK_STATUS',
  '2': [
    {'1': 'IDLING', '2': 0},
    {'1': 'QUEUING', '2': 1},
    {'1': 'RINGING', '2': 2},
    {'1': 'WAITING', '2': 3},
    {'1': 'COMPETING', '2': 4},
    {'1': 'PENALIZING', '2': 5},
  ],
};

/// Descriptor for `PK_STATUS`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pK_STATUSDescriptor = $convert.base64Decode(
    'CglQS19TVEFUVVMSCgoGSURMSU5HEAASCwoHUVVFVUlORxABEgsKB1JJTkdJTkcQAhILCgdXQU'
    'lUSU5HEAMSDQoJQ09NUEVUSU5HEAQSDgoKUEVOQUxJWklORxAF');

@$core.Deprecated('Use pKEnqueueReqDescriptor instead')
const PKEnqueueReq$json = {
  '1': 'PKEnqueueReq',
  '2': [
    {'1': 'pkType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_TYPE', '10': 'pkType'},
    {'1': 'rank', '3': 2, '4': 1, '5': 3, '10': 'rank'},
  ],
};

/// Descriptor for `PKEnqueueReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKEnqueueReqDescriptor = $convert.base64Decode(
    'CgxQS0VucXVldWVSZXESLwoGcGtUeXBlGAEgASgOMhcucGJfbXNnX3BrX3Jvb20uUEtfVFlQRV'
    'IGcGtUeXBlEhIKBHJhbmsYAiABKANSBHJhbms=');

@$core.Deprecated('Use pKEnqueueRspDescriptor instead')
const PKEnqueueRsp$json = {
  '1': 'PKEnqueueRsp',
};

/// Descriptor for `PKEnqueueRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKEnqueueRspDescriptor = $convert.base64Decode(
    'CgxQS0VucXVldWVSc3A=');

@$core.Deprecated('Use pKDequeueReqDescriptor instead')
const PKDequeueReq$json = {
  '1': 'PKDequeueReq',
  '2': [
    {'1': 'pkType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_TYPE', '10': 'pkType'},
  ],
};

/// Descriptor for `PKDequeueReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKDequeueReqDescriptor = $convert.base64Decode(
    'CgxQS0RlcXVldWVSZXESLwoGcGtUeXBlGAEgASgOMhcucGJfbXNnX3BrX3Jvb20uUEtfVFlQRV'
    'IGcGtUeXBl');

@$core.Deprecated('Use pKDequeueRspDescriptor instead')
const PKDequeueRsp$json = {
  '1': 'PKDequeueRsp',
};

/// Descriptor for `PKDequeueRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKDequeueRspDescriptor = $convert.base64Decode(
    'CgxQS0RlcXVldWVSc3A=');

@$core.Deprecated('Use pKAnswerReqDescriptor instead')
const PKAnswerReq$json = {
  '1': 'PKAnswerReq',
  '2': [
    {'1': 'answer', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_pk_room.ANSWER', '10': 'answer'},
  ],
};

/// Descriptor for `PKAnswerReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKAnswerReqDescriptor = $convert.base64Decode(
    'CgtQS0Fuc3dlclJlcRIuCgZhbnN3ZXIYASABKA4yFi5wYl9tc2dfcGtfcm9vbS5BTlNXRVJSBm'
    'Fuc3dlcg==');

@$core.Deprecated('Use pKAnswerRspDescriptor instead')
const PKAnswerRsp$json = {
  '1': 'PKAnswerRsp',
};

/// Descriptor for `PKAnswerRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKAnswerRspDescriptor = $convert.base64Decode(
    'CgtQS0Fuc3dlclJzcA==');

@$core.Deprecated('Use pKEscapeReqDescriptor instead')
const PKEscapeReq$json = {
  '1': 'PKEscapeReq',
};

/// Descriptor for `PKEscapeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKEscapeReqDescriptor = $convert.base64Decode(
    'CgtQS0VzY2FwZVJlcQ==');

@$core.Deprecated('Use pKEscapeRspDescriptor instead')
const PKEscapeRsp$json = {
  '1': 'PKEscapeRsp',
};

/// Descriptor for `PKEscapeRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKEscapeRspDescriptor = $convert.base64Decode(
    'CgtQS0VzY2FwZVJzcA==');

@$core.Deprecated('Use pKInviteReqDescriptor instead')
const PKInviteReq$json = {
  '1': 'PKInviteReq',
  '2': [
    {'1': 'pkTopic', '3': 1, '4': 1, '5': 9, '10': 'pkTopic'},
  ],
};

/// Descriptor for `PKInviteReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKInviteReqDescriptor = $convert.base64Decode(
    'CgtQS0ludml0ZVJlcRIYCgdwa1RvcGljGAEgASgJUgdwa1RvcGlj');

@$core.Deprecated('Use pKInviteRspDescriptor instead')
const PKInviteRsp$json = {
  '1': 'PKInviteRsp',
};

/// Descriptor for `PKInviteRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKInviteRspDescriptor = $convert.base64Decode(
    'CgtQS0ludml0ZVJzcA==');

@$core.Deprecated('Use pKInviteStopReqDescriptor instead')
const PKInviteStopReq$json = {
  '1': 'PKInviteStopReq',
};

/// Descriptor for `PKInviteStopReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKInviteStopReqDescriptor = $convert.base64Decode(
    'Cg9QS0ludml0ZVN0b3BSZXE=');

@$core.Deprecated('Use pKInviteStopRspDescriptor instead')
const PKInviteStopRsp$json = {
  '1': 'PKInviteStopRsp',
};

/// Descriptor for `PKInviteStopRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKInviteStopRspDescriptor = $convert.base64Decode(
    'Cg9QS0ludml0ZVN0b3BSc3A=');

@$core.Deprecated('Use pKRoomInfoDescriptor instead')
const PKRoomInfo$json = {
  '1': 'PKRoomInfo',
  '2': [
    {'1': 'pkStatus', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_STATUS', '10': 'pkStatus'},
    {'1': 'endTime', '3': 2, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'pkType', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_TYPE', '10': 'pkType'},
    {'1': 'pkTopic', '3': 4, '4': 1, '5': 9, '10': 'pkTopic'},
    {'1': 'pkScore', '3': 5, '4': 1, '5': 3, '10': 'pkScore'},
    {'1': 'peer', '3': 6, '4': 1, '5': 11, '6': '.pb_msg_pk_room.PKUser', '10': 'peer'},
    {'1': 'endType', '3': 7, '4': 1, '5': 14, '6': '.pb_msg_pk_room.END_TYPE', '10': 'endType'},
    {'1': 'winnerId', '3': 8, '4': 1, '5': 3, '10': 'winnerId'},
    {'1': 'mvp', '3': 9, '4': 1, '5': 11, '6': '.pb_msg_pk_room.MVP', '10': 'mvp'},
  ],
};

/// Descriptor for `PKRoomInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKRoomInfoDescriptor = $convert.base64Decode(
    'CgpQS1Jvb21JbmZvEjUKCHBrU3RhdHVzGAEgASgOMhkucGJfbXNnX3BrX3Jvb20uUEtfU1RBVF'
    'VTUghwa1N0YXR1cxIYCgdlbmRUaW1lGAIgASgDUgdlbmRUaW1lEi8KBnBrVHlwZRgDIAEoDjIX'
    'LnBiX21zZ19wa19yb29tLlBLX1RZUEVSBnBrVHlwZRIYCgdwa1RvcGljGAQgASgJUgdwa1RvcG'
    'ljEhgKB3BrU2NvcmUYBSABKANSB3BrU2NvcmUSKgoEcGVlchgGIAEoCzIWLnBiX21zZ19wa19y'
    'b29tLlBLVXNlclIEcGVlchIyCgdlbmRUeXBlGAcgASgOMhgucGJfbXNnX3BrX3Jvb20uRU5EX1'
    'RZUEVSB2VuZFR5cGUSGgoId2lubmVySWQYCCABKANSCHdpbm5lcklkEiUKA212cBgJIAEoCzIT'
    'LnBiX21zZ19wa19yb29tLk1WUFIDbXZw');

@$core.Deprecated('Use pKUserDescriptor instead')
const PKUser$json = {
  '1': 'PKUser',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'headerImageOriginal', '3': 3, '4': 1, '5': 9, '10': 'headerImageOriginal'},
    {'1': 'rank', '3': 4, '4': 1, '5': 3, '10': 'rank'},
    {'1': 'victoryTimes', '3': 5, '4': 1, '5': 3, '10': 'victoryTimes'},
    {'1': 'pullStreamAddress', '3': 6, '4': 1, '5': 9, '10': 'pullStreamAddress'},
    {'1': 'pkScore', '3': 7, '4': 1, '5': 3, '10': 'pkScore'},
  ],
};

/// Descriptor for `PKUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKUserDescriptor = $convert.base64Decode(
    'CgZQS1VzZXISDgoCaWQYASABKANSAmlkEhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIwCh'
    'NoZWFkZXJJbWFnZU9yaWdpbmFsGAMgASgJUhNoZWFkZXJJbWFnZU9yaWdpbmFsEhIKBHJhbmsY'
    'BCABKANSBHJhbmsSIgoMdmljdG9yeVRpbWVzGAUgASgDUgx2aWN0b3J5VGltZXMSLAoRcHVsbF'
    'N0cmVhbUFkZHJlc3MYBiABKAlSEXB1bGxTdHJlYW1BZGRyZXNzEhgKB3BrU2NvcmUYByABKANS'
    'B3BrU2NvcmU=');

@$core.Deprecated('Use pKStatusChangeNotifyDescriptor instead')
const PKStatusChangeNotify$json = {
  '1': 'PKStatusChangeNotify',
  '2': [
    {'1': 'pkStatus', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_STATUS', '10': 'pkStatus'},
  ],
};

/// Descriptor for `PKStatusChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKStatusChangeNotifyDescriptor = $convert.base64Decode(
    'ChRQS1N0YXR1c0NoYW5nZU5vdGlmeRI1Cghwa1N0YXR1cxgBIAEoDjIZLnBiX21zZ19wa19yb2'
    '9tLlBLX1NUQVRVU1IIcGtTdGF0dXM=');

@$core.Deprecated('Use pKMatchedNotifyDescriptor instead')
const PKMatchedNotify$json = {
  '1': 'PKMatchedNotify',
  '2': [
    {'1': 'endTime', '3': 1, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'pkType', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_TYPE', '10': 'pkType'},
    {'1': 'pkTopic', '3': 3, '4': 1, '5': 9, '10': 'pkTopic'},
    {'1': 'peerId', '3': 4, '4': 1, '5': 3, '10': 'peerId'},
    {'1': 'peerUsername', '3': 5, '4': 1, '5': 9, '10': 'peerUsername'},
    {'1': 'peerHeaderImageOriginal', '3': 6, '4': 1, '5': 9, '10': 'peerHeaderImageOriginal'},
    {'1': 'peerRank', '3': 7, '4': 1, '5': 3, '10': 'peerRank'},
    {'1': 'peerVictoryTimes', '3': 8, '4': 1, '5': 3, '10': 'peerVictoryTimes'},
    {'1': 'peerPullStreamAddress', '3': 9, '4': 1, '5': 9, '10': 'peerPullStreamAddress'},
  ],
};

/// Descriptor for `PKMatchedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKMatchedNotifyDescriptor = $convert.base64Decode(
    'Cg9QS01hdGNoZWROb3RpZnkSGAoHZW5kVGltZRgBIAEoA1IHZW5kVGltZRIvCgZwa1R5cGUYAi'
    'ABKA4yFy5wYl9tc2dfcGtfcm9vbS5QS19UWVBFUgZwa1R5cGUSGAoHcGtUb3BpYxgDIAEoCVIH'
    'cGtUb3BpYxIWCgZwZWVySWQYBCABKANSBnBlZXJJZBIiCgxwZWVyVXNlcm5hbWUYBSABKAlSDH'
    'BlZXJVc2VybmFtZRI4ChdwZWVySGVhZGVySW1hZ2VPcmlnaW5hbBgGIAEoCVIXcGVlckhlYWRl'
    'ckltYWdlT3JpZ2luYWwSGgoIcGVlclJhbmsYByABKANSCHBlZXJSYW5rEioKEHBlZXJWaWN0b3'
    'J5VGltZXMYCCABKANSEHBlZXJWaWN0b3J5VGltZXMSNAoVcGVlclB1bGxTdHJlYW1BZGRyZXNz'
    'GAkgASgJUhVwZWVyUHVsbFN0cmVhbUFkZHJlc3M=');

@$core.Deprecated('Use pKPeerRefusedNotifyDescriptor instead')
const PKPeerRefusedNotify$json = {
  '1': 'PKPeerRefusedNotify',
};

/// Descriptor for `PKPeerRefusedNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKPeerRefusedNotifyDescriptor = $convert.base64Decode(
    'ChNQS1BlZXJSZWZ1c2VkTm90aWZ5');

@$core.Deprecated('Use pKStartNotifyDescriptor instead')
const PKStartNotify$json = {
  '1': 'PKStartNotify',
  '2': [
    {'1': 'endTime', '3': 1, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'pkType', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_TYPE', '10': 'pkType'},
    {'1': 'pkTopic', '3': 3, '4': 1, '5': 9, '10': 'pkTopic'},
    {'1': 'peerId', '3': 4, '4': 1, '5': 3, '10': 'peerId'},
    {'1': 'peerUsername', '3': 5, '4': 1, '5': 9, '10': 'peerUsername'},
    {'1': 'peerHeaderImageOriginal', '3': 6, '4': 1, '5': 9, '10': 'peerHeaderImageOriginal'},
    {'1': 'peerRank', '3': 7, '4': 1, '5': 3, '10': 'peerRank'},
    {'1': 'peerVictoryTimes', '3': 8, '4': 1, '5': 3, '10': 'peerVictoryTimes'},
    {'1': 'peerPullStreamAddress', '3': 9, '4': 1, '5': 9, '10': 'peerPullStreamAddress'},
  ],
};

/// Descriptor for `PKStartNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKStartNotifyDescriptor = $convert.base64Decode(
    'Cg1QS1N0YXJ0Tm90aWZ5EhgKB2VuZFRpbWUYASABKANSB2VuZFRpbWUSLwoGcGtUeXBlGAIgAS'
    'gOMhcucGJfbXNnX3BrX3Jvb20uUEtfVFlQRVIGcGtUeXBlEhgKB3BrVG9waWMYAyABKAlSB3Br'
    'VG9waWMSFgoGcGVlcklkGAQgASgDUgZwZWVySWQSIgoMcGVlclVzZXJuYW1lGAUgASgJUgxwZW'
    'VyVXNlcm5hbWUSOAoXcGVlckhlYWRlckltYWdlT3JpZ2luYWwYBiABKAlSF3BlZXJIZWFkZXJJ'
    'bWFnZU9yaWdpbmFsEhoKCHBlZXJSYW5rGAcgASgDUghwZWVyUmFuaxIqChBwZWVyVmljdG9yeV'
    'RpbWVzGAggASgDUhBwZWVyVmljdG9yeVRpbWVzEjQKFXBlZXJQdWxsU3RyZWFtQWRkcmVzcxgJ'
    'IAEoCVIVcGVlclB1bGxTdHJlYW1BZGRyZXNz');

@$core.Deprecated('Use pKGameOverNotifyDescriptor instead')
const PKGameOverNotify$json = {
  '1': 'PKGameOverNotify',
  '2': [
    {'1': 'endTime', '3': 1, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'endType', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_pk_room.END_TYPE', '10': 'endType'},
    {'1': 'pkScore', '3': 3, '4': 1, '5': 3, '10': 'pkScore'},
    {'1': 'rank', '3': 4, '4': 1, '5': 3, '10': 'rank'},
    {'1': 'victoryTimes', '3': 5, '4': 1, '5': 3, '10': 'victoryTimes'},
    {'1': 'peerPKScore', '3': 11, '4': 1, '5': 3, '10': 'peerPKScore'},
    {'1': 'peerRank', '3': 12, '4': 1, '5': 3, '10': 'peerRank'},
    {'1': 'peerVictoryTimes', '3': 13, '4': 1, '5': 3, '10': 'peerVictoryTimes'},
    {'1': 'winnerId', '3': 21, '4': 1, '5': 3, '10': 'winnerId'},
    {'1': 'mvp', '3': 22, '4': 1, '5': 11, '6': '.pb_msg_pk_room.MVP', '10': 'mvp'},
  ],
};

/// Descriptor for `PKGameOverNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKGameOverNotifyDescriptor = $convert.base64Decode(
    'ChBQS0dhbWVPdmVyTm90aWZ5EhgKB2VuZFRpbWUYASABKANSB2VuZFRpbWUSMgoHZW5kVHlwZR'
    'gCIAEoDjIYLnBiX21zZ19wa19yb29tLkVORF9UWVBFUgdlbmRUeXBlEhgKB3BrU2NvcmUYAyAB'
    'KANSB3BrU2NvcmUSEgoEcmFuaxgEIAEoA1IEcmFuaxIiCgx2aWN0b3J5VGltZXMYBSABKANSDH'
    'ZpY3RvcnlUaW1lcxIgCgtwZWVyUEtTY29yZRgLIAEoA1ILcGVlclBLU2NvcmUSGgoIcGVlclJh'
    'bmsYDCABKANSCHBlZXJSYW5rEioKEHBlZXJWaWN0b3J5VGltZXMYDSABKANSEHBlZXJWaWN0b3'
    'J5VGltZXMSGgoId2lubmVySWQYFSABKANSCHdpbm5lcklkEiUKA212cBgWIAEoCzITLnBiX21z'
    'Z19wa19yb29tLk1WUFIDbXZw');

@$core.Deprecated('Use mVPDescriptor instead')
const MVP$json = {
  '1': 'MVP',
  '2': [
    {'1': 'actorGrade', '3': 1, '4': 1, '5': 5, '10': 'actorGrade'},
    {'1': 'bigImageOriginal', '3': 2, '4': 1, '5': 9, '10': 'bigImageOriginal'},
    {'1': 'headerImageOriginal', '3': 3, '4': 1, '5': 9, '10': 'headerImageOriginal'},
    {'1': 'isLiving', '3': 4, '4': 1, '5': 8, '10': 'isLiving'},
    {'1': 'levelPrivilegeOpen', '3': 5, '4': 1, '5': 8, '10': 'levelPrivilegeOpen'},
    {'1': 'nickName', '3': 6, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'userID', '3': 7, '4': 1, '5': 3, '10': 'userID'},
    {'1': 'userLevel', '3': 8, '4': 1, '5': 9, '10': 'userLevel'},
  ],
};

/// Descriptor for `MVP`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mVPDescriptor = $convert.base64Decode(
    'CgNNVlASHgoKYWN0b3JHcmFkZRgBIAEoBVIKYWN0b3JHcmFkZRIqChBiaWdJbWFnZU9yaWdpbm'
    'FsGAIgASgJUhBiaWdJbWFnZU9yaWdpbmFsEjAKE2hlYWRlckltYWdlT3JpZ2luYWwYAyABKAlS'
    'E2hlYWRlckltYWdlT3JpZ2luYWwSGgoIaXNMaXZpbmcYBCABKAhSCGlzTGl2aW5nEi4KEmxldm'
    'VsUHJpdmlsZWdlT3BlbhgFIAEoCFISbGV2ZWxQcml2aWxlZ2VPcGVuEhoKCG5pY2tOYW1lGAYg'
    'ASgJUghuaWNrTmFtZRIWCgZ1c2VySUQYByABKANSBnVzZXJJRBIcCgl1c2VyTGV2ZWwYCCABKA'
    'lSCXVzZXJMZXZlbA==');

@$core.Deprecated('Use pKOverNotifyDescriptor instead')
const PKOverNotify$json = {
  '1': 'PKOverNotify',
  '2': [
    {'1': 'pkStatus', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_STATUS', '10': 'pkStatus'},
  ],
};

/// Descriptor for `PKOverNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKOverNotifyDescriptor = $convert.base64Decode(
    'CgxQS092ZXJOb3RpZnkSNQoIcGtTdGF0dXMYASABKA4yGS5wYl9tc2dfcGtfcm9vbS5QS19TVE'
    'FUVVNSCHBrU3RhdHVz');

@$core.Deprecated('Use passivePKRefuseReqDescriptor instead')
const PassivePKRefuseReq$json = {
  '1': 'PassivePKRefuseReq',
  '2': [
    {'1': 'opponentId', '3': 1, '4': 1, '5': 3, '10': 'opponentId'},
    {'1': 'refuseId', '3': 2, '4': 1, '5': 3, '10': 'refuseId'},
    {'1': 'topic', '3': 3, '4': 1, '5': 9, '10': 'topic'},
  ],
};

/// Descriptor for `PassivePKRefuseReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passivePKRefuseReqDescriptor = $convert.base64Decode(
    'ChJQYXNzaXZlUEtSZWZ1c2VSZXESHgoKb3Bwb25lbnRJZBgBIAEoA1IKb3Bwb25lbnRJZBIaCg'
    'hyZWZ1c2VJZBgCIAEoA1IIcmVmdXNlSWQSFAoFdG9waWMYAyABKAlSBXRvcGlj');

@$core.Deprecated('Use pKSwitchPassiveReqDescriptor instead')
const PKSwitchPassiveReq$json = {
  '1': 'PKSwitchPassiveReq',
  '2': [
    {'1': 'roomId', '3': 1, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'rank', '3': 2, '4': 1, '5': 3, '10': 'rank'},
  ],
};

/// Descriptor for `PKSwitchPassiveReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKSwitchPassiveReqDescriptor = $convert.base64Decode(
    'ChJQS1N3aXRjaFBhc3NpdmVSZXESFgoGcm9vbUlkGAEgASgDUgZyb29tSWQSEgoEcmFuaxgCIA'
    'EoA1IEcmFuaw==');

@$core.Deprecated('Use passivePkNotifyDescriptor instead')
const PassivePkNotify$json = {
  '1': 'PassivePkNotify',
  '2': [
    {'1': 'pkType', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_pk_room.PK_TYPE', '10': 'pkType'},
  ],
};

/// Descriptor for `PassivePkNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passivePkNotifyDescriptor = $convert.base64Decode(
    'Cg9QYXNzaXZlUGtOb3RpZnkSLwoGcGtUeXBlGAEgASgOMhcucGJfbXNnX3BrX3Jvb20uUEtfVF'
    'lQRVIGcGtUeXBl');

@$core.Deprecated('Use pKTournamentChangeNotifyDescriptor instead')
const PKTournamentChangeNotify$json = {
  '1': 'PKTournamentChangeNotify',
  '2': [
    {'1': 'isQualifiedPkTournament', '3': 1, '4': 1, '5': 8, '10': 'isQualifiedPkTournament'},
    {'1': 'pkTournamentBeginTime', '3': 2, '4': 1, '5': 9, '10': 'pkTournamentBeginTime'},
    {'1': 'pkTounamentTip', '3': 3, '4': 1, '5': 9, '10': 'pkTounamentTip'},
  ],
};

/// Descriptor for `PKTournamentChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pKTournamentChangeNotifyDescriptor = $convert.base64Decode(
    'ChhQS1RvdXJuYW1lbnRDaGFuZ2VOb3RpZnkSOAoXaXNRdWFsaWZpZWRQa1RvdXJuYW1lbnQYAS'
    'ABKAhSF2lzUXVhbGlmaWVkUGtUb3VybmFtZW50EjQKFXBrVG91cm5hbWVudEJlZ2luVGltZRgC'
    'IAEoCVIVcGtUb3VybmFtZW50QmVnaW5UaW1lEiYKDnBrVG91bmFtZW50VGlwGAMgASgJUg5wa1'
    'RvdW5hbWVudFRpcA==');

@$core.Deprecated('Use canJoinPkTournamentReqDescriptor instead')
const CanJoinPkTournamentReq$json = {
  '1': 'CanJoinPkTournamentReq',
};

/// Descriptor for `CanJoinPkTournamentReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List canJoinPkTournamentReqDescriptor = $convert.base64Decode(
    'ChZDYW5Kb2luUGtUb3VybmFtZW50UmVx');

@$core.Deprecated('Use canJoinPkTournamentRspDescriptor instead')
const CanJoinPkTournamentRsp$json = {
  '1': 'CanJoinPkTournamentRsp',
  '2': [
    {'1': 'isQualifiedPkTournament', '3': 1, '4': 1, '5': 8, '10': 'isQualifiedPkTournament'},
    {'1': 'PkTournamentBeginTime', '3': 2, '4': 1, '5': 9, '10': 'PkTournamentBeginTime'},
    {'1': 'PkTounamentTip', '3': 3, '4': 1, '5': 9, '10': 'PkTounamentTip'},
  ],
};

/// Descriptor for `CanJoinPkTournamentRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List canJoinPkTournamentRspDescriptor = $convert.base64Decode(
    'ChZDYW5Kb2luUGtUb3VybmFtZW50UnNwEjgKF2lzUXVhbGlmaWVkUGtUb3VybmFtZW50GAEgAS'
    'gIUhdpc1F1YWxpZmllZFBrVG91cm5hbWVudBI0ChVQa1RvdXJuYW1lbnRCZWdpblRpbWUYAiAB'
    'KAlSFVBrVG91cm5hbWVudEJlZ2luVGltZRImCg5Qa1RvdW5hbWVudFRpcBgDIAEoCVIOUGtUb3'
    'VuYW1lbnRUaXA=');

