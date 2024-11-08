//
//  Generated code. Do not modify.
//  source: pb_msg/ttk_game/ttk_game.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pATTERNDescriptor instead')
const PATTERN$json = {
  '1': 'PATTERN',
  '2': [
    {'1': 'GENERAL_0', '2': 0},
    {'1': 'GENERAL_1', '2': 1},
    {'1': 'GENERAL_2', '2': 2},
    {'1': 'GENERAL_3', '2': 3},
    {'1': 'GENERAL_4', '2': 4},
    {'1': 'GENERAL_5', '2': 5},
    {'1': 'GENERAL_6', '2': 6},
    {'1': 'GENERAL_7', '2': 7},
    {'1': 'GENERAL_8', '2': 8},
    {'1': 'GENERAL_9', '2': 9},
    {'1': 'GENERAL_10', '2': 10},
    {'1': 'SILVER_GENERAL', '2': 11},
    {'1': 'BOMB', '2': 12},
    {'1': 'TIGER', '2': 13},
    {'1': 'SMALL', '2': 14},
  ],
};

/// Descriptor for `PATTERN`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pATTERNDescriptor = $convert.base64Decode(
    'CgdQQVRURVJOEg0KCUdFTkVSQUxfMBAAEg0KCUdFTkVSQUxfMRABEg0KCUdFTkVSQUxfMhACEg'
    '0KCUdFTkVSQUxfMxADEg0KCUdFTkVSQUxfNBAEEg0KCUdFTkVSQUxfNRAFEg0KCUdFTkVSQUxf'
    'NhAGEg0KCUdFTkVSQUxfNxAHEg0KCUdFTkVSQUxfOBAIEg0KCUdFTkVSQUxfORAJEg4KCkdFTk'
    'VSQUxfMTAQChISCg5TSUxWRVJfR0VORVJBTBALEggKBEJPTUIQDBIJCgVUSUdFUhANEgkKBVNN'
    'QUxMEA4=');

@$core.Deprecated('Use sUITDescriptor instead')
const SUIT$json = {
  '1': 'SUIT',
  '2': [
    {'1': 'DIAMOND', '2': 0},
    {'1': 'CLUB', '2': 1},
    {'1': 'HEART', '2': 2},
    {'1': 'SPADE', '2': 3},
  ],
};

/// Descriptor for `SUIT`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sUITDescriptor = $convert.base64Decode(
    'CgRTVUlUEgsKB0RJQU1PTkQQABIICgRDTFVCEAESCQoFSEVBUlQQAhIJCgVTUEFERRAD');

@$core.Deprecated('Use kINGDOMDescriptor instead')
const KINGDOM$json = {
  '1': 'KINGDOM',
  '2': [
    {'1': 'WEI', '2': 0},
    {'1': 'SHU', '2': 1},
    {'1': 'WU', '2': 2},
    {'1': 'QUN', '2': 3},
  ],
};

/// Descriptor for `KINGDOM`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List kINGDOMDescriptor = $convert.base64Decode(
    'CgdLSU5HRE9NEgcKA1dFSRAAEgcKA1NIVRABEgYKAldVEAISBwoDUVVOEAM=');

@$core.Deprecated('Use cardDescriptor instead')
const Card$json = {
  '1': 'Card',
  '2': [
    {'1': 'number', '3': 1, '4': 1, '5': 5, '10': 'number'},
    {'1': 'suit', '3': 2, '4': 1, '5': 14, '6': '.pb_msg_ttk_game.SUIT', '10': 'suit'},
    {'1': 'value', '3': 3, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `Card`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDescriptor = $convert.base64Decode(
    'CgRDYXJkEhYKBm51bWJlchgBIAEoBVIGbnVtYmVyEikKBHN1aXQYAiABKA4yFS5wYl9tc2dfdH'
    'RrX2dhbWUuU1VJVFIEc3VpdBIUCgV2YWx1ZRgDIAEoBVIFdmFsdWU=');

@$core.Deprecated('Use handDescriptor instead')
const Hand$json = {
  '1': 'Hand',
  '2': [
    {'1': 'pattern', '3': 1, '4': 1, '5': 14, '6': '.pb_msg_ttk_game.PATTERN', '10': 'pattern'},
    {'1': 'cards', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_ttk_game.Card', '10': 'cards'},
  ],
};

/// Descriptor for `Hand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List handDescriptor = $convert.base64Decode(
    'CgRIYW5kEjIKB3BhdHRlcm4YASABKA4yGC5wYl9tc2dfdHRrX2dhbWUuUEFUVEVSTlIHcGF0dG'
    'VybhIrCgVjYXJkcxgCIAMoCzIVLnBiX21zZ190dGtfZ2FtZS5DYXJkUgVjYXJkcw==');

@$core.Deprecated('Use sideDescriptor instead')
const Side$json = {
  '1': 'Side',
  '2': [
    {'1': 'hand', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_ttk_game.Hand', '10': 'hand'},
    {'1': 'win', '3': 2, '4': 1, '5': 8, '10': 'win'},
    {'1': 'odds', '3': 3, '4': 1, '5': 5, '10': 'odds'},
    {'1': 'amount', '3': 4, '4': 1, '5': 3, '10': 'amount'},
    {'1': 'hasIncognito', '3': 5, '4': 1, '5': 8, '10': 'hasIncognito'},
    {'1': 'publicAmouut', '3': 6, '4': 1, '5': 3, '10': 'publicAmouut'},
  ],
};

/// Descriptor for `Side`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sideDescriptor = $convert.base64Decode(
    'CgRTaWRlEikKBGhhbmQYASABKAsyFS5wYl9tc2dfdHRrX2dhbWUuSGFuZFIEaGFuZBIQCgN3aW'
    '4YAiABKAhSA3dpbhISCgRvZGRzGAMgASgFUgRvZGRzEhYKBmFtb3VudBgEIAEoA1IGYW1vdW50'
    'EiIKDGhhc0luY29nbml0bxgFIAEoCFIMaGFzSW5jb2duaXRvEiIKDHB1YmxpY0Ftb3V1dBgGIA'
    'EoA1IMcHVibGljQW1vdXV0');

@$core.Deprecated('Use tTKGameInfoDescriptor instead')
const TTKGameInfo$json = {
  '1': 'TTKGameInfo',
  '2': [
    {'1': 'no', '3': 1, '4': 1, '5': 3, '10': 'no'},
    {'1': 'state', '3': 2, '4': 1, '5': 5, '10': 'state'},
    {'1': 'endTime', '3': 3, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'hand', '3': 4, '4': 1, '5': 11, '6': '.pb_msg_ttk_game.Hand', '10': 'hand'},
    {'1': 'sides', '3': 5, '4': 3, '5': 11, '6': '.pb_msg_ttk_game.Side', '10': 'sides'},
  ],
};

/// Descriptor for `TTKGameInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tTKGameInfoDescriptor = $convert.base64Decode(
    'CgtUVEtHYW1lSW5mbxIOCgJubxgBIAEoA1ICbm8SFAoFc3RhdGUYAiABKAVSBXN0YXRlEhgKB2'
    'VuZFRpbWUYAyABKANSB2VuZFRpbWUSKQoEaGFuZBgEIAEoCzIVLnBiX21zZ190dGtfZ2FtZS5I'
    'YW5kUgRoYW5kEisKBXNpZGVzGAUgAygLMhUucGJfbXNnX3R0a19nYW1lLlNpZGVSBXNpZGVz');

@$core.Deprecated('Use tTKPlayerInfoDescriptor instead')
const TTKPlayerInfo$json = {
  '1': 'TTKPlayerInfo',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'bets', '3': 3, '4': 3, '5': 3, '10': 'bets'},
    {'1': 'coinBalance', '3': 4, '4': 1, '5': 3, '10': 'coinBalance'},
    {'1': 'cocoBalance', '3': 5, '4': 1, '5': 3, '10': 'cocoBalance'},
    {'1': 'winLose', '3': 6, '4': 1, '5': 3, '10': 'winLose'},
    {'1': 'incognito', '3': 7, '4': 1, '5': 8, '10': 'incognito'},
    {'1': 'incognitoTimes', '3': 8, '4': 1, '5': 5, '10': 'incognitoTimes'},
  ],
};

/// Descriptor for `TTKPlayerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tTKPlayerInfoDescriptor = $convert.base64Decode(
    'Cg1UVEtQbGF5ZXJJbmZvEhYKBnVzZXJJZBgBIAEoA1IGdXNlcklkEhoKCHVzZXJuYW1lGAIgAS'
    'gJUgh1c2VybmFtZRISCgRiZXRzGAMgAygDUgRiZXRzEiAKC2NvaW5CYWxhbmNlGAQgASgDUgtj'
    'b2luQmFsYW5jZRIgCgtjb2NvQmFsYW5jZRgFIAEoA1ILY29jb0JhbGFuY2USGAoHd2luTG9zZR'
    'gGIAEoA1IHd2luTG9zZRIcCglpbmNvZ25pdG8YByABKAhSCWluY29nbml0bxImCg5pbmNvZ25p'
    'dG9UaW1lcxgIIAEoBVIOaW5jb2duaXRvVGltZXM=');

@$core.Deprecated('Use tTKWinnerBoardDescriptor instead')
const TTKWinnerBoard$json = {
  '1': 'TTKWinnerBoard',
  '2': [
    {'1': 'winners', '3': 2, '4': 3, '5': 11, '6': '.pb_msg_ttk_game.TTKPlayerInfo', '10': 'winners'},
  ],
};

/// Descriptor for `TTKWinnerBoard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tTKWinnerBoardDescriptor = $convert.base64Decode(
    'Cg5UVEtXaW5uZXJCb2FyZBI4Cgd3aW5uZXJzGAIgAygLMh4ucGJfbXNnX3R0a19nYW1lLlRUS1'
    'BsYXllckluZm9SB3dpbm5lcnM=');

@$core.Deprecated('Use betStartNotifyDescriptor instead')
const BetStartNotify$json = {
  '1': 'BetStartNotify',
  '2': [
    {'1': 'no', '3': 1, '4': 1, '5': 3, '10': 'no'},
    {'1': 'endTime', '3': 2, '4': 1, '5': 3, '10': 'endTime'},
  ],
};

/// Descriptor for `BetStartNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List betStartNotifyDescriptor = $convert.base64Decode(
    'Cg5CZXRTdGFydE5vdGlmeRIOCgJubxgBIAEoA1ICbm8SGAoHZW5kVGltZRgCIAEoA1IHZW5kVG'
    'ltZQ==');

@$core.Deprecated('Use sideChangeNotifyDescriptor instead')
const SideChangeNotify$json = {
  '1': 'SideChangeNotify',
  '2': [
    {'1': 'sides', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_ttk_game.Side', '10': 'sides'},
  ],
};

/// Descriptor for `SideChangeNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sideChangeNotifyDescriptor = $convert.base64Decode(
    'ChBTaWRlQ2hhbmdlTm90aWZ5EisKBXNpZGVzGAEgAygLMhUucGJfbXNnX3R0a19nYW1lLlNpZG'
    'VSBXNpZGVz');

@$core.Deprecated('Use betReqDescriptor instead')
const BetReq$json = {
  '1': 'BetReq',
  '2': [
    {'1': 'no', '3': 1, '4': 1, '5': 3, '10': 'no'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'kingdom', '3': 3, '4': 1, '5': 14, '6': '.pb_msg_ttk_game.KINGDOM', '10': 'kingdom'},
    {'1': 'amount', '3': 4, '4': 1, '5': 3, '10': 'amount'},
    {'1': 'incognito', '3': 5, '4': 1, '5': 8, '10': 'incognito'},
  ],
};

/// Descriptor for `BetReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List betReqDescriptor = $convert.base64Decode(
    'CgZCZXRSZXESDgoCbm8YASABKANSAm5vEhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIyCg'
    'draW5nZG9tGAMgASgOMhgucGJfbXNnX3R0a19nYW1lLktJTkdET01SB2tpbmdkb20SFgoGYW1v'
    'dW50GAQgASgDUgZhbW91bnQSHAoJaW5jb2duaXRvGAUgASgIUglpbmNvZ25pdG8=');

@$core.Deprecated('Use betRspDescriptor instead')
const BetRsp$json = {
  '1': 'BetRsp',
  '2': [
    {'1': 'sides', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_ttk_game.Side', '10': 'sides'},
    {'1': 'playerInfo', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_ttk_game.TTKPlayerInfo', '10': 'playerInfo'},
    {'1': 'no', '3': 3, '4': 1, '5': 3, '10': 'no'},
  ],
};

/// Descriptor for `BetRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List betRspDescriptor = $convert.base64Decode(
    'CgZCZXRSc3ASKwoFc2lkZXMYASADKAsyFS5wYl9tc2dfdHRrX2dhbWUuU2lkZVIFc2lkZXMSPg'
    'oKcGxheWVySW5mbxgCIAEoCzIeLnBiX21zZ190dGtfZ2FtZS5UVEtQbGF5ZXJJbmZvUgpwbGF5'
    'ZXJJbmZvEg4KAm5vGAMgASgDUgJubw==');

@$core.Deprecated('Use repeatBetReqDescriptor instead')
const RepeatBetReq$json = {
  '1': 'RepeatBetReq',
  '2': [
    {'1': 'no', '3': 1, '4': 1, '5': 3, '10': 'no'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'bets', '3': 3, '4': 3, '5': 3, '10': 'bets'},
    {'1': 'incognito', '3': 4, '4': 1, '5': 8, '10': 'incognito'},
  ],
};

/// Descriptor for `RepeatBetReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatBetReqDescriptor = $convert.base64Decode(
    'CgxSZXBlYXRCZXRSZXESDgoCbm8YASABKANSAm5vEhoKCHVzZXJuYW1lGAIgASgJUgh1c2Vybm'
    'FtZRISCgRiZXRzGAMgAygDUgRiZXRzEhwKCWluY29nbml0bxgEIAEoCFIJaW5jb2duaXRv');

@$core.Deprecated('Use repeatBetRspDescriptor instead')
const RepeatBetRsp$json = {
  '1': 'RepeatBetRsp',
  '2': [
    {'1': 'sides', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_ttk_game.Side', '10': 'sides'},
    {'1': 'playerInfo', '3': 2, '4': 1, '5': 11, '6': '.pb_msg_ttk_game.TTKPlayerInfo', '10': 'playerInfo'},
    {'1': 'no', '3': 3, '4': 1, '5': 3, '10': 'no'},
  ],
};

/// Descriptor for `RepeatBetRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatBetRspDescriptor = $convert.base64Decode(
    'CgxSZXBlYXRCZXRSc3ASKwoFc2lkZXMYASADKAsyFS5wYl9tc2dfdHRrX2dhbWUuU2lkZVIFc2'
    'lkZXMSPgoKcGxheWVySW5mbxgCIAEoCzIeLnBiX21zZ190dGtfZ2FtZS5UVEtQbGF5ZXJJbmZv'
    'UgpwbGF5ZXJJbmZvEg4KAm5vGAMgASgDUgJubw==');

@$core.Deprecated('Use winnersReqDescriptor instead')
const WinnersReq$json = {
  '1': 'WinnersReq',
  '2': [
    {'1': 'no', '3': 1, '4': 1, '5': 3, '10': 'no'},
    {'1': 'offset', '3': 2, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'count', '3': 3, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `WinnersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List winnersReqDescriptor = $convert.base64Decode(
    'CgpXaW5uZXJzUmVxEg4KAm5vGAEgASgDUgJubxIWCgZvZmZzZXQYAiABKANSBm9mZnNldBIUCg'
    'Vjb3VudBgDIAEoA1IFY291bnQ=');

@$core.Deprecated('Use winnersRspDescriptor instead')
const WinnersRsp$json = {
  '1': 'WinnersRsp',
  '2': [
    {'1': 'winners', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_ttk_game.TTKPlayerInfo', '10': 'winners'},
  ],
};

/// Descriptor for `WinnersRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List winnersRspDescriptor = $convert.base64Decode(
    'CgpXaW5uZXJzUnNwEjgKB3dpbm5lcnMYASADKAsyHi5wYl9tc2dfdHRrX2dhbWUuVFRLUGxheW'
    'VySW5mb1IHd2lubmVycw==');

@$core.Deprecated('Use dealStartNotifyDescriptor instead')
const DealStartNotify$json = {
  '1': 'DealStartNotify',
  '2': [
    {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.pb_msg_ttk_game.TTKGameInfo', '10': 'game'},
  ],
};

/// Descriptor for `DealStartNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dealStartNotifyDescriptor = $convert.base64Decode(
    'Cg9EZWFsU3RhcnROb3RpZnkSMAoEZ2FtZRgBIAEoCzIcLnBiX21zZ190dGtfZ2FtZS5UVEtHYW'
    '1lSW5mb1IEZ2FtZQ==');

@$core.Deprecated('Use updateGameConfigDescriptor instead')
const UpdateGameConfig$json = {
  '1': 'UpdateGameConfig',
};

/// Descriptor for `UpdateGameConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGameConfigDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVHYW1lQ29uZmln');

@$core.Deprecated('Use setGamePoolDescriptor instead')
const SetGamePool$json = {
  '1': 'SetGamePool',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `SetGamePool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setGamePoolDescriptor = $convert.base64Decode(
    'CgtTZXRHYW1lUG9vbBIWCgZhbW91bnQYASABKANSBmFtb3VudA==');

@$core.Deprecated('Use setKingdomWeightDescriptor instead')
const SetKingdomWeight$json = {
  '1': 'SetKingdomWeight',
  '2': [
    {'1': 'weights', '3': 1, '4': 3, '5': 5, '10': 'weights'},
  ],
};

/// Descriptor for `SetKingdomWeight`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setKingdomWeightDescriptor = $convert.base64Decode(
    'ChBTZXRLaW5nZG9tV2VpZ2h0EhgKB3dlaWdodHMYASADKAVSB3dlaWdodHM=');

@$core.Deprecated('Use tTKGameStateReqDescriptor instead')
const TTKGameStateReq$json = {
  '1': 'TTKGameStateReq',
};

/// Descriptor for `TTKGameStateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tTKGameStateReqDescriptor = $convert.base64Decode(
    'Cg9UVEtHYW1lU3RhdGVSZXE=');

@$core.Deprecated('Use tTKGameStateRspDescriptor instead')
const TTKGameStateRsp$json = {
  '1': 'TTKGameStateRsp',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 5, '10': 'state'},
    {'1': 'countdown', '3': 2, '4': 1, '5': 3, '10': 'countdown'},
    {'1': 'kingdoms', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_ttk_game.TTKKingdom', '10': 'kingdoms'},
  ],
};

/// Descriptor for `TTKGameStateRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tTKGameStateRspDescriptor = $convert.base64Decode(
    'Cg9UVEtHYW1lU3RhdGVSc3ASFAoFc3RhdGUYASABKAVSBXN0YXRlEhwKCWNvdW50ZG93bhgCIA'
    'EoA1IJY291bnRkb3duEjcKCGtpbmdkb21zGAMgAygLMhsucGJfbXNnX3R0a19nYW1lLlRUS0tp'
    'bmdkb21SCGtpbmdkb21z');

@$core.Deprecated('Use tTKKingdomDescriptor instead')
const TTKKingdom$json = {
  '1': 'TTKKingdom',
  '2': [
    {'1': 'players', '3': 1, '4': 3, '5': 11, '6': '.pb_msg_ttk_game.TTKKingdom.Player', '10': 'players'},
    {'1': 'total', '3': 2, '4': 1, '5': 3, '10': 'total'},
  ],
  '3': [TTKKingdom_Player$json],
};

@$core.Deprecated('Use tTKKingdomDescriptor instead')
const TTKKingdom_Player$json = {
  '1': 'Player',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'bet', '3': 2, '4': 1, '5': 3, '10': 'bet'},
    {'1': 'userGameType', '3': 3, '4': 1, '5': 5, '10': 'userGameType'},
  ],
};

/// Descriptor for `TTKKingdom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tTKKingdomDescriptor = $convert.base64Decode(
    'CgpUVEtLaW5nZG9tEjwKB3BsYXllcnMYASADKAsyIi5wYl9tc2dfdHRrX2dhbWUuVFRLS2luZ2'
    'RvbS5QbGF5ZXJSB3BsYXllcnMSFAoFdG90YWwYAiABKANSBXRvdGFsGlYKBlBsYXllchIWCgZ1'
    'c2VySWQYASABKANSBnVzZXJJZBIQCgNiZXQYAiABKANSA2JldBIiCgx1c2VyR2FtZVR5cGUYAy'
    'ABKAVSDHVzZXJHYW1lVHlwZQ==');

