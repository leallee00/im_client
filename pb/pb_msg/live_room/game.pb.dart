//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/game.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class UCGameInfo extends $pb.GeneratedMessage {
  factory UCGameInfo({
    UCGamePlayer? judge,
    UCGameSide? undercoverSide,
    UCGameSide? populaceSide,
  }) {
    final $result = create();
    if (judge != null) {
      $result.judge = judge;
    }
    if (undercoverSide != null) {
      $result.undercoverSide = undercoverSide;
    }
    if (populaceSide != null) {
      $result.populaceSide = populaceSide;
    }
    return $result;
  }
  UCGameInfo._() : super();
  factory UCGameInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UCGameInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UCGameInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UCGamePlayer>(1, _omitFieldNames ? '' : 'judge', subBuilder: UCGamePlayer.create)
    ..aOM<UCGameSide>(2, _omitFieldNames ? '' : 'undercoverSide', protoName: 'undercoverSide', subBuilder: UCGameSide.create)
    ..aOM<UCGameSide>(3, _omitFieldNames ? '' : 'populaceSide', protoName: 'populaceSide', subBuilder: UCGameSide.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UCGameInfo clone() => UCGameInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UCGameInfo copyWith(void Function(UCGameInfo) updates) => super.copyWith((message) => updates(message as UCGameInfo)) as UCGameInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UCGameInfo create() => UCGameInfo._();
  UCGameInfo createEmptyInstance() => create();
  static $pb.PbList<UCGameInfo> createRepeated() => $pb.PbList<UCGameInfo>();
  @$core.pragma('dart2js:noInline')
  static UCGameInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UCGameInfo>(create);
  static UCGameInfo? _defaultInstance;

  @$pb.TagNumber(1)
  UCGamePlayer get judge => $_getN(0);
  @$pb.TagNumber(1)
  set judge(UCGamePlayer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJudge() => $_has(0);
  @$pb.TagNumber(1)
  void clearJudge() => clearField(1);
  @$pb.TagNumber(1)
  UCGamePlayer ensureJudge() => $_ensure(0);

  @$pb.TagNumber(2)
  UCGameSide get undercoverSide => $_getN(1);
  @$pb.TagNumber(2)
  set undercoverSide(UCGameSide v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUndercoverSide() => $_has(1);
  @$pb.TagNumber(2)
  void clearUndercoverSide() => clearField(2);
  @$pb.TagNumber(2)
  UCGameSide ensureUndercoverSide() => $_ensure(1);

  @$pb.TagNumber(3)
  UCGameSide get populaceSide => $_getN(2);
  @$pb.TagNumber(3)
  set populaceSide(UCGameSide v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPopulaceSide() => $_has(2);
  @$pb.TagNumber(3)
  void clearPopulaceSide() => clearField(3);
  @$pb.TagNumber(3)
  UCGameSide ensurePopulaceSide() => $_ensure(2);
}

class UCGameSide extends $pb.GeneratedMessage {
  factory UCGameSide({
    $core.String? word,
    $core.Iterable<UCGamePlayer>? players,
  }) {
    final $result = create();
    if (word != null) {
      $result.word = word;
    }
    if (players != null) {
      $result.players.addAll(players);
    }
    return $result;
  }
  UCGameSide._() : super();
  factory UCGameSide.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UCGameSide.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UCGameSide', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'word')
    ..pc<UCGamePlayer>(2, _omitFieldNames ? '' : 'players', $pb.PbFieldType.PM, subBuilder: UCGamePlayer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UCGameSide clone() => UCGameSide()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UCGameSide copyWith(void Function(UCGameSide) updates) => super.copyWith((message) => updates(message as UCGameSide)) as UCGameSide;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UCGameSide create() => UCGameSide._();
  UCGameSide createEmptyInstance() => create();
  static $pb.PbList<UCGameSide> createRepeated() => $pb.PbList<UCGameSide>();
  @$core.pragma('dart2js:noInline')
  static UCGameSide getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UCGameSide>(create);
  static UCGameSide? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get word => $_getSZ(0);
  @$pb.TagNumber(1)
  set word($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWord() => $_has(0);
  @$pb.TagNumber(1)
  void clearWord() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<UCGamePlayer> get players => $_getList(1);
}

class UCGamePlayer extends $pb.GeneratedMessage {
  factory UCGamePlayer({
    $fixnum.Int64? userId,
    $core.String? username,
    $core.String? headImage,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (headImage != null) {
      $result.headImage = headImage;
    }
    return $result;
  }
  UCGamePlayer._() : super();
  factory UCGamePlayer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UCGamePlayer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UCGamePlayer', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'headImage', protoName: 'headImage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UCGamePlayer clone() => UCGamePlayer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UCGamePlayer copyWith(void Function(UCGamePlayer) updates) => super.copyWith((message) => updates(message as UCGamePlayer)) as UCGamePlayer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UCGamePlayer create() => UCGamePlayer._();
  UCGamePlayer createEmptyInstance() => create();
  static $pb.PbList<UCGamePlayer> createRepeated() => $pb.PbList<UCGamePlayer>();
  @$core.pragma('dart2js:noInline')
  static UCGamePlayer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UCGamePlayer>(create);
  static UCGamePlayer? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get headImage => $_getSZ(2);
  @$pb.TagNumber(3)
  set headImage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeadImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeadImage() => clearField(3);
}

/// 开始游戏请求响应
/// srcid:创建者(需在主持位) aimid:房间id
class UCGameStartReq extends $pb.GeneratedMessage {
  factory UCGameStartReq({
    $core.String? undercoverWord,
    $core.String? populaceWord,
    $core.int? undercoverCount,
  }) {
    final $result = create();
    if (undercoverWord != null) {
      $result.undercoverWord = undercoverWord;
    }
    if (populaceWord != null) {
      $result.populaceWord = populaceWord;
    }
    if (undercoverCount != null) {
      $result.undercoverCount = undercoverCount;
    }
    return $result;
  }
  UCGameStartReq._() : super();
  factory UCGameStartReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UCGameStartReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UCGameStartReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'undercoverWord', protoName: 'undercoverWord')
    ..aOS(2, _omitFieldNames ? '' : 'populaceWord', protoName: 'populaceWord')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'undercoverCount', $pb.PbFieldType.O3, protoName: 'undercoverCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UCGameStartReq clone() => UCGameStartReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UCGameStartReq copyWith(void Function(UCGameStartReq) updates) => super.copyWith((message) => updates(message as UCGameStartReq)) as UCGameStartReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UCGameStartReq create() => UCGameStartReq._();
  UCGameStartReq createEmptyInstance() => create();
  static $pb.PbList<UCGameStartReq> createRepeated() => $pb.PbList<UCGameStartReq>();
  @$core.pragma('dart2js:noInline')
  static UCGameStartReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UCGameStartReq>(create);
  static UCGameStartReq? _defaultInstance;

  /// int32 mode = 1; // 游戏模式 !=1:随机出题  ==1:自己出题
  @$pb.TagNumber(1)
  $core.String get undercoverWord => $_getSZ(0);
  @$pb.TagNumber(1)
  set undercoverWord($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUndercoverWord() => $_has(0);
  @$pb.TagNumber(1)
  void clearUndercoverWord() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get populaceWord => $_getSZ(1);
  @$pb.TagNumber(2)
  set populaceWord($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPopulaceWord() => $_has(1);
  @$pb.TagNumber(2)
  void clearPopulaceWord() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get undercoverCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set undercoverCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUndercoverCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearUndercoverCount() => clearField(3);
}

class UCGameStartRsp extends $pb.GeneratedMessage {
  factory UCGameStartRsp({
    UCGameInfo? gameInfo,
  }) {
    final $result = create();
    if (gameInfo != null) {
      $result.gameInfo = gameInfo;
    }
    return $result;
  }
  UCGameStartRsp._() : super();
  factory UCGameStartRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UCGameStartRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UCGameStartRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UCGameInfo>(1, _omitFieldNames ? '' : 'gameInfo', protoName: 'gameInfo', subBuilder: UCGameInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UCGameStartRsp clone() => UCGameStartRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UCGameStartRsp copyWith(void Function(UCGameStartRsp) updates) => super.copyWith((message) => updates(message as UCGameStartRsp)) as UCGameStartRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UCGameStartRsp create() => UCGameStartRsp._();
  UCGameStartRsp createEmptyInstance() => create();
  static $pb.PbList<UCGameStartRsp> createRepeated() => $pb.PbList<UCGameStartRsp>();
  @$core.pragma('dart2js:noInline')
  static UCGameStartRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UCGameStartRsp>(create);
  static UCGameStartRsp? _defaultInstance;

  @$pb.TagNumber(1)
  UCGameInfo get gameInfo => $_getN(0);
  @$pb.TagNumber(1)
  set gameInfo(UCGameInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameInfo() => clearField(1);
  @$pb.TagNumber(1)
  UCGameInfo ensureGameInfo() => $_ensure(0);
}

/// 游戏创建完成IM单发给玩家
/// 玩家场景恢复会发(进场)
class UCGamePlayerInfo extends $pb.GeneratedMessage {
  factory UCGamePlayerInfo({
    $core.String? word,
  }) {
    final $result = create();
    if (word != null) {
      $result.word = word;
    }
    return $result;
  }
  UCGamePlayerInfo._() : super();
  factory UCGamePlayerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UCGamePlayerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UCGamePlayerInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'word')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UCGamePlayerInfo clone() => UCGamePlayerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UCGamePlayerInfo copyWith(void Function(UCGamePlayerInfo) updates) => super.copyWith((message) => updates(message as UCGamePlayerInfo)) as UCGamePlayerInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UCGamePlayerInfo create() => UCGamePlayerInfo._();
  UCGamePlayerInfo createEmptyInstance() => create();
  static $pb.PbList<UCGamePlayerInfo> createRepeated() => $pb.PbList<UCGamePlayerInfo>();
  @$core.pragma('dart2js:noInline')
  static UCGamePlayerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UCGamePlayerInfo>(create);
  static UCGamePlayerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get word => $_getSZ(0);
  @$pb.TagNumber(1)
  set word($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWord() => $_has(0);
  @$pb.TagNumber(1)
  void clearWord() => clearField(1);
}

/// 游戏创建完成IM广播到全房间
class UCGameStartNotify extends $pb.GeneratedMessage {
  factory UCGameStartNotify({
    $core.int? undercoverCount,
    $core.int? populaceCount,
  }) {
    final $result = create();
    if (undercoverCount != null) {
      $result.undercoverCount = undercoverCount;
    }
    if (populaceCount != null) {
      $result.populaceCount = populaceCount;
    }
    return $result;
  }
  UCGameStartNotify._() : super();
  factory UCGameStartNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UCGameStartNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UCGameStartNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'undercoverCount', $pb.PbFieldType.O3, protoName: 'undercoverCount')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'populaceCount', $pb.PbFieldType.O3, protoName: 'populaceCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UCGameStartNotify clone() => UCGameStartNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UCGameStartNotify copyWith(void Function(UCGameStartNotify) updates) => super.copyWith((message) => updates(message as UCGameStartNotify)) as UCGameStartNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UCGameStartNotify create() => UCGameStartNotify._();
  UCGameStartNotify createEmptyInstance() => create();
  static $pb.PbList<UCGameStartNotify> createRepeated() => $pb.PbList<UCGameStartNotify>();
  @$core.pragma('dart2js:noInline')
  static UCGameStartNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UCGameStartNotify>(create);
  static UCGameStartNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get undercoverCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set undercoverCount($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUndercoverCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearUndercoverCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get populaceCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set populaceCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPopulaceCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearPopulaceCount() => clearField(2);
}

/// 客户端发IM转发给全房间, 客户端可不填gameInfo字段
/// srcid:操作者 (在主持位,是法官) aimid:房间id
class UCGameOverNotify extends $pb.GeneratedMessage {
  factory UCGameOverNotify({
    UCGameInfo? gameInfo,
    $core.int? winner,
  }) {
    final $result = create();
    if (gameInfo != null) {
      $result.gameInfo = gameInfo;
    }
    if (winner != null) {
      $result.winner = winner;
    }
    return $result;
  }
  UCGameOverNotify._() : super();
  factory UCGameOverNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UCGameOverNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UCGameOverNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UCGameInfo>(1, _omitFieldNames ? '' : 'gameInfo', protoName: 'gameInfo', subBuilder: UCGameInfo.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'winner', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UCGameOverNotify clone() => UCGameOverNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UCGameOverNotify copyWith(void Function(UCGameOverNotify) updates) => super.copyWith((message) => updates(message as UCGameOverNotify)) as UCGameOverNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UCGameOverNotify create() => UCGameOverNotify._();
  UCGameOverNotify createEmptyInstance() => create();
  static $pb.PbList<UCGameOverNotify> createRepeated() => $pb.PbList<UCGameOverNotify>();
  @$core.pragma('dart2js:noInline')
  static UCGameOverNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UCGameOverNotify>(create);
  static UCGameOverNotify? _defaultInstance;

  @$pb.TagNumber(1)
  UCGameInfo get gameInfo => $_getN(0);
  @$pb.TagNumber(1)
  set gameInfo(UCGameInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameInfo() => clearField(1);
  @$pb.TagNumber(1)
  UCGameInfo ensureGameInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get winner => $_getIZ(1);
  @$pb.TagNumber(2)
  set winner($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWinner() => $_has(1);
  @$pb.TagNumber(2)
  void clearWinner() => clearField(2);
}

/// 普通观众进场收到的消息
class UCGamePlayers extends $pb.GeneratedMessage {
  factory UCGamePlayers({
    $core.Iterable<$fixnum.Int64>? players,
  }) {
    final $result = create();
    if (players != null) {
      $result.players.addAll(players);
    }
    return $result;
  }
  UCGamePlayers._() : super();
  factory UCGamePlayers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UCGamePlayers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UCGamePlayers', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'players', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UCGamePlayers clone() => UCGamePlayers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UCGamePlayers copyWith(void Function(UCGamePlayers) updates) => super.copyWith((message) => updates(message as UCGamePlayers)) as UCGamePlayers;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UCGamePlayers create() => UCGamePlayers._();
  UCGamePlayers createEmptyInstance() => create();
  static $pb.PbList<UCGamePlayers> createRepeated() => $pb.PbList<UCGamePlayers>();
  @$core.pragma('dart2js:noInline')
  static UCGamePlayers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UCGamePlayers>(create);
  static UCGamePlayers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get players => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
