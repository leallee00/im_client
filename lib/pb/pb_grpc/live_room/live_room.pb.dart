//
//  Generated code. Do not modify.
//  source: pb_grpc/live_room/live_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/any.pb.dart' as $5;
import '../../pb_pub/service.pbenum.dart' as $6;
import 'live_room.pbenum.dart';

export 'live_room.pbenum.dart';

/// 三体推流回调
class TTTCallBackParamReq extends $pb.GeneratedMessage {
  factory TTTCallBackParamReq({
    $core.String? channel,
    $core.int? code,
    $core.String? stream,
  }) {
    final $result = create();
    if (channel != null) {
      $result.channel = channel;
    }
    if (code != null) {
      $result.code = code;
    }
    if (stream != null) {
      $result.stream = stream;
    }
    return $result;
  }
  TTTCallBackParamReq._() : super();
  factory TTTCallBackParamReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTTCallBackParamReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TTTCallBackParamReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Channel', protoName: 'Channel')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Code', $pb.PbFieldType.O3, protoName: 'Code')
    ..aOS(3, _omitFieldNames ? '' : 'Stream', protoName: 'Stream')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTTCallBackParamReq clone() => TTTCallBackParamReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTTCallBackParamReq copyWith(void Function(TTTCallBackParamReq) updates) => super.copyWith((message) => updates(message as TTTCallBackParamReq)) as TTTCallBackParamReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TTTCallBackParamReq create() => TTTCallBackParamReq._();
  TTTCallBackParamReq createEmptyInstance() => create();
  static $pb.PbList<TTTCallBackParamReq> createRepeated() => $pb.PbList<TTTCallBackParamReq>();
  @$core.pragma('dart2js:noInline')
  static TTTCallBackParamReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTTCallBackParamReq>(create);
  static TTTCallBackParamReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channel => $_getSZ(0);
  @$pb.TagNumber(1)
  set channel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannel() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get stream => $_getSZ(2);
  @$pb.TagNumber(3)
  set stream($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStream() => $_has(2);
  @$pb.TagNumber(3)
  void clearStream() => clearField(3);
}

class AnchorInfoReq extends $pb.GeneratedMessage {
  factory AnchorInfoReq() => create();
  AnchorInfoReq._() : super();
  factory AnchorInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnchorInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnchorInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnchorInfoReq clone() => AnchorInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnchorInfoReq copyWith(void Function(AnchorInfoReq) updates) => super.copyWith((message) => updates(message as AnchorInfoReq)) as AnchorInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnchorInfoReq create() => AnchorInfoReq._();
  AnchorInfoReq createEmptyInstance() => create();
  static $pb.PbList<AnchorInfoReq> createRepeated() => $pb.PbList<AnchorInfoReq>();
  @$core.pragma('dart2js:noInline')
  static AnchorInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnchorInfoReq>(create);
  static AnchorInfoReq? _defaultInstance;
}

class AnchorInfoRsp extends $pb.GeneratedMessage {
  factory AnchorInfoRsp({
    $fixnum.Int64? iD,
    $core.String? username,
    $core.String? headerImageOriginal,
    $fixnum.Int64? rank,
    $fixnum.Int64? victoryTimes,
    $core.String? pullStreamAddress,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
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
    return $result;
  }
  AnchorInfoRsp._() : super();
  factory AnchorInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnchorInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnchorInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOS(2, _omitFieldNames ? '' : 'Username', protoName: 'Username')
    ..aOS(3, _omitFieldNames ? '' : 'HeaderImageOriginal', protoName: 'HeaderImageOriginal')
    ..aInt64(4, _omitFieldNames ? '' : 'Rank', protoName: 'Rank')
    ..aInt64(5, _omitFieldNames ? '' : 'VictoryTimes', protoName: 'VictoryTimes')
    ..aOS(6, _omitFieldNames ? '' : 'PullStreamAddress', protoName: 'PullStreamAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnchorInfoRsp clone() => AnchorInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnchorInfoRsp copyWith(void Function(AnchorInfoRsp) updates) => super.copyWith((message) => updates(message as AnchorInfoRsp)) as AnchorInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnchorInfoRsp create() => AnchorInfoRsp._();
  AnchorInfoRsp createEmptyInstance() => create();
  static $pb.PbList<AnchorInfoRsp> createRepeated() => $pb.PbList<AnchorInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static AnchorInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnchorInfoRsp>(create);
  static AnchorInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

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
}

class Listener extends $pb.GeneratedMessage {
  factory Listener({
    $6.Service? service,
    $core.String? fullMethod,
    $fixnum.Int64? hashKey,
    $fixnum.Int64? deadline,
    $5.Any? data,
  }) {
    final $result = create();
    if (service != null) {
      $result.service = service;
    }
    if (fullMethod != null) {
      $result.fullMethod = fullMethod;
    }
    if (hashKey != null) {
      $result.hashKey = hashKey;
    }
    if (deadline != null) {
      $result.deadline = deadline;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  Listener._() : super();
  factory Listener.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Listener.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Listener', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..e<$6.Service>(1, _omitFieldNames ? '' : 'service', $pb.PbFieldType.OE, defaultOrMaker: $6.Service.gate, valueOf: $6.Service.valueOf, enumValues: $6.Service.values)
    ..aOS(2, _omitFieldNames ? '' : 'fullMethod', protoName: 'fullMethod')
    ..aInt64(3, _omitFieldNames ? '' : 'hashKey', protoName: 'hashKey')
    ..aInt64(4, _omitFieldNames ? '' : 'deadline')
    ..aOM<$5.Any>(5, _omitFieldNames ? '' : 'data', subBuilder: $5.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Listener clone() => Listener()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Listener copyWith(void Function(Listener) updates) => super.copyWith((message) => updates(message as Listener)) as Listener;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Listener create() => Listener._();
  Listener createEmptyInstance() => create();
  static $pb.PbList<Listener> createRepeated() => $pb.PbList<Listener>();
  @$core.pragma('dart2js:noInline')
  static Listener getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Listener>(create);
  static Listener? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Service get service => $_getN(0);
  @$pb.TagNumber(1)
  set service($6.Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fullMethod => $_getSZ(1);
  @$pb.TagNumber(2)
  set fullMethod($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFullMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullMethod() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get hashKey => $_getI64(2);
  @$pb.TagNumber(3)
  set hashKey($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHashKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearHashKey() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get deadline => $_getI64(3);
  @$pb.TagNumber(4)
  set deadline($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeadline() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeadline() => clearField(4);

  @$pb.TagNumber(5)
  $5.Any get data => $_getN(4);
  @$pb.TagNumber(5)
  set data($5.Any v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasData() => $_has(4);
  @$pb.TagNumber(5)
  void clearData() => clearField(5);
  @$pb.TagNumber(5)
  $5.Any ensureData() => $_ensure(4);
}

class Notice extends $pb.GeneratedMessage {
  factory Notice({
    EVENT? event,
    $5.Any? in_2,
    $5.Any? data,
  }) {
    final $result = create();
    if (event != null) {
      $result.event = event;
    }
    if (in_2 != null) {
      $result.in_2 = in_2;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  Notice._() : super();
  factory Notice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notice', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..e<EVENT>(1, _omitFieldNames ? '' : 'event', $pb.PbFieldType.OE, defaultOrMaker: EVENT.UNKNOWN, valueOf: EVENT.valueOf, enumValues: EVENT.values)
    ..aOM<$5.Any>(2, _omitFieldNames ? '' : 'in', subBuilder: $5.Any.create)
    ..aOM<$5.Any>(3, _omitFieldNames ? '' : 'data', subBuilder: $5.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notice clone() => Notice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notice copyWith(void Function(Notice) updates) => super.copyWith((message) => updates(message as Notice)) as Notice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notice create() => Notice._();
  Notice createEmptyInstance() => create();
  static $pb.PbList<Notice> createRepeated() => $pb.PbList<Notice>();
  @$core.pragma('dart2js:noInline')
  static Notice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notice>(create);
  static Notice? _defaultInstance;

  @$pb.TagNumber(1)
  EVENT get event => $_getN(0);
  @$pb.TagNumber(1)
  set event(EVENT v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);

  @$pb.TagNumber(2)
  $5.Any get in_2 => $_getN(1);
  @$pb.TagNumber(2)
  set in_2($5.Any v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIn_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearIn_2() => clearField(2);
  @$pb.TagNumber(2)
  $5.Any ensureIn_2() => $_ensure(1);

  @$pb.TagNumber(3)
  $5.Any get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($5.Any v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
  @$pb.TagNumber(3)
  $5.Any ensureData() => $_ensure(2);
}

class Fields extends $pb.GeneratedMessage {
  factory Fields({
    $5.Any? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  Fields._() : super();
  factory Fields.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Fields.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Fields', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..aOM<$5.Any>(1, _omitFieldNames ? '' : 'data', subBuilder: $5.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Fields clone() => Fields()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Fields copyWith(void Function(Fields) updates) => super.copyWith((message) => updates(message as Fields)) as Fields;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fields create() => Fields._();
  Fields createEmptyInstance() => create();
  static $pb.PbList<Fields> createRepeated() => $pb.PbList<Fields>();
  @$core.pragma('dart2js:noInline')
  static Fields getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fields>(create);
  static Fields? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Any get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($5.Any v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  $5.Any ensureData() => $_ensure(0);
}

class PKLockReq extends $pb.GeneratedMessage {
  factory PKLockReq() => create();
  PKLockReq._() : super();
  factory PKLockReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKLockReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKLockReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKLockReq clone() => PKLockReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKLockReq copyWith(void Function(PKLockReq) updates) => super.copyWith((message) => updates(message as PKLockReq)) as PKLockReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKLockReq create() => PKLockReq._();
  PKLockReq createEmptyInstance() => create();
  static $pb.PbList<PKLockReq> createRepeated() => $pb.PbList<PKLockReq>();
  @$core.pragma('dart2js:noInline')
  static PKLockReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKLockReq>(create);
  static PKLockReq? _defaultInstance;
}

class PKLockRsp extends $pb.GeneratedMessage {
  factory PKLockRsp() => create();
  PKLockRsp._() : super();
  factory PKLockRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKLockRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKLockRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKLockRsp clone() => PKLockRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKLockRsp copyWith(void Function(PKLockRsp) updates) => super.copyWith((message) => updates(message as PKLockRsp)) as PKLockRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKLockRsp create() => PKLockRsp._();
  PKLockRsp createEmptyInstance() => create();
  static $pb.PbList<PKLockRsp> createRepeated() => $pb.PbList<PKLockRsp>();
  @$core.pragma('dart2js:noInline')
  static PKLockRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKLockRsp>(create);
  static PKLockRsp? _defaultInstance;
}

class PKUnlockReq extends $pb.GeneratedMessage {
  factory PKUnlockReq() => create();
  PKUnlockReq._() : super();
  factory PKUnlockReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKUnlockReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKUnlockReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKUnlockReq clone() => PKUnlockReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKUnlockReq copyWith(void Function(PKUnlockReq) updates) => super.copyWith((message) => updates(message as PKUnlockReq)) as PKUnlockReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKUnlockReq create() => PKUnlockReq._();
  PKUnlockReq createEmptyInstance() => create();
  static $pb.PbList<PKUnlockReq> createRepeated() => $pb.PbList<PKUnlockReq>();
  @$core.pragma('dart2js:noInline')
  static PKUnlockReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKUnlockReq>(create);
  static PKUnlockReq? _defaultInstance;
}

class PKUnlockRsp extends $pb.GeneratedMessage {
  factory PKUnlockRsp() => create();
  PKUnlockRsp._() : super();
  factory PKUnlockRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKUnlockRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKUnlockRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKUnlockRsp clone() => PKUnlockRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKUnlockRsp copyWith(void Function(PKUnlockRsp) updates) => super.copyWith((message) => updates(message as PKUnlockRsp)) as PKUnlockRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKUnlockRsp create() => PKUnlockRsp._();
  PKUnlockRsp createEmptyInstance() => create();
  static $pb.PbList<PKUnlockRsp> createRepeated() => $pb.PbList<PKUnlockRsp>();
  @$core.pragma('dart2js:noInline')
  static PKUnlockRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKUnlockRsp>(create);
  static PKUnlockRsp? _defaultInstance;
}

class PKLockingReq extends $pb.GeneratedMessage {
  factory PKLockingReq() => create();
  PKLockingReq._() : super();
  factory PKLockingReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKLockingReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKLockingReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKLockingReq clone() => PKLockingReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKLockingReq copyWith(void Function(PKLockingReq) updates) => super.copyWith((message) => updates(message as PKLockingReq)) as PKLockingReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKLockingReq create() => PKLockingReq._();
  PKLockingReq createEmptyInstance() => create();
  static $pb.PbList<PKLockingReq> createRepeated() => $pb.PbList<PKLockingReq>();
  @$core.pragma('dart2js:noInline')
  static PKLockingReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKLockingReq>(create);
  static PKLockingReq? _defaultInstance;
}

class PKLockingRsp extends $pb.GeneratedMessage {
  factory PKLockingRsp() => create();
  PKLockingRsp._() : super();
  factory PKLockingRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKLockingRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKLockingRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_liveRoom'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKLockingRsp clone() => PKLockingRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKLockingRsp copyWith(void Function(PKLockingRsp) updates) => super.copyWith((message) => updates(message as PKLockingRsp)) as PKLockingRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKLockingRsp create() => PKLockingRsp._();
  PKLockingRsp createEmptyInstance() => create();
  static $pb.PbList<PKLockingRsp> createRepeated() => $pb.PbList<PKLockingRsp>();
  @$core.pragma('dart2js:noInline')
  static PKLockingRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKLockingRsp>(create);
  static PKLockingRsp? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
