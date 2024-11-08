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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'game_scene.pbenum.dart';

export 'game_scene.pbenum.dart';

class GamePlayer extends $pb.GeneratedMessage {
  factory GamePlayer({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  GamePlayer._() : super();
  factory GamePlayer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GamePlayer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GamePlayer', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GamePlayer clone() => GamePlayer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GamePlayer copyWith(void Function(GamePlayer) updates) => super.copyWith((message) => updates(message as GamePlayer)) as GamePlayer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GamePlayer create() => GamePlayer._();
  GamePlayer createEmptyInstance() => create();
  static $pb.PbList<GamePlayer> createRepeated() => $pb.PbList<GamePlayer>();
  @$core.pragma('dart2js:noInline')
  static GamePlayer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GamePlayer>(create);
  static GamePlayer? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

/// 游戏房间结构,游戏开始时消息携带,场景恢复单推
class GameInfo extends $pb.GeneratedMessage {
  factory GameInfo({
    GAME_STATE? state,
    GamePlayer? inviter,
    GamePlayer? invitee,
    $core.int? gameType,
    $fixnum.Int64? inviteAt,
    $fixnum.Int64? answerAt,
    $core.Map<$core.String, $core.String>? exps,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    if (inviter != null) {
      $result.inviter = inviter;
    }
    if (invitee != null) {
      $result.invitee = invitee;
    }
    if (gameType != null) {
      $result.gameType = gameType;
    }
    if (inviteAt != null) {
      $result.inviteAt = inviteAt;
    }
    if (answerAt != null) {
      $result.answerAt = answerAt;
    }
    if (exps != null) {
      $result.exps.addAll(exps);
    }
    return $result;
  }
  GameInfo._() : super();
  factory GameInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..e<GAME_STATE>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: GAME_STATE.IDLING, valueOf: GAME_STATE.valueOf, enumValues: GAME_STATE.values)
    ..aOM<GamePlayer>(2, _omitFieldNames ? '' : 'inviter', subBuilder: GamePlayer.create)
    ..aOM<GamePlayer>(3, _omitFieldNames ? '' : 'invitee', subBuilder: GamePlayer.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'gameType', $pb.PbFieldType.O3, protoName: 'gameType')
    ..aInt64(5, _omitFieldNames ? '' : 'inviteAt', protoName: 'inviteAt')
    ..aInt64(6, _omitFieldNames ? '' : 'answerAt', protoName: 'answerAt')
    ..m<$core.String, $core.String>(7, _omitFieldNames ? '' : 'exps', entryClassName: 'GameInfo.ExpsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_game_scene'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameInfo clone() => GameInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameInfo copyWith(void Function(GameInfo) updates) => super.copyWith((message) => updates(message as GameInfo)) as GameInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameInfo create() => GameInfo._();
  GameInfo createEmptyInstance() => create();
  static $pb.PbList<GameInfo> createRepeated() => $pb.PbList<GameInfo>();
  @$core.pragma('dart2js:noInline')
  static GameInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameInfo>(create);
  static GameInfo? _defaultInstance;

  @$pb.TagNumber(1)
  GAME_STATE get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(GAME_STATE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  GamePlayer get inviter => $_getN(1);
  @$pb.TagNumber(2)
  set inviter(GamePlayer v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviter() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviter() => clearField(2);
  @$pb.TagNumber(2)
  GamePlayer ensureInviter() => $_ensure(1);

  @$pb.TagNumber(3)
  GamePlayer get invitee => $_getN(2);
  @$pb.TagNumber(3)
  set invitee(GamePlayer v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInvitee() => $_has(2);
  @$pb.TagNumber(3)
  void clearInvitee() => clearField(3);
  @$pb.TagNumber(3)
  GamePlayer ensureInvitee() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get gameType => $_getIZ(3);
  @$pb.TagNumber(4)
  set gameType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGameType() => $_has(3);
  @$pb.TagNumber(4)
  void clearGameType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get inviteAt => $_getI64(4);
  @$pb.TagNumber(5)
  set inviteAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInviteAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearInviteAt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get answerAt => $_getI64(5);
  @$pb.TagNumber(6)
  set answerAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAnswerAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearAnswerAt() => clearField(6);

  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.String> get exps => $_getMap(6);
}

/// 游戏邀请
class GameInviteReq extends $pb.GeneratedMessage {
  factory GameInviteReq({
    $fixnum.Int64? inviterId,
    $fixnum.Int64? inviteeId,
    $core.int? gameType,
    $core.Map<$core.String, $core.String>? exps,
  }) {
    final $result = create();
    if (inviterId != null) {
      $result.inviterId = inviterId;
    }
    if (inviteeId != null) {
      $result.inviteeId = inviteeId;
    }
    if (gameType != null) {
      $result.gameType = gameType;
    }
    if (exps != null) {
      $result.exps.addAll(exps);
    }
    return $result;
  }
  GameInviteReq._() : super();
  factory GameInviteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameInviteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameInviteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'inviterId', protoName: 'inviterId')
    ..aInt64(2, _omitFieldNames ? '' : 'inviteeId', protoName: 'inviteeId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'gameType', $pb.PbFieldType.O3, protoName: 'gameType')
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'exps', entryClassName: 'GameInviteReq.ExpsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_game_scene'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameInviteReq clone() => GameInviteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameInviteReq copyWith(void Function(GameInviteReq) updates) => super.copyWith((message) => updates(message as GameInviteReq)) as GameInviteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameInviteReq create() => GameInviteReq._();
  GameInviteReq createEmptyInstance() => create();
  static $pb.PbList<GameInviteReq> createRepeated() => $pb.PbList<GameInviteReq>();
  @$core.pragma('dart2js:noInline')
  static GameInviteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameInviteReq>(create);
  static GameInviteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviterId => $_getI64(0);
  @$pb.TagNumber(1)
  set inviterId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviterId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get inviteeId => $_getI64(1);
  @$pb.TagNumber(2)
  set inviteeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviteeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviteeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get gameType => $_getIZ(2);
  @$pb.TagNumber(3)
  set gameType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGameType() => $_has(2);
  @$pb.TagNumber(3)
  void clearGameType() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get exps => $_getMap(3);
}

class GameInviteRsp extends $pb.GeneratedMessage {
  factory GameInviteRsp() => create();
  GameInviteRsp._() : super();
  factory GameInviteRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameInviteRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameInviteRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameInviteRsp clone() => GameInviteRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameInviteRsp copyWith(void Function(GameInviteRsp) updates) => super.copyWith((message) => updates(message as GameInviteRsp)) as GameInviteRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameInviteRsp create() => GameInviteRsp._();
  GameInviteRsp createEmptyInstance() => create();
  static $pb.PbList<GameInviteRsp> createRepeated() => $pb.PbList<GameInviteRsp>();
  @$core.pragma('dart2js:noInline')
  static GameInviteRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameInviteRsp>(create);
  static GameInviteRsp? _defaultInstance;
}

/// 取消游戏邀请
class GameDisinviteReq extends $pb.GeneratedMessage {
  factory GameDisinviteReq({
    $fixnum.Int64? inviterId,
    $fixnum.Int64? inviteeId,
  }) {
    final $result = create();
    if (inviterId != null) {
      $result.inviterId = inviterId;
    }
    if (inviteeId != null) {
      $result.inviteeId = inviteeId;
    }
    return $result;
  }
  GameDisinviteReq._() : super();
  factory GameDisinviteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameDisinviteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameDisinviteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'inviterId', protoName: 'inviterId')
    ..aInt64(2, _omitFieldNames ? '' : 'inviteeId', protoName: 'inviteeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameDisinviteReq clone() => GameDisinviteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameDisinviteReq copyWith(void Function(GameDisinviteReq) updates) => super.copyWith((message) => updates(message as GameDisinviteReq)) as GameDisinviteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameDisinviteReq create() => GameDisinviteReq._();
  GameDisinviteReq createEmptyInstance() => create();
  static $pb.PbList<GameDisinviteReq> createRepeated() => $pb.PbList<GameDisinviteReq>();
  @$core.pragma('dart2js:noInline')
  static GameDisinviteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameDisinviteReq>(create);
  static GameDisinviteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviterId => $_getI64(0);
  @$pb.TagNumber(1)
  set inviterId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviterId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get inviteeId => $_getI64(1);
  @$pb.TagNumber(2)
  set inviteeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviteeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviteeId() => clearField(2);
}

class GameDisinviteRsp extends $pb.GeneratedMessage {
  factory GameDisinviteRsp() => create();
  GameDisinviteRsp._() : super();
  factory GameDisinviteRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameDisinviteRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameDisinviteRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameDisinviteRsp clone() => GameDisinviteRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameDisinviteRsp copyWith(void Function(GameDisinviteRsp) updates) => super.copyWith((message) => updates(message as GameDisinviteRsp)) as GameDisinviteRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameDisinviteRsp create() => GameDisinviteRsp._();
  GameDisinviteRsp createEmptyInstance() => create();
  static $pb.PbList<GameDisinviteRsp> createRepeated() => $pb.PbList<GameDisinviteRsp>();
  @$core.pragma('dart2js:noInline')
  static GameDisinviteRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameDisinviteRsp>(create);
  static GameDisinviteRsp? _defaultInstance;
}

class GameAnswerReq extends $pb.GeneratedMessage {
  factory GameAnswerReq({
    $fixnum.Int64? inviterId,
    $fixnum.Int64? inviteeId,
    GAME_ANSWER_TYPE? answer,
  }) {
    final $result = create();
    if (inviterId != null) {
      $result.inviterId = inviterId;
    }
    if (inviteeId != null) {
      $result.inviteeId = inviteeId;
    }
    if (answer != null) {
      $result.answer = answer;
    }
    return $result;
  }
  GameAnswerReq._() : super();
  factory GameAnswerReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameAnswerReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameAnswerReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'inviterId', protoName: 'inviterId')
    ..aInt64(2, _omitFieldNames ? '' : 'inviteeId', protoName: 'inviteeId')
    ..e<GAME_ANSWER_TYPE>(3, _omitFieldNames ? '' : 'answer', $pb.PbFieldType.OE, defaultOrMaker: GAME_ANSWER_TYPE.REFUSE, valueOf: GAME_ANSWER_TYPE.valueOf, enumValues: GAME_ANSWER_TYPE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameAnswerReq clone() => GameAnswerReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameAnswerReq copyWith(void Function(GameAnswerReq) updates) => super.copyWith((message) => updates(message as GameAnswerReq)) as GameAnswerReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameAnswerReq create() => GameAnswerReq._();
  GameAnswerReq createEmptyInstance() => create();
  static $pb.PbList<GameAnswerReq> createRepeated() => $pb.PbList<GameAnswerReq>();
  @$core.pragma('dart2js:noInline')
  static GameAnswerReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameAnswerReq>(create);
  static GameAnswerReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviterId => $_getI64(0);
  @$pb.TagNumber(1)
  set inviterId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviterId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get inviteeId => $_getI64(1);
  @$pb.TagNumber(2)
  set inviteeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviteeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviteeId() => clearField(2);

  @$pb.TagNumber(3)
  GAME_ANSWER_TYPE get answer => $_getN(2);
  @$pb.TagNumber(3)
  set answer(GAME_ANSWER_TYPE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAnswer() => $_has(2);
  @$pb.TagNumber(3)
  void clearAnswer() => clearField(3);
}

class GameAnswerRsp extends $pb.GeneratedMessage {
  factory GameAnswerRsp() => create();
  GameAnswerRsp._() : super();
  factory GameAnswerRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameAnswerRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameAnswerRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameAnswerRsp clone() => GameAnswerRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameAnswerRsp copyWith(void Function(GameAnswerRsp) updates) => super.copyWith((message) => updates(message as GameAnswerRsp)) as GameAnswerRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameAnswerRsp create() => GameAnswerRsp._();
  GameAnswerRsp createEmptyInstance() => create();
  static $pb.PbList<GameAnswerRsp> createRepeated() => $pb.PbList<GameAnswerRsp>();
  @$core.pragma('dart2js:noInline')
  static GameAnswerRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameAnswerRsp>(create);
  static GameAnswerRsp? _defaultInstance;
}

/// 游戏开始
class GameStartNotify extends $pb.GeneratedMessage {
  factory GameStartNotify({
    GameInfo? gameInfo,
  }) {
    final $result = create();
    if (gameInfo != null) {
      $result.gameInfo = gameInfo;
    }
    return $result;
  }
  GameStartNotify._() : super();
  factory GameStartNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameStartNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameStartNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..aOM<GameInfo>(1, _omitFieldNames ? '' : 'gameInfo', protoName: 'gameInfo', subBuilder: GameInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameStartNotify clone() => GameStartNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameStartNotify copyWith(void Function(GameStartNotify) updates) => super.copyWith((message) => updates(message as GameStartNotify)) as GameStartNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameStartNotify create() => GameStartNotify._();
  GameStartNotify createEmptyInstance() => create();
  static $pb.PbList<GameStartNotify> createRepeated() => $pb.PbList<GameStartNotify>();
  @$core.pragma('dart2js:noInline')
  static GameStartNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameStartNotify>(create);
  static GameStartNotify? _defaultInstance;

  @$pb.TagNumber(1)
  GameInfo get gameInfo => $_getN(0);
  @$pb.TagNumber(1)
  set gameInfo(GameInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameInfo() => clearField(1);
  @$pb.TagNumber(1)
  GameInfo ensureGameInfo() => $_ensure(0);
}

/// 游戏结束
class GameOverNotify extends $pb.GeneratedMessage {
  factory GameOverNotify({
    GAME_OVER_REASON? reason,
  }) {
    final $result = create();
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  GameOverNotify._() : super();
  factory GameOverNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameOverNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameOverNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..e<GAME_OVER_REASON>(1, _omitFieldNames ? '' : 'reason', $pb.PbFieldType.OE, defaultOrMaker: GAME_OVER_REASON.INVITER_CLOSED, valueOf: GAME_OVER_REASON.valueOf, enumValues: GAME_OVER_REASON.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameOverNotify clone() => GameOverNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameOverNotify copyWith(void Function(GameOverNotify) updates) => super.copyWith((message) => updates(message as GameOverNotify)) as GameOverNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameOverNotify create() => GameOverNotify._();
  GameOverNotify createEmptyInstance() => create();
  static $pb.PbList<GameOverNotify> createRepeated() => $pb.PbList<GameOverNotify>();
  @$core.pragma('dart2js:noInline')
  static GameOverNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameOverNotify>(create);
  static GameOverNotify? _defaultInstance;

  @$pb.TagNumber(1)
  GAME_OVER_REASON get reason => $_getN(0);
  @$pb.TagNumber(1)
  set reason(GAME_OVER_REASON v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => clearField(1);
}

/// 结束游戏
class GameOverReq extends $pb.GeneratedMessage {
  factory GameOverReq({
    $fixnum.Int64? inviterId,
    $fixnum.Int64? inviteeId,
  }) {
    final $result = create();
    if (inviterId != null) {
      $result.inviterId = inviterId;
    }
    if (inviteeId != null) {
      $result.inviteeId = inviteeId;
    }
    return $result;
  }
  GameOverReq._() : super();
  factory GameOverReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameOverReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameOverReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'inviterId', protoName: 'inviterId')
    ..aInt64(2, _omitFieldNames ? '' : 'inviteeId', protoName: 'inviteeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameOverReq clone() => GameOverReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameOverReq copyWith(void Function(GameOverReq) updates) => super.copyWith((message) => updates(message as GameOverReq)) as GameOverReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameOverReq create() => GameOverReq._();
  GameOverReq createEmptyInstance() => create();
  static $pb.PbList<GameOverReq> createRepeated() => $pb.PbList<GameOverReq>();
  @$core.pragma('dart2js:noInline')
  static GameOverReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameOverReq>(create);
  static GameOverReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviterId => $_getI64(0);
  @$pb.TagNumber(1)
  set inviterId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviterId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get inviteeId => $_getI64(1);
  @$pb.TagNumber(2)
  set inviteeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviteeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviteeId() => clearField(2);
}

class GameOverRsp extends $pb.GeneratedMessage {
  factory GameOverRsp() => create();
  GameOverRsp._() : super();
  factory GameOverRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameOverRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameOverRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_game_scene'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameOverRsp clone() => GameOverRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameOverRsp copyWith(void Function(GameOverRsp) updates) => super.copyWith((message) => updates(message as GameOverRsp)) as GameOverRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameOverRsp create() => GameOverRsp._();
  GameOverRsp createEmptyInstance() => create();
  static $pb.PbList<GameOverRsp> createRepeated() => $pb.PbList<GameOverRsp>();
  @$core.pragma('dart2js:noInline')
  static GameOverRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameOverRsp>(create);
  static GameOverRsp? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
