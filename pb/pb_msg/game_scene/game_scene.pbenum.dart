//
//  Generated code. Do not modify.
//  source: pb_msg/game_scene/game_scene.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GAME_STATE extends $pb.ProtobufEnum {
  static const GAME_STATE IDLING = GAME_STATE._(0, _omitEnumNames ? '' : 'IDLING');
  static const GAME_STATE WAITING = GAME_STATE._(1, _omitEnumNames ? '' : 'WAITING');
  static const GAME_STATE GAMING = GAME_STATE._(2, _omitEnumNames ? '' : 'GAMING');

  static const $core.List<GAME_STATE> values = <GAME_STATE> [
    IDLING,
    WAITING,
    GAMING,
  ];

  static final $core.Map<$core.int, GAME_STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GAME_STATE? valueOf($core.int value) => _byValue[value];

  const GAME_STATE._($core.int v, $core.String n) : super(v, n);
}

/// 游戏应答
class GAME_ANSWER_TYPE extends $pb.ProtobufEnum {
  static const GAME_ANSWER_TYPE REFUSE = GAME_ANSWER_TYPE._(0, _omitEnumNames ? '' : 'REFUSE');
  static const GAME_ANSWER_TYPE BUZY = GAME_ANSWER_TYPE._(1, _omitEnumNames ? '' : 'BUZY');
  static const GAME_ANSWER_TYPE AGREE = GAME_ANSWER_TYPE._(2, _omitEnumNames ? '' : 'AGREE');
  static const GAME_ANSWER_TYPE NOT_SUPPORT = GAME_ANSWER_TYPE._(3, _omitEnumNames ? '' : 'NOT_SUPPORT');

  static const $core.List<GAME_ANSWER_TYPE> values = <GAME_ANSWER_TYPE> [
    REFUSE,
    BUZY,
    AGREE,
    NOT_SUPPORT,
  ];

  static final $core.Map<$core.int, GAME_ANSWER_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GAME_ANSWER_TYPE? valueOf($core.int value) => _byValue[value];

  const GAME_ANSWER_TYPE._($core.int v, $core.String n) : super(v, n);
}

class GAME_OVER_REASON extends $pb.ProtobufEnum {
  static const GAME_OVER_REASON INVITER_CLOSED = GAME_OVER_REASON._(0, _omitEnumNames ? '' : 'INVITER_CLOSED');
  static const GAME_OVER_REASON INVITER_DISINVITED = GAME_OVER_REASON._(1, _omitEnumNames ? '' : 'INVITER_DISINVITED');
  static const GAME_OVER_REASON INVITER_HEARTBEAT_TIMEOUT = GAME_OVER_REASON._(2, _omitEnumNames ? '' : 'INVITER_HEARTBEAT_TIMEOUT');
  static const GAME_OVER_REASON INVITEE_CLOSED = GAME_OVER_REASON._(10, _omitEnumNames ? '' : 'INVITEE_CLOSED');
  static const GAME_OVER_REASON INVITEE_BUZY = GAME_OVER_REASON._(11, _omitEnumNames ? '' : 'INVITEE_BUZY');
  static const GAME_OVER_REASON INVITEE_REFUSED = GAME_OVER_REASON._(12, _omitEnumNames ? '' : 'INVITEE_REFUSED');
  static const GAME_OVER_REASON INVITEE_NOT_ANSWER = GAME_OVER_REASON._(13, _omitEnumNames ? '' : 'INVITEE_NOT_ANSWER');
  static const GAME_OVER_REASON INVITEE_HEARTBEAT_TIMEOUT = GAME_OVER_REASON._(14, _omitEnumNames ? '' : 'INVITEE_HEARTBEAT_TIMEOUT');
  static const GAME_OVER_REASON INVITEE_CLIENT_NOT_SUPPORT = GAME_OVER_REASON._(15, _omitEnumNames ? '' : 'INVITEE_CLIENT_NOT_SUPPORT');
  static const GAME_OVER_REASON CHARGE_FAILURE = GAME_OVER_REASON._(20, _omitEnumNames ? '' : 'CHARGE_FAILURE');

  static const $core.List<GAME_OVER_REASON> values = <GAME_OVER_REASON> [
    INVITER_CLOSED,
    INVITER_DISINVITED,
    INVITER_HEARTBEAT_TIMEOUT,
    INVITEE_CLOSED,
    INVITEE_BUZY,
    INVITEE_REFUSED,
    INVITEE_NOT_ANSWER,
    INVITEE_HEARTBEAT_TIMEOUT,
    INVITEE_CLIENT_NOT_SUPPORT,
    CHARGE_FAILURE,
  ];

  static final $core.Map<$core.int, GAME_OVER_REASON> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GAME_OVER_REASON? valueOf($core.int value) => _byValue[value];

  const GAME_OVER_REASON._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
