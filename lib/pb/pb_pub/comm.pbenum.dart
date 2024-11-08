//
//  Generated code. Do not modify.
//  source: pb_pub/comm.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 客户端运行环境类型
class CLIENT_RUN_ENV_TYPE extends $pb.ProtobufEnum {
  static const CLIENT_RUN_ENV_TYPE ANDROID = CLIENT_RUN_ENV_TYPE._(0, _omitEnumNames ? '' : 'ANDROID');
  static const CLIENT_RUN_ENV_TYPE IOS = CLIENT_RUN_ENV_TYPE._(1, _omitEnumNames ? '' : 'IOS');
  static const CLIENT_RUN_ENV_TYPE MAKOS = CLIENT_RUN_ENV_TYPE._(2, _omitEnumNames ? '' : 'MAKOS');
  static const CLIENT_RUN_ENV_TYPE WINDOWS = CLIENT_RUN_ENV_TYPE._(3, _omitEnumNames ? '' : 'WINDOWS');
  static const CLIENT_RUN_ENV_TYPE LINUX = CLIENT_RUN_ENV_TYPE._(4, _omitEnumNames ? '' : 'LINUX');
  static const CLIENT_RUN_ENV_TYPE LINUX_DEB = CLIENT_RUN_ENV_TYPE._(5, _omitEnumNames ? '' : 'LINUX_DEB');
  static const CLIENT_RUN_ENV_TYPE PREV6 = CLIENT_RUN_ENV_TYPE._(6, _omitEnumNames ? '' : 'PREV6');
  static const CLIENT_RUN_ENV_TYPE PREV7 = CLIENT_RUN_ENV_TYPE._(7, _omitEnumNames ? '' : 'PREV7');
  static const CLIENT_RUN_ENV_TYPE PREV8 = CLIENT_RUN_ENV_TYPE._(8, _omitEnumNames ? '' : 'PREV8');

  static const $core.List<CLIENT_RUN_ENV_TYPE> values = <CLIENT_RUN_ENV_TYPE> [
    ANDROID,
    IOS,
    MAKOS,
    WINDOWS,
    LINUX,
    LINUX_DEB,
    PREV6,
    PREV7,
    PREV8,
  ];

  static final $core.Map<$core.int, CLIENT_RUN_ENV_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CLIENT_RUN_ENV_TYPE? valueOf($core.int value) => _byValue[value];

  const CLIENT_RUN_ENV_TYPE._($core.int v, $core.String n) : super(v, n);
}

class PCD_EXP_KEY extends $pb.ProtobufEnum {
  static const PCD_EXP_KEY PCD_EXP_KEY_BEGIN = PCD_EXP_KEY._(0, _omitEnumNames ? '' : 'PCD_EXP_KEY_BEGIN');
  static const PCD_EXP_KEY GROUP_MSG_STATUS = PCD_EXP_KEY._(1000, _omitEnumNames ? '' : 'GROUP_MSG_STATUS');

  static const $core.List<PCD_EXP_KEY> values = <PCD_EXP_KEY> [
    PCD_EXP_KEY_BEGIN,
    GROUP_MSG_STATUS,
  ];

  static final $core.Map<$core.int, PCD_EXP_KEY> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PCD_EXP_KEY? valueOf($core.int value) => _byValue[value];

  const PCD_EXP_KEY._($core.int v, $core.String n) : super(v, n);
}

class CLIENT_TYPE extends $pb.ProtobufEnum {
  static const CLIENT_TYPE NONE = CLIENT_TYPE._(0, _omitEnumNames ? '' : 'NONE');
  static const CLIENT_TYPE PHONE = CLIENT_TYPE._(1, _omitEnumNames ? '' : 'PHONE');
  static const CLIENT_TYPE H5 = CLIENT_TYPE._(2, _omitEnumNames ? '' : 'H5');
  static const CLIENT_TYPE PC = CLIENT_TYPE._(3, _omitEnumNames ? '' : 'PC');
  static const CLIENT_TYPE SERVER = CLIENT_TYPE._(100, _omitEnumNames ? '' : 'SERVER');
  static const CLIENT_TYPE ALL = CLIENT_TYPE._(1000, _omitEnumNames ? '' : 'ALL');

  static const $core.List<CLIENT_TYPE> values = <CLIENT_TYPE> [
    NONE,
    PHONE,
    H5,
    PC,
    SERVER,
    ALL,
  ];

  static final $core.Map<$core.int, CLIENT_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CLIENT_TYPE? valueOf($core.int value) => _byValue[value];

  const CLIENT_TYPE._($core.int v, $core.String n) : super(v, n);
}

/// 推送消息客户端的活动类型
class PushMsgClientActionType extends $pb.ProtobufEnum {
  static const PushMsgClientActionType CLIENT_ACTION_UNKNOWN = PushMsgClientActionType._(0, _omitEnumNames ? '' : 'CLIENT_ACTION_UNKNOWN');
  static const PushMsgClientActionType CLIENT_ACTION_LIVE_START = PushMsgClientActionType._(1, _omitEnumNames ? '' : 'CLIENT_ACTION_LIVE_START');
  static const PushMsgClientActionType CLIENT_ACTION_PRIVATE_CHAT = PushMsgClientActionType._(2, _omitEnumNames ? '' : 'CLIENT_ACTION_PRIVATE_CHAT');
  static const PushMsgClientActionType CLIENT_ACTION_KE_FU = PushMsgClientActionType._(3, _omitEnumNames ? '' : 'CLIENT_ACTION_KE_FU');

  static const $core.List<PushMsgClientActionType> values = <PushMsgClientActionType> [
    CLIENT_ACTION_UNKNOWN,
    CLIENT_ACTION_LIVE_START,
    CLIENT_ACTION_PRIVATE_CHAT,
    CLIENT_ACTION_KE_FU,
  ];

  static final $core.Map<$core.int, PushMsgClientActionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PushMsgClientActionType? valueOf($core.int value) => _byValue[value];

  const PushMsgClientActionType._($core.int v, $core.String n) : super(v, n);
}

class TextChatType extends $pb.ProtobufEnum {
  static const TextChatType TEXT = TextChatType._(0, _omitEnumNames ? '' : 'TEXT');
  static const TextChatType PIC = TextChatType._(1, _omitEnumNames ? '' : 'PIC');
  static const TextChatType VIDEO = TextChatType._(2, _omitEnumNames ? '' : 'VIDEO');
  static const TextChatType AUDIO = TextChatType._(3, _omitEnumNames ? '' : 'AUDIO');
  static const TextChatType GIFT = TextChatType._(4, _omitEnumNames ? '' : 'GIFT');
  static const TextChatType PACT = TextChatType._(5, _omitEnumNames ? '' : 'PACT');
  static const TextChatType VIDEO_INVITE = TextChatType._(6, _omitEnumNames ? '' : 'VIDEO_INVITE');
  static const TextChatType CUSTOMIZE = TextChatType._(7, _omitEnumNames ? '' : 'CUSTOMIZE');
  static const TextChatType FILE = TextChatType._(8, _omitEnumNames ? '' : 'FILE');
  static const TextChatType RECALL = TextChatType._(9, _omitEnumNames ? '' : 'RECALL');
  static const TextChatType RED_PACKET = TextChatType._(10, _omitEnumNames ? '' : 'RED_PACKET');

  static const $core.List<TextChatType> values = <TextChatType> [
    TEXT,
    PIC,
    VIDEO,
    AUDIO,
    GIFT,
    PACT,
    VIDEO_INVITE,
    CUSTOMIZE,
    FILE,
    RECALL,
    RED_PACKET,
  ];

  static final $core.Map<$core.int, TextChatType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TextChatType? valueOf($core.int value) => _byValue[value];

  const TextChatType._($core.int v, $core.String n) : super(v, n);
}

/// 状态只能增长，不能后退
class MSG_STATE extends $pb.ProtobufEnum {
  static const MSG_STATE INIT = MSG_STATE._(0, _omitEnumNames ? '' : 'INIT');
  static const MSG_STATE FAULT = MSG_STATE._(1, _omitEnumNames ? '' : 'FAULT');
  static const MSG_STATE SEND = MSG_STATE._(2, _omitEnumNames ? '' : 'SEND');
  static const MSG_STATE RECEIVED = MSG_STATE._(3, _omitEnumNames ? '' : 'RECEIVED');
  static const MSG_STATE READ = MSG_STATE._(4, _omitEnumNames ? '' : 'READ');
  static const MSG_STATE END = MSG_STATE._(5, _omitEnumNames ? '' : 'END');
  static const MSG_STATE IN_BLACK_LIST = MSG_STATE._(6, _omitEnumNames ? '' : 'IN_BLACK_LIST');
  static const MSG_STATE LIMITED = MSG_STATE._(7, _omitEnumNames ? '' : 'LIMITED');

  static const $core.List<MSG_STATE> values = <MSG_STATE> [
    INIT,
    FAULT,
    SEND,
    RECEIVED,
    READ,
    END,
    IN_BLACK_LIST,
    LIMITED,
  ];

  static final $core.Map<$core.int, MSG_STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MSG_STATE? valueOf($core.int value) => _byValue[value];

  const MSG_STATE._($core.int v, $core.String n) : super(v, n);
}

class MODEL_TYPE extends $pb.ProtobufEnum {
  static const MODEL_TYPE NIL = MODEL_TYPE._(0, _omitEnumNames ? '' : 'NIL');
  static const MODEL_TYPE OPPO = MODEL_TYPE._(1, _omitEnumNames ? '' : 'OPPO');
  static const MODEL_TYPE HUAWEI = MODEL_TYPE._(2, _omitEnumNames ? '' : 'HUAWEI');
  static const MODEL_TYPE XIAOMI = MODEL_TYPE._(3, _omitEnumNames ? '' : 'XIAOMI');
  static const MODEL_TYPE MEIZU = MODEL_TYPE._(4, _omitEnumNames ? '' : 'MEIZU');
  static const MODEL_TYPE APPSTORE = MODEL_TYPE._(5, _omitEnumNames ? '' : 'APPSTORE');
  static const MODEL_TYPE VIVO = MODEL_TYPE._(6, _omitEnumNames ? '' : 'VIVO');
  static const MODEL_TYPE JIGUANG = MODEL_TYPE._(7, _omitEnumNames ? '' : 'JIGUANG');
  static const MODEL_TYPE FCM = MODEL_TYPE._(8, _omitEnumNames ? '' : 'FCM');
  static const MODEL_TYPE RONGYAO = MODEL_TYPE._(9, _omitEnumNames ? '' : 'RONGYAO');

  static const $core.List<MODEL_TYPE> values = <MODEL_TYPE> [
    NIL,
    OPPO,
    HUAWEI,
    XIAOMI,
    MEIZU,
    APPSTORE,
    VIVO,
    JIGUANG,
    FCM,
    RONGYAO,
  ];

  static final $core.Map<$core.int, MODEL_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MODEL_TYPE? valueOf($core.int value) => _byValue[value];

  const MODEL_TYPE._($core.int v, $core.String n) : super(v, n);
}

class HEART_BEAT_TYPE extends $pb.ProtobufEnum {
  static const HEART_BEAT_TYPE COMM = HEART_BEAT_TYPE._(0, _omitEnumNames ? '' : 'COMM');
  static const HEART_BEAT_TYPE LIVE_ROOM = HEART_BEAT_TYPE._(1, _omitEnumNames ? '' : 'LIVE_ROOM');
  static const HEART_BEAT_TYPE CALL_SCENE = HEART_BEAT_TYPE._(2, _omitEnumNames ? '' : 'CALL_SCENE');
  static const HEART_BEAT_TYPE MULTI_ANCHOR_HALL = HEART_BEAT_TYPE._(3, _omitEnumNames ? '' : 'MULTI_ANCHOR_HALL');
  static const HEART_BEAT_TYPE TTK_GAME = HEART_BEAT_TYPE._(4, _omitEnumNames ? '' : 'TTK_GAME');
  static const HEART_BEAT_TYPE LIVE_ROOM_VISITOR = HEART_BEAT_TYPE._(5, _omitEnumNames ? '' : 'LIVE_ROOM_VISITOR');
  static const HEART_BEAT_TYPE GAME_SCENE = HEART_BEAT_TYPE._(6, _omitEnumNames ? '' : 'GAME_SCENE');

  static const $core.List<HEART_BEAT_TYPE> values = <HEART_BEAT_TYPE> [
    COMM,
    LIVE_ROOM,
    CALL_SCENE,
    MULTI_ANCHOR_HALL,
    TTK_GAME,
    LIVE_ROOM_VISITOR,
    GAME_SCENE,
  ];

  static final $core.Map<$core.int, HEART_BEAT_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HEART_BEAT_TYPE? valueOf($core.int value) => _byValue[value];

  const HEART_BEAT_TYPE._($core.int v, $core.String n) : super(v, n);
}

class HEART_BEAT_MSG_STATE extends $pb.ProtobufEnum {
  static const HEART_BEAT_MSG_STATE PING = HEART_BEAT_MSG_STATE._(0, _omitEnumNames ? '' : 'PING');
  static const HEART_BEAT_MSG_STATE PANG = HEART_BEAT_MSG_STATE._(1, _omitEnumNames ? '' : 'PANG');

  static const $core.List<HEART_BEAT_MSG_STATE> values = <HEART_BEAT_MSG_STATE> [
    PING,
    PANG,
  ];

  static final $core.Map<$core.int, HEART_BEAT_MSG_STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HEART_BEAT_MSG_STATE? valueOf($core.int value) => _byValue[value];

  const HEART_BEAT_MSG_STATE._($core.int v, $core.String n) : super(v, n);
}

/// 用户状态定义
class USER_STATE_TYPE extends $pb.ProtobufEnum {
  static const USER_STATE_TYPE USER_STATE_INIT = USER_STATE_TYPE._(0, _omitEnumNames ? '' : 'USER_STATE_INIT');
  static const USER_STATE_TYPE USER_STATE_AUTHING = USER_STATE_TYPE._(1, _omitEnumNames ? '' : 'USER_STATE_AUTHING');
  static const USER_STATE_TYPE USER_STATE_AUTHED = USER_STATE_TYPE._(2, _omitEnumNames ? '' : 'USER_STATE_AUTHED');
  static const USER_STATE_TYPE USER_STATE_OFFLINE = USER_STATE_TYPE._(3, _omitEnumNames ? '' : 'USER_STATE_OFFLINE');

  static const $core.List<USER_STATE_TYPE> values = <USER_STATE_TYPE> [
    USER_STATE_INIT,
    USER_STATE_AUTHING,
    USER_STATE_AUTHED,
    USER_STATE_OFFLINE,
  ];

  static final $core.Map<$core.int, USER_STATE_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static USER_STATE_TYPE? valueOf($core.int value) => _byValue[value];

  const USER_STATE_TYPE._($core.int v, $core.String n) : super(v, n);
}

class OPERATION extends $pb.ProtobufEnum {
  static const OPERATION UNKNOWN = OPERATION._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const OPERATION ENTER = OPERATION._(1, _omitEnumNames ? '' : 'ENTER');
  static const OPERATION EXIT = OPERATION._(2, _omitEnumNames ? '' : 'EXIT');

  static const $core.List<OPERATION> values = <OPERATION> [
    UNKNOWN,
    ENTER,
    EXIT,
  ];

  static final $core.Map<$core.int, OPERATION> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OPERATION? valueOf($core.int value) => _byValue[value];

  const OPERATION._($core.int v, $core.String n) : super(v, n);
}

class SCENE_TYPE extends $pb.ProtobufEnum {
  static const SCENE_TYPE SCENE_TYPE_UNKNOWN = SCENE_TYPE._(0, _omitEnumNames ? '' : 'SCENE_TYPE_UNKNOWN');
  static const SCENE_TYPE SCENE_TYPE_CALL_SCENE = SCENE_TYPE._(1, _omitEnumNames ? '' : 'SCENE_TYPE_CALL_SCENE');
  static const SCENE_TYPE SCENE_TYPE_JOIN_LIVE = SCENE_TYPE._(2, _omitEnumNames ? '' : 'SCENE_TYPE_JOIN_LIVE');

  static const $core.List<SCENE_TYPE> values = <SCENE_TYPE> [
    SCENE_TYPE_UNKNOWN,
    SCENE_TYPE_CALL_SCENE,
    SCENE_TYPE_JOIN_LIVE,
  ];

  static final $core.Map<$core.int, SCENE_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SCENE_TYPE? valueOf($core.int value) => _byValue[value];

  const SCENE_TYPE._($core.int v, $core.String n) : super(v, n);
}

class SendType extends $pb.ProtobufEnum {
  static const SendType TO_SERVICE = SendType._(0, _omitEnumNames ? '' : 'TO_SERVICE');
  static const SendType TO_AIM_USER = SendType._(1, _omitEnumNames ? '' : 'TO_AIM_USER');
  static const SendType TO_ALL_USER = SendType._(2, _omitEnumNames ? '' : 'TO_ALL_USER');
  static const SendType TO_AIM_GROUP = SendType._(3, _omitEnumNames ? '' : 'TO_AIM_GROUP');
  static const SendType TO_ALL_GROUP = SendType._(4, _omitEnumNames ? '' : 'TO_ALL_GROUP');

  static const $core.List<SendType> values = <SendType> [
    TO_SERVICE,
    TO_AIM_USER,
    TO_ALL_USER,
    TO_AIM_GROUP,
    TO_ALL_GROUP,
  ];

  static final $core.Map<$core.int, SendType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SendType? valueOf($core.int value) => _byValue[value];

  const SendType._($core.int v, $core.String n) : super(v, n);
}

class EnterRoomReq_UserType extends $pb.ProtobufEnum {
  static const EnterRoomReq_UserType UNKNOWN = EnterRoomReq_UserType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const EnterRoomReq_UserType REGULAR = EnterRoomReq_UserType._(1, _omitEnumNames ? '' : 'REGULAR');
  static const EnterRoomReq_UserType VISITOR = EnterRoomReq_UserType._(2, _omitEnumNames ? '' : 'VISITOR');

  static const $core.List<EnterRoomReq_UserType> values = <EnterRoomReq_UserType> [
    UNKNOWN,
    REGULAR,
    VISITOR,
  ];

  static final $core.Map<$core.int, EnterRoomReq_UserType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EnterRoomReq_UserType? valueOf($core.int value) => _byValue[value];

  const EnterRoomReq_UserType._($core.int v, $core.String n) : super(v, n);
}

class ServerNotify_From extends $pb.ProtobufEnum {
  static const ServerNotify_From IM = ServerNotify_From._(0, _omitEnumNames ? '' : 'IM');
  static const ServerNotify_From JAVA = ServerNotify_From._(1, _omitEnumNames ? '' : 'JAVA');

  static const $core.List<ServerNotify_From> values = <ServerNotify_From> [
    IM,
    JAVA,
  ];

  static final $core.Map<$core.int, ServerNotify_From> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ServerNotify_From? valueOf($core.int value) => _byValue[value];

  const ServerNotify_From._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
