//
//  Generated code. Do not modify.
//  source: pb_msg/groups/groups.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/comm.pbenum.dart' as $0;

class CreateGroupReq extends $pb.GeneratedMessage {
  factory CreateGroupReq() => create();
  CreateGroupReq._() : super();
  factory CreateGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGroupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGroupReq clone() => CreateGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGroupReq copyWith(void Function(CreateGroupReq) updates) => super.copyWith((message) => updates(message as CreateGroupReq)) as CreateGroupReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGroupReq create() => CreateGroupReq._();
  CreateGroupReq createEmptyInstance() => create();
  static $pb.PbList<CreateGroupReq> createRepeated() => $pb.PbList<CreateGroupReq>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGroupReq>(create);
  static CreateGroupReq? _defaultInstance;
}

class CreateGroupRsp extends $pb.GeneratedMessage {
  factory CreateGroupRsp({
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  CreateGroupRsp._() : super();
  factory CreateGroupRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGroupRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGroupRsp clone() => CreateGroupRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGroupRsp copyWith(void Function(CreateGroupRsp) updates) => super.copyWith((message) => updates(message as CreateGroupRsp)) as CreateGroupRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGroupRsp create() => CreateGroupRsp._();
  CreateGroupRsp createEmptyInstance() => create();
  static $pb.PbList<CreateGroupRsp> createRepeated() => $pb.PbList<CreateGroupRsp>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGroupRsp>(create);
  static CreateGroupRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class DeleteGroupReq extends $pb.GeneratedMessage {
  factory DeleteGroupReq() => create();
  DeleteGroupReq._() : super();
  factory DeleteGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteGroupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteGroupReq clone() => DeleteGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteGroupReq copyWith(void Function(DeleteGroupReq) updates) => super.copyWith((message) => updates(message as DeleteGroupReq)) as DeleteGroupReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteGroupReq create() => DeleteGroupReq._();
  DeleteGroupReq createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupReq> createRepeated() => $pb.PbList<DeleteGroupReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteGroupReq>(create);
  static DeleteGroupReq? _defaultInstance;
}

class DeleteGroupRsp extends $pb.GeneratedMessage {
  factory DeleteGroupRsp() => create();
  DeleteGroupRsp._() : super();
  factory DeleteGroupRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGroupRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteGroupRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteGroupRsp clone() => DeleteGroupRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteGroupRsp copyWith(void Function(DeleteGroupRsp) updates) => super.copyWith((message) => updates(message as DeleteGroupRsp)) as DeleteGroupRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteGroupRsp create() => DeleteGroupRsp._();
  DeleteGroupRsp createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupRsp> createRepeated() => $pb.PbList<DeleteGroupRsp>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteGroupRsp>(create);
  static DeleteGroupRsp? _defaultInstance;
}

class AddMemberReq extends $pb.GeneratedMessage {
  factory AddMemberReq({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  AddMemberReq._() : super();
  factory AddMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddMemberReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddMemberReq clone() => AddMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddMemberReq copyWith(void Function(AddMemberReq) updates) => super.copyWith((message) => updates(message as AddMemberReq)) as AddMemberReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddMemberReq create() => AddMemberReq._();
  AddMemberReq createEmptyInstance() => create();
  static $pb.PbList<AddMemberReq> createRepeated() => $pb.PbList<AddMemberReq>();
  @$core.pragma('dart2js:noInline')
  static AddMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddMemberReq>(create);
  static AddMemberReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class AddMemberRsp extends $pb.GeneratedMessage {
  factory AddMemberRsp() => create();
  AddMemberRsp._() : super();
  factory AddMemberRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddMemberRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddMemberRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddMemberRsp clone() => AddMemberRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddMemberRsp copyWith(void Function(AddMemberRsp) updates) => super.copyWith((message) => updates(message as AddMemberRsp)) as AddMemberRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddMemberRsp create() => AddMemberRsp._();
  AddMemberRsp createEmptyInstance() => create();
  static $pb.PbList<AddMemberRsp> createRepeated() => $pb.PbList<AddMemberRsp>();
  @$core.pragma('dart2js:noInline')
  static AddMemberRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddMemberRsp>(create);
  static AddMemberRsp? _defaultInstance;
}

class RemoveMemberReq extends $pb.GeneratedMessage {
  factory RemoveMemberReq({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  RemoveMemberReq._() : super();
  factory RemoveMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveMemberReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveMemberReq clone() => RemoveMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveMemberReq copyWith(void Function(RemoveMemberReq) updates) => super.copyWith((message) => updates(message as RemoveMemberReq)) as RemoveMemberReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveMemberReq create() => RemoveMemberReq._();
  RemoveMemberReq createEmptyInstance() => create();
  static $pb.PbList<RemoveMemberReq> createRepeated() => $pb.PbList<RemoveMemberReq>();
  @$core.pragma('dart2js:noInline')
  static RemoveMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveMemberReq>(create);
  static RemoveMemberReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class RemoveMemberRsp extends $pb.GeneratedMessage {
  factory RemoveMemberRsp() => create();
  RemoveMemberRsp._() : super();
  factory RemoveMemberRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveMemberRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveMemberRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveMemberRsp clone() => RemoveMemberRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveMemberRsp copyWith(void Function(RemoveMemberRsp) updates) => super.copyWith((message) => updates(message as RemoveMemberRsp)) as RemoveMemberRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveMemberRsp create() => RemoveMemberRsp._();
  RemoveMemberRsp createEmptyInstance() => create();
  static $pb.PbList<RemoveMemberRsp> createRepeated() => $pb.PbList<RemoveMemberRsp>();
  @$core.pragma('dart2js:noInline')
  static RemoveMemberRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveMemberRsp>(create);
  static RemoveMemberRsp? _defaultInstance;
}

class UpdateMemberReq extends $pb.GeneratedMessage {
  factory UpdateMemberReq({
    $core.bool? online,
    $core.String? addr,
  }) {
    final $result = create();
    if (online != null) {
      $result.online = online;
    }
    if (addr != null) {
      $result.addr = addr;
    }
    return $result;
  }
  UpdateMemberReq._() : super();
  factory UpdateMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateMemberReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'online')
    ..aOS(2, _omitFieldNames ? '' : 'addr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateMemberReq clone() => UpdateMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateMemberReq copyWith(void Function(UpdateMemberReq) updates) => super.copyWith((message) => updates(message as UpdateMemberReq)) as UpdateMemberReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateMemberReq create() => UpdateMemberReq._();
  UpdateMemberReq createEmptyInstance() => create();
  static $pb.PbList<UpdateMemberReq> createRepeated() => $pb.PbList<UpdateMemberReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMemberReq>(create);
  static UpdateMemberReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get online => $_getBF(0);
  @$pb.TagNumber(1)
  set online($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOnline() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnline() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get addr => $_getSZ(1);
  @$pb.TagNumber(2)
  set addr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddr() => clearField(2);
}

class UpdateMemberRsp extends $pb.GeneratedMessage {
  factory UpdateMemberRsp() => create();
  UpdateMemberRsp._() : super();
  factory UpdateMemberRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMemberRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateMemberRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateMemberRsp clone() => UpdateMemberRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateMemberRsp copyWith(void Function(UpdateMemberRsp) updates) => super.copyWith((message) => updates(message as UpdateMemberRsp)) as UpdateMemberRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateMemberRsp create() => UpdateMemberRsp._();
  UpdateMemberRsp createEmptyInstance() => create();
  static $pb.PbList<UpdateMemberRsp> createRepeated() => $pb.PbList<UpdateMemberRsp>();
  @$core.pragma('dart2js:noInline')
  static UpdateMemberRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMemberRsp>(create);
  static UpdateMemberRsp? _defaultInstance;
}

class UpdateUserReq extends $pb.GeneratedMessage {
  factory UpdateUserReq({
    $core.bool? online,
    $core.String? addr,
  }) {
    final $result = create();
    if (online != null) {
      $result.online = online;
    }
    if (addr != null) {
      $result.addr = addr;
    }
    return $result;
  }
  UpdateUserReq._() : super();
  factory UpdateUserReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'online')
    ..aOS(2, _omitFieldNames ? '' : 'addr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserReq clone() => UpdateUserReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserReq copyWith(void Function(UpdateUserReq) updates) => super.copyWith((message) => updates(message as UpdateUserReq)) as UpdateUserReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserReq create() => UpdateUserReq._();
  UpdateUserReq createEmptyInstance() => create();
  static $pb.PbList<UpdateUserReq> createRepeated() => $pb.PbList<UpdateUserReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserReq>(create);
  static UpdateUserReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get online => $_getBF(0);
  @$pb.TagNumber(1)
  set online($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOnline() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnline() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get addr => $_getSZ(1);
  @$pb.TagNumber(2)
  set addr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddr() => clearField(2);
}

class UpdateUserRsp extends $pb.GeneratedMessage {
  factory UpdateUserRsp() => create();
  UpdateUserRsp._() : super();
  factory UpdateUserRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserRsp clone() => UpdateUserRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserRsp copyWith(void Function(UpdateUserRsp) updates) => super.copyWith((message) => updates(message as UpdateUserRsp)) as UpdateUserRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserRsp create() => UpdateUserRsp._();
  UpdateUserRsp createEmptyInstance() => create();
  static $pb.PbList<UpdateUserRsp> createRepeated() => $pb.PbList<UpdateUserRsp>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserRsp>(create);
  static UpdateUserRsp? _defaultInstance;
}

/// 使用 aimid 查
class GroupMembersReq extends $pb.GeneratedMessage {
  factory GroupMembersReq() => create();
  GroupMembersReq._() : super();
  factory GroupMembersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupMembersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupMembersReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupMembersReq clone() => GroupMembersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupMembersReq copyWith(void Function(GroupMembersReq) updates) => super.copyWith((message) => updates(message as GroupMembersReq)) as GroupMembersReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupMembersReq create() => GroupMembersReq._();
  GroupMembersReq createEmptyInstance() => create();
  static $pb.PbList<GroupMembersReq> createRepeated() => $pb.PbList<GroupMembersReq>();
  @$core.pragma('dart2js:noInline')
  static GroupMembersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupMembersReq>(create);
  static GroupMembersReq? _defaultInstance;
}

class GroupMembersRsp extends $pb.GeneratedMessage {
  factory GroupMembersRsp({
    $core.Iterable<$fixnum.Int64>? members,
  }) {
    final $result = create();
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  GroupMembersRsp._() : super();
  factory GroupMembersRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupMembersRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupMembersRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'members', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupMembersRsp clone() => GroupMembersRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupMembersRsp copyWith(void Function(GroupMembersRsp) updates) => super.copyWith((message) => updates(message as GroupMembersRsp)) as GroupMembersRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupMembersRsp create() => GroupMembersRsp._();
  GroupMembersRsp createEmptyInstance() => create();
  static $pb.PbList<GroupMembersRsp> createRepeated() => $pb.PbList<GroupMembersRsp>();
  @$core.pragma('dart2js:noInline')
  static GroupMembersRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupMembersRsp>(create);
  static GroupMembersRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get members => $_getList(0);
}

/// 使用 srcid 查
class MemberGroupsReq extends $pb.GeneratedMessage {
  factory MemberGroupsReq() => create();
  MemberGroupsReq._() : super();
  factory MemberGroupsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberGroupsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberGroupsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberGroupsReq clone() => MemberGroupsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberGroupsReq copyWith(void Function(MemberGroupsReq) updates) => super.copyWith((message) => updates(message as MemberGroupsReq)) as MemberGroupsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberGroupsReq create() => MemberGroupsReq._();
  MemberGroupsReq createEmptyInstance() => create();
  static $pb.PbList<MemberGroupsReq> createRepeated() => $pb.PbList<MemberGroupsReq>();
  @$core.pragma('dart2js:noInline')
  static MemberGroupsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberGroupsReq>(create);
  static MemberGroupsReq? _defaultInstance;
}

class MemberGroupsRsp extends $pb.GeneratedMessage {
  factory MemberGroupsRsp({
    $core.Iterable<$fixnum.Int64>? groups,
  }) {
    final $result = create();
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  MemberGroupsRsp._() : super();
  factory MemberGroupsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberGroupsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberGroupsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberGroupsRsp clone() => MemberGroupsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberGroupsRsp copyWith(void Function(MemberGroupsRsp) updates) => super.copyWith((message) => updates(message as MemberGroupsRsp)) as MemberGroupsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberGroupsRsp create() => MemberGroupsRsp._();
  MemberGroupsRsp createEmptyInstance() => create();
  static $pb.PbList<MemberGroupsRsp> createRepeated() => $pb.PbList<MemberGroupsRsp>();
  @$core.pragma('dart2js:noInline')
  static MemberGroupsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberGroupsRsp>(create);
  static MemberGroupsRsp? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get groups => $_getList(0);
}

/// groupid 是业务的group
/// aimid 填本服务的groupid
class GroupMessageReq extends $pb.GeneratedMessage {
  factory GroupMessageReq({
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  GroupMessageReq._() : super();
  factory GroupMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupMessageReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupMessageReq clone() => GroupMessageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupMessageReq copyWith(void Function(GroupMessageReq) updates) => super.copyWith((message) => updates(message as GroupMessageReq)) as GroupMessageReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupMessageReq create() => GroupMessageReq._();
  GroupMessageReq createEmptyInstance() => create();
  static $pb.PbList<GroupMessageReq> createRepeated() => $pb.PbList<GroupMessageReq>();
  @$core.pragma('dart2js:noInline')
  static GroupMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupMessageReq>(create);
  static GroupMessageReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pbName => $_getSZ(0);
  @$pb.TagNumber(1)
  set pbName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pbData => $_getN(1);
  @$pb.TagNumber(2)
  set pbData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPbData() => $_has(1);
  @$pb.TagNumber(2)
  void clearPbData() => clearField(2);
}

class GroupMessageRsp extends $pb.GeneratedMessage {
  factory GroupMessageRsp() => create();
  GroupMessageRsp._() : super();
  factory GroupMessageRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupMessageRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupMessageRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupMessageRsp clone() => GroupMessageRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupMessageRsp copyWith(void Function(GroupMessageRsp) updates) => super.copyWith((message) => updates(message as GroupMessageRsp)) as GroupMessageRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupMessageRsp create() => GroupMessageRsp._();
  GroupMessageRsp createEmptyInstance() => create();
  static $pb.PbList<GroupMessageRsp> createRepeated() => $pb.PbList<GroupMessageRsp>();
  @$core.pragma('dart2js:noInline')
  static GroupMessageRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupMessageRsp>(create);
  static GroupMessageRsp? _defaultInstance;
}

class Member extends $pb.GeneratedMessage {
  factory Member({
    $fixnum.Int64? id,
    $0.CLIENT_TYPE? client,
    $core.bool? online,
    $core.String? addr,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (client != null) {
      $result.client = client;
    }
    if (online != null) {
      $result.online = online;
    }
    if (addr != null) {
      $result.addr = addr;
    }
    return $result;
  }
  Member._() : super();
  factory Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Member', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_groups'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..e<$0.CLIENT_TYPE>(2, _omitFieldNames ? '' : 'client', $pb.PbFieldType.OE, defaultOrMaker: $0.CLIENT_TYPE.NONE, valueOf: $0.CLIENT_TYPE.valueOf, enumValues: $0.CLIENT_TYPE.values)
    ..aOB(3, _omitFieldNames ? '' : 'online')
    ..aOS(4, _omitFieldNames ? '' : 'addr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member clone() => Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member copyWith(void Function(Member) updates) => super.copyWith((message) => updates(message as Member)) as Member;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Member create() => Member._();
  Member createEmptyInstance() => create();
  static $pb.PbList<Member> createRepeated() => $pb.PbList<Member>();
  @$core.pragma('dart2js:noInline')
  static Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member>(create);
  static Member? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.CLIENT_TYPE get client => $_getN(1);
  @$pb.TagNumber(2)
  set client($0.CLIENT_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasClient() => $_has(1);
  @$pb.TagNumber(2)
  void clearClient() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get online => $_getBF(2);
  @$pb.TagNumber(3)
  set online($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOnline() => $_has(2);
  @$pb.TagNumber(3)
  void clearOnline() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get addr => $_getSZ(3);
  @$pb.TagNumber(4)
  set addr($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddr() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddr() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
