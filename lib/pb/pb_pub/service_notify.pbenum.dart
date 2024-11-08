//
//  Generated code. Do not modify.
//  source: pb_pub/service_notify.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class YXLiveRoomNotifyType extends $pb.ProtobufEnum {
  static const YXLiveRoomNotifyType LIVE_START = YXLiveRoomNotifyType._(0, _omitEnumNames ? '' : 'LIVE_START');
  static const YXLiveRoomNotifyType LIVE_STOP = YXLiveRoomNotifyType._(1, _omitEnumNames ? '' : 'LIVE_STOP');
  static const YXLiveRoomNotifyType LIVEROOM_HEARTBEAT = YXLiveRoomNotifyType._(2, _omitEnumNames ? '' : 'LIVEROOM_HEARTBEAT');
  static const YXLiveRoomNotifyType ENTER_ROOM = YXLiveRoomNotifyType._(3, _omitEnumNames ? '' : 'ENTER_ROOM');
  static const YXLiveRoomNotifyType EXIT_ROOM = YXLiveRoomNotifyType._(4, _omitEnumNames ? '' : 'EXIT_ROOM');
  static const YXLiveRoomNotifyType UNSET_USER_KICKOUT_STATUS = YXLiveRoomNotifyType._(5, _omitEnumNames ? '' : 'UNSET_USER_KICKOUT_STATUS');
  static const YXLiveRoomNotifyType LIVEROOM_PK_SCORE_UPDATE = YXLiveRoomNotifyType._(6, _omitEnumNames ? '' : 'LIVEROOM_PK_SCORE_UPDATE');
  static const YXLiveRoomNotifyType PKPROP = YXLiveRoomNotifyType._(7, _omitEnumNames ? '' : 'PKPROP');
  static const YXLiveRoomNotifyType SEND_GIFT = YXLiveRoomNotifyType._(8, _omitEnumNames ? '' : 'SEND_GIFT');
  static const YXLiveRoomNotifyType HOST_MODE = YXLiveRoomNotifyType._(9, _omitEnumNames ? '' : 'HOST_MODE');
  static const YXLiveRoomNotifyType UPDATED_USER_INFO = YXLiveRoomNotifyType._(10, _omitEnumNames ? '' : 'UPDATED_USER_INFO');
  static const YXLiveRoomNotifyType ROOM_BARRAGE = YXLiveRoomNotifyType._(11, _omitEnumNames ? '' : 'ROOM_BARRAGE');
  static const YXLiveRoomNotifyType ROOM_ACTION = YXLiveRoomNotifyType._(12, _omitEnumNames ? '' : 'ROOM_ACTION');
  static const YXLiveRoomNotifyType UPDATE_ANCHOR_SCORE = YXLiveRoomNotifyType._(13, _omitEnumNames ? '' : 'UPDATE_ANCHOR_SCORE');
  static const YXLiveRoomNotifyType UPDATE_BILLBOARD = YXLiveRoomNotifyType._(14, _omitEnumNames ? '' : 'UPDATE_BILLBOARD');
  static const YXLiveRoomNotifyType KICK_USER_OUT = YXLiveRoomNotifyType._(15, _omitEnumNames ? '' : 'KICK_USER_OUT');
  static const YXLiveRoomNotifyType SEND_LIVE_GIFT = YXLiveRoomNotifyType._(16, _omitEnumNames ? '' : 'SEND_LIVE_GIFT');
  static const YXLiveRoomNotifyType UPDATE_MULTI_ANCHOR_SCORE = YXLiveRoomNotifyType._(17, _omitEnumNames ? '' : 'UPDATE_MULTI_ANCHOR_SCORE');
  static const YXLiveRoomNotifyType INVESTOR_CHANGE = YXLiveRoomNotifyType._(18, _omitEnumNames ? '' : 'INVESTOR_CHANGE');
  static const YXLiveRoomNotifyType SECRET_GIFT = YXLiveRoomNotifyType._(19, _omitEnumNames ? '' : 'SECRET_GIFT');
  static const YXLiveRoomNotifyType BACKGROUND_CHANGE = YXLiveRoomNotifyType._(20, _omitEnumNames ? '' : 'BACKGROUND_CHANGE');
  static const YXLiveRoomNotifyType HAND_DRAWN_GIFT = YXLiveRoomNotifyType._(21, _omitEnumNames ? '' : 'HAND_DRAWN_GIFT');
  static const YXLiveRoomNotifyType TOP1_FANS_CHANGE_NOTITFY = YXLiveRoomNotifyType._(22, _omitEnumNames ? '' : 'TOP1_FANS_CHANGE_NOTITFY');

  static const $core.List<YXLiveRoomNotifyType> values = <YXLiveRoomNotifyType> [
    LIVE_START,
    LIVE_STOP,
    LIVEROOM_HEARTBEAT,
    ENTER_ROOM,
    EXIT_ROOM,
    UNSET_USER_KICKOUT_STATUS,
    LIVEROOM_PK_SCORE_UPDATE,
    PKPROP,
    SEND_GIFT,
    HOST_MODE,
    UPDATED_USER_INFO,
    ROOM_BARRAGE,
    ROOM_ACTION,
    UPDATE_ANCHOR_SCORE,
    UPDATE_BILLBOARD,
    KICK_USER_OUT,
    SEND_LIVE_GIFT,
    UPDATE_MULTI_ANCHOR_SCORE,
    INVESTOR_CHANGE,
    SECRET_GIFT,
    BACKGROUND_CHANGE,
    HAND_DRAWN_GIFT,
    TOP1_FANS_CHANGE_NOTITFY,
  ];

  static final $core.Map<$core.int, YXLiveRoomNotifyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static YXLiveRoomNotifyType? valueOf($core.int value) => _byValue[value];

  const YXLiveRoomNotifyType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
