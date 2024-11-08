//
//  Generated code. Do not modify.
//  source: pb_grpc/pub/grpc_pub.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/service.pbenum.dart' as $0;

class SendToAllUserReq extends $pb.GeneratedMessage {
  factory SendToAllUserReq({
    $core.Map<$core.String, $core.String>? exp,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  SendToAllUserReq._() : super();
  factory SendToAllUserReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendToAllUserReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendToAllUserReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pub'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'exp', entryClassName: 'SendToAllUserReq.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_grpc_pub'))
    ..aOS(2, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendToAllUserReq clone() => SendToAllUserReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendToAllUserReq copyWith(void Function(SendToAllUserReq) updates) => super.copyWith((message) => updates(message as SendToAllUserReq)) as SendToAllUserReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendToAllUserReq create() => SendToAllUserReq._();
  SendToAllUserReq createEmptyInstance() => create();
  static $pb.PbList<SendToAllUserReq> createRepeated() => $pb.PbList<SendToAllUserReq>();
  @$core.pragma('dart2js:noInline')
  static SendToAllUserReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendToAllUserReq>(create);
  static SendToAllUserReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get exp => $_getMap(0);

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

class SendToAimUserReq extends $pb.GeneratedMessage {
  factory SendToAimUserReq({
    $core.Map<$core.String, $core.String>? exp,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  SendToAimUserReq._() : super();
  factory SendToAimUserReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendToAimUserReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendToAimUserReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pub'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'exp', entryClassName: 'SendToAimUserReq.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_grpc_pub'))
    ..aOS(2, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..aInt64(4, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendToAimUserReq clone() => SendToAimUserReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendToAimUserReq copyWith(void Function(SendToAimUserReq) updates) => super.copyWith((message) => updates(message as SendToAimUserReq)) as SendToAimUserReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendToAimUserReq create() => SendToAimUserReq._();
  SendToAimUserReq createEmptyInstance() => create();
  static $pb.PbList<SendToAimUserReq> createRepeated() => $pb.PbList<SendToAimUserReq>();
  @$core.pragma('dart2js:noInline')
  static SendToAimUserReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendToAimUserReq>(create);
  static SendToAimUserReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get exp => $_getMap(0);

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
  $fixnum.Int64 get userId => $_getI64(3);
  @$pb.TagNumber(4)
  set userId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);
}

class SendToAimUserListReq extends $pb.GeneratedMessage {
  factory SendToAimUserListReq({
    $core.Map<$core.String, $core.String>? exp,
    $core.Iterable<$fixnum.Int64>? userList,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (userList != null) {
      $result.userList.addAll(userList);
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  SendToAimUserListReq._() : super();
  factory SendToAimUserListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendToAimUserListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendToAimUserListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pub'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'exp', entryClassName: 'SendToAimUserListReq.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_grpc_pub'))
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'userList', $pb.PbFieldType.K6, protoName: 'userList')
    ..aOS(3, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendToAimUserListReq clone() => SendToAimUserListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendToAimUserListReq copyWith(void Function(SendToAimUserListReq) updates) => super.copyWith((message) => updates(message as SendToAimUserListReq)) as SendToAimUserListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendToAimUserListReq create() => SendToAimUserListReq._();
  SendToAimUserListReq createEmptyInstance() => create();
  static $pb.PbList<SendToAimUserListReq> createRepeated() => $pb.PbList<SendToAimUserListReq>();
  @$core.pragma('dart2js:noInline')
  static SendToAimUserListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendToAimUserListReq>(create);
  static SendToAimUserListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get exp => $_getMap(0);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get userList => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get pbName => $_getSZ(2);
  @$pb.TagNumber(3)
  set pbName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPbName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPbName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pbData => $_getN(3);
  @$pb.TagNumber(4)
  set pbData($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPbData() => $_has(3);
  @$pb.TagNumber(4)
  void clearPbData() => clearField(4);
}

class SendToAllGroupReq extends $pb.GeneratedMessage {
  factory SendToAllGroupReq({
    $0.Service? serviceType,
    $core.Map<$core.String, $core.String>? exp,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (serviceType != null) {
      $result.serviceType = serviceType;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  SendToAllGroupReq._() : super();
  factory SendToAllGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendToAllGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendToAllGroupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pub'), createEmptyInstance: create)
    ..e<$0.Service>(1, _omitFieldNames ? '' : 'serviceType', $pb.PbFieldType.OE, protoName: 'serviceType', defaultOrMaker: $0.Service.gate, valueOf: $0.Service.valueOf, enumValues: $0.Service.values)
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'exp', entryClassName: 'SendToAllGroupReq.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_grpc_pub'))
    ..aOS(3, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendToAllGroupReq clone() => SendToAllGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendToAllGroupReq copyWith(void Function(SendToAllGroupReq) updates) => super.copyWith((message) => updates(message as SendToAllGroupReq)) as SendToAllGroupReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendToAllGroupReq create() => SendToAllGroupReq._();
  SendToAllGroupReq createEmptyInstance() => create();
  static $pb.PbList<SendToAllGroupReq> createRepeated() => $pb.PbList<SendToAllGroupReq>();
  @$core.pragma('dart2js:noInline')
  static SendToAllGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendToAllGroupReq>(create);
  static SendToAllGroupReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Service get serviceType => $_getN(0);
  @$pb.TagNumber(1)
  set serviceType($0.Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceType() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceType() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get exp => $_getMap(1);

  @$pb.TagNumber(3)
  $core.String get pbName => $_getSZ(2);
  @$pb.TagNumber(3)
  set pbName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPbName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPbName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pbData => $_getN(3);
  @$pb.TagNumber(4)
  set pbData($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPbData() => $_has(3);
  @$pb.TagNumber(4)
  void clearPbData() => clearField(4);
}

class SendToAimGroupReq extends $pb.GeneratedMessage {
  factory SendToAimGroupReq({
    $0.Service? serviceType,
    $core.Map<$core.String, $core.String>? exp,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (serviceType != null) {
      $result.serviceType = serviceType;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  SendToAimGroupReq._() : super();
  factory SendToAimGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendToAimGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendToAimGroupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pub'), createEmptyInstance: create)
    ..e<$0.Service>(1, _omitFieldNames ? '' : 'serviceType', $pb.PbFieldType.OE, protoName: 'serviceType', defaultOrMaker: $0.Service.gate, valueOf: $0.Service.valueOf, enumValues: $0.Service.values)
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'exp', entryClassName: 'SendToAimGroupReq.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_grpc_pub'))
    ..aOS(3, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendToAimGroupReq clone() => SendToAimGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendToAimGroupReq copyWith(void Function(SendToAimGroupReq) updates) => super.copyWith((message) => updates(message as SendToAimGroupReq)) as SendToAimGroupReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendToAimGroupReq create() => SendToAimGroupReq._();
  SendToAimGroupReq createEmptyInstance() => create();
  static $pb.PbList<SendToAimGroupReq> createRepeated() => $pb.PbList<SendToAimGroupReq>();
  @$core.pragma('dart2js:noInline')
  static SendToAimGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendToAimGroupReq>(create);
  static SendToAimGroupReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Service get serviceType => $_getN(0);
  @$pb.TagNumber(1)
  set serviceType($0.Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceType() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceType() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get exp => $_getMap(1);

  @$pb.TagNumber(3)
  $core.String get pbName => $_getSZ(2);
  @$pb.TagNumber(3)
  set pbName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPbName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPbName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pbData => $_getN(3);
  @$pb.TagNumber(4)
  set pbData($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPbData() => $_has(3);
  @$pb.TagNumber(4)
  void clearPbData() => clearField(4);
}

class SendToAimClientsReq extends $pb.GeneratedMessage {
  factory SendToAimClientsReq({
    $core.Iterable<$fixnum.Int64>? clients,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (clients != null) {
      $result.clients.addAll(clients);
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  SendToAimClientsReq._() : super();
  factory SendToAimClientsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendToAimClientsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendToAimClientsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_pub'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'clients', $pb.PbFieldType.K6)
    ..aOS(2, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendToAimClientsReq clone() => SendToAimClientsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendToAimClientsReq copyWith(void Function(SendToAimClientsReq) updates) => super.copyWith((message) => updates(message as SendToAimClientsReq)) as SendToAimClientsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendToAimClientsReq create() => SendToAimClientsReq._();
  SendToAimClientsReq createEmptyInstance() => create();
  static $pb.PbList<SendToAimClientsReq> createRepeated() => $pb.PbList<SendToAimClientsReq>();
  @$core.pragma('dart2js:noInline')
  static SendToAimClientsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendToAimClientsReq>(create);
  static SendToAimClientsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get clients => $_getList(0);

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
