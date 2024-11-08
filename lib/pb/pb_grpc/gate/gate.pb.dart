//
//  Generated code. Do not modify.
//  source: pb_grpc/gate/gate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/service.pbenum.dart' as $3;

/// 进入房间通知
class UserEnterRoomNotify extends $pb.GeneratedMessage {
  factory UserEnterRoomNotify({
    $fixnum.Int64? userId,
    $3.Service? serviceType,
    $core.int? groupId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (serviceType != null) {
      $result.serviceType = serviceType;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  UserEnterRoomNotify._() : super();
  factory UserEnterRoomNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserEnterRoomNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserEnterRoomNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_gate'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..e<$3.Service>(2, _omitFieldNames ? '' : 'serviceType', $pb.PbFieldType.OE, protoName: 'serviceType', defaultOrMaker: $3.Service.gate, valueOf: $3.Service.valueOf, enumValues: $3.Service.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'groupId', $pb.PbFieldType.O3, protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserEnterRoomNotify clone() => UserEnterRoomNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserEnterRoomNotify copyWith(void Function(UserEnterRoomNotify) updates) => super.copyWith((message) => updates(message as UserEnterRoomNotify)) as UserEnterRoomNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserEnterRoomNotify create() => UserEnterRoomNotify._();
  UserEnterRoomNotify createEmptyInstance() => create();
  static $pb.PbList<UserEnterRoomNotify> createRepeated() => $pb.PbList<UserEnterRoomNotify>();
  @$core.pragma('dart2js:noInline')
  static UserEnterRoomNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserEnterRoomNotify>(create);
  static UserEnterRoomNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Service get serviceType => $_getN(1);
  @$pb.TagNumber(2)
  set serviceType($3.Service v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasServiceType() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get groupId => $_getIZ(2);
  @$pb.TagNumber(3)
  set groupId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroupId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroupId() => clearField(3);
}

/// 离开房间通知
class UserExitRoomNotify extends $pb.GeneratedMessage {
  factory UserExitRoomNotify({
    $fixnum.Int64? userId,
    $3.Service? serviceType,
    $core.int? groupId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (serviceType != null) {
      $result.serviceType = serviceType;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  UserExitRoomNotify._() : super();
  factory UserExitRoomNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserExitRoomNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserExitRoomNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_gate'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..e<$3.Service>(2, _omitFieldNames ? '' : 'serviceType', $pb.PbFieldType.OE, protoName: 'serviceType', defaultOrMaker: $3.Service.gate, valueOf: $3.Service.valueOf, enumValues: $3.Service.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'groupId', $pb.PbFieldType.O3, protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserExitRoomNotify clone() => UserExitRoomNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserExitRoomNotify copyWith(void Function(UserExitRoomNotify) updates) => super.copyWith((message) => updates(message as UserExitRoomNotify)) as UserExitRoomNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserExitRoomNotify create() => UserExitRoomNotify._();
  UserExitRoomNotify createEmptyInstance() => create();
  static $pb.PbList<UserExitRoomNotify> createRepeated() => $pb.PbList<UserExitRoomNotify>();
  @$core.pragma('dart2js:noInline')
  static UserExitRoomNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserExitRoomNotify>(create);
  static UserExitRoomNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Service get serviceType => $_getN(1);
  @$pb.TagNumber(2)
  set serviceType($3.Service v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasServiceType() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get groupId => $_getIZ(2);
  @$pb.TagNumber(3)
  set groupId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroupId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroupId() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
