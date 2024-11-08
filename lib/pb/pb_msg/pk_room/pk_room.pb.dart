//
//  Generated code. Do not modify.
//  source: pb_msg/pk_room/pk_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'pk_room.pbenum.dart';

export 'pk_room.pbenum.dart';

/// 主播申请加入随机PK请求
class PKEnqueueReq extends $pb.GeneratedMessage {
  factory PKEnqueueReq({
    PK_TYPE? pkType,
    $fixnum.Int64? rank,
  }) {
    final $result = create();
    if (pkType != null) {
      $result.pkType = pkType;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    return $result;
  }
  PKEnqueueReq._() : super();
  factory PKEnqueueReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKEnqueueReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKEnqueueReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..e<PK_TYPE>(1, _omitFieldNames ? '' : 'pkType', $pb.PbFieldType.OE, protoName: 'pkType', defaultOrMaker: PK_TYPE.RANDOM, valueOf: PK_TYPE.valueOf, enumValues: PK_TYPE.values)
    ..aInt64(2, _omitFieldNames ? '' : 'rank')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKEnqueueReq clone() => PKEnqueueReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKEnqueueReq copyWith(void Function(PKEnqueueReq) updates) => super.copyWith((message) => updates(message as PKEnqueueReq)) as PKEnqueueReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKEnqueueReq create() => PKEnqueueReq._();
  PKEnqueueReq createEmptyInstance() => create();
  static $pb.PbList<PKEnqueueReq> createRepeated() => $pb.PbList<PKEnqueueReq>();
  @$core.pragma('dart2js:noInline')
  static PKEnqueueReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKEnqueueReq>(create);
  static PKEnqueueReq? _defaultInstance;

  @$pb.TagNumber(1)
  PK_TYPE get pkType => $_getN(0);
  @$pb.TagNumber(1)
  set pkType(PK_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get rank => $_getI64(1);
  @$pb.TagNumber(2)
  set rank($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearRank() => clearField(2);
}

class PKEnqueueRsp extends $pb.GeneratedMessage {
  factory PKEnqueueRsp() => create();
  PKEnqueueRsp._() : super();
  factory PKEnqueueRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKEnqueueRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKEnqueueRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKEnqueueRsp clone() => PKEnqueueRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKEnqueueRsp copyWith(void Function(PKEnqueueRsp) updates) => super.copyWith((message) => updates(message as PKEnqueueRsp)) as PKEnqueueRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKEnqueueRsp create() => PKEnqueueRsp._();
  PKEnqueueRsp createEmptyInstance() => create();
  static $pb.PbList<PKEnqueueRsp> createRepeated() => $pb.PbList<PKEnqueueRsp>();
  @$core.pragma('dart2js:noInline')
  static PKEnqueueRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKEnqueueRsp>(create);
  static PKEnqueueRsp? _defaultInstance;
}

/// 从PK队列中移除
class PKDequeueReq extends $pb.GeneratedMessage {
  factory PKDequeueReq({
    PK_TYPE? pkType,
  }) {
    final $result = create();
    if (pkType != null) {
      $result.pkType = pkType;
    }
    return $result;
  }
  PKDequeueReq._() : super();
  factory PKDequeueReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKDequeueReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKDequeueReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..e<PK_TYPE>(1, _omitFieldNames ? '' : 'pkType', $pb.PbFieldType.OE, protoName: 'pkType', defaultOrMaker: PK_TYPE.RANDOM, valueOf: PK_TYPE.valueOf, enumValues: PK_TYPE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKDequeueReq clone() => PKDequeueReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKDequeueReq copyWith(void Function(PKDequeueReq) updates) => super.copyWith((message) => updates(message as PKDequeueReq)) as PKDequeueReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKDequeueReq create() => PKDequeueReq._();
  PKDequeueReq createEmptyInstance() => create();
  static $pb.PbList<PKDequeueReq> createRepeated() => $pb.PbList<PKDequeueReq>();
  @$core.pragma('dart2js:noInline')
  static PKDequeueReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKDequeueReq>(create);
  static PKDequeueReq? _defaultInstance;

  @$pb.TagNumber(1)
  PK_TYPE get pkType => $_getN(0);
  @$pb.TagNumber(1)
  set pkType(PK_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkType() => clearField(1);
}

class PKDequeueRsp extends $pb.GeneratedMessage {
  factory PKDequeueRsp() => create();
  PKDequeueRsp._() : super();
  factory PKDequeueRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKDequeueRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKDequeueRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKDequeueRsp clone() => PKDequeueRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKDequeueRsp copyWith(void Function(PKDequeueRsp) updates) => super.copyWith((message) => updates(message as PKDequeueRsp)) as PKDequeueRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKDequeueRsp create() => PKDequeueRsp._();
  PKDequeueRsp createEmptyInstance() => create();
  static $pb.PbList<PKDequeueRsp> createRepeated() => $pb.PbList<PKDequeueRsp>();
  @$core.pragma('dart2js:noInline')
  static PKDequeueRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKDequeueRsp>(create);
  static PKDequeueRsp? _defaultInstance;
}

/// 主播响应是否接受随机创建的PK
class PKAnswerReq extends $pb.GeneratedMessage {
  factory PKAnswerReq({
    ANSWER? answer,
  }) {
    final $result = create();
    if (answer != null) {
      $result.answer = answer;
    }
    return $result;
  }
  PKAnswerReq._() : super();
  factory PKAnswerReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKAnswerReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKAnswerReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..e<ANSWER>(1, _omitFieldNames ? '' : 'answer', $pb.PbFieldType.OE, defaultOrMaker: ANSWER.REFUSE, valueOf: ANSWER.valueOf, enumValues: ANSWER.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKAnswerReq clone() => PKAnswerReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKAnswerReq copyWith(void Function(PKAnswerReq) updates) => super.copyWith((message) => updates(message as PKAnswerReq)) as PKAnswerReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKAnswerReq create() => PKAnswerReq._();
  PKAnswerReq createEmptyInstance() => create();
  static $pb.PbList<PKAnswerReq> createRepeated() => $pb.PbList<PKAnswerReq>();
  @$core.pragma('dart2js:noInline')
  static PKAnswerReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKAnswerReq>(create);
  static PKAnswerReq? _defaultInstance;

  @$pb.TagNumber(1)
  ANSWER get answer => $_getN(0);
  @$pb.TagNumber(1)
  set answer(ANSWER v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswer() => clearField(1);
}

class PKAnswerRsp extends $pb.GeneratedMessage {
  factory PKAnswerRsp() => create();
  PKAnswerRsp._() : super();
  factory PKAnswerRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKAnswerRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKAnswerRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKAnswerRsp clone() => PKAnswerRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKAnswerRsp copyWith(void Function(PKAnswerRsp) updates) => super.copyWith((message) => updates(message as PKAnswerRsp)) as PKAnswerRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKAnswerRsp create() => PKAnswerRsp._();
  PKAnswerRsp createEmptyInstance() => create();
  static $pb.PbList<PKAnswerRsp> createRepeated() => $pb.PbList<PKAnswerRsp>();
  @$core.pragma('dart2js:noInline')
  static PKAnswerRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKAnswerRsp>(create);
  static PKAnswerRsp? _defaultInstance;
}

/// 主动结束PK,逃兵
class PKEscapeReq extends $pb.GeneratedMessage {
  factory PKEscapeReq() => create();
  PKEscapeReq._() : super();
  factory PKEscapeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKEscapeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKEscapeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKEscapeReq clone() => PKEscapeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKEscapeReq copyWith(void Function(PKEscapeReq) updates) => super.copyWith((message) => updates(message as PKEscapeReq)) as PKEscapeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKEscapeReq create() => PKEscapeReq._();
  PKEscapeReq createEmptyInstance() => create();
  static $pb.PbList<PKEscapeReq> createRepeated() => $pb.PbList<PKEscapeReq>();
  @$core.pragma('dart2js:noInline')
  static PKEscapeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKEscapeReq>(create);
  static PKEscapeReq? _defaultInstance;
}

class PKEscapeRsp extends $pb.GeneratedMessage {
  factory PKEscapeRsp() => create();
  PKEscapeRsp._() : super();
  factory PKEscapeRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKEscapeRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKEscapeRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKEscapeRsp clone() => PKEscapeRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKEscapeRsp copyWith(void Function(PKEscapeRsp) updates) => super.copyWith((message) => updates(message as PKEscapeRsp)) as PKEscapeRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKEscapeRsp create() => PKEscapeRsp._();
  PKEscapeRsp createEmptyInstance() => create();
  static $pb.PbList<PKEscapeRsp> createRepeated() => $pb.PbList<PKEscapeRsp>();
  @$core.pragma('dart2js:noInline')
  static PKEscapeRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKEscapeRsp>(create);
  static PKEscapeRsp? _defaultInstance;
}

/// 主播A邀请主播B进行PK
class PKInviteReq extends $pb.GeneratedMessage {
  factory PKInviteReq({
    $core.String? pkTopic,
  }) {
    final $result = create();
    if (pkTopic != null) {
      $result.pkTopic = pkTopic;
    }
    return $result;
  }
  PKInviteReq._() : super();
  factory PKInviteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKInviteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKInviteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pkTopic', protoName: 'pkTopic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKInviteReq clone() => PKInviteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKInviteReq copyWith(void Function(PKInviteReq) updates) => super.copyWith((message) => updates(message as PKInviteReq)) as PKInviteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKInviteReq create() => PKInviteReq._();
  PKInviteReq createEmptyInstance() => create();
  static $pb.PbList<PKInviteReq> createRepeated() => $pb.PbList<PKInviteReq>();
  @$core.pragma('dart2js:noInline')
  static PKInviteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKInviteReq>(create);
  static PKInviteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pkTopic => $_getSZ(0);
  @$pb.TagNumber(1)
  set pkTopic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkTopic() => clearField(1);
}

class PKInviteRsp extends $pb.GeneratedMessage {
  factory PKInviteRsp() => create();
  PKInviteRsp._() : super();
  factory PKInviteRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKInviteRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKInviteRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKInviteRsp clone() => PKInviteRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKInviteRsp copyWith(void Function(PKInviteRsp) updates) => super.copyWith((message) => updates(message as PKInviteRsp)) as PKInviteRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKInviteRsp create() => PKInviteRsp._();
  PKInviteRsp createEmptyInstance() => create();
  static $pb.PbList<PKInviteRsp> createRepeated() => $pb.PbList<PKInviteRsp>();
  @$core.pragma('dart2js:noInline')
  static PKInviteRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKInviteRsp>(create);
  static PKInviteRsp? _defaultInstance;
}

/// 邀请方取消PK邀请
class PKInviteStopReq extends $pb.GeneratedMessage {
  factory PKInviteStopReq() => create();
  PKInviteStopReq._() : super();
  factory PKInviteStopReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKInviteStopReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKInviteStopReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKInviteStopReq clone() => PKInviteStopReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKInviteStopReq copyWith(void Function(PKInviteStopReq) updates) => super.copyWith((message) => updates(message as PKInviteStopReq)) as PKInviteStopReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKInviteStopReq create() => PKInviteStopReq._();
  PKInviteStopReq createEmptyInstance() => create();
  static $pb.PbList<PKInviteStopReq> createRepeated() => $pb.PbList<PKInviteStopReq>();
  @$core.pragma('dart2js:noInline')
  static PKInviteStopReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKInviteStopReq>(create);
  static PKInviteStopReq? _defaultInstance;
}

class PKInviteStopRsp extends $pb.GeneratedMessage {
  factory PKInviteStopRsp() => create();
  PKInviteStopRsp._() : super();
  factory PKInviteStopRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKInviteStopRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKInviteStopRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKInviteStopRsp clone() => PKInviteStopRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKInviteStopRsp copyWith(void Function(PKInviteStopRsp) updates) => super.copyWith((message) => updates(message as PKInviteStopRsp)) as PKInviteStopRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKInviteStopRsp create() => PKInviteStopRsp._();
  PKInviteStopRsp createEmptyInstance() => create();
  static $pb.PbList<PKInviteStopRsp> createRepeated() => $pb.PbList<PKInviteStopRsp>();
  @$core.pragma('dart2js:noInline')
  static PKInviteStopRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKInviteStopRsp>(create);
  static PKInviteStopRsp? _defaultInstance;
}

class PKRoomInfo extends $pb.GeneratedMessage {
  factory PKRoomInfo({
    PK_STATUS? pkStatus,
    $fixnum.Int64? endTime,
    PK_TYPE? pkType,
    $core.String? pkTopic,
    $fixnum.Int64? pkScore,
    PKUser? peer,
    END_TYPE? endType,
    $fixnum.Int64? winnerId,
    MVP? mvp,
  }) {
    final $result = create();
    if (pkStatus != null) {
      $result.pkStatus = pkStatus;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (pkType != null) {
      $result.pkType = pkType;
    }
    if (pkTopic != null) {
      $result.pkTopic = pkTopic;
    }
    if (pkScore != null) {
      $result.pkScore = pkScore;
    }
    if (peer != null) {
      $result.peer = peer;
    }
    if (endType != null) {
      $result.endType = endType;
    }
    if (winnerId != null) {
      $result.winnerId = winnerId;
    }
    if (mvp != null) {
      $result.mvp = mvp;
    }
    return $result;
  }
  PKRoomInfo._() : super();
  factory PKRoomInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKRoomInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKRoomInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..e<PK_STATUS>(1, _omitFieldNames ? '' : 'pkStatus', $pb.PbFieldType.OE, protoName: 'pkStatus', defaultOrMaker: PK_STATUS.IDLING, valueOf: PK_STATUS.valueOf, enumValues: PK_STATUS.values)
    ..aInt64(2, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..e<PK_TYPE>(3, _omitFieldNames ? '' : 'pkType', $pb.PbFieldType.OE, protoName: 'pkType', defaultOrMaker: PK_TYPE.RANDOM, valueOf: PK_TYPE.valueOf, enumValues: PK_TYPE.values)
    ..aOS(4, _omitFieldNames ? '' : 'pkTopic', protoName: 'pkTopic')
    ..aInt64(5, _omitFieldNames ? '' : 'pkScore', protoName: 'pkScore')
    ..aOM<PKUser>(6, _omitFieldNames ? '' : 'peer', subBuilder: PKUser.create)
    ..e<END_TYPE>(7, _omitFieldNames ? '' : 'endType', $pb.PbFieldType.OE, protoName: 'endType', defaultOrMaker: END_TYPE.NATURAL, valueOf: END_TYPE.valueOf, enumValues: END_TYPE.values)
    ..aInt64(8, _omitFieldNames ? '' : 'winnerId', protoName: 'winnerId')
    ..aOM<MVP>(9, _omitFieldNames ? '' : 'mvp', subBuilder: MVP.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKRoomInfo clone() => PKRoomInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKRoomInfo copyWith(void Function(PKRoomInfo) updates) => super.copyWith((message) => updates(message as PKRoomInfo)) as PKRoomInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKRoomInfo create() => PKRoomInfo._();
  PKRoomInfo createEmptyInstance() => create();
  static $pb.PbList<PKRoomInfo> createRepeated() => $pb.PbList<PKRoomInfo>();
  @$core.pragma('dart2js:noInline')
  static PKRoomInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKRoomInfo>(create);
  static PKRoomInfo? _defaultInstance;

  @$pb.TagNumber(1)
  PK_STATUS get pkStatus => $_getN(0);
  @$pb.TagNumber(1)
  set pkStatus(PK_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkStatus() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endTime => $_getI64(1);
  @$pb.TagNumber(2)
  set endTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);

  @$pb.TagNumber(3)
  PK_TYPE get pkType => $_getN(2);
  @$pb.TagNumber(3)
  set pkType(PK_TYPE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPkType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPkType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get pkTopic => $_getSZ(3);
  @$pb.TagNumber(4)
  set pkTopic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPkTopic() => $_has(3);
  @$pb.TagNumber(4)
  void clearPkTopic() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get pkScore => $_getI64(4);
  @$pb.TagNumber(5)
  set pkScore($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPkScore() => $_has(4);
  @$pb.TagNumber(5)
  void clearPkScore() => clearField(5);

  @$pb.TagNumber(6)
  PKUser get peer => $_getN(5);
  @$pb.TagNumber(6)
  set peer(PKUser v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPeer() => $_has(5);
  @$pb.TagNumber(6)
  void clearPeer() => clearField(6);
  @$pb.TagNumber(6)
  PKUser ensurePeer() => $_ensure(5);

  @$pb.TagNumber(7)
  END_TYPE get endType => $_getN(6);
  @$pb.TagNumber(7)
  set endType(END_TYPE v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasEndType() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndType() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get winnerId => $_getI64(7);
  @$pb.TagNumber(8)
  set winnerId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasWinnerId() => $_has(7);
  @$pb.TagNumber(8)
  void clearWinnerId() => clearField(8);

  @$pb.TagNumber(9)
  MVP get mvp => $_getN(8);
  @$pb.TagNumber(9)
  set mvp(MVP v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasMvp() => $_has(8);
  @$pb.TagNumber(9)
  void clearMvp() => clearField(9);
  @$pb.TagNumber(9)
  MVP ensureMvp() => $_ensure(8);
}

/// PKUser, 强烈建议大佬们看下在下面涉及peer的消息中复用此结构可好
class PKUser extends $pb.GeneratedMessage {
  factory PKUser({
    $fixnum.Int64? id,
    $core.String? username,
    $core.String? headerImageOriginal,
    $fixnum.Int64? rank,
    $fixnum.Int64? victoryTimes,
    $core.String? pullStreamAddress,
    $fixnum.Int64? pkScore,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (username != null) {
      $result.username = username;
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    if (victoryTimes != null) {
      $result.victoryTimes = victoryTimes;
    }
    if (pullStreamAddress != null) {
      $result.pullStreamAddress = pullStreamAddress;
    }
    if (pkScore != null) {
      $result.pkScore = pkScore;
    }
    return $result;
  }
  PKUser._() : super();
  factory PKUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..aInt64(4, _omitFieldNames ? '' : 'rank')
    ..aInt64(5, _omitFieldNames ? '' : 'victoryTimes', protoName: 'victoryTimes')
    ..aOS(6, _omitFieldNames ? '' : 'pullStreamAddress', protoName: 'pullStreamAddress')
    ..aInt64(7, _omitFieldNames ? '' : 'pkScore', protoName: 'pkScore')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKUser clone() => PKUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKUser copyWith(void Function(PKUser) updates) => super.copyWith((message) => updates(message as PKUser)) as PKUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKUser create() => PKUser._();
  PKUser createEmptyInstance() => create();
  static $pb.PbList<PKUser> createRepeated() => $pb.PbList<PKUser>();
  @$core.pragma('dart2js:noInline')
  static PKUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKUser>(create);
  static PKUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get headerImageOriginal => $_getSZ(2);
  @$pb.TagNumber(3)
  set headerImageOriginal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeaderImageOriginal() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeaderImageOriginal() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get rank => $_getI64(3);
  @$pb.TagNumber(4)
  set rank($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRank() => $_has(3);
  @$pb.TagNumber(4)
  void clearRank() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get victoryTimes => $_getI64(4);
  @$pb.TagNumber(5)
  set victoryTimes($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVictoryTimes() => $_has(4);
  @$pb.TagNumber(5)
  void clearVictoryTimes() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get pullStreamAddress => $_getSZ(5);
  @$pb.TagNumber(6)
  set pullStreamAddress($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPullStreamAddress() => $_has(5);
  @$pb.TagNumber(6)
  void clearPullStreamAddress() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get pkScore => $_getI64(6);
  @$pb.TagNumber(7)
  set pkScore($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPkScore() => $_has(6);
  @$pb.TagNumber(7)
  void clearPkScore() => clearField(7);
}

/// 房间PK状态更新通知
class PKStatusChangeNotify extends $pb.GeneratedMessage {
  factory PKStatusChangeNotify({
    PK_STATUS? pkStatus,
  }) {
    final $result = create();
    if (pkStatus != null) {
      $result.pkStatus = pkStatus;
    }
    return $result;
  }
  PKStatusChangeNotify._() : super();
  factory PKStatusChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKStatusChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKStatusChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..e<PK_STATUS>(1, _omitFieldNames ? '' : 'pkStatus', $pb.PbFieldType.OE, protoName: 'pkStatus', defaultOrMaker: PK_STATUS.IDLING, valueOf: PK_STATUS.valueOf, enumValues: PK_STATUS.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKStatusChangeNotify clone() => PKStatusChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKStatusChangeNotify copyWith(void Function(PKStatusChangeNotify) updates) => super.copyWith((message) => updates(message as PKStatusChangeNotify)) as PKStatusChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKStatusChangeNotify create() => PKStatusChangeNotify._();
  PKStatusChangeNotify createEmptyInstance() => create();
  static $pb.PbList<PKStatusChangeNotify> createRepeated() => $pb.PbList<PKStatusChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static PKStatusChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKStatusChangeNotify>(create);
  static PKStatusChangeNotify? _defaultInstance;

  /// int32    roomStatus   = 1; // 房间状态更新
  @$pb.TagNumber(1)
  PK_STATUS get pkStatus => $_getN(0);
  @$pb.TagNumber(1)
  set pkStatus(PK_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkStatus() => clearField(1);
}

/// 匹配成功通知消息
class PKMatchedNotify extends $pb.GeneratedMessage {
  factory PKMatchedNotify({
    $fixnum.Int64? endTime,
    PK_TYPE? pkType,
    $core.String? pkTopic,
    $fixnum.Int64? peerId,
    $core.String? peerUsername,
    $core.String? peerHeaderImageOriginal,
    $fixnum.Int64? peerRank,
    $fixnum.Int64? peerVictoryTimes,
    $core.String? peerPullStreamAddress,
  }) {
    final $result = create();
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (pkType != null) {
      $result.pkType = pkType;
    }
    if (pkTopic != null) {
      $result.pkTopic = pkTopic;
    }
    if (peerId != null) {
      $result.peerId = peerId;
    }
    if (peerUsername != null) {
      $result.peerUsername = peerUsername;
    }
    if (peerHeaderImageOriginal != null) {
      $result.peerHeaderImageOriginal = peerHeaderImageOriginal;
    }
    if (peerRank != null) {
      $result.peerRank = peerRank;
    }
    if (peerVictoryTimes != null) {
      $result.peerVictoryTimes = peerVictoryTimes;
    }
    if (peerPullStreamAddress != null) {
      $result.peerPullStreamAddress = peerPullStreamAddress;
    }
    return $result;
  }
  PKMatchedNotify._() : super();
  factory PKMatchedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKMatchedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKMatchedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..e<PK_TYPE>(2, _omitFieldNames ? '' : 'pkType', $pb.PbFieldType.OE, protoName: 'pkType', defaultOrMaker: PK_TYPE.RANDOM, valueOf: PK_TYPE.valueOf, enumValues: PK_TYPE.values)
    ..aOS(3, _omitFieldNames ? '' : 'pkTopic', protoName: 'pkTopic')
    ..aInt64(4, _omitFieldNames ? '' : 'peerId', protoName: 'peerId')
    ..aOS(5, _omitFieldNames ? '' : 'peerUsername', protoName: 'peerUsername')
    ..aOS(6, _omitFieldNames ? '' : 'peerHeaderImageOriginal', protoName: 'peerHeaderImageOriginal')
    ..aInt64(7, _omitFieldNames ? '' : 'peerRank', protoName: 'peerRank')
    ..aInt64(8, _omitFieldNames ? '' : 'peerVictoryTimes', protoName: 'peerVictoryTimes')
    ..aOS(9, _omitFieldNames ? '' : 'peerPullStreamAddress', protoName: 'peerPullStreamAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKMatchedNotify clone() => PKMatchedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKMatchedNotify copyWith(void Function(PKMatchedNotify) updates) => super.copyWith((message) => updates(message as PKMatchedNotify)) as PKMatchedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKMatchedNotify create() => PKMatchedNotify._();
  PKMatchedNotify createEmptyInstance() => create();
  static $pb.PbList<PKMatchedNotify> createRepeated() => $pb.PbList<PKMatchedNotify>();
  @$core.pragma('dart2js:noInline')
  static PKMatchedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKMatchedNotify>(create);
  static PKMatchedNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get endTime => $_getI64(0);
  @$pb.TagNumber(1)
  set endTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEndTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearEndTime() => clearField(1);

  @$pb.TagNumber(2)
  PK_TYPE get pkType => $_getN(1);
  @$pb.TagNumber(2)
  set pkType(PK_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPkType() => $_has(1);
  @$pb.TagNumber(2)
  void clearPkType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pkTopic => $_getSZ(2);
  @$pb.TagNumber(3)
  set pkTopic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPkTopic() => $_has(2);
  @$pb.TagNumber(3)
  void clearPkTopic() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get peerId => $_getI64(3);
  @$pb.TagNumber(4)
  set peerId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPeerId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPeerId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get peerUsername => $_getSZ(4);
  @$pb.TagNumber(5)
  set peerUsername($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPeerUsername() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeerUsername() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get peerHeaderImageOriginal => $_getSZ(5);
  @$pb.TagNumber(6)
  set peerHeaderImageOriginal($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPeerHeaderImageOriginal() => $_has(5);
  @$pb.TagNumber(6)
  void clearPeerHeaderImageOriginal() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get peerRank => $_getI64(6);
  @$pb.TagNumber(7)
  set peerRank($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPeerRank() => $_has(6);
  @$pb.TagNumber(7)
  void clearPeerRank() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get peerVictoryTimes => $_getI64(7);
  @$pb.TagNumber(8)
  set peerVictoryTimes($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPeerVictoryTimes() => $_has(7);
  @$pb.TagNumber(8)
  void clearPeerVictoryTimes() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get peerPullStreamAddress => $_getSZ(8);
  @$pb.TagNumber(9)
  set peerPullStreamAddress($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPeerPullStreamAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearPeerPullStreamAddress() => clearField(9);
}

/// 对方已拒绝
class PKPeerRefusedNotify extends $pb.GeneratedMessage {
  factory PKPeerRefusedNotify() => create();
  PKPeerRefusedNotify._() : super();
  factory PKPeerRefusedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKPeerRefusedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKPeerRefusedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKPeerRefusedNotify clone() => PKPeerRefusedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKPeerRefusedNotify copyWith(void Function(PKPeerRefusedNotify) updates) => super.copyWith((message) => updates(message as PKPeerRefusedNotify)) as PKPeerRefusedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKPeerRefusedNotify create() => PKPeerRefusedNotify._();
  PKPeerRefusedNotify createEmptyInstance() => create();
  static $pb.PbList<PKPeerRefusedNotify> createRepeated() => $pb.PbList<PKPeerRefusedNotify>();
  @$core.pragma('dart2js:noInline')
  static PKPeerRefusedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKPeerRefusedNotify>(create);
  static PKPeerRefusedNotify? _defaultInstance;
}

/// PK开始
class PKStartNotify extends $pb.GeneratedMessage {
  factory PKStartNotify({
    $fixnum.Int64? endTime,
    PK_TYPE? pkType,
    $core.String? pkTopic,
    $fixnum.Int64? peerId,
    $core.String? peerUsername,
    $core.String? peerHeaderImageOriginal,
    $fixnum.Int64? peerRank,
    $fixnum.Int64? peerVictoryTimes,
    $core.String? peerPullStreamAddress,
  }) {
    final $result = create();
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (pkType != null) {
      $result.pkType = pkType;
    }
    if (pkTopic != null) {
      $result.pkTopic = pkTopic;
    }
    if (peerId != null) {
      $result.peerId = peerId;
    }
    if (peerUsername != null) {
      $result.peerUsername = peerUsername;
    }
    if (peerHeaderImageOriginal != null) {
      $result.peerHeaderImageOriginal = peerHeaderImageOriginal;
    }
    if (peerRank != null) {
      $result.peerRank = peerRank;
    }
    if (peerVictoryTimes != null) {
      $result.peerVictoryTimes = peerVictoryTimes;
    }
    if (peerPullStreamAddress != null) {
      $result.peerPullStreamAddress = peerPullStreamAddress;
    }
    return $result;
  }
  PKStartNotify._() : super();
  factory PKStartNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKStartNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKStartNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..e<PK_TYPE>(2, _omitFieldNames ? '' : 'pkType', $pb.PbFieldType.OE, protoName: 'pkType', defaultOrMaker: PK_TYPE.RANDOM, valueOf: PK_TYPE.valueOf, enumValues: PK_TYPE.values)
    ..aOS(3, _omitFieldNames ? '' : 'pkTopic', protoName: 'pkTopic')
    ..aInt64(4, _omitFieldNames ? '' : 'peerId', protoName: 'peerId')
    ..aOS(5, _omitFieldNames ? '' : 'peerUsername', protoName: 'peerUsername')
    ..aOS(6, _omitFieldNames ? '' : 'peerHeaderImageOriginal', protoName: 'peerHeaderImageOriginal')
    ..aInt64(7, _omitFieldNames ? '' : 'peerRank', protoName: 'peerRank')
    ..aInt64(8, _omitFieldNames ? '' : 'peerVictoryTimes', protoName: 'peerVictoryTimes')
    ..aOS(9, _omitFieldNames ? '' : 'peerPullStreamAddress', protoName: 'peerPullStreamAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKStartNotify clone() => PKStartNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKStartNotify copyWith(void Function(PKStartNotify) updates) => super.copyWith((message) => updates(message as PKStartNotify)) as PKStartNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKStartNotify create() => PKStartNotify._();
  PKStartNotify createEmptyInstance() => create();
  static $pb.PbList<PKStartNotify> createRepeated() => $pb.PbList<PKStartNotify>();
  @$core.pragma('dart2js:noInline')
  static PKStartNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKStartNotify>(create);
  static PKStartNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get endTime => $_getI64(0);
  @$pb.TagNumber(1)
  set endTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEndTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearEndTime() => clearField(1);

  @$pb.TagNumber(2)
  PK_TYPE get pkType => $_getN(1);
  @$pb.TagNumber(2)
  set pkType(PK_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPkType() => $_has(1);
  @$pb.TagNumber(2)
  void clearPkType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pkTopic => $_getSZ(2);
  @$pb.TagNumber(3)
  set pkTopic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPkTopic() => $_has(2);
  @$pb.TagNumber(3)
  void clearPkTopic() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get peerId => $_getI64(3);
  @$pb.TagNumber(4)
  set peerId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPeerId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPeerId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get peerUsername => $_getSZ(4);
  @$pb.TagNumber(5)
  set peerUsername($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPeerUsername() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeerUsername() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get peerHeaderImageOriginal => $_getSZ(5);
  @$pb.TagNumber(6)
  set peerHeaderImageOriginal($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPeerHeaderImageOriginal() => $_has(5);
  @$pb.TagNumber(6)
  void clearPeerHeaderImageOriginal() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get peerRank => $_getI64(6);
  @$pb.TagNumber(7)
  set peerRank($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPeerRank() => $_has(6);
  @$pb.TagNumber(7)
  void clearPeerRank() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get peerVictoryTimes => $_getI64(7);
  @$pb.TagNumber(8)
  set peerVictoryTimes($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPeerVictoryTimes() => $_has(7);
  @$pb.TagNumber(8)
  void clearPeerVictoryTimes() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get peerPullStreamAddress => $_getSZ(8);
  @$pb.TagNumber(9)
  set peerPullStreamAddress($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPeerPullStreamAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearPeerPullStreamAddress() => clearField(9);
}

/// PK比赛阶段结束
class PKGameOverNotify extends $pb.GeneratedMessage {
  factory PKGameOverNotify({
    $fixnum.Int64? endTime,
    END_TYPE? endType,
    $fixnum.Int64? pkScore,
    $fixnum.Int64? rank,
    $fixnum.Int64? victoryTimes,
    $fixnum.Int64? peerPKScore,
    $fixnum.Int64? peerRank,
    $fixnum.Int64? peerVictoryTimes,
    $fixnum.Int64? winnerId,
    MVP? mvp,
  }) {
    final $result = create();
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (endType != null) {
      $result.endType = endType;
    }
    if (pkScore != null) {
      $result.pkScore = pkScore;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    if (victoryTimes != null) {
      $result.victoryTimes = victoryTimes;
    }
    if (peerPKScore != null) {
      $result.peerPKScore = peerPKScore;
    }
    if (peerRank != null) {
      $result.peerRank = peerRank;
    }
    if (peerVictoryTimes != null) {
      $result.peerVictoryTimes = peerVictoryTimes;
    }
    if (winnerId != null) {
      $result.winnerId = winnerId;
    }
    if (mvp != null) {
      $result.mvp = mvp;
    }
    return $result;
  }
  PKGameOverNotify._() : super();
  factory PKGameOverNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKGameOverNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKGameOverNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..e<END_TYPE>(2, _omitFieldNames ? '' : 'endType', $pb.PbFieldType.OE, protoName: 'endType', defaultOrMaker: END_TYPE.NATURAL, valueOf: END_TYPE.valueOf, enumValues: END_TYPE.values)
    ..aInt64(3, _omitFieldNames ? '' : 'pkScore', protoName: 'pkScore')
    ..aInt64(4, _omitFieldNames ? '' : 'rank')
    ..aInt64(5, _omitFieldNames ? '' : 'victoryTimes', protoName: 'victoryTimes')
    ..aInt64(11, _omitFieldNames ? '' : 'peerPKScore', protoName: 'peerPKScore')
    ..aInt64(12, _omitFieldNames ? '' : 'peerRank', protoName: 'peerRank')
    ..aInt64(13, _omitFieldNames ? '' : 'peerVictoryTimes', protoName: 'peerVictoryTimes')
    ..aInt64(21, _omitFieldNames ? '' : 'winnerId', protoName: 'winnerId')
    ..aOM<MVP>(22, _omitFieldNames ? '' : 'mvp', subBuilder: MVP.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKGameOverNotify clone() => PKGameOverNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKGameOverNotify copyWith(void Function(PKGameOverNotify) updates) => super.copyWith((message) => updates(message as PKGameOverNotify)) as PKGameOverNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKGameOverNotify create() => PKGameOverNotify._();
  PKGameOverNotify createEmptyInstance() => create();
  static $pb.PbList<PKGameOverNotify> createRepeated() => $pb.PbList<PKGameOverNotify>();
  @$core.pragma('dart2js:noInline')
  static PKGameOverNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKGameOverNotify>(create);
  static PKGameOverNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get endTime => $_getI64(0);
  @$pb.TagNumber(1)
  set endTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEndTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearEndTime() => clearField(1);

  @$pb.TagNumber(2)
  END_TYPE get endType => $_getN(1);
  @$pb.TagNumber(2)
  set endType(END_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndType() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get pkScore => $_getI64(2);
  @$pb.TagNumber(3)
  set pkScore($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPkScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearPkScore() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get rank => $_getI64(3);
  @$pb.TagNumber(4)
  set rank($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRank() => $_has(3);
  @$pb.TagNumber(4)
  void clearRank() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get victoryTimes => $_getI64(4);
  @$pb.TagNumber(5)
  set victoryTimes($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVictoryTimes() => $_has(4);
  @$pb.TagNumber(5)
  void clearVictoryTimes() => clearField(5);

  @$pb.TagNumber(11)
  $fixnum.Int64 get peerPKScore => $_getI64(5);
  @$pb.TagNumber(11)
  set peerPKScore($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(11)
  $core.bool hasPeerPKScore() => $_has(5);
  @$pb.TagNumber(11)
  void clearPeerPKScore() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get peerRank => $_getI64(6);
  @$pb.TagNumber(12)
  set peerRank($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(12)
  $core.bool hasPeerRank() => $_has(6);
  @$pb.TagNumber(12)
  void clearPeerRank() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get peerVictoryTimes => $_getI64(7);
  @$pb.TagNumber(13)
  set peerVictoryTimes($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(13)
  $core.bool hasPeerVictoryTimes() => $_has(7);
  @$pb.TagNumber(13)
  void clearPeerVictoryTimes() => clearField(13);

  @$pb.TagNumber(21)
  $fixnum.Int64 get winnerId => $_getI64(8);
  @$pb.TagNumber(21)
  set winnerId($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(21)
  $core.bool hasWinnerId() => $_has(8);
  @$pb.TagNumber(21)
  void clearWinnerId() => clearField(21);

  @$pb.TagNumber(22)
  MVP get mvp => $_getN(9);
  @$pb.TagNumber(22)
  set mvp(MVP v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasMvp() => $_has(9);
  @$pb.TagNumber(22)
  void clearMvp() => clearField(22);
  @$pb.TagNumber(22)
  MVP ensureMvp() => $_ensure(9);
}

/// PKGameOverNotify 中 MVP 信息
class MVP extends $pb.GeneratedMessage {
  factory MVP({
    $core.int? actorGrade,
    $core.String? bigImageOriginal,
    $core.String? headerImageOriginal,
    $core.bool? isLiving,
    $core.bool? levelPrivilegeOpen,
    $core.String? nickName,
    $fixnum.Int64? userID,
    $core.String? userLevel,
  }) {
    final $result = create();
    if (actorGrade != null) {
      $result.actorGrade = actorGrade;
    }
    if (bigImageOriginal != null) {
      $result.bigImageOriginal = bigImageOriginal;
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    if (isLiving != null) {
      $result.isLiving = isLiving;
    }
    if (levelPrivilegeOpen != null) {
      $result.levelPrivilegeOpen = levelPrivilegeOpen;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (userID != null) {
      $result.userID = userID;
    }
    if (userLevel != null) {
      $result.userLevel = userLevel;
    }
    return $result;
  }
  MVP._() : super();
  factory MVP.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MVP.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MVP', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'actorGrade', $pb.PbFieldType.O3, protoName: 'actorGrade')
    ..aOS(2, _omitFieldNames ? '' : 'bigImageOriginal', protoName: 'bigImageOriginal')
    ..aOS(3, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..aOB(4, _omitFieldNames ? '' : 'isLiving', protoName: 'isLiving')
    ..aOB(5, _omitFieldNames ? '' : 'levelPrivilegeOpen', protoName: 'levelPrivilegeOpen')
    ..aOS(6, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aInt64(7, _omitFieldNames ? '' : 'userID', protoName: 'userID')
    ..aOS(8, _omitFieldNames ? '' : 'userLevel', protoName: 'userLevel')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MVP clone() => MVP()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MVP copyWith(void Function(MVP) updates) => super.copyWith((message) => updates(message as MVP)) as MVP;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MVP create() => MVP._();
  MVP createEmptyInstance() => create();
  static $pb.PbList<MVP> createRepeated() => $pb.PbList<MVP>();
  @$core.pragma('dart2js:noInline')
  static MVP getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MVP>(create);
  static MVP? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get actorGrade => $_getIZ(0);
  @$pb.TagNumber(1)
  set actorGrade($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActorGrade() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorGrade() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bigImageOriginal => $_getSZ(1);
  @$pb.TagNumber(2)
  set bigImageOriginal($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBigImageOriginal() => $_has(1);
  @$pb.TagNumber(2)
  void clearBigImageOriginal() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get headerImageOriginal => $_getSZ(2);
  @$pb.TagNumber(3)
  set headerImageOriginal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeaderImageOriginal() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeaderImageOriginal() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isLiving => $_getBF(3);
  @$pb.TagNumber(4)
  set isLiving($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsLiving() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsLiving() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get levelPrivilegeOpen => $_getBF(4);
  @$pb.TagNumber(5)
  set levelPrivilegeOpen($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevelPrivilegeOpen() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevelPrivilegeOpen() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get nickName => $_getSZ(5);
  @$pb.TagNumber(6)
  set nickName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNickName() => $_has(5);
  @$pb.TagNumber(6)
  void clearNickName() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get userID => $_getI64(6);
  @$pb.TagNumber(7)
  set userID($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserID() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserID() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get userLevel => $_getSZ(7);
  @$pb.TagNumber(8)
  set userLevel($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserLevel() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserLevel() => clearField(8);
}

class PKOverNotify extends $pb.GeneratedMessage {
  factory PKOverNotify({
    PK_STATUS? pkStatus,
  }) {
    final $result = create();
    if (pkStatus != null) {
      $result.pkStatus = pkStatus;
    }
    return $result;
  }
  PKOverNotify._() : super();
  factory PKOverNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKOverNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKOverNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..e<PK_STATUS>(1, _omitFieldNames ? '' : 'pkStatus', $pb.PbFieldType.OE, protoName: 'pkStatus', defaultOrMaker: PK_STATUS.IDLING, valueOf: PK_STATUS.valueOf, enumValues: PK_STATUS.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKOverNotify clone() => PKOverNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKOverNotify copyWith(void Function(PKOverNotify) updates) => super.copyWith((message) => updates(message as PKOverNotify)) as PKOverNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKOverNotify create() => PKOverNotify._();
  PKOverNotify createEmptyInstance() => create();
  static $pb.PbList<PKOverNotify> createRepeated() => $pb.PbList<PKOverNotify>();
  @$core.pragma('dart2js:noInline')
  static PKOverNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKOverNotify>(create);
  static PKOverNotify? _defaultInstance;

  @$pb.TagNumber(1)
  PK_STATUS get pkStatus => $_getN(0);
  @$pb.TagNumber(1)
  set pkStatus(PK_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkStatus() => clearField(1);
}

class PassivePKRefuseReq extends $pb.GeneratedMessage {
  factory PassivePKRefuseReq({
    $fixnum.Int64? opponentId,
    $fixnum.Int64? refuseId,
    $core.String? topic,
  }) {
    final $result = create();
    if (opponentId != null) {
      $result.opponentId = opponentId;
    }
    if (refuseId != null) {
      $result.refuseId = refuseId;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    return $result;
  }
  PassivePKRefuseReq._() : super();
  factory PassivePKRefuseReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PassivePKRefuseReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PassivePKRefuseReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'opponentId', protoName: 'opponentId')
    ..aInt64(2, _omitFieldNames ? '' : 'refuseId', protoName: 'refuseId')
    ..aOS(3, _omitFieldNames ? '' : 'topic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PassivePKRefuseReq clone() => PassivePKRefuseReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PassivePKRefuseReq copyWith(void Function(PassivePKRefuseReq) updates) => super.copyWith((message) => updates(message as PassivePKRefuseReq)) as PassivePKRefuseReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PassivePKRefuseReq create() => PassivePKRefuseReq._();
  PassivePKRefuseReq createEmptyInstance() => create();
  static $pb.PbList<PassivePKRefuseReq> createRepeated() => $pb.PbList<PassivePKRefuseReq>();
  @$core.pragma('dart2js:noInline')
  static PassivePKRefuseReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PassivePKRefuseReq>(create);
  static PassivePKRefuseReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get opponentId => $_getI64(0);
  @$pb.TagNumber(1)
  set opponentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpponentId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get refuseId => $_getI64(1);
  @$pb.TagNumber(2)
  set refuseId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefuseId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefuseId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get topic => $_getSZ(2);
  @$pb.TagNumber(3)
  set topic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTopic() => $_has(2);
  @$pb.TagNumber(3)
  void clearTopic() => clearField(3);
}

/// 主动普通pk切换为被动段位pk
class PKSwitchPassiveReq extends $pb.GeneratedMessage {
  factory PKSwitchPassiveReq({
    $fixnum.Int64? roomId,
    $fixnum.Int64? rank,
  }) {
    final $result = create();
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    return $result;
  }
  PKSwitchPassiveReq._() : super();
  factory PKSwitchPassiveReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKSwitchPassiveReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKSwitchPassiveReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..aInt64(2, _omitFieldNames ? '' : 'rank')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKSwitchPassiveReq clone() => PKSwitchPassiveReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKSwitchPassiveReq copyWith(void Function(PKSwitchPassiveReq) updates) => super.copyWith((message) => updates(message as PKSwitchPassiveReq)) as PKSwitchPassiveReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKSwitchPassiveReq create() => PKSwitchPassiveReq._();
  PKSwitchPassiveReq createEmptyInstance() => create();
  static $pb.PbList<PKSwitchPassiveReq> createRepeated() => $pb.PbList<PKSwitchPassiveReq>();
  @$core.pragma('dart2js:noInline')
  static PKSwitchPassiveReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKSwitchPassiveReq>(create);
  static PKSwitchPassiveReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get rank => $_getI64(1);
  @$pb.TagNumber(2)
  set rank($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearRank() => clearField(2);
}

/// 被动PK通知
class PassivePkNotify extends $pb.GeneratedMessage {
  factory PassivePkNotify({
    PK_TYPE? pkType,
  }) {
    final $result = create();
    if (pkType != null) {
      $result.pkType = pkType;
    }
    return $result;
  }
  PassivePkNotify._() : super();
  factory PassivePkNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PassivePkNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PassivePkNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..e<PK_TYPE>(1, _omitFieldNames ? '' : 'pkType', $pb.PbFieldType.OE, protoName: 'pkType', defaultOrMaker: PK_TYPE.RANDOM, valueOf: PK_TYPE.valueOf, enumValues: PK_TYPE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PassivePkNotify clone() => PassivePkNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PassivePkNotify copyWith(void Function(PassivePkNotify) updates) => super.copyWith((message) => updates(message as PassivePkNotify)) as PassivePkNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PassivePkNotify create() => PassivePkNotify._();
  PassivePkNotify createEmptyInstance() => create();
  static $pb.PbList<PassivePkNotify> createRepeated() => $pb.PbList<PassivePkNotify>();
  @$core.pragma('dart2js:noInline')
  static PassivePkNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PassivePkNotify>(create);
  static PassivePkNotify? _defaultInstance;

  @$pb.TagNumber(1)
  PK_TYPE get pkType => $_getN(0);
  @$pb.TagNumber(1)
  set pkType(PK_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPkType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkType() => clearField(1);
}

/// 大奖赛权限变更通知
class PKTournamentChangeNotify extends $pb.GeneratedMessage {
  factory PKTournamentChangeNotify({
    $core.bool? isQualifiedPkTournament,
    $core.String? pkTournamentBeginTime,
    $core.String? pkTounamentTip,
  }) {
    final $result = create();
    if (isQualifiedPkTournament != null) {
      $result.isQualifiedPkTournament = isQualifiedPkTournament;
    }
    if (pkTournamentBeginTime != null) {
      $result.pkTournamentBeginTime = pkTournamentBeginTime;
    }
    if (pkTounamentTip != null) {
      $result.pkTounamentTip = pkTounamentTip;
    }
    return $result;
  }
  PKTournamentChangeNotify._() : super();
  factory PKTournamentChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKTournamentChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKTournamentChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isQualifiedPkTournament', protoName: 'isQualifiedPkTournament')
    ..aOS(2, _omitFieldNames ? '' : 'pkTournamentBeginTime', protoName: 'pkTournamentBeginTime')
    ..aOS(3, _omitFieldNames ? '' : 'pkTounamentTip', protoName: 'pkTounamentTip')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKTournamentChangeNotify clone() => PKTournamentChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKTournamentChangeNotify copyWith(void Function(PKTournamentChangeNotify) updates) => super.copyWith((message) => updates(message as PKTournamentChangeNotify)) as PKTournamentChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKTournamentChangeNotify create() => PKTournamentChangeNotify._();
  PKTournamentChangeNotify createEmptyInstance() => create();
  static $pb.PbList<PKTournamentChangeNotify> createRepeated() => $pb.PbList<PKTournamentChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static PKTournamentChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKTournamentChangeNotify>(create);
  static PKTournamentChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isQualifiedPkTournament => $_getBF(0);
  @$pb.TagNumber(1)
  set isQualifiedPkTournament($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsQualifiedPkTournament() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsQualifiedPkTournament() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pkTournamentBeginTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set pkTournamentBeginTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPkTournamentBeginTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearPkTournamentBeginTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pkTounamentTip => $_getSZ(2);
  @$pb.TagNumber(3)
  set pkTounamentTip($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPkTounamentTip() => $_has(2);
  @$pb.TagNumber(3)
  void clearPkTounamentTip() => clearField(3);
}

class CanJoinPkTournamentReq extends $pb.GeneratedMessage {
  factory CanJoinPkTournamentReq() => create();
  CanJoinPkTournamentReq._() : super();
  factory CanJoinPkTournamentReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CanJoinPkTournamentReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CanJoinPkTournamentReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CanJoinPkTournamentReq clone() => CanJoinPkTournamentReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CanJoinPkTournamentReq copyWith(void Function(CanJoinPkTournamentReq) updates) => super.copyWith((message) => updates(message as CanJoinPkTournamentReq)) as CanJoinPkTournamentReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CanJoinPkTournamentReq create() => CanJoinPkTournamentReq._();
  CanJoinPkTournamentReq createEmptyInstance() => create();
  static $pb.PbList<CanJoinPkTournamentReq> createRepeated() => $pb.PbList<CanJoinPkTournamentReq>();
  @$core.pragma('dart2js:noInline')
  static CanJoinPkTournamentReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CanJoinPkTournamentReq>(create);
  static CanJoinPkTournamentReq? _defaultInstance;
}

class CanJoinPkTournamentRsp extends $pb.GeneratedMessage {
  factory CanJoinPkTournamentRsp({
    $core.bool? isQualifiedPkTournament,
    $core.String? pkTournamentBeginTime,
    $core.String? pkTounamentTip,
  }) {
    final $result = create();
    if (isQualifiedPkTournament != null) {
      $result.isQualifiedPkTournament = isQualifiedPkTournament;
    }
    if (pkTournamentBeginTime != null) {
      $result.pkTournamentBeginTime = pkTournamentBeginTime;
    }
    if (pkTounamentTip != null) {
      $result.pkTounamentTip = pkTounamentTip;
    }
    return $result;
  }
  CanJoinPkTournamentRsp._() : super();
  factory CanJoinPkTournamentRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CanJoinPkTournamentRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CanJoinPkTournamentRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_pk_room'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isQualifiedPkTournament', protoName: 'isQualifiedPkTournament')
    ..aOS(2, _omitFieldNames ? '' : 'PkTournamentBeginTime', protoName: 'PkTournamentBeginTime')
    ..aOS(3, _omitFieldNames ? '' : 'PkTounamentTip', protoName: 'PkTounamentTip')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CanJoinPkTournamentRsp clone() => CanJoinPkTournamentRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CanJoinPkTournamentRsp copyWith(void Function(CanJoinPkTournamentRsp) updates) => super.copyWith((message) => updates(message as CanJoinPkTournamentRsp)) as CanJoinPkTournamentRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CanJoinPkTournamentRsp create() => CanJoinPkTournamentRsp._();
  CanJoinPkTournamentRsp createEmptyInstance() => create();
  static $pb.PbList<CanJoinPkTournamentRsp> createRepeated() => $pb.PbList<CanJoinPkTournamentRsp>();
  @$core.pragma('dart2js:noInline')
  static CanJoinPkTournamentRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CanJoinPkTournamentRsp>(create);
  static CanJoinPkTournamentRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isQualifiedPkTournament => $_getBF(0);
  @$pb.TagNumber(1)
  set isQualifiedPkTournament($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsQualifiedPkTournament() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsQualifiedPkTournament() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pkTournamentBeginTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set pkTournamentBeginTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPkTournamentBeginTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearPkTournamentBeginTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pkTounamentTip => $_getSZ(2);
  @$pb.TagNumber(3)
  set pkTounamentTip($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPkTounamentTip() => $_has(2);
  @$pb.TagNumber(3)
  void clearPkTounamentTip() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
