//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/multi_pk.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'multi_pk.pbenum.dart';

export 'multi_pk.pbenum.dart';

/// 开始PK srcid 自己, aimid 房间ID
class MultiPKStartReq extends $pb.GeneratedMessage {
  factory MultiPKStartReq({
    $fixnum.Int64? competeDuration,
    $fixnum.Int64? penalizeDuration,
  }) {
    final $result = create();
    if (competeDuration != null) {
      $result.competeDuration = competeDuration;
    }
    if (penalizeDuration != null) {
      $result.penalizeDuration = penalizeDuration;
    }
    return $result;
  }
  MultiPKStartReq._() : super();
  factory MultiPKStartReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiPKStartReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiPKStartReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'competeDuration', protoName: 'competeDuration')
    ..aInt64(2, _omitFieldNames ? '' : 'penalizeDuration', protoName: 'penalizeDuration')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiPKStartReq clone() => MultiPKStartReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiPKStartReq copyWith(void Function(MultiPKStartReq) updates) => super.copyWith((message) => updates(message as MultiPKStartReq)) as MultiPKStartReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiPKStartReq create() => MultiPKStartReq._();
  MultiPKStartReq createEmptyInstance() => create();
  static $pb.PbList<MultiPKStartReq> createRepeated() => $pb.PbList<MultiPKStartReq>();
  @$core.pragma('dart2js:noInline')
  static MultiPKStartReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiPKStartReq>(create);
  static MultiPKStartReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get competeDuration => $_getI64(0);
  @$pb.TagNumber(1)
  set competeDuration($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompeteDuration() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompeteDuration() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get penalizeDuration => $_getI64(1);
  @$pb.TagNumber(2)
  set penalizeDuration($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPenalizeDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearPenalizeDuration() => clearField(2);
}

class MultiPKStartRsp extends $pb.GeneratedMessage {
  factory MultiPKStartRsp() => create();
  MultiPKStartRsp._() : super();
  factory MultiPKStartRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiPKStartRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiPKStartRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiPKStartRsp clone() => MultiPKStartRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiPKStartRsp copyWith(void Function(MultiPKStartRsp) updates) => super.copyWith((message) => updates(message as MultiPKStartRsp)) as MultiPKStartRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiPKStartRsp create() => MultiPKStartRsp._();
  MultiPKStartRsp createEmptyInstance() => create();
  static $pb.PbList<MultiPKStartRsp> createRepeated() => $pb.PbList<MultiPKStartRsp>();
  @$core.pragma('dart2js:noInline')
  static MultiPKStartRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiPKStartRsp>(create);
  static MultiPKStartRsp? _defaultInstance;
}

/// 主动结束PK  srcid 自己, aimid 房间ID
class MultiPKStopReq extends $pb.GeneratedMessage {
  factory MultiPKStopReq() => create();
  MultiPKStopReq._() : super();
  factory MultiPKStopReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiPKStopReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiPKStopReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiPKStopReq clone() => MultiPKStopReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiPKStopReq copyWith(void Function(MultiPKStopReq) updates) => super.copyWith((message) => updates(message as MultiPKStopReq)) as MultiPKStopReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiPKStopReq create() => MultiPKStopReq._();
  MultiPKStopReq createEmptyInstance() => create();
  static $pb.PbList<MultiPKStopReq> createRepeated() => $pb.PbList<MultiPKStopReq>();
  @$core.pragma('dart2js:noInline')
  static MultiPKStopReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiPKStopReq>(create);
  static MultiPKStopReq? _defaultInstance;
}

class MultiPKStopRsp extends $pb.GeneratedMessage {
  factory MultiPKStopRsp() => create();
  MultiPKStopRsp._() : super();
  factory MultiPKStopRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiPKStopRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiPKStopRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiPKStopRsp clone() => MultiPKStopRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiPKStopRsp copyWith(void Function(MultiPKStopRsp) updates) => super.copyWith((message) => updates(message as MultiPKStopRsp)) as MultiPKStopRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiPKStopRsp create() => MultiPKStopRsp._();
  MultiPKStopRsp createEmptyInstance() => create();
  static $pb.PbList<MultiPKStopRsp> createRepeated() => $pb.PbList<MultiPKStopRsp>();
  @$core.pragma('dart2js:noInline')
  static MultiPKStopRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiPKStopRsp>(create);
  static MultiPKStopRsp? _defaultInstance;
}

/// PK信息
/// 1. 进房时单推
class MultiPKInfo extends $pb.GeneratedMessage {
  factory MultiPKInfo({
    MULTI_PK_STATE? state,
    $fixnum.Int64? endTime,
    $fixnum.Int64? blueScore,
    $fixnum.Int64? redScore,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (blueScore != null) {
      $result.blueScore = blueScore;
    }
    if (redScore != null) {
      $result.redScore = redScore;
    }
    return $result;
  }
  MultiPKInfo._() : super();
  factory MultiPKInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiPKInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiPKInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<MULTI_PK_STATE>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: MULTI_PK_STATE.IDLING, valueOf: MULTI_PK_STATE.valueOf, enumValues: MULTI_PK_STATE.values)
    ..aInt64(2, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..aInt64(3, _omitFieldNames ? '' : 'blueScore', protoName: 'blueScore')
    ..aInt64(4, _omitFieldNames ? '' : 'redScore', protoName: 'redScore')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiPKInfo clone() => MultiPKInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiPKInfo copyWith(void Function(MultiPKInfo) updates) => super.copyWith((message) => updates(message as MultiPKInfo)) as MultiPKInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiPKInfo create() => MultiPKInfo._();
  MultiPKInfo createEmptyInstance() => create();
  static $pb.PbList<MultiPKInfo> createRepeated() => $pb.PbList<MultiPKInfo>();
  @$core.pragma('dart2js:noInline')
  static MultiPKInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiPKInfo>(create);
  static MultiPKInfo? _defaultInstance;

  @$pb.TagNumber(1)
  MULTI_PK_STATE get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(MULTI_PK_STATE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endTime => $_getI64(1);
  @$pb.TagNumber(2)
  set endTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get blueScore => $_getI64(2);
  @$pb.TagNumber(3)
  set blueScore($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlueScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlueScore() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get redScore => $_getI64(3);
  @$pb.TagNumber(4)
  set redScore($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRedScore() => $_has(3);
  @$pb.TagNumber(4)
  void clearRedScore() => clearField(4);
}

/// PK状态变化通知
class MultiPKStateChangeNotify extends $pb.GeneratedMessage {
  factory MultiPKStateChangeNotify({
    MULTI_PK_STATE? fromState,
    MultiPKInfo? info,
  }) {
    final $result = create();
    if (fromState != null) {
      $result.fromState = fromState;
    }
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  MultiPKStateChangeNotify._() : super();
  factory MultiPKStateChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiPKStateChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiPKStateChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<MULTI_PK_STATE>(1, _omitFieldNames ? '' : 'fromState', $pb.PbFieldType.OE, protoName: 'fromState', defaultOrMaker: MULTI_PK_STATE.IDLING, valueOf: MULTI_PK_STATE.valueOf, enumValues: MULTI_PK_STATE.values)
    ..aOM<MultiPKInfo>(2, _omitFieldNames ? '' : 'info', subBuilder: MultiPKInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiPKStateChangeNotify clone() => MultiPKStateChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiPKStateChangeNotify copyWith(void Function(MultiPKStateChangeNotify) updates) => super.copyWith((message) => updates(message as MultiPKStateChangeNotify)) as MultiPKStateChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiPKStateChangeNotify create() => MultiPKStateChangeNotify._();
  MultiPKStateChangeNotify createEmptyInstance() => create();
  static $pb.PbList<MultiPKStateChangeNotify> createRepeated() => $pb.PbList<MultiPKStateChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static MultiPKStateChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiPKStateChangeNotify>(create);
  static MultiPKStateChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  MULTI_PK_STATE get fromState => $_getN(0);
  @$pb.TagNumber(1)
  set fromState(MULTI_PK_STATE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFromState() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromState() => clearField(1);

  @$pb.TagNumber(2)
  MultiPKInfo get info => $_getN(1);
  @$pb.TagNumber(2)
  set info(MultiPKInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearInfo() => clearField(2);
  @$pb.TagNumber(2)
  MultiPKInfo ensureInfo() => $_ensure(1);
}

/// PK值变化通知
/// srcId 主播ID aimId 房间ID
class MultiPKScoreChangeNotify extends $pb.GeneratedMessage {
  factory MultiPKScoreChangeNotify({
    $fixnum.Int64? actorId,
    $fixnum.Int64? score,
    $fixnum.Int64? blueScore,
    $fixnum.Int64? redScore,
    $fixnum.Int64? timestamp,
  }) {
    final $result = create();
    if (actorId != null) {
      $result.actorId = actorId;
    }
    if (score != null) {
      $result.score = score;
    }
    if (blueScore != null) {
      $result.blueScore = blueScore;
    }
    if (redScore != null) {
      $result.redScore = redScore;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    return $result;
  }
  MultiPKScoreChangeNotify._() : super();
  factory MultiPKScoreChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiPKScoreChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiPKScoreChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'actorId', protoName: 'actorId')
    ..aInt64(2, _omitFieldNames ? '' : 'score')
    ..aInt64(3, _omitFieldNames ? '' : 'blueScore', protoName: 'blueScore')
    ..aInt64(4, _omitFieldNames ? '' : 'redScore', protoName: 'redScore')
    ..aInt64(5, _omitFieldNames ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiPKScoreChangeNotify clone() => MultiPKScoreChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiPKScoreChangeNotify copyWith(void Function(MultiPKScoreChangeNotify) updates) => super.copyWith((message) => updates(message as MultiPKScoreChangeNotify)) as MultiPKScoreChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiPKScoreChangeNotify create() => MultiPKScoreChangeNotify._();
  MultiPKScoreChangeNotify createEmptyInstance() => create();
  static $pb.PbList<MultiPKScoreChangeNotify> createRepeated() => $pb.PbList<MultiPKScoreChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static MultiPKScoreChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiPKScoreChangeNotify>(create);
  static MultiPKScoreChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get actorId => $_getI64(0);
  @$pb.TagNumber(1)
  set actorId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get score => $_getI64(1);
  @$pb.TagNumber(2)
  set score($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get blueScore => $_getI64(2);
  @$pb.TagNumber(3)
  set blueScore($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlueScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlueScore() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get redScore => $_getI64(3);
  @$pb.TagNumber(4)
  set redScore($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRedScore() => $_has(3);
  @$pb.TagNumber(4)
  void clearRedScore() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timestamp => $_getI64(4);
  @$pb.TagNumber(5)
  set timestamp($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
