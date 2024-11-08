//
//  Generated code. Do not modify.
//  source: pb_pub/error_code.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// # RetCode 返回码.
class ErrCode extends $pb.ProtobufEnum {
  static const ErrCode SUCCESS = ErrCode._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const ErrCode Canceled = ErrCode._(1, _omitEnumNames ? '' : 'Canceled');
  static const ErrCode UnknownErr = ErrCode._(2, _omitEnumNames ? '' : 'UnknownErr');
  static const ErrCode InvalidArgument = ErrCode._(3, _omitEnumNames ? '' : 'InvalidArgument');
  static const ErrCode DeadlineExceeded = ErrCode._(4, _omitEnumNames ? '' : 'DeadlineExceeded');
  static const ErrCode NotFound = ErrCode._(5, _omitEnumNames ? '' : 'NotFound');
  static const ErrCode AlreadyExists = ErrCode._(6, _omitEnumNames ? '' : 'AlreadyExists');
  static const ErrCode PermissionDenied = ErrCode._(7, _omitEnumNames ? '' : 'PermissionDenied');
  static const ErrCode ResourceExhausted = ErrCode._(8, _omitEnumNames ? '' : 'ResourceExhausted');
  static const ErrCode FailedPrecondition = ErrCode._(9, _omitEnumNames ? '' : 'FailedPrecondition');
  static const ErrCode Aborted = ErrCode._(10, _omitEnumNames ? '' : 'Aborted');
  static const ErrCode OutOfRange = ErrCode._(11, _omitEnumNames ? '' : 'OutOfRange');
  static const ErrCode Unimplemented = ErrCode._(12, _omitEnumNames ? '' : 'Unimplemented');
  static const ErrCode Internal = ErrCode._(13, _omitEnumNames ? '' : 'Internal');
  static const ErrCode Unavailable = ErrCode._(14, _omitEnumNames ? '' : 'Unavailable');
  static const ErrCode DataLoss = ErrCode._(15, _omitEnumNames ? '' : 'DataLoss');
  static const ErrCode Unauthenticated = ErrCode._(16, _omitEnumNames ? '' : 'Unauthenticated');
  static const ErrCode SYS_ERR = ErrCode._(30, _omitEnumNames ? '' : 'SYS_ERR');
  static const ErrCode USER_NOT_EXIST = ErrCode._(31, _omitEnumNames ? '' : 'USER_NOT_EXIST');
  static const ErrCode USER_NOT_ONLINE = ErrCode._(32, _omitEnumNames ? '' : 'USER_NOT_ONLINE');
  static const ErrCode PERMISSION_DENIED = ErrCode._(33, _omitEnumNames ? '' : 'PERMISSION_DENIED');
  static const ErrCode PB_NO_HANDLER = ErrCode._(34, _omitEnumNames ? '' : 'PB_NO_HANDLER');
  static const ErrCode OTHER_DEVICE_LOGGED = ErrCode._(35, _omitEnumNames ? '' : 'OTHER_DEVICE_LOGGED');
  static const ErrCode OTHER_DEVICE_ONLINE_NOW = ErrCode._(36, _omitEnumNames ? '' : 'OTHER_DEVICE_ONLINE_NOW');
  static const ErrCode Rate_LIMIT = ErrCode._(37, _omitEnumNames ? '' : 'Rate_LIMIT');
  static const ErrCode ROOM_NOT_FILE = ErrCode._(40, _omitEnumNames ? '' : 'ROOM_NOT_FILE');
  static const ErrCode LIVE_ROOM_NOTEXIT = ErrCode._(50, _omitEnumNames ? '' : 'LIVE_ROOM_NOTEXIT');
  static const ErrCode USER_IS_KICKED_OUT = ErrCode._(51, _omitEnumNames ? '' : 'USER_IS_KICKED_OUT');
  static const ErrCode UNMARSHAL_FAILED = ErrCode._(52, _omitEnumNames ? '' : 'UNMARSHAL_FAILED');
  static const ErrCode USER_FORBID_SPEAKING = ErrCode._(53, _omitEnumNames ? '' : 'USER_FORBID_SPEAKING');
  static const ErrCode SEND_MSG_FAILED = ErrCode._(54, _omitEnumNames ? '' : 'SEND_MSG_FAILED');
  static const ErrCode MARSHAL_FAILED = ErrCode._(55, _omitEnumNames ? '' : 'MARSHAL_FAILED');
  static const ErrCode USER_NOT_IN_ROOM = ErrCode._(56, _omitEnumNames ? '' : 'USER_NOT_IN_ROOM');
  static const ErrCode USER_IS_KICKED_OUT_BY_ANCHOR = ErrCode._(57, _omitEnumNames ? '' : 'USER_IS_KICKED_OUT_BY_ANCHOR');
  static const ErrCode USER_IS_KICKED_OUT_BY_MANAGER = ErrCode._(58, _omitEnumNames ? '' : 'USER_IS_KICKED_OUT_BY_MANAGER');
  static const ErrCode NO_FREE_BENCH = ErrCode._(60, _omitEnumNames ? '' : 'NO_FREE_BENCH');
  static const ErrCode CHAIR_NOT_EMPTY = ErrCode._(61, _omitEnumNames ? '' : 'CHAIR_NOT_EMPTY');
  static const ErrCode NOT_CHAIR_MAIN = ErrCode._(62, _omitEnumNames ? '' : 'NOT_CHAIR_MAIN');
  static const ErrCode USER_IS_ON_ANCHOR_ALREADY = ErrCode._(63, _omitEnumNames ? '' : 'USER_IS_ON_ANCHOR_ALREADY');
  static const ErrCode USER_IS_IN_WAIT_LIST_ALREADY = ErrCode._(64, _omitEnumNames ? '' : 'USER_IS_IN_WAIT_LIST_ALREADY');
  static const ErrCode USER_NO_INVITATION = ErrCode._(65, _omitEnumNames ? '' : 'USER_NO_INVITATION');
  static const ErrCode USER_ON_ANCHOR_AUTH_FAILED = ErrCode._(66, _omitEnumNames ? '' : 'USER_ON_ANCHOR_AUTH_FAILED');
  static const ErrCode ROOM_IS_LIVING_ALREADY = ErrCode._(67, _omitEnumNames ? '' : 'ROOM_IS_LIVING_ALREADY');
  static const ErrCode AIM_LOC_NOT_FREE = ErrCode._(68, _omitEnumNames ? '' : 'AIM_LOC_NOT_FREE');
  static const ErrCode USER_ENTER_ROOM_AUTH_FAILED = ErrCode._(69, _omitEnumNames ? '' : 'USER_ENTER_ROOM_AUTH_FAILED');
  static const ErrCode LIVE_START_AUTH_FAILED = ErrCode._(70, _omitEnumNames ? '' : 'LIVE_START_AUTH_FAILED');
  static const ErrCode ROOM_NOT_IN_LIVING = ErrCode._(71, _omitEnumNames ? '' : 'ROOM_NOT_IN_LIVING');
  static const ErrCode USER_NOT_ON_ANCHOR = ErrCode._(72, _omitEnumNames ? '' : 'USER_NOT_ON_ANCHOR');
  static const ErrCode USER_ON_CHAT_ROOM_ALREADY = ErrCode._(73, _omitEnumNames ? '' : 'USER_ON_CHAT_ROOM_ALREADY');
  static const ErrCode AUDIO_ROOM_IS_LIVING_ALREADY = ErrCode._(74, _omitEnumNames ? '' : 'AUDIO_ROOM_IS_LIVING_ALREADY');
  static const ErrCode SECRET_ROOM_IS_NIL = ErrCode._(100, _omitEnumNames ? '' : 'SECRET_ROOM_IS_NIL');
  static const ErrCode USER_IS_NOT_A_COMPERE = ErrCode._(101, _omitEnumNames ? '' : 'USER_IS_NOT_A_COMPERE');
  static const ErrCode INPUT_IS_OUT_OF_RANGE = ErrCode._(102, _omitEnumNames ? '' : 'INPUT_IS_OUT_OF_RANGE');
  static const ErrCode TYPE_ASSERTION_ERR = ErrCode._(103, _omitEnumNames ? '' : 'TYPE_ASSERTION_ERR');
  static const ErrCode INVITER_IS_LEVEL_PRIVILEGE = ErrCode._(104, _omitEnumNames ? '' : 'INVITER_IS_LEVEL_PRIVILEGE');
  static const ErrCode GET_BALANCE = ErrCode._(105, _omitEnumNames ? '' : 'GET_BALANCE');
  static const ErrCode BALANCE_NOT_ENOUGH = ErrCode._(106, _omitEnumNames ? '' : 'BALANCE_NOT_ENOUGH');
  static const ErrCode COUNT_OF_CHATROOM_UP_TO_LIMIT = ErrCode._(107, _omitEnumNames ? '' : 'COUNT_OF_CHATROOM_UP_TO_LIMIT');
  static const ErrCode INVITEE_IS_NOT_ON_ANCHOR = ErrCode._(108, _omitEnumNames ? '' : 'INVITEE_IS_NOT_ON_ANCHOR');
  static const ErrCode INVITER_ALREADY_ON_CHAT = ErrCode._(109, _omitEnumNames ? '' : 'INVITER_ALREADY_ON_CHAT');
  static const ErrCode INVITEE_ALREADY_ON_CHAT = ErrCode._(110, _omitEnumNames ? '' : 'INVITEE_ALREADY_ON_CHAT');
  static const ErrCode INVITER_IS_CHAIRMAN = ErrCode._(111, _omitEnumNames ? '' : 'INVITER_IS_CHAIRMAN');
  static const ErrCode INVITEE_IS_CHAIRMAN = ErrCode._(112, _omitEnumNames ? '' : 'INVITEE_IS_CHAIRMAN');
  static const ErrCode INVITER_HAS_LEFT_ROOM = ErrCode._(113, _omitEnumNames ? '' : 'INVITER_HAS_LEFT_ROOM');
  static const ErrCode CREATE_INVITATION_FAILED = ErrCode._(114, _omitEnumNames ? '' : 'CREATE_INVITATION_FAILED');
  static const ErrCode GET_INVITATION_FAILED = ErrCode._(115, _omitEnumNames ? '' : 'GET_INVITATION_FAILED');
  static const ErrCode STATUS_IS_UNEXPECTED = ErrCode._(116, _omitEnumNames ? '' : 'STATUS_IS_UNEXPECTED');
  static const ErrCode CREATE_CHATROOM_FAILED = ErrCode._(117, _omitEnumNames ? '' : 'CREATE_CHATROOM_FAILED');
  static const ErrCode GET_CHATROOM_FAILED = ErrCode._(118, _omitEnumNames ? '' : 'GET_CHATROOM_FAILED');
  static const ErrCode CHATROOM_IS_NIL = ErrCode._(119, _omitEnumNames ? '' : 'CHATROOM_IS_NIL');
  static const ErrCode USER_IS_BUSY = ErrCode._(201, _omitEnumNames ? '' : 'USER_IS_BUSY');
  static const ErrCode SCENE_NOTEXIT = ErrCode._(202, _omitEnumNames ? '' : 'SCENE_NOTEXIT');
  static const ErrCode LUCK_REFRESH_CFG_FAIL = ErrCode._(251, _omitEnumNames ? '' : 'LUCK_REFRESH_CFG_FAIL');
  static const ErrCode PK_ROOM_NOT_EXIST = ErrCode._(300, _omitEnumNames ? '' : 'PK_ROOM_NOT_EXIST');
  static const ErrCode FINAL_PK_ESCAPE = ErrCode._(331, _omitEnumNames ? '' : 'FINAL_PK_ESCAPE');
  static const ErrCode FINAL_PK_INVITE = ErrCode._(332, _omitEnumNames ? '' : 'FINAL_PK_INVITE');
  static const ErrCode FINAL_PK_BE_INVITE = ErrCode._(333, _omitEnumNames ? '' : 'FINAL_PK_BE_INVITE');
  static const ErrCode FINAL_PK_ENQUEUE = ErrCode._(334, _omitEnumNames ? '' : 'FINAL_PK_ENQUEUE');
  static const ErrCode BET_NOT_ALLOWED_IN_DEALING = ErrCode._(401, _omitEnumNames ? '' : 'BET_NOT_ALLOWED_IN_DEALING');
  static const ErrCode UNKNOWN_KINGDOM = ErrCode._(402, _omitEnumNames ? '' : 'UNKNOWN_KINGDOM');
  static const ErrCode BET_AMOUNT_NOT_ALLOWED = ErrCode._(403, _omitEnumNames ? '' : 'BET_AMOUNT_NOT_ALLOWED');
  static const ErrCode NO_ENOUGH_BALANCE = ErrCode._(404, _omitEnumNames ? '' : 'NO_ENOUGH_BALANCE');
  static const ErrCode PRIVATE_MESSAGE_LIMITED = ErrCode._(801, _omitEnumNames ? '' : 'PRIVATE_MESSAGE_LIMITED');
  static const ErrCode SN_GET_CHATID_ERROR = ErrCode._(1100, _omitEnumNames ? '' : 'SN_GET_CHATID_ERROR');
  static const ErrCode READ_CHAT_HISTORY_ERROR = ErrCode._(1101, _omitEnumNames ? '' : 'READ_CHAT_HISTORY_ERROR');
  static const ErrCode COMMON_ERR = ErrCode._(10000, _omitEnumNames ? '' : 'COMMON_ERR');
  static const ErrCode PIC_SO_BIG = ErrCode._(10010001, _omitEnumNames ? '' : 'PIC_SO_BIG');
  static const ErrCode PIC_PUT_OSS_FAIL = ErrCode._(10010002, _omitEnumNames ? '' : 'PIC_PUT_OSS_FAIL');
  static const ErrCode PIC_SECURE_CHECK_FAIL = ErrCode._(10010003, _omitEnumNames ? '' : 'PIC_SECURE_CHECK_FAIL');
  static const ErrCode PIC_NOT_SECURE = ErrCode._(10010004, _omitEnumNames ? '' : 'PIC_NOT_SECURE');
  static const ErrCode VIDEO_SO_BIG = ErrCode._(10010005, _omitEnumNames ? '' : 'VIDEO_SO_BIG');
  static const ErrCode VIDEO_PUT_OSS_FAIL = ErrCode._(10010006, _omitEnumNames ? '' : 'VIDEO_PUT_OSS_FAIL');
  static const ErrCode VIDEO_SECURE_CHECK_FAIL = ErrCode._(10010007, _omitEnumNames ? '' : 'VIDEO_SECURE_CHECK_FAIL');
  static const ErrCode VIDEO_NOT_SECURE = ErrCode._(10010008, _omitEnumNames ? '' : 'VIDEO_NOT_SECURE');
  static const ErrCode AUDIO_SO_BIG = ErrCode._(10010009, _omitEnumNames ? '' : 'AUDIO_SO_BIG');
  static const ErrCode AUDIO_PUT_OSS_FAIL = ErrCode._(10010010, _omitEnumNames ? '' : 'AUDIO_PUT_OSS_FAIL');
  static const ErrCode AUDIO_SECURE_CHECK_FAIL = ErrCode._(10010011, _omitEnumNames ? '' : 'AUDIO_SECURE_CHECK_FAIL');
  static const ErrCode AUDIO_NOT_SECURE = ErrCode._(10010012, _omitEnumNames ? '' : 'AUDIO_NOT_SECURE');
  static const ErrCode GET_UPLOAD_FILE_FAIL = ErrCode._(10010013, _omitEnumNames ? '' : 'GET_UPLOAD_FILE_FAIL');
  static const ErrCode FILE_SO_BIG = ErrCode._(10010014, _omitEnumNames ? '' : 'FILE_SO_BIG');
  static const ErrCode FILE_PUT_OSS_FAIL = ErrCode._(10010015, _omitEnumNames ? '' : 'FILE_PUT_OSS_FAIL');
  static const ErrCode CALLEE_NOT_ONLINE = ErrCode._(1200, _omitEnumNames ? '' : 'CALLEE_NOT_ONLINE');
  static const ErrCode CALL_SCENE_NOT_EXIST = ErrCode._(1201, _omitEnumNames ? '' : 'CALL_SCENE_NOT_EXIST');
  static const ErrCode OPERATION_NOT_ALLOWED = ErrCode._(1202, _omitEnumNames ? '' : 'OPERATION_NOT_ALLOWED');
  static const ErrCode CALL_ACCEPTED = ErrCode._(1203, _omitEnumNames ? '' : 'CALL_ACCEPTED');
  static const ErrCode CALLEE_NO_MONEY = ErrCode._(1204, _omitEnumNames ? '' : 'CALLEE_NO_MONEY');
  static const ErrCode AUTH_ERR = ErrCode._(1205, _omitEnumNames ? '' : 'AUTH_ERR');
  static const ErrCode CALLER_IN_CALLEE_BLACK_LIST = ErrCode._(1206, _omitEnumNames ? '' : 'CALLER_IN_CALLEE_BLACK_LIST');
  static const ErrCode CALLEE_NOT_ACCEPT = ErrCode._(1207, _omitEnumNames ? '' : 'CALLEE_NOT_ACCEPT');
  static const ErrCode CALLER_INFO_NOT_COMPLETE = ErrCode._(1208, _omitEnumNames ? '' : 'CALLER_INFO_NOT_COMPLETE');
  static const ErrCode CALLEE_INFO_NOT_COMPLETE = ErrCode._(1209, _omitEnumNames ? '' : 'CALLEE_INFO_NOT_COMPLETE');
  static const ErrCode CALLER_NO_MONEY = ErrCode._(1210, _omitEnumNames ? '' : 'CALLER_NO_MONEY');
  static const ErrCode OTHER_KEFU_ANSWERING = ErrCode._(1300, _omitEnumNames ? '' : 'OTHER_KEFU_ANSWERING');
  static const ErrCode SEND_MESSAGE_BEFORE_ANSWER = ErrCode._(1301, _omitEnumNames ? '' : 'SEND_MESSAGE_BEFORE_ANSWER');
  static const ErrCode ALL_KEFU_OFFLINE = ErrCode._(1302, _omitEnumNames ? '' : 'ALL_KEFU_OFFLINE');
  static const ErrCode RED_EDIT = ErrCode._(1401, _omitEnumNames ? '' : 'RED_EDIT');
  static const ErrCode RED_COMPLETED = ErrCode._(1402, _omitEnumNames ? '' : 'RED_COMPLETED');
  static const ErrCode RED_OVER_TIME = ErrCode._(1403, _omitEnumNames ? '' : 'RED_OVER_TIME');
  static const ErrCode RED_NOT_FOR_ME = ErrCode._(1404, _omitEnumNames ? '' : 'RED_NOT_FOR_ME');

  static const $core.List<ErrCode> values = <ErrCode> [
    SUCCESS,
    Canceled,
    UnknownErr,
    InvalidArgument,
    DeadlineExceeded,
    NotFound,
    AlreadyExists,
    PermissionDenied,
    ResourceExhausted,
    FailedPrecondition,
    Aborted,
    OutOfRange,
    Unimplemented,
    Internal,
    Unavailable,
    DataLoss,
    Unauthenticated,
    SYS_ERR,
    USER_NOT_EXIST,
    USER_NOT_ONLINE,
    PERMISSION_DENIED,
    PB_NO_HANDLER,
    OTHER_DEVICE_LOGGED,
    OTHER_DEVICE_ONLINE_NOW,
    Rate_LIMIT,
    ROOM_NOT_FILE,
    LIVE_ROOM_NOTEXIT,
    USER_IS_KICKED_OUT,
    UNMARSHAL_FAILED,
    USER_FORBID_SPEAKING,
    SEND_MSG_FAILED,
    MARSHAL_FAILED,
    USER_NOT_IN_ROOM,
    USER_IS_KICKED_OUT_BY_ANCHOR,
    USER_IS_KICKED_OUT_BY_MANAGER,
    NO_FREE_BENCH,
    CHAIR_NOT_EMPTY,
    NOT_CHAIR_MAIN,
    USER_IS_ON_ANCHOR_ALREADY,
    USER_IS_IN_WAIT_LIST_ALREADY,
    USER_NO_INVITATION,
    USER_ON_ANCHOR_AUTH_FAILED,
    ROOM_IS_LIVING_ALREADY,
    AIM_LOC_NOT_FREE,
    USER_ENTER_ROOM_AUTH_FAILED,
    LIVE_START_AUTH_FAILED,
    ROOM_NOT_IN_LIVING,
    USER_NOT_ON_ANCHOR,
    USER_ON_CHAT_ROOM_ALREADY,
    AUDIO_ROOM_IS_LIVING_ALREADY,
    SECRET_ROOM_IS_NIL,
    USER_IS_NOT_A_COMPERE,
    INPUT_IS_OUT_OF_RANGE,
    TYPE_ASSERTION_ERR,
    INVITER_IS_LEVEL_PRIVILEGE,
    GET_BALANCE,
    BALANCE_NOT_ENOUGH,
    COUNT_OF_CHATROOM_UP_TO_LIMIT,
    INVITEE_IS_NOT_ON_ANCHOR,
    INVITER_ALREADY_ON_CHAT,
    INVITEE_ALREADY_ON_CHAT,
    INVITER_IS_CHAIRMAN,
    INVITEE_IS_CHAIRMAN,
    INVITER_HAS_LEFT_ROOM,
    CREATE_INVITATION_FAILED,
    GET_INVITATION_FAILED,
    STATUS_IS_UNEXPECTED,
    CREATE_CHATROOM_FAILED,
    GET_CHATROOM_FAILED,
    CHATROOM_IS_NIL,
    USER_IS_BUSY,
    SCENE_NOTEXIT,
    LUCK_REFRESH_CFG_FAIL,
    PK_ROOM_NOT_EXIST,
    FINAL_PK_ESCAPE,
    FINAL_PK_INVITE,
    FINAL_PK_BE_INVITE,
    FINAL_PK_ENQUEUE,
    BET_NOT_ALLOWED_IN_DEALING,
    UNKNOWN_KINGDOM,
    BET_AMOUNT_NOT_ALLOWED,
    NO_ENOUGH_BALANCE,
    PRIVATE_MESSAGE_LIMITED,
    SN_GET_CHATID_ERROR,
    READ_CHAT_HISTORY_ERROR,
    COMMON_ERR,
    PIC_SO_BIG,
    PIC_PUT_OSS_FAIL,
    PIC_SECURE_CHECK_FAIL,
    PIC_NOT_SECURE,
    VIDEO_SO_BIG,
    VIDEO_PUT_OSS_FAIL,
    VIDEO_SECURE_CHECK_FAIL,
    VIDEO_NOT_SECURE,
    AUDIO_SO_BIG,
    AUDIO_PUT_OSS_FAIL,
    AUDIO_SECURE_CHECK_FAIL,
    AUDIO_NOT_SECURE,
    GET_UPLOAD_FILE_FAIL,
    FILE_SO_BIG,
    FILE_PUT_OSS_FAIL,
    CALLEE_NOT_ONLINE,
    CALL_SCENE_NOT_EXIST,
    OPERATION_NOT_ALLOWED,
    CALL_ACCEPTED,
    CALLEE_NO_MONEY,
    AUTH_ERR,
    CALLER_IN_CALLEE_BLACK_LIST,
    CALLEE_NOT_ACCEPT,
    CALLER_INFO_NOT_COMPLETE,
    CALLEE_INFO_NOT_COMPLETE,
    CALLER_NO_MONEY,
    OTHER_KEFU_ANSWERING,
    SEND_MESSAGE_BEFORE_ANSWER,
    ALL_KEFU_OFFLINE,
    RED_EDIT,
    RED_COMPLETED,
    RED_OVER_TIME,
    RED_NOT_FOR_ME,
  ];

  static final $core.Map<$core.int, ErrCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ErrCode? valueOf($core.int value) => _byValue[value];

  const ErrCode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
