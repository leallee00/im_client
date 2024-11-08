//
//  Generated code. Do not modify.
//  source: pb_msg/admin/admin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// 读取srcuser的黑名单列表
/// Admin/Register
class AdminLogonRsp extends $pb.GeneratedMessage {
  factory AdminLogonRsp({
    $fixnum.Int64? adminId,
    $core.String? adminUser,
    $core.String? authorization,
  }) {
    final $result = create();
    if (adminId != null) {
      $result.adminId = adminId;
    }
    if (adminUser != null) {
      $result.adminUser = adminUser;
    }
    if (authorization != null) {
      $result.authorization = authorization;
    }
    return $result;
  }
  AdminLogonRsp._() : super();
  factory AdminLogonRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminLogonRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdminLogonRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_admin'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'adminId')
    ..aOS(2, _omitFieldNames ? '' : 'adminUser')
    ..aOS(3, _omitFieldNames ? '' : 'authorization')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminLogonRsp clone() => AdminLogonRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminLogonRsp copyWith(void Function(AdminLogonRsp) updates) => super.copyWith((message) => updates(message as AdminLogonRsp)) as AdminLogonRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdminLogonRsp create() => AdminLogonRsp._();
  AdminLogonRsp createEmptyInstance() => create();
  static $pb.PbList<AdminLogonRsp> createRepeated() => $pb.PbList<AdminLogonRsp>();
  @$core.pragma('dart2js:noInline')
  static AdminLogonRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminLogonRsp>(create);
  static AdminLogonRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get adminId => $_getI64(0);
  @$pb.TagNumber(1)
  set adminId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdminId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdminId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get adminUser => $_getSZ(1);
  @$pb.TagNumber(2)
  set adminUser($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAdminUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdminUser() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get authorization => $_getSZ(2);
  @$pb.TagNumber(3)
  set authorization($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthorization() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthorization() => clearField(3);
}

class LogonUPReq extends $pb.GeneratedMessage {
  factory LogonUPReq({
    $core.String? adminName,
    $core.String? adminPasswd,
    $core.String? host,
  }) {
    final $result = create();
    if (adminName != null) {
      $result.adminName = adminName;
    }
    if (adminPasswd != null) {
      $result.adminPasswd = adminPasswd;
    }
    if (host != null) {
      $result.host = host;
    }
    return $result;
  }
  LogonUPReq._() : super();
  factory LogonUPReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogonUPReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LogonUPReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_admin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'adminName')
    ..aOS(2, _omitFieldNames ? '' : 'adminPasswd')
    ..aOS(3, _omitFieldNames ? '' : 'host')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogonUPReq clone() => LogonUPReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogonUPReq copyWith(void Function(LogonUPReq) updates) => super.copyWith((message) => updates(message as LogonUPReq)) as LogonUPReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogonUPReq create() => LogonUPReq._();
  LogonUPReq createEmptyInstance() => create();
  static $pb.PbList<LogonUPReq> createRepeated() => $pb.PbList<LogonUPReq>();
  @$core.pragma('dart2js:noInline')
  static LogonUPReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogonUPReq>(create);
  static LogonUPReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get adminName => $_getSZ(0);
  @$pb.TagNumber(1)
  set adminName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdminName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdminName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get adminPasswd => $_getSZ(1);
  @$pb.TagNumber(2)
  set adminPasswd($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAdminPasswd() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdminPasswd() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get host => $_getSZ(2);
  @$pb.TagNumber(3)
  set host($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHost() => $_has(2);
  @$pb.TagNumber(3)
  void clearHost() => clearField(3);
}

class UpdateTable extends $pb.GeneratedMessage {
  factory UpdateTable({
    $core.String? updateCol,
    $core.String? updateValue,
    $core.Map<$core.String, $core.String>? exps,
  }) {
    final $result = create();
    if (updateCol != null) {
      $result.updateCol = updateCol;
    }
    if (updateValue != null) {
      $result.updateValue = updateValue;
    }
    if (exps != null) {
      $result.exps.addAll(exps);
    }
    return $result;
  }
  UpdateTable._() : super();
  factory UpdateTable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTable', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_admin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'updateCol')
    ..aOS(2, _omitFieldNames ? '' : 'updateValue')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'exps', entryClassName: 'UpdateTable.ExpsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_admin'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTable clone() => UpdateTable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTable copyWith(void Function(UpdateTable) updates) => super.copyWith((message) => updates(message as UpdateTable)) as UpdateTable;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTable create() => UpdateTable._();
  UpdateTable createEmptyInstance() => create();
  static $pb.PbList<UpdateTable> createRepeated() => $pb.PbList<UpdateTable>();
  @$core.pragma('dart2js:noInline')
  static UpdateTable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTable>(create);
  static UpdateTable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get updateCol => $_getSZ(0);
  @$pb.TagNumber(1)
  set updateCol($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateCol() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateCol() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get updateValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set updateValue($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get exps => $_getMap(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
