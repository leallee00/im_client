//
//  Generated code. Do not modify.
//  source: pb_msg/room_explain/room_explain.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class RoomExplainReq extends $pb.GeneratedMessage {
  factory RoomExplainReq({
    $fixnum.Int64? roomId,
    $core.String? timestampBegin,
    $core.String? timestampEnd,
  }) {
    final $result = create();
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (timestampBegin != null) {
      $result.timestampBegin = timestampBegin;
    }
    if (timestampEnd != null) {
      $result.timestampEnd = timestampEnd;
    }
    return $result;
  }
  RoomExplainReq._() : super();
  factory RoomExplainReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomExplainReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomExplainReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_room_explain'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..aOS(2, _omitFieldNames ? '' : 'timestampBegin', protoName: 'timestampBegin')
    ..aOS(3, _omitFieldNames ? '' : 'timestampEnd', protoName: 'timestampEnd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomExplainReq clone() => RoomExplainReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomExplainReq copyWith(void Function(RoomExplainReq) updates) => super.copyWith((message) => updates(message as RoomExplainReq)) as RoomExplainReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomExplainReq create() => RoomExplainReq._();
  RoomExplainReq createEmptyInstance() => create();
  static $pb.PbList<RoomExplainReq> createRepeated() => $pb.PbList<RoomExplainReq>();
  @$core.pragma('dart2js:noInline')
  static RoomExplainReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomExplainReq>(create);
  static RoomExplainReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get timestampBegin => $_getSZ(1);
  @$pb.TagNumber(2)
  set timestampBegin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampBegin() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampBegin() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get timestampEnd => $_getSZ(2);
  @$pb.TagNumber(3)
  set timestampEnd($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestampEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestampEnd() => clearField(3);
}

class RoomExplainRsp extends $pb.GeneratedMessage {
  factory RoomExplainRsp({
    $fixnum.Int64? msgCount,
  }) {
    final $result = create();
    if (msgCount != null) {
      $result.msgCount = msgCount;
    }
    return $result;
  }
  RoomExplainRsp._() : super();
  factory RoomExplainRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomExplainRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomExplainRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_room_explain'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgCount', protoName: 'msgCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomExplainRsp clone() => RoomExplainRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomExplainRsp copyWith(void Function(RoomExplainRsp) updates) => super.copyWith((message) => updates(message as RoomExplainRsp)) as RoomExplainRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomExplainRsp create() => RoomExplainRsp._();
  RoomExplainRsp createEmptyInstance() => create();
  static $pb.PbList<RoomExplainRsp> createRepeated() => $pb.PbList<RoomExplainRsp>();
  @$core.pragma('dart2js:noInline')
  static RoomExplainRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomExplainRsp>(create);
  static RoomExplainRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgCount => $_getI64(0);
  @$pb.TagNumber(1)
  set msgCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgCount() => clearField(1);
}

class SrcUserExplainReq extends $pb.GeneratedMessage {
  factory SrcUserExplainReq({
    $fixnum.Int64? srcId,
    $core.String? timestampBegin,
    $core.String? timestampEnd,
  }) {
    final $result = create();
    if (srcId != null) {
      $result.srcId = srcId;
    }
    if (timestampBegin != null) {
      $result.timestampBegin = timestampBegin;
    }
    if (timestampEnd != null) {
      $result.timestampEnd = timestampEnd;
    }
    return $result;
  }
  SrcUserExplainReq._() : super();
  factory SrcUserExplainReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SrcUserExplainReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SrcUserExplainReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_room_explain'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'srcId', protoName: 'srcId')
    ..aOS(2, _omitFieldNames ? '' : 'timestampBegin', protoName: 'timestampBegin')
    ..aOS(3, _omitFieldNames ? '' : 'timestampEnd', protoName: 'timestampEnd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SrcUserExplainReq clone() => SrcUserExplainReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SrcUserExplainReq copyWith(void Function(SrcUserExplainReq) updates) => super.copyWith((message) => updates(message as SrcUserExplainReq)) as SrcUserExplainReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SrcUserExplainReq create() => SrcUserExplainReq._();
  SrcUserExplainReq createEmptyInstance() => create();
  static $pb.PbList<SrcUserExplainReq> createRepeated() => $pb.PbList<SrcUserExplainReq>();
  @$core.pragma('dart2js:noInline')
  static SrcUserExplainReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SrcUserExplainReq>(create);
  static SrcUserExplainReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get srcId => $_getI64(0);
  @$pb.TagNumber(1)
  set srcId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get timestampBegin => $_getSZ(1);
  @$pb.TagNumber(2)
  set timestampBegin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampBegin() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampBegin() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get timestampEnd => $_getSZ(2);
  @$pb.TagNumber(3)
  set timestampEnd($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestampEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestampEnd() => clearField(3);
}

class SrcUserExplainRsp extends $pb.GeneratedMessage {
  factory SrcUserExplainRsp({
    $fixnum.Int64? msgCount,
  }) {
    final $result = create();
    if (msgCount != null) {
      $result.msgCount = msgCount;
    }
    return $result;
  }
  SrcUserExplainRsp._() : super();
  factory SrcUserExplainRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SrcUserExplainRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SrcUserExplainRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_room_explain'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgCount', protoName: 'msgCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SrcUserExplainRsp clone() => SrcUserExplainRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SrcUserExplainRsp copyWith(void Function(SrcUserExplainRsp) updates) => super.copyWith((message) => updates(message as SrcUserExplainRsp)) as SrcUserExplainRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SrcUserExplainRsp create() => SrcUserExplainRsp._();
  SrcUserExplainRsp createEmptyInstance() => create();
  static $pb.PbList<SrcUserExplainRsp> createRepeated() => $pb.PbList<SrcUserExplainRsp>();
  @$core.pragma('dart2js:noInline')
  static SrcUserExplainRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SrcUserExplainRsp>(create);
  static SrcUserExplainRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgCount => $_getI64(0);
  @$pb.TagNumber(1)
  set msgCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgCount() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
