//
//  Generated code. Do not modify.
//  source: pb_pub/gm_notify.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'gm_notify.pbenum.dart';

export 'gm_notify.pbenum.dart';

///  gm全站通知频道
/// topic:"t_gm_notify", channel: "c_gate_%ip_%port"
///  每个gate一个channel，接收全量消息 如: c_gate_120.27.213.73_8101,
///  后台发送 {"imType":1,"optUser":10002,"optTime":22222222,"resion":"test"} 到nsq
/// curl -d '{"imType":1,"optUser":10002,"optTime":22222222,"resion":"test"}' http://127.0.0.1:4151/pub?topic=t_gm_notify
///  IM系统切换通知
class GMChangeIMNotify extends $pb.GeneratedMessage {
  factory GMChangeIMNotify({
    IM_TYPE? imType,
    $fixnum.Int64? optUser,
    $fixnum.Int64? optTime,
    $core.String? resion,
  }) {
    final $result = create();
    if (imType != null) {
      $result.imType = imType;
    }
    if (optUser != null) {
      $result.optUser = optUser;
    }
    if (optTime != null) {
      $result.optTime = optTime;
    }
    if (resion != null) {
      $result.resion = resion;
    }
    return $result;
  }
  GMChangeIMNotify._() : super();
  factory GMChangeIMNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GMChangeIMNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GMChangeIMNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..e<IM_TYPE>(1, _omitFieldNames ? '' : 'imType', $pb.PbFieldType.OE, protoName: 'imType', defaultOrMaker: IM_TYPE.IM_TYPE_YZIM, valueOf: IM_TYPE.valueOf, enumValues: IM_TYPE.values)
    ..aInt64(2, _omitFieldNames ? '' : 'optUser', protoName: 'optUser')
    ..aInt64(3, _omitFieldNames ? '' : 'optTime', protoName: 'optTime')
    ..aOS(4, _omitFieldNames ? '' : 'resion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GMChangeIMNotify clone() => GMChangeIMNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GMChangeIMNotify copyWith(void Function(GMChangeIMNotify) updates) => super.copyWith((message) => updates(message as GMChangeIMNotify)) as GMChangeIMNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GMChangeIMNotify create() => GMChangeIMNotify._();
  GMChangeIMNotify createEmptyInstance() => create();
  static $pb.PbList<GMChangeIMNotify> createRepeated() => $pb.PbList<GMChangeIMNotify>();
  @$core.pragma('dart2js:noInline')
  static GMChangeIMNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GMChangeIMNotify>(create);
  static GMChangeIMNotify? _defaultInstance;

  @$pb.TagNumber(1)
  IM_TYPE get imType => $_getN(0);
  @$pb.TagNumber(1)
  set imType(IM_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasImType() => $_has(0);
  @$pb.TagNumber(1)
  void clearImType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get optUser => $_getI64(1);
  @$pb.TagNumber(2)
  set optUser($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptUser() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get optTime => $_getI64(2);
  @$pb.TagNumber(3)
  set optTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOptTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get resion => $_getSZ(3);
  @$pb.TagNumber(4)
  set resion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasResion() => $_has(3);
  @$pb.TagNumber(4)
  void clearResion() => clearField(4);
}

/// topic:"t_sys_to_aim_user", channel: "c_sys_to_aim_user"
///  通知客户端上传日志,本消息需要回执，存离线
///  后台发送 {"optUser":10002,"optTime":22222222,"resion":"test"} 到nsq
/// curl -d '{"aimUser":12219035,"optUser":10002,"optTime":22222222,"resion":"test"}' http://127.0.0.1:4151/pub?topic=t_sys_to_aim_user
class GMPPullLogNotify extends $pb.GeneratedMessage {
  factory GMPPullLogNotify({
    $fixnum.Int64? aimUser,
    $fixnum.Int64? optUser,
    $fixnum.Int64? optTime,
    $core.String? reason,
    $core.String? startTime,
    $core.String? endTime,
    $core.int? source,
  }) {
    final $result = create();
    if (aimUser != null) {
      $result.aimUser = aimUser;
    }
    if (optUser != null) {
      $result.optUser = optUser;
    }
    if (optTime != null) {
      $result.optTime = optTime;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (source != null) {
      $result.source = source;
    }
    return $result;
  }
  GMPPullLogNotify._() : super();
  factory GMPPullLogNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GMPPullLogNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GMPPullLogNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aimUser', protoName: 'aimUser')
    ..aInt64(2, _omitFieldNames ? '' : 'optUser', protoName: 'optUser')
    ..aInt64(3, _omitFieldNames ? '' : 'optTime', protoName: 'optTime')
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOS(5, _omitFieldNames ? '' : 'startTime', protoName: 'startTime')
    ..aOS(6, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'source', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GMPPullLogNotify clone() => GMPPullLogNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GMPPullLogNotify copyWith(void Function(GMPPullLogNotify) updates) => super.copyWith((message) => updates(message as GMPPullLogNotify)) as GMPPullLogNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GMPPullLogNotify create() => GMPPullLogNotify._();
  GMPPullLogNotify createEmptyInstance() => create();
  static $pb.PbList<GMPPullLogNotify> createRepeated() => $pb.PbList<GMPPullLogNotify>();
  @$core.pragma('dart2js:noInline')
  static GMPPullLogNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GMPPullLogNotify>(create);
  static GMPPullLogNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aimUser => $_getI64(0);
  @$pb.TagNumber(1)
  set aimUser($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAimUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearAimUser() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get optUser => $_getI64(1);
  @$pb.TagNumber(2)
  set optUser($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptUser() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get optTime => $_getI64(2);
  @$pb.TagNumber(3)
  set optTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOptTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get startTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set startTime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get endTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set endTime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get source => $_getIZ(6);
  @$pb.TagNumber(7)
  set source($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSource() => $_has(6);
  @$pb.TagNumber(7)
  void clearSource() => clearField(7);
}

/// 客户端日志上传结果回执给服务器，msgsn沿用GMPPullLogNotify携带的sn
class UserPushLogResult extends $pb.GeneratedMessage {
  factory UserPushLogResult({
    $core.int? result,
    $core.String? resultReason,
    $core.String? logPath,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (resultReason != null) {
      $result.resultReason = resultReason;
    }
    if (logPath != null) {
      $result.logPath = logPath;
    }
    return $result;
  }
  UserPushLogResult._() : super();
  factory UserPushLogResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserPushLogResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserPushLogResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'resultReason', protoName: 'resultReason')
    ..aOS(3, _omitFieldNames ? '' : 'logPath', protoName: 'logPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserPushLogResult clone() => UserPushLogResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserPushLogResult copyWith(void Function(UserPushLogResult) updates) => super.copyWith((message) => updates(message as UserPushLogResult)) as UserPushLogResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPushLogResult create() => UserPushLogResult._();
  UserPushLogResult createEmptyInstance() => create();
  static $pb.PbList<UserPushLogResult> createRepeated() => $pb.PbList<UserPushLogResult>();
  @$core.pragma('dart2js:noInline')
  static UserPushLogResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserPushLogResult>(create);
  static UserPushLogResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get result => $_getIZ(0);
  @$pb.TagNumber(1)
  set result($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get resultReason => $_getSZ(1);
  @$pb.TagNumber(2)
  set resultReason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResultReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearResultReason() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get logPath => $_getSZ(2);
  @$pb.TagNumber(3)
  set logPath($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLogPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogPath() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
