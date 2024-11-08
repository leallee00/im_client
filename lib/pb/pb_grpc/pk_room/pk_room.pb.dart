//
//  Generated code. Do not modify.
//  source: pb_grpc/pk_room/pk_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_msg/pk_room/pk_room.pbenum.dart' as $1;

class FieldsPKOver extends $pb.GeneratedMessage {
  factory FieldsPKOver({
    $fixnum.Int64? rank,
    $fixnum.Int64? victoryTimes,
  }) {
    final $result = create();
    if (rank != null) {
      $result.rank = rank;
    }
    if (victoryTimes != null) {
      $result.victoryTimes = victoryTimes;
    }
    return $result;
  }
  FieldsPKOver._() : super();
  factory FieldsPKOver.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldsPKOver.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldsPKOver', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..aInt64(4, _omitFieldNames ? '' : 'rank')
    ..aInt64(5, _omitFieldNames ? '' : 'victoryTimes', protoName: 'victoryTimes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldsPKOver clone() => FieldsPKOver()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldsPKOver copyWith(void Function(FieldsPKOver) updates) => super.copyWith((message) => updates(message as FieldsPKOver)) as FieldsPKOver;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldsPKOver create() => FieldsPKOver._();
  FieldsPKOver createEmptyInstance() => create();
  static $pb.PbList<FieldsPKOver> createRepeated() => $pb.PbList<FieldsPKOver>();
  @$core.pragma('dart2js:noInline')
  static FieldsPKOver getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldsPKOver>(create);
  static FieldsPKOver? _defaultInstance;

  @$pb.TagNumber(4)
  $fixnum.Int64 get rank => $_getI64(0);
  @$pb.TagNumber(4)
  set rank($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(4)
  $core.bool hasRank() => $_has(0);
  @$pb.TagNumber(4)
  void clearRank() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get victoryTimes => $_getI64(1);
  @$pb.TagNumber(5)
  set victoryTimes($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(5)
  $core.bool hasVictoryTimes() => $_has(1);
  @$pb.TagNumber(5)
  void clearVictoryTimes() => clearField(5);
}

class CreateRandRoomReq extends $pb.GeneratedMessage {
  factory CreateRandRoomReq({
    $1.PK_TYPE? pkType,
    $core.String? pkTopic,
  }) {
    final $result = create();
    if (pkType != null) {
      $result.pkType = pkType;
    }
    if (pkTopic != null) {
      $result.pkTopic = pkTopic;
    }
    return $result;
  }
  CreateRandRoomReq._() : super();
  factory CreateRandRoomReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRandRoomReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRandRoomReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..e<$1.PK_TYPE>(1, _omitFieldNames ? '' : 'pkType', $pb.PbFieldType.OE, protoName: 'pkType', defaultOrMaker: $1.PK_TYPE.RANDOM, valueOf: $1.PK_TYPE.valueOf, enumValues: $1.PK_TYPE.values)
    ..aOS(2, _omitFieldNames ? '' : 'pkTopic', protoName: 'pkTopic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRandRoomReq clone() => CreateRandRoomReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRandRoomReq copyWith(void Function(CreateRandRoomReq) updates) => super.copyWith((message) => updates(message as CreateRandRoomReq)) as CreateRandRoomReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRandRoomReq create() => CreateRandRoomReq._();
  CreateRandRoomReq createEmptyInstance() => create();
  static $pb.PbList<CreateRandRoomReq> createRepeated() => $pb.PbList<CreateRandRoomReq>();
  @$core.pragma('dart2js:noInline')
  static CreateRandRoomReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRandRoomReq>(create);
  static CreateRandRoomReq? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PK_TYPE get pkType => $_getN(0);
  @$pb.TagNumber(1)
  set pkType($1.PK_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pkTopic => $_getSZ(1);
  @$pb.TagNumber(2)
  set pkTopic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPkTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearPkTopic() => clearField(2);
}

class CreateRandRoomRsp extends $pb.GeneratedMessage {
  factory CreateRandRoomRsp() => create();
  CreateRandRoomRsp._() : super();
  factory CreateRandRoomRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRandRoomRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRandRoomRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRandRoomRsp clone() => CreateRandRoomRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRandRoomRsp copyWith(void Function(CreateRandRoomRsp) updates) => super.copyWith((message) => updates(message as CreateRandRoomRsp)) as CreateRandRoomRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRandRoomRsp create() => CreateRandRoomRsp._();
  CreateRandRoomRsp createEmptyInstance() => create();
  static $pb.PbList<CreateRandRoomRsp> createRepeated() => $pb.PbList<CreateRandRoomRsp>();
  @$core.pragma('dart2js:noInline')
  static CreateRandRoomRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRandRoomRsp>(create);
  static CreateRandRoomRsp? _defaultInstance;
}

class CreateRankRoomReq extends $pb.GeneratedMessage {
  factory CreateRankRoomReq({
    $core.String? pkTopic,
    $fixnum.Int64? aid,
    $core.double? ascore,
    $fixnum.Int64? bid,
    $core.double? bscore,
  }) {
    final $result = create();
    if (pkTopic != null) {
      $result.pkTopic = pkTopic;
    }
    if (aid != null) {
      $result.aid = aid;
    }
    if (ascore != null) {
      $result.ascore = ascore;
    }
    if (bid != null) {
      $result.bid = bid;
    }
    if (bscore != null) {
      $result.bscore = bscore;
    }
    return $result;
  }
  CreateRankRoomReq._() : super();
  factory CreateRankRoomReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRankRoomReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRankRoomReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pkTopic', protoName: 'pkTopic')
    ..aInt64(2, _omitFieldNames ? '' : 'aid')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'ascore', $pb.PbFieldType.OD)
    ..aInt64(4, _omitFieldNames ? '' : 'bid')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'bscore', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRankRoomReq clone() => CreateRankRoomReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRankRoomReq copyWith(void Function(CreateRankRoomReq) updates) => super.copyWith((message) => updates(message as CreateRankRoomReq)) as CreateRankRoomReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRankRoomReq create() => CreateRankRoomReq._();
  CreateRankRoomReq createEmptyInstance() => create();
  static $pb.PbList<CreateRankRoomReq> createRepeated() => $pb.PbList<CreateRankRoomReq>();
  @$core.pragma('dart2js:noInline')
  static CreateRankRoomReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRankRoomReq>(create);
  static CreateRankRoomReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pkTopic => $_getSZ(0);
  @$pb.TagNumber(1)
  set pkTopic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkTopic() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get aid => $_getI64(1);
  @$pb.TagNumber(2)
  set aid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAid() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get ascore => $_getN(2);
  @$pb.TagNumber(3)
  set ascore($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAscore() => $_has(2);
  @$pb.TagNumber(3)
  void clearAscore() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get bid => $_getI64(3);
  @$pb.TagNumber(4)
  set bid($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBid() => $_has(3);
  @$pb.TagNumber(4)
  void clearBid() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get bscore => $_getN(4);
  @$pb.TagNumber(5)
  set bscore($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBscore() => $_has(4);
  @$pb.TagNumber(5)
  void clearBscore() => clearField(5);
}

class CreateRankRoomRsp extends $pb.GeneratedMessage {
  factory CreateRankRoomRsp() => create();
  CreateRankRoomRsp._() : super();
  factory CreateRankRoomRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRankRoomRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRankRoomRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRankRoomRsp clone() => CreateRankRoomRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRankRoomRsp copyWith(void Function(CreateRankRoomRsp) updates) => super.copyWith((message) => updates(message as CreateRankRoomRsp)) as CreateRankRoomRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRankRoomRsp create() => CreateRankRoomRsp._();
  CreateRankRoomRsp createEmptyInstance() => create();
  static $pb.PbList<CreateRankRoomRsp> createRepeated() => $pb.PbList<CreateRankRoomRsp>();
  @$core.pragma('dart2js:noInline')
  static CreateRankRoomRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRankRoomRsp>(create);
  static CreateRankRoomRsp? _defaultInstance;
}

class CreateInviteRoomReq extends $pb.GeneratedMessage {
  factory CreateInviteRoomReq({
    $core.String? pkTopic,
  }) {
    final $result = create();
    if (pkTopic != null) {
      $result.pkTopic = pkTopic;
    }
    return $result;
  }
  CreateInviteRoomReq._() : super();
  factory CreateInviteRoomReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInviteRoomReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateInviteRoomReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pkTopic', protoName: 'pkTopic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInviteRoomReq clone() => CreateInviteRoomReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInviteRoomReq copyWith(void Function(CreateInviteRoomReq) updates) => super.copyWith((message) => updates(message as CreateInviteRoomReq)) as CreateInviteRoomReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateInviteRoomReq create() => CreateInviteRoomReq._();
  CreateInviteRoomReq createEmptyInstance() => create();
  static $pb.PbList<CreateInviteRoomReq> createRepeated() => $pb.PbList<CreateInviteRoomReq>();
  @$core.pragma('dart2js:noInline')
  static CreateInviteRoomReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInviteRoomReq>(create);
  static CreateInviteRoomReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pkTopic => $_getSZ(0);
  @$pb.TagNumber(1)
  set pkTopic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkTopic() => clearField(1);
}

class CreateInviteRoomRsp extends $pb.GeneratedMessage {
  factory CreateInviteRoomRsp() => create();
  CreateInviteRoomRsp._() : super();
  factory CreateInviteRoomRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInviteRoomRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateInviteRoomRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInviteRoomRsp clone() => CreateInviteRoomRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInviteRoomRsp copyWith(void Function(CreateInviteRoomRsp) updates) => super.copyWith((message) => updates(message as CreateInviteRoomRsp)) as CreateInviteRoomRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateInviteRoomRsp create() => CreateInviteRoomRsp._();
  CreateInviteRoomRsp createEmptyInstance() => create();
  static $pb.PbList<CreateInviteRoomRsp> createRepeated() => $pb.PbList<CreateInviteRoomRsp>();
  @$core.pragma('dart2js:noInline')
  static CreateInviteRoomRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInviteRoomRsp>(create);
  static CreateInviteRoomRsp? _defaultInstance;
}

class Attach extends $pb.GeneratedMessage {
  factory Attach({
    $fixnum.Int64? roomID,
  }) {
    final $result = create();
    if (roomID != null) {
      $result.roomID = roomID;
    }
    return $result;
  }
  Attach._() : super();
  factory Attach.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Attach.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Attach', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomID', protoName: 'roomID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Attach clone() => Attach()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Attach copyWith(void Function(Attach) updates) => super.copyWith((message) => updates(message as Attach)) as Attach;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Attach create() => Attach._();
  Attach createEmptyInstance() => create();
  static $pb.PbList<Attach> createRepeated() => $pb.PbList<Attach>();
  @$core.pragma('dart2js:noInline')
  static Attach getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Attach>(create);
  static Attach? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomID => $_getI64(0);
  @$pb.TagNumber(1)
  set roomID($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomID() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomID() => clearField(1);
}

class ManualMatchReq extends $pb.GeneratedMessage {
  factory ManualMatchReq({
    $fixnum.Int64? anchorA,
    $fixnum.Int64? anchorB,
  }) {
    final $result = create();
    if (anchorA != null) {
      $result.anchorA = anchorA;
    }
    if (anchorB != null) {
      $result.anchorB = anchorB;
    }
    return $result;
  }
  ManualMatchReq._() : super();
  factory ManualMatchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManualMatchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ManualMatchReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'anchorA', protoName: 'anchorA')
    ..aInt64(2, _omitFieldNames ? '' : 'anchorB', protoName: 'anchorB')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManualMatchReq clone() => ManualMatchReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManualMatchReq copyWith(void Function(ManualMatchReq) updates) => super.copyWith((message) => updates(message as ManualMatchReq)) as ManualMatchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManualMatchReq create() => ManualMatchReq._();
  ManualMatchReq createEmptyInstance() => create();
  static $pb.PbList<ManualMatchReq> createRepeated() => $pb.PbList<ManualMatchReq>();
  @$core.pragma('dart2js:noInline')
  static ManualMatchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ManualMatchReq>(create);
  static ManualMatchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get anchorA => $_getI64(0);
  @$pb.TagNumber(1)
  set anchorA($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnchorA() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnchorA() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get anchorB => $_getI64(1);
  @$pb.TagNumber(2)
  set anchorB($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnchorB() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnchorB() => clearField(2);
}

class ManualMatchRsp extends $pb.GeneratedMessage {
  factory ManualMatchRsp() => create();
  ManualMatchRsp._() : super();
  factory ManualMatchRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManualMatchRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ManualMatchRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManualMatchRsp clone() => ManualMatchRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManualMatchRsp copyWith(void Function(ManualMatchRsp) updates) => super.copyWith((message) => updates(message as ManualMatchRsp)) as ManualMatchRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManualMatchRsp create() => ManualMatchRsp._();
  ManualMatchRsp createEmptyInstance() => create();
  static $pb.PbList<ManualMatchRsp> createRepeated() => $pb.PbList<ManualMatchRsp>();
  @$core.pragma('dart2js:noInline')
  static ManualMatchRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ManualMatchRsp>(create);
  static ManualMatchRsp? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
