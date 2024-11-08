//
//  Generated code. Do not modify.
//  source: pb_msg/game_scene/game_scene.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gAME_STATEDescriptor instead')
const GAME_STATE$json = {
  '1': 'GAME_STATE',
  '2': [
    {'1': 'IDLING', '2': 0},
    {'1': 'WAITING', '2': 1},
    {'1': 'GAMING', '2': 2},
  ],
};

/// Descriptor for `GAME_STATE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gAME_STATEDescriptor = $convert.base64Decode(
    'CgpHQU1FX1NUQVRFEgoKBklETElORxAAEgsKB1dBSVRJTkcQARIKCgZHQU1JTkcQAg==');

@$core.Deprecated('Use gAME_ANSWER_TYPEDescriptor instead')
const GAME_ANSWER_TYPE$json = {
  '1': 'GAME_ANSWER_TYPE',
  '2': [
    {'1': 'REFUSE', '2': 0},
    {'1': 'BUZY', '2': 1},
    {'1': 'AGREE', '2': 2},
    {'1': 'NOT_SUPPORT', '2': 3},
  ],
};

/// Descriptor for `GAME_ANSWER_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gAME_ANSWER_TYPEDescriptor = $convert.base64Decode(
    'ChBHQU1FX0FOU1dFUl9UWVBFEgoKBlJFRlVTRRAAEggKBEJVWlkQARIJCgVBR1JFRRACEg8KC0'
    '5PVF9TVVBQT1JUEAM=');

@$core.Deprecated('Use gAME_OVER_REASONDescriptor instead')
const GAME_OVER_REASON$json = {
  '1': 'GAME_OVER_REASON',
  '2': [
    {'1': 'INVITER_CLOSED', '2': 0},
    {'1': 'INVITER_DISINVITED', '2': 1},
    {'1': 'INVITER_HEARTBEAT_TIMEOUT', '2': 2},
    {'1': 'INVITEE_CLOSED', '2': 10},
    {'1': 'INVITEE_BUZY', '2': 11},
    {'1': 'INVITEE_REFUSED', '2': 12},
    {'1': 'INVITEE_NOT_ANSWER', '2': 13},
    {'1': 'INVITEE_HEARTBEAT_TIMEOUT', '2': 14},
    {'1': 'INVITEE_CLIENT_NOT_SUPPORT', '2': 15},
    {'1': 'CHARGE_FAILURE', '2': 20},
  ],
};

/// Descriptor for `GAME_OVER_REASON`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gAME_OVER_REASONDescriptor = $convert.base64Decode(
    'ChBHQU1FX09WRVJfUkVBU09OEhIKDklOVklURVJfQ0xPU0VEEAASFgoSSU5WSVRFUl9ESVNJTl'
    'ZJVEVEEAESHQoZSU5WSVRFUl9IRUFSVEJFQVRfVElNRU9VVBACEhIKDklOVklURUVfQ0xPU0VE'
    'EAoSEAoMSU5WSVRFRV9CVVpZEAsSEwoPSU5WSVRFRV9SRUZVU0VEEAwSFgoSSU5WSVRFRV9OT1'
    'RfQU5TV0VSEA0SHQoZSU5WSVRFRV9IRUFSVEJFQVRfVElNRU9VVBAOEh4KGklOVklURUVfQ0xJ'
    'RU5UX05PVF9TVVBQT1JUEA8SEgoOQ0hBUkdFX0ZBSUxVUkUQFA==');

@$core.Deprecated('Use gamePlayerDescriptor instead')
const GamePlayer$json = {
  '1': 'GamePlayer',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `GamePlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gamePlayerDescriptor = $convert.base64Decode(
    'CgpHYW1lUGxheWVyEhYKBnVzZXJJZBgBIAEoA1IGdXNlcklk');

@$core.Deprecated('Use gameInfoDescriptor instead')
const GameInfo$json = {
  '1': 'GameInfo',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_game_scene.GAME_STATE', '10': 'state'},
    {'1': 'inviter', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_game_scene.GamePlayer', '10': 'inviter'},
    {'1': 'invitee', '3': 3, '4': 1, '5': 11, '6': '.pb_msg_game_scene.GamePlayer', '10': 'invitee'},
    {'1': 'gameType', '3': 4, '4': 1, '5': 5, '10': 'gameType'},
    {'1': 'inviteAt', '3': 5, '4': 1, '5': 3, '10': 'inviteAt'},
    {'1': 'answerAt', '3': 6, '4': 1, '5': 3, '10': 'answerAt'},
    {'1': 'exps', '3': 7, '4': 3, '5': 11, '6': '.pb_msg_game_scene.GameInfo.ExpsEntry', '10': 'exps'},
  ],
  '3': [GameInfo_ExpsEntry$json],
};

@$core.Deprecated('Use gameInfoDescriptor instead')
const GameInfo_ExpsEntry$json = {
  '1': 'ExpsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GameInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameInfoDescriptor = $convert.base64Decode(
    'CghHYW1lSW5mbxIzCgVzdGF0ZRgBIAEoDjIdLnBiX21zZ19nYW1lX3NjZW5lLkdBTUVfU1RBVE'
    'VSBXN0YXRlEjcKB2ludml0ZXIYAiABKAsyHS5wYl9tc2dfZ2FtZV9zY2VuZS5HYW1lUGxheWVy'
    'UgdpbnZpdGVyEjcKB2ludml0ZWUYAyABKAsyHS5wYl9tc2dfZ2FtZV9zY2VuZS5HYW1lUGxheW'
    'VyUgdpbnZpdGVlEhoKCGdhbWVUeXBlGAQgASgFUghnYW1lVHlwZRIaCghpbnZpdGVBdBgFIAEo'
    'A1IIaW52aXRlQXQSGgoIYW5zd2VyQXQYBiABKANSCGFuc3dlckF0EjkKBGV4cHMYByADKAsyJS'
    '5wYl9tc2dfZ2FtZV9zY2VuZS5HYW1lSW5mby5FeHBzRW50cnlSBGV4cHMaNwoJRXhwc0VudHJ5'
    'EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use gameInviteReqDescriptor instead')
const GameInviteReq$json = {
  '1': 'GameInviteReq',
  '2': [
    {'1': 'inviterId', '3': 1, '4': 1, '5': 3, '10': 'inviterId'},
    {'1': 'inviteeId', '3': 2, '4': 1, '5': 3, '10': 'inviteeId'},
    {'1': 'gameType', '3': 3, '4': 1, '5': 5, '10': 'gameType'},
    {'1': 'exps', '3': 4, '4': 3, '5': 11, '6': '.pb_msg_game_scene.GameInviteReq.ExpsEntry', '10': 'exps'},
  ],
  '3': [GameInviteReq_ExpsEntry$json],
};

@$core.Deprecated('Use gameInviteReqDescriptor instead')
const GameInviteReq_ExpsEntry$json = {
  '1': 'ExpsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GameInviteReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameInviteReqDescriptor = $convert.base64Decode(
    'Cg1HYW1lSW52aXRlUmVxEhwKCWludml0ZXJJZBgBIAEoA1IJaW52aXRlcklkEhwKCWludml0ZW'
    'VJZBgCIAEoA1IJaW52aXRlZUlkEhoKCGdhbWVUeXBlGAMgASgFUghnYW1lVHlwZRI+CgRleHBz'
    'GAQgAygLMioucGJfbXNnX2dhbWVfc2NlbmUuR2FtZUludml0ZVJlcS5FeHBzRW50cnlSBGV4cH'
    'MaNwoJRXhwc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToC'
    'OAE=');

@$core.Deprecated('Use gameInviteRspDescriptor instead')
const GameInviteRsp$json = {
  '1': 'GameInviteRsp',
};

/// Descriptor for `GameInviteRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameInviteRspDescriptor = $convert.base64Decode(
    'Cg1HYW1lSW52aXRlUnNw');

@$core.Deprecated('Use gameDisinviteReqDescriptor instead')
const GameDisinviteReq$json = {
  '1': 'GameDisinviteReq',
  '2': [
    {'1': 'inviterId', '3': 1, '4': 1, '5': 3, '10': 'inviterId'},
    {'1': 'inviteeId', '3': 2, '4': 1, '5': 3, '10': 'inviteeId'},
  ],
};

/// Descriptor for `GameDisinviteReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDisinviteReqDescriptor = $convert.base64Decode(
    'ChBHYW1lRGlzaW52aXRlUmVxEhwKCWludml0ZXJJZBgBIAEoA1IJaW52aXRlcklkEhwKCWludm'
    'l0ZWVJZBgCIAEoA1IJaW52aXRlZUlk');

@$core.Deprecated('Use gameDisinviteRspDescriptor instead')
const GameDisinviteRsp$json = {
  '1': 'GameDisinviteRsp',
};

/// Descriptor for `GameDisinviteRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDisinviteRspDescriptor = $convert.base64Decode(
    'ChBHYW1lRGlzaW52aXRlUnNw');

@$core.Deprecated('Use gameAnswerReqDescriptor instead')
const GameAnswerReq$json = {
  '1': 'GameAnswerReq',
  '2': [
    {'1': 'inviterId', '3': 1, '4': 1, '5': 3, '10': 'inviterId'},
    {'1': 'inviteeId', '3': 2, '4': 1, '5': 3, '10': 'inviteeId'},
    {'1': 'answer', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_game_scene.GAME_ANSWER_TYPE', '10': 'answer'},
  ],
};

/// Descriptor for `GameAnswerReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameAnswerReqDescriptor = $convert.base64Decode(
    'Cg1HYW1lQW5zd2VyUmVxEhwKCWludml0ZXJJZBgBIAEoA1IJaW52aXRlcklkEhwKCWludml0ZW'
    'VJZBgCIAEoA1IJaW52aXRlZUlkEjsKBmFuc3dlchgDIAEoDjIjLnBiX21zZ19nYW1lX3NjZW5l'
    'LkdBTUVfQU5TV0VSX1RZUEVSBmFuc3dlcg==');

@$core.Deprecated('Use gameAnswerRspDescriptor instead')
const GameAnswerRsp$json = {
  '1': 'GameAnswerRsp',
};

/// Descriptor for `GameAnswerRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameAnswerRspDescriptor = $convert.base64Decode(
    'Cg1HYW1lQW5zd2VyUnNw');

@$core.Deprecated('Use gameStartNotifyDescriptor instead')
const GameStartNotify$json = {
  '1': 'GameStartNotify',
  '2': [
    {'1': 'gameInfo', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_game_scene.GameInfo', '10': 'gameInfo'},
  ],
};

/// Descriptor for `GameStartNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameStartNotifyDescriptor = $convert.base64Decode(
    'Cg9HYW1lU3RhcnROb3RpZnkSNwoIZ2FtZUluZm8YASABKAsyGy5wYl9tc2dfZ2FtZV9zY2VuZS'
    '5HYW1lSW5mb1IIZ2FtZUluZm8=');

@$core.Deprecated('Use gameOverNotifyDescriptor instead')
const GameOverNotify$json = {
  '1': 'GameOverNotify',
  '2': [
    {'1': 'reason', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_game_scene.GAME_OVER_REASON', '10': 'reason'},
  ],
};

/// Descriptor for `GameOverNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameOverNotifyDescriptor = $convert.base64Decode(
    'Cg5HYW1lT3Zlck5vdGlmeRI7CgZyZWFzb24YASABKA4yIy5wYl9tc2dfZ2FtZV9zY2VuZS5HQU'
    '1FX09WRVJfUkVBU09OUgZyZWFzb24=');

@$core.Deprecated('Use gameOverReqDescriptor instead')
const GameOverReq$json = {
  '1': 'GameOverReq',
  '2': [
    {'1': 'inviterId', '3': 1, '4': 1, '5': 3, '10': 'inviterId'},
    {'1': 'inviteeId', '3': 2, '4': 1, '5': 3, '10': 'inviteeId'},
  ],
};

/// Descriptor for `GameOverReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameOverReqDescriptor = $convert.base64Decode(
    'CgtHYW1lT3ZlclJlcRIcCglpbnZpdGVySWQYASABKANSCWludml0ZXJJZBIcCglpbnZpdGVlSW'
    'QYAiABKANSCWludml0ZWVJZA==');

@$core.Deprecated('Use gameOverRspDescriptor instead')
const GameOverRsp$json = {
  '1': 'GameOverRsp',
};

/// Descriptor for `GameOverRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameOverRspDescriptor = $convert.base64Decode(
    'CgtHYW1lT3ZlclJzcA==');

