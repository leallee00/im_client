//
//  Generated code. Do not modify.
//  source: pb_pub/error_code.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errCodeDescriptor instead')
const ErrCode$json = {
  '1': 'ErrCode',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'Canceled', '2': 1},
    {'1': 'UnknownErr', '2': 2},
    {'1': 'InvalidArgument', '2': 3},
    {'1': 'DeadlineExceeded', '2': 4},
    {'1': 'NotFound', '2': 5},
    {'1': 'AlreadyExists', '2': 6},
    {'1': 'PermissionDenied', '2': 7},
    {'1': 'ResourceExhausted', '2': 8},
    {'1': 'FailedPrecondition', '2': 9},
    {'1': 'Aborted', '2': 10},
    {'1': 'OutOfRange', '2': 11},
    {'1': 'Unimplemented', '2': 12},
    {'1': 'Internal', '2': 13},
    {'1': 'Unavailable', '2': 14},
    {'1': 'DataLoss', '2': 15},
    {'1': 'Unauthenticated', '2': 16},
    {'1': 'SYS_ERR', '2': 30},
    {'1': 'USER_NOT_EXIST', '2': 31},
    {'1': 'USER_NOT_ONLINE', '2': 32},
    {'1': 'PERMISSION_DENIED', '2': 33},
    {'1': 'PB_NO_HANDLER', '2': 34},
    {'1': 'OTHER_DEVICE_LOGGED', '2': 35},
    {'1': 'OTHER_DEVICE_ONLINE_NOW', '2': 36},
    {'1': 'Rate_LIMIT', '2': 37},
    {'1': 'ROOM_NOT_FILE', '2': 40},
    {'1': 'LIVE_ROOM_NOTEXIT', '2': 50},
    {'1': 'USER_IS_KICKED_OUT', '2': 51},
    {'1': 'UNMARSHAL_FAILED', '2': 52},
    {'1': 'USER_FORBID_SPEAKING', '2': 53},
    {'1': 'SEND_MSG_FAILED', '2': 54},
    {'1': 'MARSHAL_FAILED', '2': 55},
    {'1': 'USER_NOT_IN_ROOM', '2': 56},
    {'1': 'USER_IS_KICKED_OUT_BY_ANCHOR', '2': 57},
    {'1': 'USER_IS_KICKED_OUT_BY_MANAGER', '2': 58},
    {'1': 'NO_FREE_BENCH', '2': 60},
    {'1': 'CHAIR_NOT_EMPTY', '2': 61},
    {'1': 'NOT_CHAIR_MAIN', '2': 62},
    {'1': 'USER_IS_ON_ANCHOR_ALREADY', '2': 63},
    {'1': 'USER_IS_IN_WAIT_LIST_ALREADY', '2': 64},
    {'1': 'USER_NO_INVITATION', '2': 65},
    {'1': 'USER_ON_ANCHOR_AUTH_FAILED', '2': 66},
    {'1': 'ROOM_IS_LIVING_ALREADY', '2': 67},
    {'1': 'AIM_LOC_NOT_FREE', '2': 68},
    {'1': 'USER_ENTER_ROOM_AUTH_FAILED', '2': 69},
    {'1': 'LIVE_START_AUTH_FAILED', '2': 70},
    {'1': 'ROOM_NOT_IN_LIVING', '2': 71},
    {'1': 'USER_NOT_ON_ANCHOR', '2': 72},
    {'1': 'USER_ON_CHAT_ROOM_ALREADY', '2': 73},
    {'1': 'AUDIO_ROOM_IS_LIVING_ALREADY', '2': 74},
    {'1': 'SECRET_ROOM_IS_NIL', '2': 100},
    {'1': 'USER_IS_NOT_A_COMPERE', '2': 101},
    {'1': 'INPUT_IS_OUT_OF_RANGE', '2': 102},
    {'1': 'TYPE_ASSERTION_ERR', '2': 103},
    {'1': 'INVITER_IS_LEVEL_PRIVILEGE', '2': 104},
    {'1': 'GET_BALANCE', '2': 105},
    {'1': 'BALANCE_NOT_ENOUGH', '2': 106},
    {'1': 'COUNT_OF_CHATROOM_UP_TO_LIMIT', '2': 107},
    {'1': 'INVITEE_IS_NOT_ON_ANCHOR', '2': 108},
    {'1': 'INVITER_ALREADY_ON_CHAT', '2': 109},
    {'1': 'INVITEE_ALREADY_ON_CHAT', '2': 110},
    {'1': 'INVITER_IS_CHAIRMAN', '2': 111},
    {'1': 'INVITEE_IS_CHAIRMAN', '2': 112},
    {'1': 'INVITER_HAS_LEFT_ROOM', '2': 113},
    {'1': 'CREATE_INVITATION_FAILED', '2': 114},
    {'1': 'GET_INVITATION_FAILED', '2': 115},
    {'1': 'STATUS_IS_UNEXPECTED', '2': 116},
    {'1': 'CREATE_CHATROOM_FAILED', '2': 117},
    {'1': 'GET_CHATROOM_FAILED', '2': 118},
    {'1': 'CHATROOM_IS_NIL', '2': 119},
    {'1': 'USER_IS_BUSY', '2': 201},
    {'1': 'SCENE_NOTEXIT', '2': 202},
    {'1': 'LUCK_REFRESH_CFG_FAIL', '2': 251},
    {'1': 'PK_ROOM_NOT_EXIST', '2': 300},
    {'1': 'FINAL_PK_ESCAPE', '2': 331},
    {'1': 'FINAL_PK_INVITE', '2': 332},
    {'1': 'FINAL_PK_BE_INVITE', '2': 333},
    {'1': 'FINAL_PK_ENQUEUE', '2': 334},
    {'1': 'BET_NOT_ALLOWED_IN_DEALING', '2': 401},
    {'1': 'UNKNOWN_KINGDOM', '2': 402},
    {'1': 'BET_AMOUNT_NOT_ALLOWED', '2': 403},
    {'1': 'NO_ENOUGH_BALANCE', '2': 404},
    {'1': 'PRIVATE_MESSAGE_LIMITED', '2': 801},
    {'1': 'SN_GET_CHATID_ERROR', '2': 1100},
    {'1': 'READ_CHAT_HISTORY_ERROR', '2': 1101},
    {'1': 'COMMON_ERR', '2': 10000},
    {'1': 'PIC_SO_BIG', '2': 10010001},
    {'1': 'PIC_PUT_OSS_FAIL', '2': 10010002},
    {'1': 'PIC_SECURE_CHECK_FAIL', '2': 10010003},
    {'1': 'PIC_NOT_SECURE', '2': 10010004},
    {'1': 'VIDEO_SO_BIG', '2': 10010005},
    {'1': 'VIDEO_PUT_OSS_FAIL', '2': 10010006},
    {'1': 'VIDEO_SECURE_CHECK_FAIL', '2': 10010007},
    {'1': 'VIDEO_NOT_SECURE', '2': 10010008},
    {'1': 'AUDIO_SO_BIG', '2': 10010009},
    {'1': 'AUDIO_PUT_OSS_FAIL', '2': 10010010},
    {'1': 'AUDIO_SECURE_CHECK_FAIL', '2': 10010011},
    {'1': 'AUDIO_NOT_SECURE', '2': 10010012},
    {'1': 'GET_UPLOAD_FILE_FAIL', '2': 10010013},
    {'1': 'FILE_SO_BIG', '2': 10010014},
    {'1': 'FILE_PUT_OSS_FAIL', '2': 10010015},
    {'1': 'CALLEE_NOT_ONLINE', '2': 1200},
    {'1': 'CALL_SCENE_NOT_EXIST', '2': 1201},
    {'1': 'OPERATION_NOT_ALLOWED', '2': 1202},
    {'1': 'CALL_ACCEPTED', '2': 1203},
    {'1': 'CALLEE_NO_MONEY', '2': 1204},
    {'1': 'AUTH_ERR', '2': 1205},
    {'1': 'CALLER_IN_CALLEE_BLACK_LIST', '2': 1206},
    {'1': 'CALLEE_NOT_ACCEPT', '2': 1207},
    {'1': 'CALLER_INFO_NOT_COMPLETE', '2': 1208},
    {'1': 'CALLEE_INFO_NOT_COMPLETE', '2': 1209},
    {'1': 'CALLER_NO_MONEY', '2': 1210},
    {'1': 'OTHER_KEFU_ANSWERING', '2': 1300},
    {'1': 'SEND_MESSAGE_BEFORE_ANSWER', '2': 1301},
    {'1': 'ALL_KEFU_OFFLINE', '2': 1302},
    {'1': 'RED_EDIT', '2': 1401},
    {'1': 'RED_COMPLETED', '2': 1402},
    {'1': 'RED_OVER_TIME', '2': 1403},
    {'1': 'RED_NOT_FOR_ME', '2': 1404},
  ],
};

/// Descriptor for `ErrCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List errCodeDescriptor = $convert.base64Decode(
    'CgdFcnJDb2RlEgsKB1NVQ0NFU1MQABIMCghDYW5jZWxlZBABEg4KClVua25vd25FcnIQAhITCg'
    '9JbnZhbGlkQXJndW1lbnQQAxIUChBEZWFkbGluZUV4Y2VlZGVkEAQSDAoITm90Rm91bmQQBRIR'
    'Cg1BbHJlYWR5RXhpc3RzEAYSFAoQUGVybWlzc2lvbkRlbmllZBAHEhUKEVJlc291cmNlRXhoYX'
    'VzdGVkEAgSFgoSRmFpbGVkUHJlY29uZGl0aW9uEAkSCwoHQWJvcnRlZBAKEg4KCk91dE9mUmFu'
    'Z2UQCxIRCg1VbmltcGxlbWVudGVkEAwSDAoISW50ZXJuYWwQDRIPCgtVbmF2YWlsYWJsZRAOEg'
    'wKCERhdGFMb3NzEA8SEwoPVW5hdXRoZW50aWNhdGVkEBASCwoHU1lTX0VSUhAeEhIKDlVTRVJf'
    'Tk9UX0VYSVNUEB8SEwoPVVNFUl9OT1RfT05MSU5FECASFQoRUEVSTUlTU0lPTl9ERU5JRUQQIR'
    'IRCg1QQl9OT19IQU5ETEVSECISFwoTT1RIRVJfREVWSUNFX0xPR0dFRBAjEhsKF09USEVSX0RF'
    'VklDRV9PTkxJTkVfTk9XECQSDgoKUmF0ZV9MSU1JVBAlEhEKDVJPT01fTk9UX0ZJTEUQKBIVCh'
    'FMSVZFX1JPT01fTk9URVhJVBAyEhYKElVTRVJfSVNfS0lDS0VEX09VVBAzEhQKEFVOTUFSU0hB'
    'TF9GQUlMRUQQNBIYChRVU0VSX0ZPUkJJRF9TUEVBS0lORxA1EhMKD1NFTkRfTVNHX0ZBSUxFRB'
    'A2EhIKDk1BUlNIQUxfRkFJTEVEEDcSFAoQVVNFUl9OT1RfSU5fUk9PTRA4EiAKHFVTRVJfSVNf'
    'S0lDS0VEX09VVF9CWV9BTkNIT1IQORIhCh1VU0VSX0lTX0tJQ0tFRF9PVVRfQllfTUFOQUdFUh'
    'A6EhEKDU5PX0ZSRUVfQkVOQ0gQPBITCg9DSEFJUl9OT1RfRU1QVFkQPRISCg5OT1RfQ0hBSVJf'
    'TUFJThA+Eh0KGVVTRVJfSVNfT05fQU5DSE9SX0FMUkVBRFkQPxIgChxVU0VSX0lTX0lOX1dBSV'
    'RfTElTVF9BTFJFQURZEEASFgoSVVNFUl9OT19JTlZJVEFUSU9OEEESHgoaVVNFUl9PTl9BTkNI'
    'T1JfQVVUSF9GQUlMRUQQQhIaChZST09NX0lTX0xJVklOR19BTFJFQURZEEMSFAoQQUlNX0xPQ1'
    '9OT1RfRlJFRRBEEh8KG1VTRVJfRU5URVJfUk9PTV9BVVRIX0ZBSUxFRBBFEhoKFkxJVkVfU1RB'
    'UlRfQVVUSF9GQUlMRUQQRhIWChJST09NX05PVF9JTl9MSVZJTkcQRxIWChJVU0VSX05PVF9PTl'
    '9BTkNIT1IQSBIdChlVU0VSX09OX0NIQVRfUk9PTV9BTFJFQURZEEkSIAocQVVESU9fUk9PTV9J'
    'U19MSVZJTkdfQUxSRUFEWRBKEhYKElNFQ1JFVF9ST09NX0lTX05JTBBkEhkKFVVTRVJfSVNfTk'
    '9UX0FfQ09NUEVSRRBlEhkKFUlOUFVUX0lTX09VVF9PRl9SQU5HRRBmEhYKElRZUEVfQVNTRVJU'
    'SU9OX0VSUhBnEh4KGklOVklURVJfSVNfTEVWRUxfUFJJVklMRUdFEGgSDwoLR0VUX0JBTEFOQ0'
    'UQaRIWChJCQUxBTkNFX05PVF9FTk9VR0gQahIhCh1DT1VOVF9PRl9DSEFUUk9PTV9VUF9UT19M'
    'SU1JVBBrEhwKGElOVklURUVfSVNfTk9UX09OX0FOQ0hPUhBsEhsKF0lOVklURVJfQUxSRUFEWV'
    '9PTl9DSEFUEG0SGwoXSU5WSVRFRV9BTFJFQURZX09OX0NIQVQQbhIXChNJTlZJVEVSX0lTX0NI'
    'QUlSTUFOEG8SFwoTSU5WSVRFRV9JU19DSEFJUk1BThBwEhkKFUlOVklURVJfSEFTX0xFRlRfUk'
    '9PTRBxEhwKGENSRUFURV9JTlZJVEFUSU9OX0ZBSUxFRBByEhkKFUdFVF9JTlZJVEFUSU9OX0ZB'
    'SUxFRBBzEhgKFFNUQVRVU19JU19VTkVYUEVDVEVEEHQSGgoWQ1JFQVRFX0NIQVRST09NX0ZBSU'
    'xFRBB1EhcKE0dFVF9DSEFUUk9PTV9GQUlMRUQQdhITCg9DSEFUUk9PTV9JU19OSUwQdxIRCgxV'
    'U0VSX0lTX0JVU1kQyQESEgoNU0NFTkVfTk9URVhJVBDKARIaChVMVUNLX1JFRlJFU0hfQ0ZHX0'
    'ZBSUwQ+wESFgoRUEtfUk9PTV9OT1RfRVhJU1QQrAISFAoPRklOQUxfUEtfRVNDQVBFEMsCEhQK'
    'D0ZJTkFMX1BLX0lOVklURRDMAhIXChJGSU5BTF9QS19CRV9JTlZJVEUQzQISFQoQRklOQUxfUE'
    'tfRU5RVUVVRRDOAhIfChpCRVRfTk9UX0FMTE9XRURfSU5fREVBTElORxCRAxIUCg9VTktOT1dO'
    'X0tJTkdET00QkgMSGwoWQkVUX0FNT1VOVF9OT1RfQUxMT1dFRBCTAxIWChFOT19FTk9VR0hfQk'
    'FMQU5DRRCUAxIcChdQUklWQVRFX01FU1NBR0VfTElNSVRFRBChBhIYChNTTl9HRVRfQ0hBVElE'
    'X0VSUk9SEMwIEhwKF1JFQURfQ0hBVF9ISVNUT1JZX0VSUk9SEM0IEg8KCkNPTU1PTl9FUlIQkE'
    '4SEQoKUElDX1NPX0JJRxCR++IEEhcKEFBJQ19QVVRfT1NTX0ZBSUwQkvviBBIcChVQSUNfU0VD'
    'VVJFX0NIRUNLX0ZBSUwQk/viBBIVCg5QSUNfTk9UX1NFQ1VSRRCU++IEEhMKDFZJREVPX1NPX0'
    'JJRxCV++IEEhkKElZJREVPX1BVVF9PU1NfRkFJTBCW++IEEh4KF1ZJREVPX1NFQ1VSRV9DSEVD'
    'S19GQUlMEJf74gQSFwoQVklERU9fTk9UX1NFQ1VSRRCY++IEEhMKDEFVRElPX1NPX0JJRxCZ++'
    'IEEhkKEkFVRElPX1BVVF9PU1NfRkFJTBCa++IEEh4KF0FVRElPX1NFQ1VSRV9DSEVDS19GQUlM'
    'EJv74gQSFwoQQVVESU9fTk9UX1NFQ1VSRRCc++IEEhsKFEdFVF9VUExPQURfRklMRV9GQUlMEJ'
    '374gQSEgoLRklMRV9TT19CSUcQnvviBBIYChFGSUxFX1BVVF9PU1NfRkFJTBCf++IEEhYKEUNB'
    'TExFRV9OT1RfT05MSU5FELAJEhkKFENBTExfU0NFTkVfTk9UX0VYSVNUELEJEhoKFU9QRVJBVE'
    'lPTl9OT1RfQUxMT1dFRBCyCRISCg1DQUxMX0FDQ0VQVEVEELMJEhQKD0NBTExFRV9OT19NT05F'
    'WRC0CRINCghBVVRIX0VSUhC1CRIgChtDQUxMRVJfSU5fQ0FMTEVFX0JMQUNLX0xJU1QQtgkSFg'
    'oRQ0FMTEVFX05PVF9BQ0NFUFQQtwkSHQoYQ0FMTEVSX0lORk9fTk9UX0NPTVBMRVRFELgJEh0K'
    'GENBTExFRV9JTkZPX05PVF9DT01QTEVURRC5CRIUCg9DQUxMRVJfTk9fTU9ORVkQugkSGQoUT1'
    'RIRVJfS0VGVV9BTlNXRVJJTkcQlAoSHwoaU0VORF9NRVNTQUdFX0JFRk9SRV9BTlNXRVIQlQoS'
    'FQoQQUxMX0tFRlVfT0ZGTElORRCWChINCghSRURfRURJVBD5ChISCg1SRURfQ09NUExFVEVEEP'
    'oKEhIKDVJFRF9PVkVSX1RJTUUQ+woSEwoOUkVEX05PVF9GT1JfTUUQ/Ao=');

