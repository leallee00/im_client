//
//  Generated code. Do not modify.
//  source: pb_pub/nats_msg.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'comm.pb.dart' as $4;

export 'nats_msg.pbenum.dart';

/// 使用nats发送protobuf消息
class NatsMsgReq extends $pb.GeneratedMessage {
  factory NatsMsgReq({
    $4.PBCommData? pbCommData,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  NatsMsgReq._() : super();
  factory NatsMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NatsMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NatsMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..aOS(2, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NatsMsgReq clone() => NatsMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NatsMsgReq copyWith(void Function(NatsMsgReq) updates) => super.copyWith((message) => updates(message as NatsMsgReq)) as NatsMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NatsMsgReq create() => NatsMsgReq._();
  NatsMsgReq createEmptyInstance() => create();
  static $pb.PbList<NatsMsgReq> createRepeated() => $pb.PbList<NatsMsgReq>();
  @$core.pragma('dart2js:noInline')
  static NatsMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NatsMsgReq>(create);
  static NatsMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $4.PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData($4.PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  $4.PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get pbName => $_getSZ(1);
  @$pb.TagNumber(2)
  set pbName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPbName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPbName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get pbData => $_getN(2);
  @$pb.TagNumber(3)
  set pbData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPbData() => $_has(2);
  @$pb.TagNumber(3)
  void clearPbData() => clearField(3);
}

class NatsMsgRsp extends $pb.GeneratedMessage {
  factory NatsMsgRsp({
    $4.PBCommData? pbCommData,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $fixnum.Int64? code,
    $core.String? result,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (code != null) {
      $result.code = code;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  NatsMsgRsp._() : super();
  factory NatsMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NatsMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NatsMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..aOS(2, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..aInt64(4, _omitFieldNames ? '' : 'code')
    ..aOS(5, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NatsMsgRsp clone() => NatsMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NatsMsgRsp copyWith(void Function(NatsMsgRsp) updates) => super.copyWith((message) => updates(message as NatsMsgRsp)) as NatsMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NatsMsgRsp create() => NatsMsgRsp._();
  NatsMsgRsp createEmptyInstance() => create();
  static $pb.PbList<NatsMsgRsp> createRepeated() => $pb.PbList<NatsMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static NatsMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NatsMsgRsp>(create);
  static NatsMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $4.PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData($4.PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  $4.PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get pbName => $_getSZ(1);
  @$pb.TagNumber(2)
  set pbName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPbName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPbName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get pbData => $_getN(2);
  @$pb.TagNumber(3)
  set pbData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPbData() => $_has(2);
  @$pb.TagNumber(3)
  void clearPbData() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get code => $_getI64(3);
  @$pb.TagNumber(4)
  set code($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get result => $_getSZ(4);
  @$pb.TagNumber(5)
  set result($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasResult() => $_has(4);
  @$pb.TagNumber(5)
  void clearResult() => clearField(5);
}

/// 系统配置更改通知,admin 服务发上来
class SysCfgChangeNotify extends $pb.GeneratedMessage {
  factory SysCfgChangeNotify({
    $core.String? key,
    $core.String? value,
    $core.String? desc,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  SysCfgChangeNotify._() : super();
  factory SysCfgChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SysCfgChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SysCfgChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SysCfgChangeNotify clone() => SysCfgChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SysCfgChangeNotify copyWith(void Function(SysCfgChangeNotify) updates) => super.copyWith((message) => updates(message as SysCfgChangeNotify)) as SysCfgChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SysCfgChangeNotify create() => SysCfgChangeNotify._();
  SysCfgChangeNotify createEmptyInstance() => create();
  static $pb.PbList<SysCfgChangeNotify> createRepeated() => $pb.PbList<SysCfgChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static SysCfgChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SysCfgChangeNotify>(create);
  static SysCfgChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);
}

/// 系统配置更改通知,im 接收到SysCfgChangeNotify后，会把数据存到db，db存储成功后发送这个消息
/// 通知所有相关服务去更新配置，监听的sub还是一样的
class SysCfgChangeCanLoadFromNotify extends $pb.GeneratedMessage {
  factory SysCfgChangeCanLoadFromNotify({
    $core.String? key,
    $core.String? value,
    $core.String? desc,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  SysCfgChangeCanLoadFromNotify._() : super();
  factory SysCfgChangeCanLoadFromNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SysCfgChangeCanLoadFromNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SysCfgChangeCanLoadFromNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SysCfgChangeCanLoadFromNotify clone() => SysCfgChangeCanLoadFromNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SysCfgChangeCanLoadFromNotify copyWith(void Function(SysCfgChangeCanLoadFromNotify) updates) => super.copyWith((message) => updates(message as SysCfgChangeCanLoadFromNotify)) as SysCfgChangeCanLoadFromNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SysCfgChangeCanLoadFromNotify create() => SysCfgChangeCanLoadFromNotify._();
  SysCfgChangeCanLoadFromNotify createEmptyInstance() => create();
  static $pb.PbList<SysCfgChangeCanLoadFromNotify> createRepeated() => $pb.PbList<SysCfgChangeCanLoadFromNotify>();
  @$core.pragma('dart2js:noInline')
  static SysCfgChangeCanLoadFromNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SysCfgChangeCanLoadFromNotify>(create);
  static SysCfgChangeCanLoadFromNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);
}

/// 错误描述状态信息变更通知
class ErrStatusChangeNotify extends $pb.GeneratedMessage {
  factory ErrStatusChangeNotify({
    $core.int? appId,
    $core.String? language,
    $core.int? code,
    $core.String? desc,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (language != null) {
      $result.language = language;
    }
    if (code != null) {
      $result.code = code;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  ErrStatusChangeNotify._() : super();
  factory ErrStatusChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrStatusChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrStatusChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'appId', $pb.PbFieldType.O3, protoName: 'appId')
    ..aOS(2, _omitFieldNames ? '' : 'language')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrStatusChangeNotify clone() => ErrStatusChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrStatusChangeNotify copyWith(void Function(ErrStatusChangeNotify) updates) => super.copyWith((message) => updates(message as ErrStatusChangeNotify)) as ErrStatusChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrStatusChangeNotify create() => ErrStatusChangeNotify._();
  ErrStatusChangeNotify createEmptyInstance() => create();
  static $pb.PbList<ErrStatusChangeNotify> createRepeated() => $pb.PbList<ErrStatusChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static ErrStatusChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrStatusChangeNotify>(create);
  static ErrStatusChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get appId => $_getIZ(0);
  @$pb.TagNumber(1)
  set appId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get language => $_getSZ(1);
  @$pb.TagNumber(2)
  set language($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLanguage() => $_has(1);
  @$pb.TagNumber(2)
  void clearLanguage() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get code => $_getIZ(2);
  @$pb.TagNumber(3)
  set code($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get desc => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc() => clearField(4);
}

/// 批量创建机器人
class BatchCreateRobot extends $pb.GeneratedMessage {
  factory BatchCreateRobot({
    $core.int? count,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  BatchCreateRobot._() : super();
  factory BatchCreateRobot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatchCreateRobot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatchCreateRobot', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatchCreateRobot clone() => BatchCreateRobot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatchCreateRobot copyWith(void Function(BatchCreateRobot) updates) => super.copyWith((message) => updates(message as BatchCreateRobot)) as BatchCreateRobot;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchCreateRobot create() => BatchCreateRobot._();
  BatchCreateRobot createEmptyInstance() => create();
  static $pb.PbList<BatchCreateRobot> createRepeated() => $pb.PbList<BatchCreateRobot>();
  @$core.pragma('dart2js:noInline')
  static BatchCreateRobot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchCreateRobot>(create);
  static BatchCreateRobot? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
