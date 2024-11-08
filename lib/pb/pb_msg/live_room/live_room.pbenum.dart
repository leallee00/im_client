//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/live_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PartyType extends $pb.ProtobufEnum {
  static const PartyType Six = PartyType._(0, _omitEnumNames ? '' : 'Six');
  static const PartyType Eight = PartyType._(1, _omitEnumNames ? '' : 'Eight');

  static const $core.List<PartyType> values = <PartyType> [
    Six,
    Eight,
  ];

  static final $core.Map<$core.int, PartyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PartyType? valueOf($core.int value) => _byValue[value];

  const PartyType._($core.int v, $core.String n) : super(v, n);
}

class RoomTheme extends $pb.ProtobufEnum {
  static const RoomTheme UNKNOWN_THEME = RoomTheme._(0, _omitEnumNames ? '' : 'UNKNOWN_THEME');
  static const RoomTheme BLIND_DATE = RoomTheme._(2, _omitEnumNames ? '' : 'BLIND_DATE');
  static const RoomTheme SONG_TABLE = RoomTheme._(3, _omitEnumNames ? '' : 'SONG_TABLE');
  static const RoomTheme RADIO = RoomTheme._(4, _omitEnumNames ? '' : 'RADIO');
  static const RoomTheme GAME = RoomTheme._(5, _omitEnumNames ? '' : 'GAME');

  static const $core.List<RoomTheme> values = <RoomTheme> [
    UNKNOWN_THEME,
    BLIND_DATE,
    SONG_TABLE,
    RADIO,
    GAME,
  ];

  static final $core.Map<$core.int, RoomTheme> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomTheme? valueOf($core.int value) => _byValue[value];

  const RoomTheme._($core.int v, $core.String n) : super(v, n);
}

/// 房间相关消息
/// 房间状态
class RoomStatus extends $pb.ProtobufEnum {
  static const RoomStatus NORMAL = RoomStatus._(0, _omitEnumNames ? '' : 'NORMAL');
  static const RoomStatus LIVE_STOP = RoomStatus._(1, _omitEnumNames ? '' : 'LIVE_STOP');

  static const $core.List<RoomStatus> values = <RoomStatus> [
    NORMAL,
    LIVE_STOP,
  ];

  static final $core.Map<$core.int, RoomStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomStatus? valueOf($core.int value) => _byValue[value];

  const RoomStatus._($core.int v, $core.String n) : super(v, n);
}

class ACTION_TYPE extends $pb.ProtobufEnum {
  static const ACTION_TYPE UNKNOWN = ACTION_TYPE._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const ACTION_TYPE GIFT = ACTION_TYPE._(1, _omitEnumNames ? '' : 'GIFT');
  static const ACTION_TYPE FOLLOW = ACTION_TYPE._(2, _omitEnumNames ? '' : 'FOLLOW');
  static const ACTION_TYPE SHARE = ACTION_TYPE._(3, _omitEnumNames ? '' : 'SHARE');
  static const ACTION_TYPE LIGHT = ACTION_TYPE._(4, _omitEnumNames ? '' : 'LIGHT');
  static const ACTION_TYPE UPGRADE = ACTION_TYPE._(5, _omitEnumNames ? '' : 'UPGRADE');
  static const ACTION_TYPE FISH = ACTION_TYPE._(9, _omitEnumNames ? '' : 'FISH');
  static const ACTION_TYPE REENTER = ACTION_TYPE._(10, _omitEnumNames ? '' : 'REENTER');

  static const $core.List<ACTION_TYPE> values = <ACTION_TYPE> [
    UNKNOWN,
    GIFT,
    FOLLOW,
    SHARE,
    LIGHT,
    UPGRADE,
    FISH,
    REENTER,
  ];

  static final $core.Map<$core.int, ACTION_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ACTION_TYPE? valueOf($core.int value) => _byValue[value];

  const ACTION_TYPE._($core.int v, $core.String n) : super(v, n);
}

///  已经移到 pb_msg/pk_room包中
///
/// /////////
/// // PK相关
/// /////////
///
/// // 匹配PK
///
/// // 主播申请加入随机PK请求
/// message PKEnqueueReq
/// {}
///
/// message PKEnqueueRsp
/// {}
///
/// // 从PK队列中移除
/// message PKDequeueReq
/// {}
///
/// message PKDequeueRsp
/// {}
///
///
/// // 主播响应是否接受随机创建的PK
/// message PKAnswerReq{
/// ANSWER answer = 1;
/// }
/// message PKAnswerRsp
/// {}
///
///
///
/// // 主动结束PK,逃兵
/// message PKOverReq  // srcid 主退主播 aimid 被退主播
/// {}
/// message PKOverRsp
/// {}
///
///
///
///
/// // 邀请PK
///
/// // 主播A邀请主播B进行PK
/// message PKInviteReq  // srcid 邀请方 aimid 被邀方
/// {
/// int32 pkType = 1;
/// }
/// message PKInviteRsp
/// {}
///
///
/// // 邀请方取消PK邀请
/// message PKInviteStopReq
/// {}
/// message PKInviteStopRsp
/// {}
///
/// // 被邀请方响应是否接受邀请
/// message InvitePKAnswerReq
/// {
/// ANSWER answer = 1;
/// }
///
/// message InvitePKAnswerRsp
/// {}
///
/// // PK心跳
/// message PKHeartBeat
/// {}
///
///
/// enum ANSWER
/// {
/// REFUSE = 0;  // 拒绝连麦
/// AGREE  = 1;  // 同意连麦
/// }
class RoomType extends $pb.ProtobufEnum {
  static const RoomType Unknow = RoomType._(0, _omitEnumNames ? '' : 'Unknow');
  static const RoomType Video = RoomType._(1, _omitEnumNames ? '' : 'Video');
  static const RoomType Audio = RoomType._(2, _omitEnumNames ? '' : 'Audio');
  static const RoomType Party = RoomType._(3, _omitEnumNames ? '' : 'Party');

  static const $core.List<RoomType> values = <RoomType> [
    Unknow,
    Video,
    Audio,
    Party,
  ];

  static final $core.Map<$core.int, RoomType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomType? valueOf($core.int value) => _byValue[value];

  const RoomType._($core.int v, $core.String n) : super(v, n);
}

class MAnchorRole extends $pb.ProtobufEnum {
  static const MAnchorRole Audience = MAnchorRole._(0, _omitEnumNames ? '' : 'Audience');
  static const MAnchorRole Anchor = MAnchorRole._(1, _omitEnumNames ? '' : 'Anchor');
  static const MAnchorRole Owner = MAnchorRole._(2, _omitEnumNames ? '' : 'Owner');
  static const MAnchorRole Manager = MAnchorRole._(3, _omitEnumNames ? '' : 'Manager');

  static const $core.List<MAnchorRole> values = <MAnchorRole> [
    Audience,
    Anchor,
    Owner,
    Manager,
  ];

  static final $core.Map<$core.int, MAnchorRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MAnchorRole? valueOf($core.int value) => _byValue[value];

  const MAnchorRole._($core.int v, $core.String n) : super(v, n);
}

class AnswerType extends $pb.ProtobufEnum {
  static const AnswerType Agree = AnswerType._(0, _omitEnumNames ? '' : 'Agree');
  static const AnswerType Refuse = AnswerType._(1, _omitEnumNames ? '' : 'Refuse');

  static const $core.List<AnswerType> values = <AnswerType> [
    Agree,
    Refuse,
  ];

  static final $core.Map<$core.int, AnswerType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AnswerType? valueOf($core.int value) => _byValue[value];

  const AnswerType._($core.int v, $core.String n) : super(v, n);
}

class STREAM_STATE extends $pb.ProtobufEnum {
  static const STREAM_STATE CLOSED = STREAM_STATE._(0, _omitEnumNames ? '' : 'CLOSED');
  static const STREAM_STATE CREATED = STREAM_STATE._(1, _omitEnumNames ? '' : 'CREATED');

  static const $core.List<STREAM_STATE> values = <STREAM_STATE> [
    CLOSED,
    CREATED,
  ];

  static final $core.Map<$core.int, STREAM_STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static STREAM_STATE? valueOf($core.int value) => _byValue[value];

  const STREAM_STATE._($core.int v, $core.String n) : super(v, n);
}

class LiveGiftNotify_SendType extends $pb.ProtobufEnum {
  static const LiveGiftNotify_SendType SINGLE = LiveGiftNotify_SendType._(0, _omitEnumNames ? '' : 'SINGLE');
  static const LiveGiftNotify_SendType MULTI = LiveGiftNotify_SendType._(1, _omitEnumNames ? '' : 'MULTI');

  static const $core.List<LiveGiftNotify_SendType> values = <LiveGiftNotify_SendType> [
    SINGLE,
    MULTI,
  ];

  static final $core.Map<$core.int, LiveGiftNotify_SendType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LiveGiftNotify_SendType? valueOf($core.int value) => _byValue[value];

  const LiveGiftNotify_SendType._($core.int v, $core.String n) : super(v, n);
}

class HandDrawnGiftNotify_SendType extends $pb.ProtobufEnum {
  static const HandDrawnGiftNotify_SendType SINGLE = HandDrawnGiftNotify_SendType._(0, _omitEnumNames ? '' : 'SINGLE');
  static const HandDrawnGiftNotify_SendType MULTI = HandDrawnGiftNotify_SendType._(1, _omitEnumNames ? '' : 'MULTI');

  static const $core.List<HandDrawnGiftNotify_SendType> values = <HandDrawnGiftNotify_SendType> [
    SINGLE,
    MULTI,
  ];

  static final $core.Map<$core.int, HandDrawnGiftNotify_SendType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HandDrawnGiftNotify_SendType? valueOf($core.int value) => _byValue[value];

  const HandDrawnGiftNotify_SendType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
