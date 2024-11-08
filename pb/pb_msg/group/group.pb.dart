//
//  Generated code. Do not modify.
//  source: pb_msg/group/group.proto
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
import 'group.pbenum.dart';

export 'group.pbenum.dart';

/// 创建群聊,创建成功后群发给memberIds中的用户
class CreateGroupReq extends $pb.GeneratedMessage {
  factory CreateGroupReq({
    $core.String? name,
    $core.Iterable<$fixnum.Int64>? memberIds,
    $core.int? memberCountLimit,
    GroupType? groupType,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (memberIds != null) {
      $result.memberIds.addAll(memberIds);
    }
    if (memberCountLimit != null) {
      $result.memberCountLimit = memberCountLimit;
    }
    if (groupType != null) {
      $result.groupType = groupType;
    }
    return $result;
  }
  CreateGroupReq._() : super();
  factory CreateGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGroupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'memberIds', $pb.PbFieldType.K6, protoName: 'memberIds')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'memberCountLimit', $pb.PbFieldType.O3, protoName: 'memberCountLimit')
    ..e<GroupType>(5, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.OE, protoName: 'groupType', defaultOrMaker: GroupType.Comm, valueOf: GroupType.valueOf, enumValues: GroupType.values)
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

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get memberIds => $_getList(1);

  /// 	bool needReceipt = 3; // 是否需要展示阅读状态，展示阅读状态的群最大支持100人
  @$pb.TagNumber(4)
  $core.int get memberCountLimit => $_getIZ(2);
  @$pb.TagNumber(4)
  set memberCountLimit($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasMemberCountLimit() => $_has(2);
  @$pb.TagNumber(4)
  void clearMemberCountLimit() => clearField(4);

  @$pb.TagNumber(5)
  GroupType get groupType => $_getN(3);
  @$pb.TagNumber(5)
  set groupType(GroupType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGroupType() => $_has(3);
  @$pb.TagNumber(5)
  void clearGroupType() => clearField(5);
}

class CreateGroupRsp extends $pb.GeneratedMessage {
  factory CreateGroupRsp({
    $fixnum.Int64? groupId,
    $core.int? memberCountLimit,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (memberCountLimit != null) {
      $result.memberCountLimit = memberCountLimit;
    }
    return $result;
  }
  CreateGroupRsp._() : super();
  factory CreateGroupRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGroupRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'memberCountLimit', $pb.PbFieldType.O3, protoName: 'memberCountLimit')
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

  /// 	bool needReceipt = 2; // 是否需要展示阅读状态，展示阅读状态的群最大支持100人
  @$pb.TagNumber(3)
  $core.int get memberCountLimit => $_getIZ(1);
  @$pb.TagNumber(3)
  set memberCountLimit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasMemberCountLimit() => $_has(1);
  @$pb.TagNumber(3)
  void clearMemberCountLimit() => clearField(3);
}

class CreateGroupNotify extends $pb.GeneratedMessage {
  factory CreateGroupNotify({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateGroupNotify._() : super();
  factory CreateGroupNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGroupNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGroupNotify clone() => CreateGroupNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGroupNotify copyWith(void Function(CreateGroupNotify) updates) => super.copyWith((message) => updates(message as CreateGroupNotify)) as CreateGroupNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGroupNotify create() => CreateGroupNotify._();
  CreateGroupNotify createEmptyInstance() => create();
  static $pb.PbList<CreateGroupNotify> createRepeated() => $pb.PbList<CreateGroupNotify>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGroupNotify>(create);
  static CreateGroupNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// 群主或者管理员(role>0)邀请他人入群,消息会被转发给被邀请方
class InviteReq extends $pb.GeneratedMessage {
  factory InviteReq({
    $core.Iterable<$fixnum.Int64>? inviteeIds,
    $fixnum.Int64? shareMsgCount,
  }) {
    final $result = create();
    if (inviteeIds != null) {
      $result.inviteeIds.addAll(inviteeIds);
    }
    if (shareMsgCount != null) {
      $result.shareMsgCount = shareMsgCount;
    }
    return $result;
  }
  InviteReq._() : super();
  factory InviteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'inviteeIds', $pb.PbFieldType.K6, protoName: 'inviteeIds')
    ..aInt64(2, _omitFieldNames ? '' : 'shareMsgCount', protoName: 'shareMsgCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteReq clone() => InviteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteReq copyWith(void Function(InviteReq) updates) => super.copyWith((message) => updates(message as InviteReq)) as InviteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteReq create() => InviteReq._();
  InviteReq createEmptyInstance() => create();
  static $pb.PbList<InviteReq> createRepeated() => $pb.PbList<InviteReq>();
  @$core.pragma('dart2js:noInline')
  static InviteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteReq>(create);
  static InviteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get inviteeIds => $_getList(0);

  /// 携带消息数
  @$pb.TagNumber(2)
  $fixnum.Int64 get shareMsgCount => $_getI64(1);
  @$pb.TagNumber(2)
  set shareMsgCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShareMsgCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearShareMsgCount() => clearField(2);
}

class InviteRsp extends $pb.GeneratedMessage {
  factory InviteRsp() => create();
  InviteRsp._() : super();
  factory InviteRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteRsp clone() => InviteRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteRsp copyWith(void Function(InviteRsp) updates) => super.copyWith((message) => updates(message as InviteRsp)) as InviteRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteRsp create() => InviteRsp._();
  InviteRsp createEmptyInstance() => create();
  static $pb.PbList<InviteRsp> createRepeated() => $pb.PbList<InviteRsp>();
  @$core.pragma('dart2js:noInline')
  static InviteRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteRsp>(create);
  static InviteRsp? _defaultInstance;
}

/// 被邀请入群的人应答是否接受邀请,消息会被转发给发出邀请的人
class InviteAnswerReq extends $pb.GeneratedMessage {
  factory InviteAnswerReq({
    $core.bool? agree,
  }) {
    final $result = create();
    if (agree != null) {
      $result.agree = agree;
    }
    return $result;
  }
  InviteAnswerReq._() : super();
  factory InviteAnswerReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteAnswerReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteAnswerReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'agree')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteAnswerReq clone() => InviteAnswerReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteAnswerReq copyWith(void Function(InviteAnswerReq) updates) => super.copyWith((message) => updates(message as InviteAnswerReq)) as InviteAnswerReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteAnswerReq create() => InviteAnswerReq._();
  InviteAnswerReq createEmptyInstance() => create();
  static $pb.PbList<InviteAnswerReq> createRepeated() => $pb.PbList<InviteAnswerReq>();
  @$core.pragma('dart2js:noInline')
  static InviteAnswerReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteAnswerReq>(create);
  static InviteAnswerReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get agree => $_getBF(0);
  @$pb.TagNumber(1)
  set agree($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgree() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgree() => clearField(1);
}

class InviteAnswerRsp extends $pb.GeneratedMessage {
  factory InviteAnswerRsp() => create();
  InviteAnswerRsp._() : super();
  factory InviteAnswerRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteAnswerRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteAnswerRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteAnswerRsp clone() => InviteAnswerRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteAnswerRsp copyWith(void Function(InviteAnswerRsp) updates) => super.copyWith((message) => updates(message as InviteAnswerRsp)) as InviteAnswerRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteAnswerRsp create() => InviteAnswerRsp._();
  InviteAnswerRsp createEmptyInstance() => create();
  static $pb.PbList<InviteAnswerRsp> createRepeated() => $pb.PbList<InviteAnswerRsp>();
  @$core.pragma('dart2js:noInline')
  static InviteAnswerRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteAnswerRsp>(create);
  static InviteAnswerRsp? _defaultInstance;
}

/// 用户接受邀请后广播全群
class InviteeAgreedNotify extends $pb.GeneratedMessage {
  factory InviteeAgreedNotify({
    $fixnum.Int64? inviterId,
    $fixnum.Int64? inviteeId,
    $core.int? memberCount,
  }) {
    final $result = create();
    if (inviterId != null) {
      $result.inviterId = inviterId;
    }
    if (inviteeId != null) {
      $result.inviteeId = inviteeId;
    }
    if (memberCount != null) {
      $result.memberCount = memberCount;
    }
    return $result;
  }
  InviteeAgreedNotify._() : super();
  factory InviteeAgreedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteeAgreedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteeAgreedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'inviterId', protoName: 'inviterId')
    ..aInt64(2, _omitFieldNames ? '' : 'inviteeId', protoName: 'inviteeId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'memberCount', $pb.PbFieldType.O3, protoName: 'memberCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteeAgreedNotify clone() => InviteeAgreedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteeAgreedNotify copyWith(void Function(InviteeAgreedNotify) updates) => super.copyWith((message) => updates(message as InviteeAgreedNotify)) as InviteeAgreedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteeAgreedNotify create() => InviteeAgreedNotify._();
  InviteeAgreedNotify createEmptyInstance() => create();
  static $pb.PbList<InviteeAgreedNotify> createRepeated() => $pb.PbList<InviteeAgreedNotify>();
  @$core.pragma('dart2js:noInline')
  static InviteeAgreedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteeAgreedNotify>(create);
  static InviteeAgreedNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviterId => $_getI64(0);
  @$pb.TagNumber(1)
  set inviterId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviterId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get inviteeId => $_getI64(1);
  @$pb.TagNumber(2)
  set inviteeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviteeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviteeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get memberCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set memberCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMemberCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMemberCount() => clearField(3);
}

/// 批量邀请加入通知 可以展示为 xxx邀请xxx，xxx入群
class InviteesAgreedNotify extends $pb.GeneratedMessage {
  factory InviteesAgreedNotify({
    $fixnum.Int64? inviterId,
    $core.Iterable<$fixnum.Int64>? inviteeIds,
    $core.Iterable<$core.String>? inviteeNames,
    $core.int? memberCount,
  }) {
    final $result = create();
    if (inviterId != null) {
      $result.inviterId = inviterId;
    }
    if (inviteeIds != null) {
      $result.inviteeIds.addAll(inviteeIds);
    }
    if (inviteeNames != null) {
      $result.inviteeNames.addAll(inviteeNames);
    }
    if (memberCount != null) {
      $result.memberCount = memberCount;
    }
    return $result;
  }
  InviteesAgreedNotify._() : super();
  factory InviteesAgreedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteesAgreedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteesAgreedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'inviterId', protoName: 'inviterId')
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'inviteeIds', $pb.PbFieldType.K6, protoName: 'inviteeIds')
    ..pPS(3, _omitFieldNames ? '' : 'inviteeNames', protoName: 'inviteeNames')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'memberCount', $pb.PbFieldType.O3, protoName: 'memberCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteesAgreedNotify clone() => InviteesAgreedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteesAgreedNotify copyWith(void Function(InviteesAgreedNotify) updates) => super.copyWith((message) => updates(message as InviteesAgreedNotify)) as InviteesAgreedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteesAgreedNotify create() => InviteesAgreedNotify._();
  InviteesAgreedNotify createEmptyInstance() => create();
  static $pb.PbList<InviteesAgreedNotify> createRepeated() => $pb.PbList<InviteesAgreedNotify>();
  @$core.pragma('dart2js:noInline')
  static InviteesAgreedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteesAgreedNotify>(create);
  static InviteesAgreedNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviterId => $_getI64(0);
  @$pb.TagNumber(1)
  set inviterId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviterId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get inviteeIds => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get inviteeNames => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get memberCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set memberCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMemberCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearMemberCount() => clearField(4);
}

/// 用户申请入群,消息会被转发给群主及管理员
class ApplyReq extends $pb.GeneratedMessage {
  factory ApplyReq({
    $core.String? scanCodeKey,
  }) {
    final $result = create();
    if (scanCodeKey != null) {
      $result.scanCodeKey = scanCodeKey;
    }
    return $result;
  }
  ApplyReq._() : super();
  factory ApplyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'scanCodeKey', protoName: 'scanCodeKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyReq clone() => ApplyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyReq copyWith(void Function(ApplyReq) updates) => super.copyWith((message) => updates(message as ApplyReq)) as ApplyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyReq create() => ApplyReq._();
  ApplyReq createEmptyInstance() => create();
  static $pb.PbList<ApplyReq> createRepeated() => $pb.PbList<ApplyReq>();
  @$core.pragma('dart2js:noInline')
  static ApplyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyReq>(create);
  static ApplyReq? _defaultInstance;

  /// 如果是扫码入群则填写此参数
  @$pb.TagNumber(1)
  $core.String get scanCodeKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set scanCodeKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScanCodeKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearScanCodeKey() => clearField(1);
}

class ApplyRsp extends $pb.GeneratedMessage {
  factory ApplyRsp({
    $core.String? scanCodeKey,
    ApplyRspStatus? applyStatus,
  }) {
    final $result = create();
    if (scanCodeKey != null) {
      $result.scanCodeKey = scanCodeKey;
    }
    if (applyStatus != null) {
      $result.applyStatus = applyStatus;
    }
    return $result;
  }
  ApplyRsp._() : super();
  factory ApplyRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'scanCodeKey', protoName: 'scanCodeKey')
    ..e<ApplyRspStatus>(2, _omitFieldNames ? '' : 'applyStatus', $pb.PbFieldType.OE, protoName: 'applyStatus', defaultOrMaker: ApplyRspStatus.WaitConfirm, valueOf: ApplyRspStatus.valueOf, enumValues: ApplyRspStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyRsp clone() => ApplyRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyRsp copyWith(void Function(ApplyRsp) updates) => super.copyWith((message) => updates(message as ApplyRsp)) as ApplyRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyRsp create() => ApplyRsp._();
  ApplyRsp createEmptyInstance() => create();
  static $pb.PbList<ApplyRsp> createRepeated() => $pb.PbList<ApplyRsp>();
  @$core.pragma('dart2js:noInline')
  static ApplyRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyRsp>(create);
  static ApplyRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scanCodeKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set scanCodeKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScanCodeKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearScanCodeKey() => clearField(1);

  @$pb.TagNumber(2)
  ApplyRspStatus get applyStatus => $_getN(1);
  @$pb.TagNumber(2)
  set applyStatus(ApplyRspStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplyStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplyStatus() => clearField(2);
}

/// 群主或管理员应答是否批准入群申请,消息会被转发给申请人
class ApplyAnswerReq extends $pb.GeneratedMessage {
  factory ApplyAnswerReq({
    $core.bool? agree,
  }) {
    final $result = create();
    if (agree != null) {
      $result.agree = agree;
    }
    return $result;
  }
  ApplyAnswerReq._() : super();
  factory ApplyAnswerReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyAnswerReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyAnswerReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'agree')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyAnswerReq clone() => ApplyAnswerReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyAnswerReq copyWith(void Function(ApplyAnswerReq) updates) => super.copyWith((message) => updates(message as ApplyAnswerReq)) as ApplyAnswerReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyAnswerReq create() => ApplyAnswerReq._();
  ApplyAnswerReq createEmptyInstance() => create();
  static $pb.PbList<ApplyAnswerReq> createRepeated() => $pb.PbList<ApplyAnswerReq>();
  @$core.pragma('dart2js:noInline')
  static ApplyAnswerReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyAnswerReq>(create);
  static ApplyAnswerReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get agree => $_getBF(0);
  @$pb.TagNumber(1)
  set agree($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgree() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgree() => clearField(1);
}

class ApplyAnswerRsp extends $pb.GeneratedMessage {
  factory ApplyAnswerRsp() => create();
  ApplyAnswerRsp._() : super();
  factory ApplyAnswerRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyAnswerRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyAnswerRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyAnswerRsp clone() => ApplyAnswerRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyAnswerRsp copyWith(void Function(ApplyAnswerRsp) updates) => super.copyWith((message) => updates(message as ApplyAnswerRsp)) as ApplyAnswerRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyAnswerRsp create() => ApplyAnswerRsp._();
  ApplyAnswerRsp createEmptyInstance() => create();
  static $pb.PbList<ApplyAnswerRsp> createRepeated() => $pb.PbList<ApplyAnswerRsp>();
  @$core.pragma('dart2js:noInline')
  static ApplyAnswerRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyAnswerRsp>(create);
  static ApplyAnswerRsp? _defaultInstance;
}

/// 群主或管理员批准后广播全群
class approverApprovedNotify extends $pb.GeneratedMessage {
  factory approverApprovedNotify({
    $fixnum.Int64? applicantId,
    $fixnum.Int64? approverId,
    EnterGroupType? enterGroutType,
    $core.int? memberCount,
  }) {
    final $result = create();
    if (applicantId != null) {
      $result.applicantId = applicantId;
    }
    if (approverId != null) {
      $result.approverId = approverId;
    }
    if (enterGroutType != null) {
      $result.enterGroutType = enterGroutType;
    }
    if (memberCount != null) {
      $result.memberCount = memberCount;
    }
    return $result;
  }
  approverApprovedNotify._() : super();
  factory approverApprovedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory approverApprovedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'approverApprovedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'applicantId', protoName: 'applicantId')
    ..aInt64(2, _omitFieldNames ? '' : 'approverId', protoName: 'approverId')
    ..e<EnterGroupType>(3, _omitFieldNames ? '' : 'enterGroutType', $pb.PbFieldType.OE, protoName: 'enterGroutType', defaultOrMaker: EnterGroupType.Create, valueOf: EnterGroupType.valueOf, enumValues: EnterGroupType.values)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'memberCount', $pb.PbFieldType.O3, protoName: 'memberCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  approverApprovedNotify clone() => approverApprovedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  approverApprovedNotify copyWith(void Function(approverApprovedNotify) updates) => super.copyWith((message) => updates(message as approverApprovedNotify)) as approverApprovedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static approverApprovedNotify create() => approverApprovedNotify._();
  approverApprovedNotify createEmptyInstance() => create();
  static $pb.PbList<approverApprovedNotify> createRepeated() => $pb.PbList<approverApprovedNotify>();
  @$core.pragma('dart2js:noInline')
  static approverApprovedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<approverApprovedNotify>(create);
  static approverApprovedNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get applicantId => $_getI64(0);
  @$pb.TagNumber(1)
  set applicantId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicantId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get approverId => $_getI64(1);
  @$pb.TagNumber(2)
  set approverId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApproverId() => $_has(1);
  @$pb.TagNumber(2)
  void clearApproverId() => clearField(2);

  /// 加入方式
  @$pb.TagNumber(3)
  EnterGroupType get enterGroutType => $_getN(2);
  @$pb.TagNumber(3)
  set enterGroutType(EnterGroupType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnterGroutType() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnterGroutType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get memberCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set memberCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMemberCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearMemberCount() => clearField(4);
}

/// 用于展示群列表的群信息
class Group extends $pb.GeneratedMessage {
  factory Group({
    $fixnum.Int64? groupId,
    $core.String? name,
    $core.String? avatar,
    $core.bool? top,
    $core.bool? newMemberRemindClosed,
    GroupType? groupType,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (top != null) {
      $result.top = top;
    }
    if (newMemberRemindClosed != null) {
      $result.newMemberRemindClosed = newMemberRemindClosed;
    }
    if (groupType != null) {
      $result.groupType = groupType;
    }
    return $result;
  }
  Group._() : super();
  factory Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Group', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..aOB(4, _omitFieldNames ? '' : 'top')
    ..aOB(5, _omitFieldNames ? '' : 'newMemberRemindClosed', protoName: 'newMemberRemindClosed')
    ..e<GroupType>(6, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.OE, protoName: 'groupType', defaultOrMaker: GroupType.Comm, valueOf: GroupType.valueOf, enumValues: GroupType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Group clone() => Group()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Group copyWith(void Function(Group) updates) => super.copyWith((message) => updates(message as Group)) as Group;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get top => $_getBF(3);
  @$pb.TagNumber(4)
  set top($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTop() => $_has(3);
  @$pb.TagNumber(4)
  void clearTop() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get newMemberRemindClosed => $_getBF(4);
  @$pb.TagNumber(5)
  set newMemberRemindClosed($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNewMemberRemindClosed() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewMemberRemindClosed() => clearField(5);

  @$pb.TagNumber(6)
  GroupType get groupType => $_getN(5);
  @$pb.TagNumber(6)
  set groupType(GroupType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupType() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupType() => clearField(6);
}

/// 用户获取自己的群列表
class GroupsReq extends $pb.GeneratedMessage {
  factory GroupsReq() => create();
  GroupsReq._() : super();
  factory GroupsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupsReq clone() => GroupsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupsReq copyWith(void Function(GroupsReq) updates) => super.copyWith((message) => updates(message as GroupsReq)) as GroupsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupsReq create() => GroupsReq._();
  GroupsReq createEmptyInstance() => create();
  static $pb.PbList<GroupsReq> createRepeated() => $pb.PbList<GroupsReq>();
  @$core.pragma('dart2js:noInline')
  static GroupsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupsReq>(create);
  static GroupsReq? _defaultInstance;
}

class GroupsRsp extends $pb.GeneratedMessage {
  factory GroupsRsp({
    $core.Iterable<Group>? groups,
  }) {
    final $result = create();
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  GroupsRsp._() : super();
  factory GroupsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..pc<Group>(1, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupsRsp clone() => GroupsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupsRsp copyWith(void Function(GroupsRsp) updates) => super.copyWith((message) => updates(message as GroupsRsp)) as GroupsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupsRsp create() => GroupsRsp._();
  GroupsRsp createEmptyInstance() => create();
  static $pb.PbList<GroupsRsp> createRepeated() => $pb.PbList<GroupsRsp>();
  @$core.pragma('dart2js:noInline')
  static GroupsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupsRsp>(create);
  static GroupsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Group> get groups => $_getList(0);
}

/// @experiment
class GroupIdsReq extends $pb.GeneratedMessage {
  factory GroupIdsReq() => create();
  GroupIdsReq._() : super();
  factory GroupIdsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupIdsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupIdsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupIdsReq clone() => GroupIdsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupIdsReq copyWith(void Function(GroupIdsReq) updates) => super.copyWith((message) => updates(message as GroupIdsReq)) as GroupIdsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupIdsReq create() => GroupIdsReq._();
  GroupIdsReq createEmptyInstance() => create();
  static $pb.PbList<GroupIdsReq> createRepeated() => $pb.PbList<GroupIdsReq>();
  @$core.pragma('dart2js:noInline')
  static GroupIdsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupIdsReq>(create);
  static GroupIdsReq? _defaultInstance;
}

class GroupIdsRsp extends $pb.GeneratedMessage {
  factory GroupIdsRsp({
    $core.Iterable<$fixnum.Int64>? ids,
  }) {
    final $result = create();
    if (ids != null) {
      $result.ids.addAll(ids);
    }
    return $result;
  }
  GroupIdsRsp._() : super();
  factory GroupIdsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupIdsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupIdsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupIdsRsp clone() => GroupIdsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupIdsRsp copyWith(void Function(GroupIdsRsp) updates) => super.copyWith((message) => updates(message as GroupIdsRsp)) as GroupIdsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupIdsRsp create() => GroupIdsRsp._();
  GroupIdsRsp createEmptyInstance() => create();
  static $pb.PbList<GroupIdsRsp> createRepeated() => $pb.PbList<GroupIdsRsp>();
  @$core.pragma('dart2js:noInline')
  static GroupIdsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupIdsRsp>(create);
  static GroupIdsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get ids => $_getList(0);
}

/// 获取指定群的详细信息
class GroupDetailReq extends $pb.GeneratedMessage {
  factory GroupDetailReq() => create();
  GroupDetailReq._() : super();
  factory GroupDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupDetailReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupDetailReq clone() => GroupDetailReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupDetailReq copyWith(void Function(GroupDetailReq) updates) => super.copyWith((message) => updates(message as GroupDetailReq)) as GroupDetailReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupDetailReq create() => GroupDetailReq._();
  GroupDetailReq createEmptyInstance() => create();
  static $pb.PbList<GroupDetailReq> createRepeated() => $pb.PbList<GroupDetailReq>();
  @$core.pragma('dart2js:noInline')
  static GroupDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupDetailReq>(create);
  static GroupDetailReq? _defaultInstance;
}

class GroupDetailRsp extends $pb.GeneratedMessage {
  factory GroupDetailRsp({
    $fixnum.Int64? groupId,
    $core.String? name,
    $core.bool? disbanded,
    $core.bool? banned,
    $core.int? memberCount,
    $core.String? notice,
    $fixnum.Int64? ownerId,
    $core.String? avatar,
    $core.String? bgPic,
    $core.int? memberCountLimit,
    $core.int? inviteRoleLimit,
    $core.bool? top,
    $core.String? remark,
    $core.int? memberChatBannedStatus,
    $core.bool? newMemberRemindClosed,
    $core.bool? scanCodeJoinGroupSwitchStatus,
    $core.String? scanCodeJoinGroupParam,
    $core.int? noticeVersion,
    $core.bool? freeJoin,
    GroupType? groupType,
    $core.bool? forbiddenAddFriendsToEachOther,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (disbanded != null) {
      $result.disbanded = disbanded;
    }
    if (banned != null) {
      $result.banned = banned;
    }
    if (memberCount != null) {
      $result.memberCount = memberCount;
    }
    if (notice != null) {
      $result.notice = notice;
    }
    if (ownerId != null) {
      $result.ownerId = ownerId;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (bgPic != null) {
      $result.bgPic = bgPic;
    }
    if (memberCountLimit != null) {
      $result.memberCountLimit = memberCountLimit;
    }
    if (inviteRoleLimit != null) {
      $result.inviteRoleLimit = inviteRoleLimit;
    }
    if (top != null) {
      $result.top = top;
    }
    if (remark != null) {
      $result.remark = remark;
    }
    if (memberChatBannedStatus != null) {
      $result.memberChatBannedStatus = memberChatBannedStatus;
    }
    if (newMemberRemindClosed != null) {
      $result.newMemberRemindClosed = newMemberRemindClosed;
    }
    if (scanCodeJoinGroupSwitchStatus != null) {
      $result.scanCodeJoinGroupSwitchStatus = scanCodeJoinGroupSwitchStatus;
    }
    if (scanCodeJoinGroupParam != null) {
      $result.scanCodeJoinGroupParam = scanCodeJoinGroupParam;
    }
    if (noticeVersion != null) {
      $result.noticeVersion = noticeVersion;
    }
    if (freeJoin != null) {
      $result.freeJoin = freeJoin;
    }
    if (groupType != null) {
      $result.groupType = groupType;
    }
    if (forbiddenAddFriendsToEachOther != null) {
      $result.forbiddenAddFriendsToEachOther = forbiddenAddFriendsToEachOther;
    }
    return $result;
  }
  GroupDetailRsp._() : super();
  factory GroupDetailRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupDetailRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupDetailRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'disbanded')
    ..aOB(4, _omitFieldNames ? '' : 'banned')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'memberCount', $pb.PbFieldType.O3, protoName: 'memberCount')
    ..aOS(6, _omitFieldNames ? '' : 'notice')
    ..aInt64(7, _omitFieldNames ? '' : 'ownerId', protoName: 'ownerId')
    ..aOS(8, _omitFieldNames ? '' : 'avatar')
    ..aOS(9, _omitFieldNames ? '' : 'bgPic', protoName: 'bgPic')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'memberCountLimit', $pb.PbFieldType.O3, protoName: 'memberCountLimit')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'inviteRoleLimit', $pb.PbFieldType.O3, protoName: 'inviteRoleLimit')
    ..aOB(13, _omitFieldNames ? '' : 'top')
    ..aOS(14, _omitFieldNames ? '' : 'remark')
    ..a<$core.int>(15, _omitFieldNames ? '' : 'memberChatBannedStatus', $pb.PbFieldType.O3, protoName: 'memberChatBannedStatus')
    ..aOB(16, _omitFieldNames ? '' : 'newMemberRemindClosed', protoName: 'newMemberRemindClosed')
    ..aOB(17, _omitFieldNames ? '' : 'ScanCodeJoinGroupSwitchStatus', protoName: 'ScanCodeJoinGroupSwitchStatus')
    ..aOS(18, _omitFieldNames ? '' : 'ScanCodeJoinGroupParam', protoName: 'ScanCodeJoinGroupParam')
    ..a<$core.int>(19, _omitFieldNames ? '' : 'noticeVersion', $pb.PbFieldType.O3, protoName: 'noticeVersion')
    ..aOB(20, _omitFieldNames ? '' : 'freeJoin', protoName: 'freeJoin')
    ..e<GroupType>(21, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.OE, protoName: 'groupType', defaultOrMaker: GroupType.Comm, valueOf: GroupType.valueOf, enumValues: GroupType.values)
    ..aOB(22, _omitFieldNames ? '' : 'forbiddenAddFriendsToEachOther', protoName: 'forbiddenAddFriendsToEachOther')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupDetailRsp clone() => GroupDetailRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupDetailRsp copyWith(void Function(GroupDetailRsp) updates) => super.copyWith((message) => updates(message as GroupDetailRsp)) as GroupDetailRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupDetailRsp create() => GroupDetailRsp._();
  GroupDetailRsp createEmptyInstance() => create();
  static $pb.PbList<GroupDetailRsp> createRepeated() => $pb.PbList<GroupDetailRsp>();
  @$core.pragma('dart2js:noInline')
  static GroupDetailRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupDetailRsp>(create);
  static GroupDetailRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get disbanded => $_getBF(2);
  @$pb.TagNumber(3)
  set disbanded($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisbanded() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisbanded() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get banned => $_getBF(3);
  @$pb.TagNumber(4)
  set banned($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBanned() => $_has(3);
  @$pb.TagNumber(4)
  void clearBanned() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get memberCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set memberCount($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMemberCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemberCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get notice => $_getSZ(5);
  @$pb.TagNumber(6)
  set notice($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNotice() => $_has(5);
  @$pb.TagNumber(6)
  void clearNotice() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get ownerId => $_getI64(6);
  @$pb.TagNumber(7)
  set ownerId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOwnerId() => $_has(6);
  @$pb.TagNumber(7)
  void clearOwnerId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get avatar => $_getSZ(7);
  @$pb.TagNumber(8)
  set avatar($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvatar() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvatar() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get bgPic => $_getSZ(8);
  @$pb.TagNumber(9)
  set bgPic($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBgPic() => $_has(8);
  @$pb.TagNumber(9)
  void clearBgPic() => clearField(9);

  /// 	bool needReceipt = 10; // 是否需要展示阅读状态，展示阅读状态的群最大支持100人
  @$pb.TagNumber(11)
  $core.int get memberCountLimit => $_getIZ(9);
  @$pb.TagNumber(11)
  set memberCountLimit($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasMemberCountLimit() => $_has(9);
  @$pb.TagNumber(11)
  void clearMemberCountLimit() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get inviteRoleLimit => $_getIZ(10);
  @$pb.TagNumber(12)
  set inviteRoleLimit($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasInviteRoleLimit() => $_has(10);
  @$pb.TagNumber(12)
  void clearInviteRoleLimit() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get top => $_getBF(11);
  @$pb.TagNumber(13)
  set top($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasTop() => $_has(11);
  @$pb.TagNumber(13)
  void clearTop() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get remark => $_getSZ(12);
  @$pb.TagNumber(14)
  set remark($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasRemark() => $_has(12);
  @$pb.TagNumber(14)
  void clearRemark() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get memberChatBannedStatus => $_getIZ(13);
  @$pb.TagNumber(15)
  set memberChatBannedStatus($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasMemberChatBannedStatus() => $_has(13);
  @$pb.TagNumber(15)
  void clearMemberChatBannedStatus() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get newMemberRemindClosed => $_getBF(14);
  @$pb.TagNumber(16)
  set newMemberRemindClosed($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasNewMemberRemindClosed() => $_has(14);
  @$pb.TagNumber(16)
  void clearNewMemberRemindClosed() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get scanCodeJoinGroupSwitchStatus => $_getBF(15);
  @$pb.TagNumber(17)
  set scanCodeJoinGroupSwitchStatus($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(17)
  $core.bool hasScanCodeJoinGroupSwitchStatus() => $_has(15);
  @$pb.TagNumber(17)
  void clearScanCodeJoinGroupSwitchStatus() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get scanCodeJoinGroupParam => $_getSZ(16);
  @$pb.TagNumber(18)
  set scanCodeJoinGroupParam($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(18)
  $core.bool hasScanCodeJoinGroupParam() => $_has(16);
  @$pb.TagNumber(18)
  void clearScanCodeJoinGroupParam() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get noticeVersion => $_getIZ(17);
  @$pb.TagNumber(19)
  set noticeVersion($core.int v) { $_setSignedInt32(17, v); }
  @$pb.TagNumber(19)
  $core.bool hasNoticeVersion() => $_has(17);
  @$pb.TagNumber(19)
  void clearNoticeVersion() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get freeJoin => $_getBF(18);
  @$pb.TagNumber(20)
  set freeJoin($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(20)
  $core.bool hasFreeJoin() => $_has(18);
  @$pb.TagNumber(20)
  void clearFreeJoin() => clearField(20);

  @$pb.TagNumber(21)
  GroupType get groupType => $_getN(19);
  @$pb.TagNumber(21)
  set groupType(GroupType v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasGroupType() => $_has(19);
  @$pb.TagNumber(21)
  void clearGroupType() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get forbiddenAddFriendsToEachOther => $_getBF(20);
  @$pb.TagNumber(22)
  set forbiddenAddFriendsToEachOther($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(22)
  $core.bool hasForbiddenAddFriendsToEachOther() => $_has(20);
  @$pb.TagNumber(22)
  void clearForbiddenAddFriendsToEachOther() => clearField(22);
}

/// 用于展示群成员列表的成员信息
class Member extends $pb.GeneratedMessage {
  factory Member({
    $fixnum.Int64? userId,
    $fixnum.Int64? groupId,
    $core.String? username,
    $core.String? remark,
    $core.String? avatar,
    $core.int? role,
    $core.bool? banned,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (remark != null) {
      $result.remark = remark;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (role != null) {
      $result.role = role;
    }
    if (banned != null) {
      $result.banned = banned;
    }
    return $result;
  }
  Member._() : super();
  factory Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Member', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aOS(3, _omitFieldNames ? '' : 'username')
    ..aOS(4, _omitFieldNames ? '' : 'remark')
    ..aOS(5, _omitFieldNames ? '' : 'avatar')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'role', $pb.PbFieldType.O3)
    ..aOB(7, _omitFieldNames ? '' : 'banned')
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
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(3)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsername() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get remark => $_getSZ(3);
  @$pb.TagNumber(4)
  set remark($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemark() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemark() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get role => $_getIZ(5);
  @$pb.TagNumber(6)
  set role($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRole() => $_has(5);
  @$pb.TagNumber(6)
  void clearRole() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get banned => $_getBF(6);
  @$pb.TagNumber(7)
  set banned($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBanned() => $_has(6);
  @$pb.TagNumber(7)
  void clearBanned() => clearField(7);
}

/// 获取群中全部成员
class MembersReq extends $pb.GeneratedMessage {
  factory MembersReq({
    $core.int? page,
    $core.int? pageSize,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    return $result;
  }
  MembersReq._() : super();
  factory MembersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MembersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MembersReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MembersReq clone() => MembersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MembersReq copyWith(void Function(MembersReq) updates) => super.copyWith((message) => updates(message as MembersReq)) as MembersReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MembersReq create() => MembersReq._();
  MembersReq createEmptyInstance() => create();
  static $pb.PbList<MembersReq> createRepeated() => $pb.PbList<MembersReq>();
  @$core.pragma('dart2js:noInline')
  static MembersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MembersReq>(create);
  static MembersReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);
}

class MembersRsp extends $pb.GeneratedMessage {
  factory MembersRsp({
    $core.Iterable<Member>? members,
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? totalCount,
  }) {
    final $result = create();
    if (members != null) {
      $result.members.addAll(members);
    }
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  MembersRsp._() : super();
  factory MembersRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MembersRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MembersRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..pc<Member>(1, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM, subBuilder: Member.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..aInt64(4, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MembersRsp clone() => MembersRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MembersRsp copyWith(void Function(MembersRsp) updates) => super.copyWith((message) => updates(message as MembersRsp)) as MembersRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MembersRsp create() => MembersRsp._();
  MembersRsp createEmptyInstance() => create();
  static $pb.PbList<MembersRsp> createRepeated() => $pb.PbList<MembersRsp>();
  @$core.pragma('dart2js:noInline')
  static MembersRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MembersRsp>(create);
  static MembersRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Member> get members => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pageSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageSize($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageSize() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalCount => $_getI64(3);
  @$pb.TagNumber(4)
  set totalCount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalCount() => clearField(4);
}

/// 为@ 提供搜索服务，为群成员列表提供搜索功能
class FindMembersReq extends $pb.GeneratedMessage {
  factory FindMembersReq({
    $core.String? findString,
  }) {
    final $result = create();
    if (findString != null) {
      $result.findString = findString;
    }
    return $result;
  }
  FindMembersReq._() : super();
  factory FindMembersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindMembersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindMembersReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'findString', protoName: 'findString')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindMembersReq clone() => FindMembersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindMembersReq copyWith(void Function(FindMembersReq) updates) => super.copyWith((message) => updates(message as FindMembersReq)) as FindMembersReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindMembersReq create() => FindMembersReq._();
  FindMembersReq createEmptyInstance() => create();
  static $pb.PbList<FindMembersReq> createRepeated() => $pb.PbList<FindMembersReq>();
  @$core.pragma('dart2js:noInline')
  static FindMembersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindMembersReq>(create);
  static FindMembersReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get findString => $_getSZ(0);
  @$pb.TagNumber(1)
  set findString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFindString() => $_has(0);
  @$pb.TagNumber(1)
  void clearFindString() => clearField(1);
}

class FindMembersRsp extends $pb.GeneratedMessage {
  factory FindMembersRsp({
    $core.Iterable<Member>? members,
  }) {
    final $result = create();
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  FindMembersRsp._() : super();
  factory FindMembersRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindMembersRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindMembersRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..pc<Member>(1, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM, subBuilder: Member.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindMembersRsp clone() => FindMembersRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindMembersRsp copyWith(void Function(FindMembersRsp) updates) => super.copyWith((message) => updates(message as FindMembersRsp)) as FindMembersRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindMembersRsp create() => FindMembersRsp._();
  FindMembersRsp createEmptyInstance() => create();
  static $pb.PbList<FindMembersRsp> createRepeated() => $pb.PbList<FindMembersRsp>();
  @$core.pragma('dart2js:noInline')
  static FindMembersRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindMembersRsp>(create);
  static FindMembersRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Member> get members => $_getList(0);
}

/// 查看指定成员的详细信息
class MemberDetailReq extends $pb.GeneratedMessage {
  factory MemberDetailReq() => create();
  MemberDetailReq._() : super();
  factory MemberDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberDetailReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberDetailReq clone() => MemberDetailReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberDetailReq copyWith(void Function(MemberDetailReq) updates) => super.copyWith((message) => updates(message as MemberDetailReq)) as MemberDetailReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberDetailReq create() => MemberDetailReq._();
  MemberDetailReq createEmptyInstance() => create();
  static $pb.PbList<MemberDetailReq> createRepeated() => $pb.PbList<MemberDetailReq>();
  @$core.pragma('dart2js:noInline')
  static MemberDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberDetailReq>(create);
  static MemberDetailReq? _defaultInstance;
}

class MemberDetailRsp extends $pb.GeneratedMessage {
  factory MemberDetailRsp({
    $fixnum.Int64? userId,
    $fixnum.Int64? groupId,
    $core.String? username,
    $core.String? remark,
    $core.String? avatar,
    $core.bool? banned,
    $core.int? role,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (remark != null) {
      $result.remark = remark;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (banned != null) {
      $result.banned = banned;
    }
    if (role != null) {
      $result.role = role;
    }
    return $result;
  }
  MemberDetailRsp._() : super();
  factory MemberDetailRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberDetailRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberDetailRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aOS(3, _omitFieldNames ? '' : 'username')
    ..aOS(4, _omitFieldNames ? '' : 'remark')
    ..aOS(5, _omitFieldNames ? '' : 'avatar')
    ..aOB(6, _omitFieldNames ? '' : 'banned')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'role', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberDetailRsp clone() => MemberDetailRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberDetailRsp copyWith(void Function(MemberDetailRsp) updates) => super.copyWith((message) => updates(message as MemberDetailRsp)) as MemberDetailRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberDetailRsp create() => MemberDetailRsp._();
  MemberDetailRsp createEmptyInstance() => create();
  static $pb.PbList<MemberDetailRsp> createRepeated() => $pb.PbList<MemberDetailRsp>();
  @$core.pragma('dart2js:noInline')
  static MemberDetailRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberDetailRsp>(create);
  static MemberDetailRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(3)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsername() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get remark => $_getSZ(3);
  @$pb.TagNumber(4)
  set remark($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemark() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemark() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get banned => $_getBF(5);
  @$pb.TagNumber(6)
  set banned($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBanned() => $_has(5);
  @$pb.TagNumber(6)
  void clearBanned() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get role => $_getIZ(6);
  @$pb.TagNumber(7)
  set role($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRole() => $_has(6);
  @$pb.TagNumber(7)
  void clearRole() => clearField(7);
}

/// 申请结构
class Application extends $pb.GeneratedMessage {
  factory Application({
    $fixnum.Int64? userId,
    $fixnum.Int64? groupId,
    $fixnum.Int64? approverId,
    $core.int? status,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (approverId != null) {
      $result.approverId = approverId;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  Application._() : super();
  factory Application.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Application.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Application', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(3, _omitFieldNames ? '' : 'approverId', protoName: 'approverId')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Application clone() => Application()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Application copyWith(void Function(Application) updates) => super.copyWith((message) => updates(message as Application)) as Application;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Application create() => Application._();
  Application createEmptyInstance() => create();
  static $pb.PbList<Application> createRepeated() => $pb.PbList<Application>();
  @$core.pragma('dart2js:noInline')
  static Application getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Application>(create);
  static Application? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get approverId => $_getI64(2);
  @$pb.TagNumber(3)
  set approverId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApproverId() => $_has(2);
  @$pb.TagNumber(3)
  void clearApproverId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(3);
  @$pb.TagNumber(4)
  set status($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);
}

/// 获取和我相关的全部申请: 我发出的入群申请, 我审批的入群申请
class ApplicationsReq extends $pb.GeneratedMessage {
  factory ApplicationsReq() => create();
  ApplicationsReq._() : super();
  factory ApplicationsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationsReq clone() => ApplicationsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationsReq copyWith(void Function(ApplicationsReq) updates) => super.copyWith((message) => updates(message as ApplicationsReq)) as ApplicationsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplicationsReq create() => ApplicationsReq._();
  ApplicationsReq createEmptyInstance() => create();
  static $pb.PbList<ApplicationsReq> createRepeated() => $pb.PbList<ApplicationsReq>();
  @$core.pragma('dart2js:noInline')
  static ApplicationsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationsReq>(create);
  static ApplicationsReq? _defaultInstance;
}

class ApplicationsRsp extends $pb.GeneratedMessage {
  factory ApplicationsRsp({
    $core.Iterable<Application>? applications,
  }) {
    final $result = create();
    if (applications != null) {
      $result.applications.addAll(applications);
    }
    return $result;
  }
  ApplicationsRsp._() : super();
  factory ApplicationsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..pc<Application>(1, _omitFieldNames ? '' : 'applications', $pb.PbFieldType.PM, subBuilder: Application.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationsRsp clone() => ApplicationsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationsRsp copyWith(void Function(ApplicationsRsp) updates) => super.copyWith((message) => updates(message as ApplicationsRsp)) as ApplicationsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplicationsRsp create() => ApplicationsRsp._();
  ApplicationsRsp createEmptyInstance() => create();
  static $pb.PbList<ApplicationsRsp> createRepeated() => $pb.PbList<ApplicationsRsp>();
  @$core.pragma('dart2js:noInline')
  static ApplicationsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationsRsp>(create);
  static ApplicationsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Application> get applications => $_getList(0);
}

/// 获取和我相关的全部邀请: 我发出的入群邀请, 我审批的入群邀请
class Invitation extends $pb.GeneratedMessage {
  factory Invitation({
    $fixnum.Int64? groupId,
    $fixnum.Int64? inviterId,
    $fixnum.Int64? inviteeId,
    $core.int? status,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (inviterId != null) {
      $result.inviterId = inviterId;
    }
    if (inviteeId != null) {
      $result.inviteeId = inviteeId;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  Invitation._() : super();
  factory Invitation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Invitation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Invitation', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(2, _omitFieldNames ? '' : 'inviterId', protoName: 'inviterId')
    ..aInt64(3, _omitFieldNames ? '' : 'inviteeId', protoName: 'inviteeId')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Invitation clone() => Invitation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Invitation copyWith(void Function(Invitation) updates) => super.copyWith((message) => updates(message as Invitation)) as Invitation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Invitation create() => Invitation._();
  Invitation createEmptyInstance() => create();
  static $pb.PbList<Invitation> createRepeated() => $pb.PbList<Invitation>();
  @$core.pragma('dart2js:noInline')
  static Invitation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Invitation>(create);
  static Invitation? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get inviterId => $_getI64(1);
  @$pb.TagNumber(2)
  set inviterId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviterId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviterId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get inviteeId => $_getI64(2);
  @$pb.TagNumber(3)
  set inviteeId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInviteeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearInviteeId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(3);
  @$pb.TagNumber(4)
  set status($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);
}

/// 用户获取邀请数据: 我发出的入群邀请和我收到的入群邀请
class InvitationsReq extends $pb.GeneratedMessage {
  factory InvitationsReq() => create();
  InvitationsReq._() : super();
  factory InvitationsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvitationsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InvitationsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvitationsReq clone() => InvitationsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvitationsReq copyWith(void Function(InvitationsReq) updates) => super.copyWith((message) => updates(message as InvitationsReq)) as InvitationsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvitationsReq create() => InvitationsReq._();
  InvitationsReq createEmptyInstance() => create();
  static $pb.PbList<InvitationsReq> createRepeated() => $pb.PbList<InvitationsReq>();
  @$core.pragma('dart2js:noInline')
  static InvitationsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvitationsReq>(create);
  static InvitationsReq? _defaultInstance;
}

class InvitationsRsp extends $pb.GeneratedMessage {
  factory InvitationsRsp({
    $core.Iterable<Invitation>? invitations,
  }) {
    final $result = create();
    if (invitations != null) {
      $result.invitations.addAll(invitations);
    }
    return $result;
  }
  InvitationsRsp._() : super();
  factory InvitationsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvitationsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InvitationsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..pc<Invitation>(1, _omitFieldNames ? '' : 'invitations', $pb.PbFieldType.PM, subBuilder: Invitation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvitationsRsp clone() => InvitationsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvitationsRsp copyWith(void Function(InvitationsRsp) updates) => super.copyWith((message) => updates(message as InvitationsRsp)) as InvitationsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvitationsRsp create() => InvitationsRsp._();
  InvitationsRsp createEmptyInstance() => create();
  static $pb.PbList<InvitationsRsp> createRepeated() => $pb.PbList<InvitationsRsp>();
  @$core.pragma('dart2js:noInline')
  static InvitationsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvitationsRsp>(create);
  static InvitationsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Invitation> get invitations => $_getList(0);
}

/// 编辑群名称
class EditNameReq extends $pb.GeneratedMessage {
  factory EditNameReq({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  EditNameReq._() : super();
  factory EditNameReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditNameReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditNameReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditNameReq clone() => EditNameReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditNameReq copyWith(void Function(EditNameReq) updates) => super.copyWith((message) => updates(message as EditNameReq)) as EditNameReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditNameReq create() => EditNameReq._();
  EditNameReq createEmptyInstance() => create();
  static $pb.PbList<EditNameReq> createRepeated() => $pb.PbList<EditNameReq>();
  @$core.pragma('dart2js:noInline')
  static EditNameReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditNameReq>(create);
  static EditNameReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class EditNameRsp extends $pb.GeneratedMessage {
  factory EditNameRsp() => create();
  EditNameRsp._() : super();
  factory EditNameRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditNameRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditNameRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditNameRsp clone() => EditNameRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditNameRsp copyWith(void Function(EditNameRsp) updates) => super.copyWith((message) => updates(message as EditNameRsp)) as EditNameRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditNameRsp create() => EditNameRsp._();
  EditNameRsp createEmptyInstance() => create();
  static $pb.PbList<EditNameRsp> createRepeated() => $pb.PbList<EditNameRsp>();
  @$core.pragma('dart2js:noInline')
  static EditNameRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditNameRsp>(create);
  static EditNameRsp? _defaultInstance;
}

/// 群名称变更通知
class NameChangeNotify extends $pb.GeneratedMessage {
  factory NameChangeNotify({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  NameChangeNotify._() : super();
  factory NameChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NameChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NameChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NameChangeNotify clone() => NameChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NameChangeNotify copyWith(void Function(NameChangeNotify) updates) => super.copyWith((message) => updates(message as NameChangeNotify)) as NameChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NameChangeNotify create() => NameChangeNotify._();
  NameChangeNotify createEmptyInstance() => create();
  static $pb.PbList<NameChangeNotify> createRepeated() => $pb.PbList<NameChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static NameChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NameChangeNotify>(create);
  static NameChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// 编辑群头像
class EditAvatarReq extends $pb.GeneratedMessage {
  factory EditAvatarReq({
    $core.String? avatar,
  }) {
    final $result = create();
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  EditAvatarReq._() : super();
  factory EditAvatarReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditAvatarReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditAvatarReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditAvatarReq clone() => EditAvatarReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditAvatarReq copyWith(void Function(EditAvatarReq) updates) => super.copyWith((message) => updates(message as EditAvatarReq)) as EditAvatarReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditAvatarReq create() => EditAvatarReq._();
  EditAvatarReq createEmptyInstance() => create();
  static $pb.PbList<EditAvatarReq> createRepeated() => $pb.PbList<EditAvatarReq>();
  @$core.pragma('dart2js:noInline')
  static EditAvatarReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditAvatarReq>(create);
  static EditAvatarReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get avatar => $_getSZ(0);
  @$pb.TagNumber(1)
  set avatar($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAvatar() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvatar() => clearField(1);
}

class EditAvatarRsp extends $pb.GeneratedMessage {
  factory EditAvatarRsp() => create();
  EditAvatarRsp._() : super();
  factory EditAvatarRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditAvatarRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditAvatarRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditAvatarRsp clone() => EditAvatarRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditAvatarRsp copyWith(void Function(EditAvatarRsp) updates) => super.copyWith((message) => updates(message as EditAvatarRsp)) as EditAvatarRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditAvatarRsp create() => EditAvatarRsp._();
  EditAvatarRsp createEmptyInstance() => create();
  static $pb.PbList<EditAvatarRsp> createRepeated() => $pb.PbList<EditAvatarRsp>();
  @$core.pragma('dart2js:noInline')
  static EditAvatarRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditAvatarRsp>(create);
  static EditAvatarRsp? _defaultInstance;
}

/// 群头像变更通知
class AvatarChangeNotify extends $pb.GeneratedMessage {
  factory AvatarChangeNotify({
    $core.String? avatar,
  }) {
    final $result = create();
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  AvatarChangeNotify._() : super();
  factory AvatarChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AvatarChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AvatarChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AvatarChangeNotify clone() => AvatarChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AvatarChangeNotify copyWith(void Function(AvatarChangeNotify) updates) => super.copyWith((message) => updates(message as AvatarChangeNotify)) as AvatarChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AvatarChangeNotify create() => AvatarChangeNotify._();
  AvatarChangeNotify createEmptyInstance() => create();
  static $pb.PbList<AvatarChangeNotify> createRepeated() => $pb.PbList<AvatarChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static AvatarChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AvatarChangeNotify>(create);
  static AvatarChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get avatar => $_getSZ(0);
  @$pb.TagNumber(1)
  set avatar($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAvatar() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvatar() => clearField(1);
}

class EditInviteRoleLimitReq extends $pb.GeneratedMessage {
  factory EditInviteRoleLimitReq({
    $core.int? roleLimit,
  }) {
    final $result = create();
    if (roleLimit != null) {
      $result.roleLimit = roleLimit;
    }
    return $result;
  }
  EditInviteRoleLimitReq._() : super();
  factory EditInviteRoleLimitReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditInviteRoleLimitReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditInviteRoleLimitReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'roleLimit', $pb.PbFieldType.O3, protoName: 'roleLimit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditInviteRoleLimitReq clone() => EditInviteRoleLimitReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditInviteRoleLimitReq copyWith(void Function(EditInviteRoleLimitReq) updates) => super.copyWith((message) => updates(message as EditInviteRoleLimitReq)) as EditInviteRoleLimitReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditInviteRoleLimitReq create() => EditInviteRoleLimitReq._();
  EditInviteRoleLimitReq createEmptyInstance() => create();
  static $pb.PbList<EditInviteRoleLimitReq> createRepeated() => $pb.PbList<EditInviteRoleLimitReq>();
  @$core.pragma('dart2js:noInline')
  static EditInviteRoleLimitReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditInviteRoleLimitReq>(create);
  static EditInviteRoleLimitReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get roleLimit => $_getIZ(0);
  @$pb.TagNumber(1)
  set roleLimit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoleLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoleLimit() => clearField(1);
}

class EditInviteRoleLimitRsp extends $pb.GeneratedMessage {
  factory EditInviteRoleLimitRsp({
    $core.int? roleLimit,
  }) {
    final $result = create();
    if (roleLimit != null) {
      $result.roleLimit = roleLimit;
    }
    return $result;
  }
  EditInviteRoleLimitRsp._() : super();
  factory EditInviteRoleLimitRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditInviteRoleLimitRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditInviteRoleLimitRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'roleLimit', $pb.PbFieldType.O3, protoName: 'roleLimit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditInviteRoleLimitRsp clone() => EditInviteRoleLimitRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditInviteRoleLimitRsp copyWith(void Function(EditInviteRoleLimitRsp) updates) => super.copyWith((message) => updates(message as EditInviteRoleLimitRsp)) as EditInviteRoleLimitRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditInviteRoleLimitRsp create() => EditInviteRoleLimitRsp._();
  EditInviteRoleLimitRsp createEmptyInstance() => create();
  static $pb.PbList<EditInviteRoleLimitRsp> createRepeated() => $pb.PbList<EditInviteRoleLimitRsp>();
  @$core.pragma('dart2js:noInline')
  static EditInviteRoleLimitRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditInviteRoleLimitRsp>(create);
  static EditInviteRoleLimitRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get roleLimit => $_getIZ(0);
  @$pb.TagNumber(1)
  set roleLimit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoleLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoleLimit() => clearField(1);
}

/// 群头像变更通知
class InviteRoleLimitChangeNotify extends $pb.GeneratedMessage {
  factory InviteRoleLimitChangeNotify({
    $core.int? roleLimit,
  }) {
    final $result = create();
    if (roleLimit != null) {
      $result.roleLimit = roleLimit;
    }
    return $result;
  }
  InviteRoleLimitChangeNotify._() : super();
  factory InviteRoleLimitChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteRoleLimitChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteRoleLimitChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'roleLimit', $pb.PbFieldType.O3, protoName: 'roleLimit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteRoleLimitChangeNotify clone() => InviteRoleLimitChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteRoleLimitChangeNotify copyWith(void Function(InviteRoleLimitChangeNotify) updates) => super.copyWith((message) => updates(message as InviteRoleLimitChangeNotify)) as InviteRoleLimitChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteRoleLimitChangeNotify create() => InviteRoleLimitChangeNotify._();
  InviteRoleLimitChangeNotify createEmptyInstance() => create();
  static $pb.PbList<InviteRoleLimitChangeNotify> createRepeated() => $pb.PbList<InviteRoleLimitChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static InviteRoleLimitChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteRoleLimitChangeNotify>(create);
  static InviteRoleLimitChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get roleLimit => $_getIZ(0);
  @$pb.TagNumber(1)
  set roleLimit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoleLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoleLimit() => clearField(1);
}

/// 编辑群公告
class EditNoticeReq extends $pb.GeneratedMessage {
  factory EditNoticeReq({
    $core.String? notice,
  }) {
    final $result = create();
    if (notice != null) {
      $result.notice = notice;
    }
    return $result;
  }
  EditNoticeReq._() : super();
  factory EditNoticeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditNoticeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditNoticeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'notice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditNoticeReq clone() => EditNoticeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditNoticeReq copyWith(void Function(EditNoticeReq) updates) => super.copyWith((message) => updates(message as EditNoticeReq)) as EditNoticeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditNoticeReq create() => EditNoticeReq._();
  EditNoticeReq createEmptyInstance() => create();
  static $pb.PbList<EditNoticeReq> createRepeated() => $pb.PbList<EditNoticeReq>();
  @$core.pragma('dart2js:noInline')
  static EditNoticeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditNoticeReq>(create);
  static EditNoticeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get notice => $_getSZ(0);
  @$pb.TagNumber(1)
  set notice($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotice() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotice() => clearField(1);
}

class EditNoticeRsp extends $pb.GeneratedMessage {
  factory EditNoticeRsp() => create();
  EditNoticeRsp._() : super();
  factory EditNoticeRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditNoticeRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditNoticeRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditNoticeRsp clone() => EditNoticeRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditNoticeRsp copyWith(void Function(EditNoticeRsp) updates) => super.copyWith((message) => updates(message as EditNoticeRsp)) as EditNoticeRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditNoticeRsp create() => EditNoticeRsp._();
  EditNoticeRsp createEmptyInstance() => create();
  static $pb.PbList<EditNoticeRsp> createRepeated() => $pb.PbList<EditNoticeRsp>();
  @$core.pragma('dart2js:noInline')
  static EditNoticeRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditNoticeRsp>(create);
  static EditNoticeRsp? _defaultInstance;
}

/// 群公告变更通知
class NoticeChangeNotify extends $pb.GeneratedMessage {
  factory NoticeChangeNotify({
    $core.String? notice,
    $core.int? noticeVersion,
  }) {
    final $result = create();
    if (notice != null) {
      $result.notice = notice;
    }
    if (noticeVersion != null) {
      $result.noticeVersion = noticeVersion;
    }
    return $result;
  }
  NoticeChangeNotify._() : super();
  factory NoticeChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoticeChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NoticeChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'notice')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'noticeVersion', $pb.PbFieldType.O3, protoName: 'noticeVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoticeChangeNotify clone() => NoticeChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoticeChangeNotify copyWith(void Function(NoticeChangeNotify) updates) => super.copyWith((message) => updates(message as NoticeChangeNotify)) as NoticeChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoticeChangeNotify create() => NoticeChangeNotify._();
  NoticeChangeNotify createEmptyInstance() => create();
  static $pb.PbList<NoticeChangeNotify> createRepeated() => $pb.PbList<NoticeChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static NoticeChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoticeChangeNotify>(create);
  static NoticeChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get notice => $_getSZ(0);
  @$pb.TagNumber(1)
  set notice($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotice() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotice() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get noticeVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set noticeVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNoticeVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearNoticeVersion() => clearField(2);
}

/// 修改备注
class EditRemarkReq extends $pb.GeneratedMessage {
  factory EditRemarkReq({
    $core.String? remark,
    $fixnum.Int64? editedUserId,
  }) {
    final $result = create();
    if (remark != null) {
      $result.remark = remark;
    }
    if (editedUserId != null) {
      $result.editedUserId = editedUserId;
    }
    return $result;
  }
  EditRemarkReq._() : super();
  factory EditRemarkReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditRemarkReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditRemarkReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remark')
    ..aInt64(2, _omitFieldNames ? '' : 'editedUserId', protoName: 'editedUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditRemarkReq clone() => EditRemarkReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditRemarkReq copyWith(void Function(EditRemarkReq) updates) => super.copyWith((message) => updates(message as EditRemarkReq)) as EditRemarkReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditRemarkReq create() => EditRemarkReq._();
  EditRemarkReq createEmptyInstance() => create();
  static $pb.PbList<EditRemarkReq> createRepeated() => $pb.PbList<EditRemarkReq>();
  @$core.pragma('dart2js:noInline')
  static EditRemarkReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditRemarkReq>(create);
  static EditRemarkReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remark => $_getSZ(0);
  @$pb.TagNumber(1)
  set remark($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemark() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemark() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get editedUserId => $_getI64(1);
  @$pb.TagNumber(2)
  set editedUserId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEditedUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEditedUserId() => clearField(2);
}

class EditRemarkRsp extends $pb.GeneratedMessage {
  factory EditRemarkRsp({
    $core.String? remark,
    $fixnum.Int64? editedUserId,
  }) {
    final $result = create();
    if (remark != null) {
      $result.remark = remark;
    }
    if (editedUserId != null) {
      $result.editedUserId = editedUserId;
    }
    return $result;
  }
  EditRemarkRsp._() : super();
  factory EditRemarkRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditRemarkRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditRemarkRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remark')
    ..aInt64(2, _omitFieldNames ? '' : 'editedUserId', protoName: 'editedUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditRemarkRsp clone() => EditRemarkRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditRemarkRsp copyWith(void Function(EditRemarkRsp) updates) => super.copyWith((message) => updates(message as EditRemarkRsp)) as EditRemarkRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditRemarkRsp create() => EditRemarkRsp._();
  EditRemarkRsp createEmptyInstance() => create();
  static $pb.PbList<EditRemarkRsp> createRepeated() => $pb.PbList<EditRemarkRsp>();
  @$core.pragma('dart2js:noInline')
  static EditRemarkRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditRemarkRsp>(create);
  static EditRemarkRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remark => $_getSZ(0);
  @$pb.TagNumber(1)
  set remark($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemark() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemark() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get editedUserId => $_getI64(1);
  @$pb.TagNumber(2)
  set editedUserId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEditedUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEditedUserId() => clearField(2);
}

class RemarkChangeNotify extends $pb.GeneratedMessage {
  factory RemarkChangeNotify({
    $core.String? remark,
    $fixnum.Int64? editedUserId,
  }) {
    final $result = create();
    if (remark != null) {
      $result.remark = remark;
    }
    if (editedUserId != null) {
      $result.editedUserId = editedUserId;
    }
    return $result;
  }
  RemarkChangeNotify._() : super();
  factory RemarkChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemarkChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemarkChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remark')
    ..aInt64(2, _omitFieldNames ? '' : 'editedUserId', protoName: 'editedUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemarkChangeNotify clone() => RemarkChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemarkChangeNotify copyWith(void Function(RemarkChangeNotify) updates) => super.copyWith((message) => updates(message as RemarkChangeNotify)) as RemarkChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemarkChangeNotify create() => RemarkChangeNotify._();
  RemarkChangeNotify createEmptyInstance() => create();
  static $pb.PbList<RemarkChangeNotify> createRepeated() => $pb.PbList<RemarkChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static RemarkChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemarkChangeNotify>(create);
  static RemarkChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remark => $_getSZ(0);
  @$pb.TagNumber(1)
  set remark($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemark() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemark() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get editedUserId => $_getI64(1);
  @$pb.TagNumber(2)
  set editedUserId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEditedUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEditedUserId() => clearField(2);
}

class EditBGPicReq extends $pb.GeneratedMessage {
  factory EditBGPicReq({
    $core.String? bgPic,
  }) {
    final $result = create();
    if (bgPic != null) {
      $result.bgPic = bgPic;
    }
    return $result;
  }
  EditBGPicReq._() : super();
  factory EditBGPicReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditBGPicReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditBGPicReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bgPic', protoName: 'bgPic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditBGPicReq clone() => EditBGPicReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditBGPicReq copyWith(void Function(EditBGPicReq) updates) => super.copyWith((message) => updates(message as EditBGPicReq)) as EditBGPicReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditBGPicReq create() => EditBGPicReq._();
  EditBGPicReq createEmptyInstance() => create();
  static $pb.PbList<EditBGPicReq> createRepeated() => $pb.PbList<EditBGPicReq>();
  @$core.pragma('dart2js:noInline')
  static EditBGPicReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditBGPicReq>(create);
  static EditBGPicReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bgPic => $_getSZ(0);
  @$pb.TagNumber(1)
  set bgPic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBgPic() => $_has(0);
  @$pb.TagNumber(1)
  void clearBgPic() => clearField(1);
}

class EditBGPicRsp extends $pb.GeneratedMessage {
  factory EditBGPicRsp({
    $core.String? bgPic,
  }) {
    final $result = create();
    if (bgPic != null) {
      $result.bgPic = bgPic;
    }
    return $result;
  }
  EditBGPicRsp._() : super();
  factory EditBGPicRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditBGPicRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditBGPicRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bgPic', protoName: 'bgPic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditBGPicRsp clone() => EditBGPicRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditBGPicRsp copyWith(void Function(EditBGPicRsp) updates) => super.copyWith((message) => updates(message as EditBGPicRsp)) as EditBGPicRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditBGPicRsp create() => EditBGPicRsp._();
  EditBGPicRsp createEmptyInstance() => create();
  static $pb.PbList<EditBGPicRsp> createRepeated() => $pb.PbList<EditBGPicRsp>();
  @$core.pragma('dart2js:noInline')
  static EditBGPicRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditBGPicRsp>(create);
  static EditBGPicRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bgPic => $_getSZ(0);
  @$pb.TagNumber(1)
  set bgPic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBgPic() => $_has(0);
  @$pb.TagNumber(1)
  void clearBgPic() => clearField(1);
}

class BGPicChangeNotify extends $pb.GeneratedMessage {
  factory BGPicChangeNotify({
    $core.String? bgPic,
  }) {
    final $result = create();
    if (bgPic != null) {
      $result.bgPic = bgPic;
    }
    return $result;
  }
  BGPicChangeNotify._() : super();
  factory BGPicChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BGPicChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BGPicChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bgPic', protoName: 'bgPic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BGPicChangeNotify clone() => BGPicChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BGPicChangeNotify copyWith(void Function(BGPicChangeNotify) updates) => super.copyWith((message) => updates(message as BGPicChangeNotify)) as BGPicChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BGPicChangeNotify create() => BGPicChangeNotify._();
  BGPicChangeNotify createEmptyInstance() => create();
  static $pb.PbList<BGPicChangeNotify> createRepeated() => $pb.PbList<BGPicChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static BGPicChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BGPicChangeNotify>(create);
  static BGPicChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bgPic => $_getSZ(0);
  @$pb.TagNumber(1)
  set bgPic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBgPic() => $_has(0);
  @$pb.TagNumber(1)
  void clearBgPic() => clearField(1);
}

/// 是否需要展示阅读状态，展示阅读状态的群最大支持100人
class EditNeedReceiptReq extends $pb.GeneratedMessage {
  factory EditNeedReceiptReq({
    $core.bool? needReceipt,
  }) {
    final $result = create();
    if (needReceipt != null) {
      $result.needReceipt = needReceipt;
    }
    return $result;
  }
  EditNeedReceiptReq._() : super();
  factory EditNeedReceiptReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditNeedReceiptReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditNeedReceiptReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'needReceipt', protoName: 'needReceipt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditNeedReceiptReq clone() => EditNeedReceiptReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditNeedReceiptReq copyWith(void Function(EditNeedReceiptReq) updates) => super.copyWith((message) => updates(message as EditNeedReceiptReq)) as EditNeedReceiptReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditNeedReceiptReq create() => EditNeedReceiptReq._();
  EditNeedReceiptReq createEmptyInstance() => create();
  static $pb.PbList<EditNeedReceiptReq> createRepeated() => $pb.PbList<EditNeedReceiptReq>();
  @$core.pragma('dart2js:noInline')
  static EditNeedReceiptReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditNeedReceiptReq>(create);
  static EditNeedReceiptReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get needReceipt => $_getBF(0);
  @$pb.TagNumber(1)
  set needReceipt($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeedReceipt() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeedReceipt() => clearField(1);
}

class EditNeedReceiptRsp extends $pb.GeneratedMessage {
  factory EditNeedReceiptRsp({
    $core.bool? needReceipt,
  }) {
    final $result = create();
    if (needReceipt != null) {
      $result.needReceipt = needReceipt;
    }
    return $result;
  }
  EditNeedReceiptRsp._() : super();
  factory EditNeedReceiptRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditNeedReceiptRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditNeedReceiptRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'needReceipt', protoName: 'needReceipt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditNeedReceiptRsp clone() => EditNeedReceiptRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditNeedReceiptRsp copyWith(void Function(EditNeedReceiptRsp) updates) => super.copyWith((message) => updates(message as EditNeedReceiptRsp)) as EditNeedReceiptRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditNeedReceiptRsp create() => EditNeedReceiptRsp._();
  EditNeedReceiptRsp createEmptyInstance() => create();
  static $pb.PbList<EditNeedReceiptRsp> createRepeated() => $pb.PbList<EditNeedReceiptRsp>();
  @$core.pragma('dart2js:noInline')
  static EditNeedReceiptRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditNeedReceiptRsp>(create);
  static EditNeedReceiptRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get needReceipt => $_getBF(0);
  @$pb.TagNumber(1)
  set needReceipt($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeedReceipt() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeedReceipt() => clearField(1);
}

class NeedReceiptChangeNotify extends $pb.GeneratedMessage {
  factory NeedReceiptChangeNotify({
    $core.bool? needReceipt,
  }) {
    final $result = create();
    if (needReceipt != null) {
      $result.needReceipt = needReceipt;
    }
    return $result;
  }
  NeedReceiptChangeNotify._() : super();
  factory NeedReceiptChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NeedReceiptChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NeedReceiptChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'needReceipt', protoName: 'needReceipt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NeedReceiptChangeNotify clone() => NeedReceiptChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NeedReceiptChangeNotify copyWith(void Function(NeedReceiptChangeNotify) updates) => super.copyWith((message) => updates(message as NeedReceiptChangeNotify)) as NeedReceiptChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NeedReceiptChangeNotify create() => NeedReceiptChangeNotify._();
  NeedReceiptChangeNotify createEmptyInstance() => create();
  static $pb.PbList<NeedReceiptChangeNotify> createRepeated() => $pb.PbList<NeedReceiptChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static NeedReceiptChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NeedReceiptChangeNotify>(create);
  static NeedReceiptChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get needReceipt => $_getBF(0);
  @$pb.TagNumber(1)
  set needReceipt($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeedReceipt() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeedReceipt() => clearField(1);
}

/// 最大成员数量限制,0为无限制
class EditMemberCountLimitReq extends $pb.GeneratedMessage {
  factory EditMemberCountLimitReq({
    $core.int? memberCountLimit,
  }) {
    final $result = create();
    if (memberCountLimit != null) {
      $result.memberCountLimit = memberCountLimit;
    }
    return $result;
  }
  EditMemberCountLimitReq._() : super();
  factory EditMemberCountLimitReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditMemberCountLimitReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditMemberCountLimitReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'memberCountLimit', $pb.PbFieldType.O3, protoName: 'memberCountLimit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditMemberCountLimitReq clone() => EditMemberCountLimitReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditMemberCountLimitReq copyWith(void Function(EditMemberCountLimitReq) updates) => super.copyWith((message) => updates(message as EditMemberCountLimitReq)) as EditMemberCountLimitReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditMemberCountLimitReq create() => EditMemberCountLimitReq._();
  EditMemberCountLimitReq createEmptyInstance() => create();
  static $pb.PbList<EditMemberCountLimitReq> createRepeated() => $pb.PbList<EditMemberCountLimitReq>();
  @$core.pragma('dart2js:noInline')
  static EditMemberCountLimitReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditMemberCountLimitReq>(create);
  static EditMemberCountLimitReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get memberCountLimit => $_getIZ(0);
  @$pb.TagNumber(1)
  set memberCountLimit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemberCountLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberCountLimit() => clearField(1);
}

class EditMemberCountLimitRsp extends $pb.GeneratedMessage {
  factory EditMemberCountLimitRsp({
    $core.int? memberCountLimit,
  }) {
    final $result = create();
    if (memberCountLimit != null) {
      $result.memberCountLimit = memberCountLimit;
    }
    return $result;
  }
  EditMemberCountLimitRsp._() : super();
  factory EditMemberCountLimitRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditMemberCountLimitRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditMemberCountLimitRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'memberCountLimit', $pb.PbFieldType.O3, protoName: 'memberCountLimit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditMemberCountLimitRsp clone() => EditMemberCountLimitRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditMemberCountLimitRsp copyWith(void Function(EditMemberCountLimitRsp) updates) => super.copyWith((message) => updates(message as EditMemberCountLimitRsp)) as EditMemberCountLimitRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditMemberCountLimitRsp create() => EditMemberCountLimitRsp._();
  EditMemberCountLimitRsp createEmptyInstance() => create();
  static $pb.PbList<EditMemberCountLimitRsp> createRepeated() => $pb.PbList<EditMemberCountLimitRsp>();
  @$core.pragma('dart2js:noInline')
  static EditMemberCountLimitRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditMemberCountLimitRsp>(create);
  static EditMemberCountLimitRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get memberCountLimit => $_getIZ(0);
  @$pb.TagNumber(1)
  set memberCountLimit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemberCountLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberCountLimit() => clearField(1);
}

class MemberCountLimitChangeNotify extends $pb.GeneratedMessage {
  factory MemberCountLimitChangeNotify({
    $core.int? memberCountLimit,
  }) {
    final $result = create();
    if (memberCountLimit != null) {
      $result.memberCountLimit = memberCountLimit;
    }
    return $result;
  }
  MemberCountLimitChangeNotify._() : super();
  factory MemberCountLimitChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberCountLimitChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberCountLimitChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'memberCountLimit', $pb.PbFieldType.O3, protoName: 'memberCountLimit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberCountLimitChangeNotify clone() => MemberCountLimitChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberCountLimitChangeNotify copyWith(void Function(MemberCountLimitChangeNotify) updates) => super.copyWith((message) => updates(message as MemberCountLimitChangeNotify)) as MemberCountLimitChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberCountLimitChangeNotify create() => MemberCountLimitChangeNotify._();
  MemberCountLimitChangeNotify createEmptyInstance() => create();
  static $pb.PbList<MemberCountLimitChangeNotify> createRepeated() => $pb.PbList<MemberCountLimitChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static MemberCountLimitChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberCountLimitChangeNotify>(create);
  static MemberCountLimitChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get memberCountLimit => $_getIZ(0);
  @$pb.TagNumber(1)
  set memberCountLimit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemberCountLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberCountLimit() => clearField(1);
}

/// 添加群管理员
class AddAdminsReq extends $pb.GeneratedMessage {
  factory AddAdminsReq({
    $core.Iterable<$fixnum.Int64>? memberIds,
  }) {
    final $result = create();
    if (memberIds != null) {
      $result.memberIds.addAll(memberIds);
    }
    return $result;
  }
  AddAdminsReq._() : super();
  factory AddAdminsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAdminsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddAdminsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'memberIds', $pb.PbFieldType.K6, protoName: 'memberIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAdminsReq clone() => AddAdminsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAdminsReq copyWith(void Function(AddAdminsReq) updates) => super.copyWith((message) => updates(message as AddAdminsReq)) as AddAdminsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddAdminsReq create() => AddAdminsReq._();
  AddAdminsReq createEmptyInstance() => create();
  static $pb.PbList<AddAdminsReq> createRepeated() => $pb.PbList<AddAdminsReq>();
  @$core.pragma('dart2js:noInline')
  static AddAdminsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAdminsReq>(create);
  static AddAdminsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get memberIds => $_getList(0);
}

class AddAdminsRsp extends $pb.GeneratedMessage {
  factory AddAdminsRsp() => create();
  AddAdminsRsp._() : super();
  factory AddAdminsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAdminsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddAdminsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAdminsRsp clone() => AddAdminsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAdminsRsp copyWith(void Function(AddAdminsRsp) updates) => super.copyWith((message) => updates(message as AddAdminsRsp)) as AddAdminsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddAdminsRsp create() => AddAdminsRsp._();
  AddAdminsRsp createEmptyInstance() => create();
  static $pb.PbList<AddAdminsRsp> createRepeated() => $pb.PbList<AddAdminsRsp>();
  @$core.pragma('dart2js:noInline')
  static AddAdminsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAdminsRsp>(create);
  static AddAdminsRsp? _defaultInstance;
}

class AddAdminsNotify extends $pb.GeneratedMessage {
  factory AddAdminsNotify({
    $core.Iterable<$fixnum.Int64>? memberIds,
  }) {
    final $result = create();
    if (memberIds != null) {
      $result.memberIds.addAll(memberIds);
    }
    return $result;
  }
  AddAdminsNotify._() : super();
  factory AddAdminsNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAdminsNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddAdminsNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'memberIds', $pb.PbFieldType.K6, protoName: 'memberIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAdminsNotify clone() => AddAdminsNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAdminsNotify copyWith(void Function(AddAdminsNotify) updates) => super.copyWith((message) => updates(message as AddAdminsNotify)) as AddAdminsNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddAdminsNotify create() => AddAdminsNotify._();
  AddAdminsNotify createEmptyInstance() => create();
  static $pb.PbList<AddAdminsNotify> createRepeated() => $pb.PbList<AddAdminsNotify>();
  @$core.pragma('dart2js:noInline')
  static AddAdminsNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAdminsNotify>(create);
  static AddAdminsNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get memberIds => $_getList(0);
}

/// 移除管理员
class RemoveAdminsReq extends $pb.GeneratedMessage {
  factory RemoveAdminsReq({
    $core.Iterable<$fixnum.Int64>? memberIds,
  }) {
    final $result = create();
    if (memberIds != null) {
      $result.memberIds.addAll(memberIds);
    }
    return $result;
  }
  RemoveAdminsReq._() : super();
  factory RemoveAdminsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveAdminsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveAdminsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'memberIds', $pb.PbFieldType.K6, protoName: 'memberIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveAdminsReq clone() => RemoveAdminsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveAdminsReq copyWith(void Function(RemoveAdminsReq) updates) => super.copyWith((message) => updates(message as RemoveAdminsReq)) as RemoveAdminsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveAdminsReq create() => RemoveAdminsReq._();
  RemoveAdminsReq createEmptyInstance() => create();
  static $pb.PbList<RemoveAdminsReq> createRepeated() => $pb.PbList<RemoveAdminsReq>();
  @$core.pragma('dart2js:noInline')
  static RemoveAdminsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveAdminsReq>(create);
  static RemoveAdminsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get memberIds => $_getList(0);
}

class RemoveAdminsRsp extends $pb.GeneratedMessage {
  factory RemoveAdminsRsp() => create();
  RemoveAdminsRsp._() : super();
  factory RemoveAdminsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveAdminsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveAdminsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveAdminsRsp clone() => RemoveAdminsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveAdminsRsp copyWith(void Function(RemoveAdminsRsp) updates) => super.copyWith((message) => updates(message as RemoveAdminsRsp)) as RemoveAdminsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveAdminsRsp create() => RemoveAdminsRsp._();
  RemoveAdminsRsp createEmptyInstance() => create();
  static $pb.PbList<RemoveAdminsRsp> createRepeated() => $pb.PbList<RemoveAdminsRsp>();
  @$core.pragma('dart2js:noInline')
  static RemoveAdminsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveAdminsRsp>(create);
  static RemoveAdminsRsp? _defaultInstance;
}

class RemoveAdminsNotify extends $pb.GeneratedMessage {
  factory RemoveAdminsNotify({
    $core.Iterable<$fixnum.Int64>? memberIds,
  }) {
    final $result = create();
    if (memberIds != null) {
      $result.memberIds.addAll(memberIds);
    }
    return $result;
  }
  RemoveAdminsNotify._() : super();
  factory RemoveAdminsNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveAdminsNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveAdminsNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'memberIds', $pb.PbFieldType.K6, protoName: 'memberIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveAdminsNotify clone() => RemoveAdminsNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveAdminsNotify copyWith(void Function(RemoveAdminsNotify) updates) => super.copyWith((message) => updates(message as RemoveAdminsNotify)) as RemoveAdminsNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveAdminsNotify create() => RemoveAdminsNotify._();
  RemoveAdminsNotify createEmptyInstance() => create();
  static $pb.PbList<RemoveAdminsNotify> createRepeated() => $pb.PbList<RemoveAdminsNotify>();
  @$core.pragma('dart2js:noInline')
  static RemoveAdminsNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveAdminsNotify>(create);
  static RemoveAdminsNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get memberIds => $_getList(0);
}

/// 群主转让,转让后变成普通成员
class GroupTransferReq extends $pb.GeneratedMessage {
  factory GroupTransferReq() => create();
  GroupTransferReq._() : super();
  factory GroupTransferReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupTransferReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupTransferReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupTransferReq clone() => GroupTransferReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupTransferReq copyWith(void Function(GroupTransferReq) updates) => super.copyWith((message) => updates(message as GroupTransferReq)) as GroupTransferReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupTransferReq create() => GroupTransferReq._();
  GroupTransferReq createEmptyInstance() => create();
  static $pb.PbList<GroupTransferReq> createRepeated() => $pb.PbList<GroupTransferReq>();
  @$core.pragma('dart2js:noInline')
  static GroupTransferReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupTransferReq>(create);
  static GroupTransferReq? _defaultInstance;
}

class GroupTransferRsp extends $pb.GeneratedMessage {
  factory GroupTransferRsp() => create();
  GroupTransferRsp._() : super();
  factory GroupTransferRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupTransferRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupTransferRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupTransferRsp clone() => GroupTransferRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupTransferRsp copyWith(void Function(GroupTransferRsp) updates) => super.copyWith((message) => updates(message as GroupTransferRsp)) as GroupTransferRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupTransferRsp create() => GroupTransferRsp._();
  GroupTransferRsp createEmptyInstance() => create();
  static $pb.PbList<GroupTransferRsp> createRepeated() => $pb.PbList<GroupTransferRsp>();
  @$core.pragma('dart2js:noInline')
  static GroupTransferRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupTransferRsp>(create);
  static GroupTransferRsp? _defaultInstance;
}

class GroupTransferNotify extends $pb.GeneratedMessage {
  factory GroupTransferNotify({
    $fixnum.Int64? ownerId,
  }) {
    final $result = create();
    if (ownerId != null) {
      $result.ownerId = ownerId;
    }
    return $result;
  }
  GroupTransferNotify._() : super();
  factory GroupTransferNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupTransferNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupTransferNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ownerId', protoName: 'ownerId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupTransferNotify clone() => GroupTransferNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupTransferNotify copyWith(void Function(GroupTransferNotify) updates) => super.copyWith((message) => updates(message as GroupTransferNotify)) as GroupTransferNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupTransferNotify create() => GroupTransferNotify._();
  GroupTransferNotify createEmptyInstance() => create();
  static $pb.PbList<GroupTransferNotify> createRepeated() => $pb.PbList<GroupTransferNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupTransferNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupTransferNotify>(create);
  static GroupTransferNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ownerId => $_getI64(0);
  @$pb.TagNumber(1)
  set ownerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwnerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnerId() => clearField(1);
}

/// 封禁群组
class BanGroupsReq extends $pb.GeneratedMessage {
  factory BanGroupsReq({
    $core.Iterable<$fixnum.Int64>? groupIds,
  }) {
    final $result = create();
    if (groupIds != null) {
      $result.groupIds.addAll(groupIds);
    }
    return $result;
  }
  BanGroupsReq._() : super();
  factory BanGroupsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanGroupsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanGroupsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'groupIds', $pb.PbFieldType.K6, protoName: 'groupIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanGroupsReq clone() => BanGroupsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanGroupsReq copyWith(void Function(BanGroupsReq) updates) => super.copyWith((message) => updates(message as BanGroupsReq)) as BanGroupsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanGroupsReq create() => BanGroupsReq._();
  BanGroupsReq createEmptyInstance() => create();
  static $pb.PbList<BanGroupsReq> createRepeated() => $pb.PbList<BanGroupsReq>();
  @$core.pragma('dart2js:noInline')
  static BanGroupsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanGroupsReq>(create);
  static BanGroupsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get groupIds => $_getList(0);
}

class BanGroupsRsp extends $pb.GeneratedMessage {
  factory BanGroupsRsp() => create();
  BanGroupsRsp._() : super();
  factory BanGroupsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanGroupsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanGroupsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanGroupsRsp clone() => BanGroupsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanGroupsRsp copyWith(void Function(BanGroupsRsp) updates) => super.copyWith((message) => updates(message as BanGroupsRsp)) as BanGroupsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanGroupsRsp create() => BanGroupsRsp._();
  BanGroupsRsp createEmptyInstance() => create();
  static $pb.PbList<BanGroupsRsp> createRepeated() => $pb.PbList<BanGroupsRsp>();
  @$core.pragma('dart2js:noInline')
  static BanGroupsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanGroupsRsp>(create);
  static BanGroupsRsp? _defaultInstance;
}

class GroupBannedNotify extends $pb.GeneratedMessage {
  factory GroupBannedNotify() => create();
  GroupBannedNotify._() : super();
  factory GroupBannedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupBannedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupBannedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupBannedNotify clone() => GroupBannedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupBannedNotify copyWith(void Function(GroupBannedNotify) updates) => super.copyWith((message) => updates(message as GroupBannedNotify)) as GroupBannedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupBannedNotify create() => GroupBannedNotify._();
  GroupBannedNotify createEmptyInstance() => create();
  static $pb.PbList<GroupBannedNotify> createRepeated() => $pb.PbList<GroupBannedNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupBannedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupBannedNotify>(create);
  static GroupBannedNotify? _defaultInstance;
}

/// 解禁群组
class UnbanGroupsReq extends $pb.GeneratedMessage {
  factory UnbanGroupsReq({
    $core.Iterable<$fixnum.Int64>? groupIds,
  }) {
    final $result = create();
    if (groupIds != null) {
      $result.groupIds.addAll(groupIds);
    }
    return $result;
  }
  UnbanGroupsReq._() : super();
  factory UnbanGroupsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnbanGroupsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnbanGroupsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'groupIds', $pb.PbFieldType.K6, protoName: 'groupIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnbanGroupsReq clone() => UnbanGroupsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnbanGroupsReq copyWith(void Function(UnbanGroupsReq) updates) => super.copyWith((message) => updates(message as UnbanGroupsReq)) as UnbanGroupsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnbanGroupsReq create() => UnbanGroupsReq._();
  UnbanGroupsReq createEmptyInstance() => create();
  static $pb.PbList<UnbanGroupsReq> createRepeated() => $pb.PbList<UnbanGroupsReq>();
  @$core.pragma('dart2js:noInline')
  static UnbanGroupsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnbanGroupsReq>(create);
  static UnbanGroupsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get groupIds => $_getList(0);
}

class UnbanGroupsRsp extends $pb.GeneratedMessage {
  factory UnbanGroupsRsp() => create();
  UnbanGroupsRsp._() : super();
  factory UnbanGroupsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnbanGroupsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnbanGroupsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnbanGroupsRsp clone() => UnbanGroupsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnbanGroupsRsp copyWith(void Function(UnbanGroupsRsp) updates) => super.copyWith((message) => updates(message as UnbanGroupsRsp)) as UnbanGroupsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnbanGroupsRsp create() => UnbanGroupsRsp._();
  UnbanGroupsRsp createEmptyInstance() => create();
  static $pb.PbList<UnbanGroupsRsp> createRepeated() => $pb.PbList<UnbanGroupsRsp>();
  @$core.pragma('dart2js:noInline')
  static UnbanGroupsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnbanGroupsRsp>(create);
  static UnbanGroupsRsp? _defaultInstance;
}

class GroupUnbannedNotify extends $pb.GeneratedMessage {
  factory GroupUnbannedNotify() => create();
  GroupUnbannedNotify._() : super();
  factory GroupUnbannedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupUnbannedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupUnbannedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupUnbannedNotify clone() => GroupUnbannedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupUnbannedNotify copyWith(void Function(GroupUnbannedNotify) updates) => super.copyWith((message) => updates(message as GroupUnbannedNotify)) as GroupUnbannedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupUnbannedNotify create() => GroupUnbannedNotify._();
  GroupUnbannedNotify createEmptyInstance() => create();
  static $pb.PbList<GroupUnbannedNotify> createRepeated() => $pb.PbList<GroupUnbannedNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupUnbannedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupUnbannedNotify>(create);
  static GroupUnbannedNotify? _defaultInstance;
}

/// 解散群组
class DisbandGroupsReq extends $pb.GeneratedMessage {
  factory DisbandGroupsReq({
    $core.Iterable<$fixnum.Int64>? groupIds,
  }) {
    final $result = create();
    if (groupIds != null) {
      $result.groupIds.addAll(groupIds);
    }
    return $result;
  }
  DisbandGroupsReq._() : super();
  factory DisbandGroupsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisbandGroupsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DisbandGroupsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'groupIds', $pb.PbFieldType.K6, protoName: 'groupIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisbandGroupsReq clone() => DisbandGroupsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisbandGroupsReq copyWith(void Function(DisbandGroupsReq) updates) => super.copyWith((message) => updates(message as DisbandGroupsReq)) as DisbandGroupsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DisbandGroupsReq create() => DisbandGroupsReq._();
  DisbandGroupsReq createEmptyInstance() => create();
  static $pb.PbList<DisbandGroupsReq> createRepeated() => $pb.PbList<DisbandGroupsReq>();
  @$core.pragma('dart2js:noInline')
  static DisbandGroupsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisbandGroupsReq>(create);
  static DisbandGroupsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get groupIds => $_getList(0);
}

class DisbandGroupsRsp extends $pb.GeneratedMessage {
  factory DisbandGroupsRsp() => create();
  DisbandGroupsRsp._() : super();
  factory DisbandGroupsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisbandGroupsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DisbandGroupsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisbandGroupsRsp clone() => DisbandGroupsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisbandGroupsRsp copyWith(void Function(DisbandGroupsRsp) updates) => super.copyWith((message) => updates(message as DisbandGroupsRsp)) as DisbandGroupsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DisbandGroupsRsp create() => DisbandGroupsRsp._();
  DisbandGroupsRsp createEmptyInstance() => create();
  static $pb.PbList<DisbandGroupsRsp> createRepeated() => $pb.PbList<DisbandGroupsRsp>();
  @$core.pragma('dart2js:noInline')
  static DisbandGroupsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisbandGroupsRsp>(create);
  static DisbandGroupsRsp? _defaultInstance;
}

class GroupDisbandedNotify extends $pb.GeneratedMessage {
  factory GroupDisbandedNotify() => create();
  GroupDisbandedNotify._() : super();
  factory GroupDisbandedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupDisbandedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupDisbandedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupDisbandedNotify clone() => GroupDisbandedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupDisbandedNotify copyWith(void Function(GroupDisbandedNotify) updates) => super.copyWith((message) => updates(message as GroupDisbandedNotify)) as GroupDisbandedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupDisbandedNotify create() => GroupDisbandedNotify._();
  GroupDisbandedNotify createEmptyInstance() => create();
  static $pb.PbList<GroupDisbandedNotify> createRepeated() => $pb.PbList<GroupDisbandedNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupDisbandedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupDisbandedNotify>(create);
  static GroupDisbandedNotify? _defaultInstance;
}

/// 退出群组
class QuitReq extends $pb.GeneratedMessage {
  factory QuitReq() => create();
  QuitReq._() : super();
  factory QuitReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuitReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuitReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuitReq clone() => QuitReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuitReq copyWith(void Function(QuitReq) updates) => super.copyWith((message) => updates(message as QuitReq)) as QuitReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuitReq create() => QuitReq._();
  QuitReq createEmptyInstance() => create();
  static $pb.PbList<QuitReq> createRepeated() => $pb.PbList<QuitReq>();
  @$core.pragma('dart2js:noInline')
  static QuitReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuitReq>(create);
  static QuitReq? _defaultInstance;
}

class QuitRsp extends $pb.GeneratedMessage {
  factory QuitRsp() => create();
  QuitRsp._() : super();
  factory QuitRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuitRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuitRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuitRsp clone() => QuitRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuitRsp copyWith(void Function(QuitRsp) updates) => super.copyWith((message) => updates(message as QuitRsp)) as QuitRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuitRsp create() => QuitRsp._();
  QuitRsp createEmptyInstance() => create();
  static $pb.PbList<QuitRsp> createRepeated() => $pb.PbList<QuitRsp>();
  @$core.pragma('dart2js:noInline')
  static QuitRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuitRsp>(create);
  static QuitRsp? _defaultInstance;
}

class QuitNotify extends $pb.GeneratedMessage {
  factory QuitNotify({
    $fixnum.Int64? memberId,
  }) {
    final $result = create();
    if (memberId != null) {
      $result.memberId = memberId;
    }
    return $result;
  }
  QuitNotify._() : super();
  factory QuitNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuitNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuitNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'memberId', protoName: 'memberId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuitNotify clone() => QuitNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuitNotify copyWith(void Function(QuitNotify) updates) => super.copyWith((message) => updates(message as QuitNotify)) as QuitNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuitNotify create() => QuitNotify._();
  QuitNotify createEmptyInstance() => create();
  static $pb.PbList<QuitNotify> createRepeated() => $pb.PbList<QuitNotify>();
  @$core.pragma('dart2js:noInline')
  static QuitNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuitNotify>(create);
  static QuitNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get memberId => $_getI64(0);
  @$pb.TagNumber(1)
  set memberId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemberId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberId() => clearField(1);
}

/// 禁言成员
class BanMemberReq extends $pb.GeneratedMessage {
  factory BanMemberReq() => create();
  BanMemberReq._() : super();
  factory BanMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanMemberReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanMemberReq clone() => BanMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanMemberReq copyWith(void Function(BanMemberReq) updates) => super.copyWith((message) => updates(message as BanMemberReq)) as BanMemberReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanMemberReq create() => BanMemberReq._();
  BanMemberReq createEmptyInstance() => create();
  static $pb.PbList<BanMemberReq> createRepeated() => $pb.PbList<BanMemberReq>();
  @$core.pragma('dart2js:noInline')
  static BanMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanMemberReq>(create);
  static BanMemberReq? _defaultInstance;
}

class BanMemberRsp extends $pb.GeneratedMessage {
  factory BanMemberRsp() => create();
  BanMemberRsp._() : super();
  factory BanMemberRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanMemberRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanMemberRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanMemberRsp clone() => BanMemberRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanMemberRsp copyWith(void Function(BanMemberRsp) updates) => super.copyWith((message) => updates(message as BanMemberRsp)) as BanMemberRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanMemberRsp create() => BanMemberRsp._();
  BanMemberRsp createEmptyInstance() => create();
  static $pb.PbList<BanMemberRsp> createRepeated() => $pb.PbList<BanMemberRsp>();
  @$core.pragma('dart2js:noInline')
  static BanMemberRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanMemberRsp>(create);
  static BanMemberRsp? _defaultInstance;
}

class BanMemberNotify extends $pb.GeneratedMessage {
  factory BanMemberNotify({
    $fixnum.Int64? memberId,
  }) {
    final $result = create();
    if (memberId != null) {
      $result.memberId = memberId;
    }
    return $result;
  }
  BanMemberNotify._() : super();
  factory BanMemberNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanMemberNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanMemberNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'memberId', protoName: 'memberId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanMemberNotify clone() => BanMemberNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanMemberNotify copyWith(void Function(BanMemberNotify) updates) => super.copyWith((message) => updates(message as BanMemberNotify)) as BanMemberNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanMemberNotify create() => BanMemberNotify._();
  BanMemberNotify createEmptyInstance() => create();
  static $pb.PbList<BanMemberNotify> createRepeated() => $pb.PbList<BanMemberNotify>();
  @$core.pragma('dart2js:noInline')
  static BanMemberNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanMemberNotify>(create);
  static BanMemberNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get memberId => $_getI64(0);
  @$pb.TagNumber(1)
  set memberId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemberId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberId() => clearField(1);
}

/// 解禁成员
class UnbanMemberReq extends $pb.GeneratedMessage {
  factory UnbanMemberReq() => create();
  UnbanMemberReq._() : super();
  factory UnbanMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnbanMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnbanMemberReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnbanMemberReq clone() => UnbanMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnbanMemberReq copyWith(void Function(UnbanMemberReq) updates) => super.copyWith((message) => updates(message as UnbanMemberReq)) as UnbanMemberReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnbanMemberReq create() => UnbanMemberReq._();
  UnbanMemberReq createEmptyInstance() => create();
  static $pb.PbList<UnbanMemberReq> createRepeated() => $pb.PbList<UnbanMemberReq>();
  @$core.pragma('dart2js:noInline')
  static UnbanMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnbanMemberReq>(create);
  static UnbanMemberReq? _defaultInstance;
}

class UnbanMemberRsp extends $pb.GeneratedMessage {
  factory UnbanMemberRsp() => create();
  UnbanMemberRsp._() : super();
  factory UnbanMemberRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnbanMemberRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnbanMemberRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnbanMemberRsp clone() => UnbanMemberRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnbanMemberRsp copyWith(void Function(UnbanMemberRsp) updates) => super.copyWith((message) => updates(message as UnbanMemberRsp)) as UnbanMemberRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnbanMemberRsp create() => UnbanMemberRsp._();
  UnbanMemberRsp createEmptyInstance() => create();
  static $pb.PbList<UnbanMemberRsp> createRepeated() => $pb.PbList<UnbanMemberRsp>();
  @$core.pragma('dart2js:noInline')
  static UnbanMemberRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnbanMemberRsp>(create);
  static UnbanMemberRsp? _defaultInstance;
}

class UnbanMemberNotify extends $pb.GeneratedMessage {
  factory UnbanMemberNotify({
    $fixnum.Int64? memberId,
  }) {
    final $result = create();
    if (memberId != null) {
      $result.memberId = memberId;
    }
    return $result;
  }
  UnbanMemberNotify._() : super();
  factory UnbanMemberNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnbanMemberNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnbanMemberNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'memberId', protoName: 'memberId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnbanMemberNotify clone() => UnbanMemberNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnbanMemberNotify copyWith(void Function(UnbanMemberNotify) updates) => super.copyWith((message) => updates(message as UnbanMemberNotify)) as UnbanMemberNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnbanMemberNotify create() => UnbanMemberNotify._();
  UnbanMemberNotify createEmptyInstance() => create();
  static $pb.PbList<UnbanMemberNotify> createRepeated() => $pb.PbList<UnbanMemberNotify>();
  @$core.pragma('dart2js:noInline')
  static UnbanMemberNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnbanMemberNotify>(create);
  static UnbanMemberNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get memberId => $_getI64(0);
  @$pb.TagNumber(1)
  set memberId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemberId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberId() => clearField(1);
}

/// 踢出群组
class KickoutReq extends $pb.GeneratedMessage {
  factory KickoutReq() => create();
  KickoutReq._() : super();
  factory KickoutReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickoutReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KickoutReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickoutReq clone() => KickoutReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickoutReq copyWith(void Function(KickoutReq) updates) => super.copyWith((message) => updates(message as KickoutReq)) as KickoutReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KickoutReq create() => KickoutReq._();
  KickoutReq createEmptyInstance() => create();
  static $pb.PbList<KickoutReq> createRepeated() => $pb.PbList<KickoutReq>();
  @$core.pragma('dart2js:noInline')
  static KickoutReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickoutReq>(create);
  static KickoutReq? _defaultInstance;
}

class KickoutRsp extends $pb.GeneratedMessage {
  factory KickoutRsp() => create();
  KickoutRsp._() : super();
  factory KickoutRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickoutRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KickoutRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickoutRsp clone() => KickoutRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickoutRsp copyWith(void Function(KickoutRsp) updates) => super.copyWith((message) => updates(message as KickoutRsp)) as KickoutRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KickoutRsp create() => KickoutRsp._();
  KickoutRsp createEmptyInstance() => create();
  static $pb.PbList<KickoutRsp> createRepeated() => $pb.PbList<KickoutRsp>();
  @$core.pragma('dart2js:noInline')
  static KickoutRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickoutRsp>(create);
  static KickoutRsp? _defaultInstance;
}

class KickoutNotify extends $pb.GeneratedMessage {
  factory KickoutNotify({
    $fixnum.Int64? memberId,
    $core.int? memberCount,
  }) {
    final $result = create();
    if (memberId != null) {
      $result.memberId = memberId;
    }
    if (memberCount != null) {
      $result.memberCount = memberCount;
    }
    return $result;
  }
  KickoutNotify._() : super();
  factory KickoutNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickoutNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KickoutNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'memberId', protoName: 'memberId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'memberCount', $pb.PbFieldType.O3, protoName: 'memberCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickoutNotify clone() => KickoutNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickoutNotify copyWith(void Function(KickoutNotify) updates) => super.copyWith((message) => updates(message as KickoutNotify)) as KickoutNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KickoutNotify create() => KickoutNotify._();
  KickoutNotify createEmptyInstance() => create();
  static $pb.PbList<KickoutNotify> createRepeated() => $pb.PbList<KickoutNotify>();
  @$core.pragma('dart2js:noInline')
  static KickoutNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickoutNotify>(create);
  static KickoutNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get memberId => $_getI64(0);
  @$pb.TagNumber(1)
  set memberId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemberId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get memberCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set memberCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemberCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberCount() => clearField(2);
}

class GroupHistoryMsgReq extends $pb.GeneratedMessage {
  factory GroupHistoryMsgReq({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $core.bool? filterNew,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (filterNew != null) {
      $result.filterNew = filterNew;
    }
    return $result;
  }
  GroupHistoryMsgReq._() : super();
  factory GroupHistoryMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupHistoryMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupHistoryMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aOB(3, _omitFieldNames ? '' : 'filterNew', protoName: 'filterNew')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupHistoryMsgReq clone() => GroupHistoryMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupHistoryMsgReq copyWith(void Function(GroupHistoryMsgReq) updates) => super.copyWith((message) => updates(message as GroupHistoryMsgReq)) as GroupHistoryMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupHistoryMsgReq create() => GroupHistoryMsgReq._();
  GroupHistoryMsgReq createEmptyInstance() => create();
  static $pb.PbList<GroupHistoryMsgReq> createRepeated() => $pb.PbList<GroupHistoryMsgReq>();
  @$core.pragma('dart2js:noInline')
  static GroupHistoryMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupHistoryMsgReq>(create);
  static GroupHistoryMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get filterNew => $_getBF(2);
  @$pb.TagNumber(3)
  set filterNew($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilterNew() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilterNew() => clearField(3);
}

class GroupHistoryMsgRsp extends $pb.GeneratedMessage {
  factory GroupHistoryMsgRsp({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? totalCount,
    $core.Iterable<GroupHistoryMsg>? pbHisMsg,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (pbHisMsg != null) {
      $result.pbHisMsg.addAll(pbHisMsg);
    }
    return $result;
  }
  GroupHistoryMsgRsp._() : super();
  factory GroupHistoryMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupHistoryMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupHistoryMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..pc<GroupHistoryMsg>(4, _omitFieldNames ? '' : 'pbHisMsg', $pb.PbFieldType.PM, protoName: 'pbHisMsg', subBuilder: GroupHistoryMsg.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupHistoryMsgRsp clone() => GroupHistoryMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupHistoryMsgRsp copyWith(void Function(GroupHistoryMsgRsp) updates) => super.copyWith((message) => updates(message as GroupHistoryMsgRsp)) as GroupHistoryMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupHistoryMsgRsp create() => GroupHistoryMsgRsp._();
  GroupHistoryMsgRsp createEmptyInstance() => create();
  static $pb.PbList<GroupHistoryMsgRsp> createRepeated() => $pb.PbList<GroupHistoryMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static GroupHistoryMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupHistoryMsgRsp>(create);
  static GroupHistoryMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalCount => $_getI64(2);
  @$pb.TagNumber(3)
  set totalCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  /// 消息
  @$pb.TagNumber(4)
  $core.List<GroupHistoryMsg> get pbHisMsg => $_getList(3);
}

///  读取单个消息
/// rpc GetOneGroupHistoryMsg(pb_msg_group.OneGroupHistoryMsgReq) returns (pb_msg_group.OneGroupHistoryMsgRsp);
///  至少填一个
class OneGroupHistoryMsgReq extends $pb.GeneratedMessage {
  factory OneGroupHistoryMsgReq({
    $fixnum.Int64? id,
    $fixnum.Int64? msgSn,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    return $result;
  }
  OneGroupHistoryMsgReq._() : super();
  factory OneGroupHistoryMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OneGroupHistoryMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OneGroupHistoryMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OneGroupHistoryMsgReq clone() => OneGroupHistoryMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OneGroupHistoryMsgReq copyWith(void Function(OneGroupHistoryMsgReq) updates) => super.copyWith((message) => updates(message as OneGroupHistoryMsgReq)) as OneGroupHistoryMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneGroupHistoryMsgReq create() => OneGroupHistoryMsgReq._();
  OneGroupHistoryMsgReq createEmptyInstance() => create();
  static $pb.PbList<OneGroupHistoryMsgReq> createRepeated() => $pb.PbList<OneGroupHistoryMsgReq>();
  @$core.pragma('dart2js:noInline')
  static OneGroupHistoryMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OneGroupHistoryMsgReq>(create);
  static OneGroupHistoryMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgSn => $_getI64(1);
  @$pb.TagNumber(2)
  set msgSn($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgSn() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgSn() => clearField(2);
}

class OneGroupHistoryMsgRsp extends $pb.GeneratedMessage {
  factory OneGroupHistoryMsgRsp({
    GroupHistoryMsg? groupHistoryMsg,
  }) {
    final $result = create();
    if (groupHistoryMsg != null) {
      $result.groupHistoryMsg = groupHistoryMsg;
    }
    return $result;
  }
  OneGroupHistoryMsgRsp._() : super();
  factory OneGroupHistoryMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OneGroupHistoryMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OneGroupHistoryMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOM<GroupHistoryMsg>(1, _omitFieldNames ? '' : 'groupHistoryMsg', protoName: 'groupHistoryMsg', subBuilder: GroupHistoryMsg.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OneGroupHistoryMsgRsp clone() => OneGroupHistoryMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OneGroupHistoryMsgRsp copyWith(void Function(OneGroupHistoryMsgRsp) updates) => super.copyWith((message) => updates(message as OneGroupHistoryMsgRsp)) as OneGroupHistoryMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneGroupHistoryMsgRsp create() => OneGroupHistoryMsgRsp._();
  OneGroupHistoryMsgRsp createEmptyInstance() => create();
  static $pb.PbList<OneGroupHistoryMsgRsp> createRepeated() => $pb.PbList<OneGroupHistoryMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static OneGroupHistoryMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OneGroupHistoryMsgRsp>(create);
  static OneGroupHistoryMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  GroupHistoryMsg get groupHistoryMsg => $_getN(0);
  @$pb.TagNumber(1)
  set groupHistoryMsg(GroupHistoryMsg v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupHistoryMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupHistoryMsg() => clearField(1);
  @$pb.TagNumber(1)
  GroupHistoryMsg ensureGroupHistoryMsg() => $_ensure(0);
}

///  删除单个消息
/// rpc DelOneGroupHistoryMsg(pb_msg_group.DelOneGroupHistoryMsgReq) returns (pb_msg_group.DelOneGroupHistoryMsgRsp);
class DelGroupHistoryMsgReq extends $pb.GeneratedMessage {
  factory DelGroupHistoryMsgReq({
    $core.Iterable<$fixnum.Int64>? id,
    $core.Iterable<$fixnum.Int64>? msgSn,
  }) {
    final $result = create();
    if (id != null) {
      $result.id.addAll(id);
    }
    if (msgSn != null) {
      $result.msgSn.addAll(msgSn);
    }
    return $result;
  }
  DelGroupHistoryMsgReq._() : super();
  factory DelGroupHistoryMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelGroupHistoryMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelGroupHistoryMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'msgSn', $pb.PbFieldType.K6, protoName: 'msgSn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelGroupHistoryMsgReq clone() => DelGroupHistoryMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelGroupHistoryMsgReq copyWith(void Function(DelGroupHistoryMsgReq) updates) => super.copyWith((message) => updates(message as DelGroupHistoryMsgReq)) as DelGroupHistoryMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelGroupHistoryMsgReq create() => DelGroupHistoryMsgReq._();
  DelGroupHistoryMsgReq createEmptyInstance() => create();
  static $pb.PbList<DelGroupHistoryMsgReq> createRepeated() => $pb.PbList<DelGroupHistoryMsgReq>();
  @$core.pragma('dart2js:noInline')
  static DelGroupHistoryMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelGroupHistoryMsgReq>(create);
  static DelGroupHistoryMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get id => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get msgSn => $_getList(1);
}

class DelGroupHistoryMsgRsp extends $pb.GeneratedMessage {
  factory DelGroupHistoryMsgRsp() => create();
  DelGroupHistoryMsgRsp._() : super();
  factory DelGroupHistoryMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelGroupHistoryMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelGroupHistoryMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelGroupHistoryMsgRsp clone() => DelGroupHistoryMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelGroupHistoryMsgRsp copyWith(void Function(DelGroupHistoryMsgRsp) updates) => super.copyWith((message) => updates(message as DelGroupHistoryMsgRsp)) as DelGroupHistoryMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelGroupHistoryMsgRsp create() => DelGroupHistoryMsgRsp._();
  DelGroupHistoryMsgRsp createEmptyInstance() => create();
  static $pb.PbList<DelGroupHistoryMsgRsp> createRepeated() => $pb.PbList<DelGroupHistoryMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static DelGroupHistoryMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelGroupHistoryMsgRsp>(create);
  static DelGroupHistoryMsgRsp? _defaultInstance;
}

/// /////////////////
///  读取列表一次读完
///  已读用户列表
class ReadUserInfo extends $pb.GeneratedMessage {
  factory ReadUserInfo({
    $fixnum.Int64? readerUserId,
    $0.MSG_STATE? readStatus,
    $fixnum.Int64? upDateAt,
  }) {
    final $result = create();
    if (readerUserId != null) {
      $result.readerUserId = readerUserId;
    }
    if (readStatus != null) {
      $result.readStatus = readStatus;
    }
    if (upDateAt != null) {
      $result.upDateAt = upDateAt;
    }
    return $result;
  }
  ReadUserInfo._() : super();
  factory ReadUserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadUserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadUserInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'readerUserId', protoName: 'readerUserId')
    ..e<$0.MSG_STATE>(2, _omitFieldNames ? '' : 'readStatus', $pb.PbFieldType.OE, protoName: 'readStatus', defaultOrMaker: $0.MSG_STATE.INIT, valueOf: $0.MSG_STATE.valueOf, enumValues: $0.MSG_STATE.values)
    ..aInt64(3, _omitFieldNames ? '' : 'upDateAt', protoName: 'upDateAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadUserInfo clone() => ReadUserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadUserInfo copyWith(void Function(ReadUserInfo) updates) => super.copyWith((message) => updates(message as ReadUserInfo)) as ReadUserInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadUserInfo create() => ReadUserInfo._();
  ReadUserInfo createEmptyInstance() => create();
  static $pb.PbList<ReadUserInfo> createRepeated() => $pb.PbList<ReadUserInfo>();
  @$core.pragma('dart2js:noInline')
  static ReadUserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadUserInfo>(create);
  static ReadUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get readerUserId => $_getI64(0);
  @$pb.TagNumber(1)
  set readerUserId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReaderUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReaderUserId() => clearField(1);

  @$pb.TagNumber(2)
  $0.MSG_STATE get readStatus => $_getN(1);
  @$pb.TagNumber(2)
  set readStatus($0.MSG_STATE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReadStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadStatus() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get upDateAt => $_getI64(2);
  @$pb.TagNumber(3)
  set upDateAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpDateAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpDateAt() => clearField(3);
}

class GroupMsgReadListReq extends $pb.GeneratedMessage {
  factory GroupMsgReadListReq({
    $fixnum.Int64? msgSn,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    return $result;
  }
  GroupMsgReadListReq._() : super();
  factory GroupMsgReadListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupMsgReadListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupMsgReadListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupMsgReadListReq clone() => GroupMsgReadListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupMsgReadListReq copyWith(void Function(GroupMsgReadListReq) updates) => super.copyWith((message) => updates(message as GroupMsgReadListReq)) as GroupMsgReadListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupMsgReadListReq create() => GroupMsgReadListReq._();
  GroupMsgReadListReq createEmptyInstance() => create();
  static $pb.PbList<GroupMsgReadListReq> createRepeated() => $pb.PbList<GroupMsgReadListReq>();
  @$core.pragma('dart2js:noInline')
  static GroupMsgReadListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupMsgReadListReq>(create);
  static GroupMsgReadListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgSn() => clearField(1);
}

class GroupMsgReadListRsp extends $pb.GeneratedMessage {
  factory GroupMsgReadListRsp({
    $fixnum.Int64? msgSn,
    $core.Iterable<ReadUserInfo>? readUserInfo,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (readUserInfo != null) {
      $result.readUserInfo.addAll(readUserInfo);
    }
    return $result;
  }
  GroupMsgReadListRsp._() : super();
  factory GroupMsgReadListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupMsgReadListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupMsgReadListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..pc<ReadUserInfo>(2, _omitFieldNames ? '' : 'readUserInfo', $pb.PbFieldType.PM, protoName: 'readUserInfo', subBuilder: ReadUserInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupMsgReadListRsp clone() => GroupMsgReadListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupMsgReadListRsp copyWith(void Function(GroupMsgReadListRsp) updates) => super.copyWith((message) => updates(message as GroupMsgReadListRsp)) as GroupMsgReadListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupMsgReadListRsp create() => GroupMsgReadListRsp._();
  GroupMsgReadListRsp createEmptyInstance() => create();
  static $pb.PbList<GroupMsgReadListRsp> createRepeated() => $pb.PbList<GroupMsgReadListRsp>();
  @$core.pragma('dart2js:noInline')
  static GroupMsgReadListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupMsgReadListRsp>(create);
  static GroupMsgReadListRsp? _defaultInstance;

  /// 条数
  @$pb.TagNumber(1)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ReadUserInfo> get readUserInfo => $_getList(1);
}

/// 纯文本聊天
class GroupChat extends $pb.GeneratedMessage {
  factory GroupChat({
    $fixnum.Int64? aimUserId,
    $0.TextChatType? chatType,
    $core.String? data,
    $core.String? text,
    $core.Map<$core.String, $core.String>? exp,
    $fixnum.Int64? aimUserAppId,
    $core.String? aimUserAppUserId,
  }) {
    final $result = create();
    if (aimUserId != null) {
      $result.aimUserId = aimUserId;
    }
    if (chatType != null) {
      $result.chatType = chatType;
    }
    if (data != null) {
      $result.data = data;
    }
    if (text != null) {
      $result.text = text;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (aimUserAppId != null) {
      $result.aimUserAppId = aimUserAppId;
    }
    if (aimUserAppUserId != null) {
      $result.aimUserAppUserId = aimUserAppUserId;
    }
    return $result;
  }
  GroupChat._() : super();
  factory GroupChat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupChat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupChat', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(2, _omitFieldNames ? '' : 'aimUserId')
    ..e<$0.TextChatType>(3, _omitFieldNames ? '' : 'chatType', $pb.PbFieldType.OE, defaultOrMaker: $0.TextChatType.TEXT, valueOf: $0.TextChatType.valueOf, enumValues: $0.TextChatType.values)
    ..aOS(4, _omitFieldNames ? '' : 'data')
    ..aOS(5, _omitFieldNames ? '' : 'text')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'exp', entryClassName: 'GroupChat.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_group'))
    ..aInt64(7, _omitFieldNames ? '' : 'aimUserAppId', protoName: 'aimUserAppId')
    ..aOS(8, _omitFieldNames ? '' : 'aimUserAppUserId', protoName: 'aimUserAppUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupChat clone() => GroupChat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupChat copyWith(void Function(GroupChat) updates) => super.copyWith((message) => updates(message as GroupChat)) as GroupChat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupChat create() => GroupChat._();
  GroupChat createEmptyInstance() => create();
  static $pb.PbList<GroupChat> createRepeated() => $pb.PbList<GroupChat>();
  @$core.pragma('dart2js:noInline')
  static GroupChat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupChat>(create);
  static GroupChat? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get aimUserId => $_getI64(0);
  @$pb.TagNumber(2)
  set aimUserId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasAimUserId() => $_has(0);
  @$pb.TagNumber(2)
  void clearAimUserId() => clearField(2);

  @$pb.TagNumber(3)
  $0.TextChatType get chatType => $_getN(1);
  @$pb.TagNumber(3)
  set chatType($0.TextChatType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChatType() => $_has(1);
  @$pb.TagNumber(3)
  void clearChatType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get data => $_getSZ(2);
  @$pb.TagNumber(4)
  set data($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(4)
  void clearData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get text => $_getSZ(3);
  @$pb.TagNumber(5)
  set text($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasText() => $_has(3);
  @$pb.TagNumber(5)
  void clearText() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get exp => $_getMap(4);

  @$pb.TagNumber(7)
  $fixnum.Int64 get aimUserAppId => $_getI64(5);
  @$pb.TagNumber(7)
  set aimUserAppId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasAimUserAppId() => $_has(5);
  @$pb.TagNumber(7)
  void clearAimUserAppId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get aimUserAppUserId => $_getSZ(6);
  @$pb.TagNumber(8)
  set aimUserAppUserId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasAimUserAppUserId() => $_has(6);
  @$pb.TagNumber(8)
  void clearAimUserAppUserId() => clearField(8);
}

/// 表情
class GroupEmoticon extends $pb.GeneratedMessage {
  factory GroupEmoticon({
    $core.int? packageId,
    $core.int? emoticonId,
  }) {
    final $result = create();
    if (packageId != null) {
      $result.packageId = packageId;
    }
    if (emoticonId != null) {
      $result.emoticonId = emoticonId;
    }
    return $result;
  }
  GroupEmoticon._() : super();
  factory GroupEmoticon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupEmoticon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupEmoticon', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'packageId', $pb.PbFieldType.O3, protoName: 'packageId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'emoticonId', $pb.PbFieldType.O3, protoName: 'emoticonId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupEmoticon clone() => GroupEmoticon()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupEmoticon copyWith(void Function(GroupEmoticon) updates) => super.copyWith((message) => updates(message as GroupEmoticon)) as GroupEmoticon;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupEmoticon create() => GroupEmoticon._();
  GroupEmoticon createEmptyInstance() => create();
  static $pb.PbList<GroupEmoticon> createRepeated() => $pb.PbList<GroupEmoticon>();
  @$core.pragma('dart2js:noInline')
  static GroupEmoticon getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupEmoticon>(create);
  static GroupEmoticon? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get packageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set packageId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPackageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get emoticonId => $_getIZ(1);
  @$pb.TagNumber(2)
  set emoticonId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmoticonId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmoticonId() => clearField(2);
}

/// 多媒体
class GroupMedia extends $pb.GeneratedMessage {
  factory GroupMedia({
    $core.int? mediaType,
    $core.String? srcPath,
  }) {
    final $result = create();
    if (mediaType != null) {
      $result.mediaType = mediaType;
    }
    if (srcPath != null) {
      $result.srcPath = srcPath;
    }
    return $result;
  }
  GroupMedia._() : super();
  factory GroupMedia.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupMedia.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupMedia', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'mediaType', $pb.PbFieldType.O3, protoName: 'mediaType')
    ..aOS(2, _omitFieldNames ? '' : 'srcPath', protoName: 'srcPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupMedia clone() => GroupMedia()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupMedia copyWith(void Function(GroupMedia) updates) => super.copyWith((message) => updates(message as GroupMedia)) as GroupMedia;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupMedia create() => GroupMedia._();
  GroupMedia createEmptyInstance() => create();
  static $pb.PbList<GroupMedia> createRepeated() => $pb.PbList<GroupMedia>();
  @$core.pragma('dart2js:noInline')
  static GroupMedia getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupMedia>(create);
  static GroupMedia? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mediaType => $_getIZ(0);
  @$pb.TagNumber(1)
  set mediaType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMediaType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get srcPath => $_getSZ(1);
  @$pb.TagNumber(2)
  set srcPath($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrcPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrcPath() => clearField(2);
}

/// 礼物
class GroupGift extends $pb.GeneratedMessage {
  factory GroupGift({
    $core.int? giftId,
  }) {
    final $result = create();
    if (giftId != null) {
      $result.giftId = giftId;
    }
    return $result;
  }
  GroupGift._() : super();
  factory GroupGift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupGift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupGift', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'giftId', $pb.PbFieldType.O3, protoName: 'giftId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupGift clone() => GroupGift()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupGift copyWith(void Function(GroupGift) updates) => super.copyWith((message) => updates(message as GroupGift)) as GroupGift;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupGift create() => GroupGift._();
  GroupGift createEmptyInstance() => create();
  static $pb.PbList<GroupGift> createRepeated() => $pb.PbList<GroupGift>();
  @$core.pragma('dart2js:noInline')
  static GroupGift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupGift>(create);
  static GroupGift? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get giftId => $_getIZ(0);
  @$pb.TagNumber(1)
  set giftId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGiftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGiftId() => clearField(1);
}

class BigGroupHisMsg extends $pb.GeneratedMessage {
  factory BigGroupHisMsg({
    $fixnum.Int64? msgId,
    $fixnum.Int64? groupId,
    $fixnum.Int64? msgSn,
    $fixnum.Int64? srcId,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $fixnum.Int64? createdAt,
    $core.Iterable<$fixnum.Int64>? atList,
  }) {
    final $result = create();
    if (msgId != null) {
      $result.msgId = msgId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (srcId != null) {
      $result.srcId = srcId;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (atList != null) {
      $result.atList.addAll(atList);
    }
    return $result;
  }
  BigGroupHisMsg._() : super();
  factory BigGroupHisMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BigGroupHisMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BigGroupHisMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgId', protoName: 'msgId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(3, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..aInt64(4, _omitFieldNames ? '' : 'srcId', protoName: 'srcId')
    ..aOS(5, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..aInt64(7, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'atList', $pb.PbFieldType.K6, protoName: 'atList')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BigGroupHisMsg clone() => BigGroupHisMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BigGroupHisMsg copyWith(void Function(BigGroupHisMsg) updates) => super.copyWith((message) => updates(message as BigGroupHisMsg)) as BigGroupHisMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BigGroupHisMsg create() => BigGroupHisMsg._();
  BigGroupHisMsg createEmptyInstance() => create();
  static $pb.PbList<BigGroupHisMsg> createRepeated() => $pb.PbList<BigGroupHisMsg>();
  @$core.pragma('dart2js:noInline')
  static BigGroupHisMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BigGroupHisMsg>(create);
  static BigGroupHisMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgId => $_getI64(0);
  @$pb.TagNumber(1)
  set msgId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgId() => clearField(1);

  /// /////////////////////////////////////////////////////////
  ///  组建pbcommdata 参数  begin
  ///  CommData 结构冗余东西太多，这里给他精简，尽量减小总体消息包
  ///  客户端根据这些参数组装commdata,另行存储
  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get msgSn => $_getI64(2);
  @$pb.TagNumber(3)
  set msgSn($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsgSn() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgSn() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get srcId => $_getI64(3);
  @$pb.TagNumber(4)
  set srcId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSrcId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSrcId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get pbName => $_getSZ(4);
  @$pb.TagNumber(5)
  set pbName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPbName() => $_has(4);
  @$pb.TagNumber(5)
  void clearPbName() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get pbData => $_getN(5);
  @$pb.TagNumber(6)
  set pbData($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPbData() => $_has(5);
  @$pb.TagNumber(6)
  void clearPbData() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get createdAt => $_getI64(6);
  @$pb.TagNumber(7)
  set createdAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$fixnum.Int64> get atList => $_getList(7);
}

class UserReadStatus extends $pb.GeneratedMessage {
  factory UserReadStatus({
    $fixnum.Int64? userId,
    $0.MSG_STATE? readStatus,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (readStatus != null) {
      $result.readStatus = readStatus;
    }
    return $result;
  }
  UserReadStatus._() : super();
  factory UserReadStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserReadStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserReadStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..e<$0.MSG_STATE>(2, _omitFieldNames ? '' : 'readStatus', $pb.PbFieldType.OE, protoName: 'readStatus', defaultOrMaker: $0.MSG_STATE.INIT, valueOf: $0.MSG_STATE.valueOf, enumValues: $0.MSG_STATE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserReadStatus clone() => UserReadStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserReadStatus copyWith(void Function(UserReadStatus) updates) => super.copyWith((message) => updates(message as UserReadStatus)) as UserReadStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserReadStatus create() => UserReadStatus._();
  UserReadStatus createEmptyInstance() => create();
  static $pb.PbList<UserReadStatus> createRepeated() => $pb.PbList<UserReadStatus>();
  @$core.pragma('dart2js:noInline')
  static UserReadStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserReadStatus>(create);
  static UserReadStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $0.MSG_STATE get readStatus => $_getN(1);
  @$pb.TagNumber(2)
  set readStatus($0.MSG_STATE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReadStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadStatus() => clearField(2);
}

class GroupHistoryMsg extends $pb.GeneratedMessage {
  factory GroupHistoryMsg({
    $fixnum.Int64? groupId,
    $fixnum.Int64? groupMsgSn,
    $fixnum.Int64? msgSn,
    $fixnum.Int64? srcId,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $0.MSG_STATE? msgStatus,
    $core.Iterable<UserReadStatus>? atUserReadStatus,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
    $core.List<$core.int>? pbCommData,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (groupMsgSn != null) {
      $result.groupMsgSn = groupMsgSn;
    }
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (srcId != null) {
      $result.srcId = srcId;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (msgStatus != null) {
      $result.msgStatus = msgStatus;
    }
    if (atUserReadStatus != null) {
      $result.atUserReadStatus.addAll(atUserReadStatus);
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    return $result;
  }
  GroupHistoryMsg._() : super();
  factory GroupHistoryMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupHistoryMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupHistoryMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupMsgSn', protoName: 'groupMsgSn')
    ..aInt64(3, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..aInt64(4, _omitFieldNames ? '' : 'srcId', protoName: 'srcId')
    ..aOS(5, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..e<$0.MSG_STATE>(7, _omitFieldNames ? '' : 'msgStatus', $pb.PbFieldType.OE, protoName: 'msgStatus', defaultOrMaker: $0.MSG_STATE.INIT, valueOf: $0.MSG_STATE.valueOf, enumValues: $0.MSG_STATE.values)
    ..pc<UserReadStatus>(8, _omitFieldNames ? '' : 'atUserReadStatus', $pb.PbFieldType.PM, protoName: 'atUserReadStatus', subBuilder: UserReadStatus.create)
    ..aInt64(9, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aInt64(10, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..a<$core.List<$core.int>>(11, _omitFieldNames ? '' : 'pbCommData', $pb.PbFieldType.OY, protoName: 'pbCommData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupHistoryMsg clone() => GroupHistoryMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupHistoryMsg copyWith(void Function(GroupHistoryMsg) updates) => super.copyWith((message) => updates(message as GroupHistoryMsg)) as GroupHistoryMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupHistoryMsg create() => GroupHistoryMsg._();
  GroupHistoryMsg createEmptyInstance() => create();
  static $pb.PbList<GroupHistoryMsg> createRepeated() => $pb.PbList<GroupHistoryMsg>();
  @$core.pragma('dart2js:noInline')
  static GroupHistoryMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupHistoryMsg>(create);
  static GroupHistoryMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupMsgSn => $_getI64(1);
  @$pb.TagNumber(2)
  set groupMsgSn($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupMsgSn() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupMsgSn() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get msgSn => $_getI64(2);
  @$pb.TagNumber(3)
  set msgSn($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsgSn() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgSn() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get srcId => $_getI64(3);
  @$pb.TagNumber(4)
  set srcId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSrcId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSrcId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get pbName => $_getSZ(4);
  @$pb.TagNumber(5)
  set pbName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPbName() => $_has(4);
  @$pb.TagNumber(5)
  void clearPbName() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get pbData => $_getN(5);
  @$pb.TagNumber(6)
  set pbData($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPbData() => $_has(5);
  @$pb.TagNumber(6)
  void clearPbData() => clearField(6);

  @$pb.TagNumber(7)
  $0.MSG_STATE get msgStatus => $_getN(6);
  @$pb.TagNumber(7)
  set msgStatus($0.MSG_STATE v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMsgStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearMsgStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<UserReadStatus> get atUserReadStatus => $_getList(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get createdAt => $_getI64(8);
  @$pb.TagNumber(9)
  set createdAt($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedAt() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get updatedAt => $_getI64(9);
  @$pb.TagNumber(10)
  set updatedAt($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearUpdatedAt() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get pbCommData => $_getN(10);
  @$pb.TagNumber(11)
  set pbCommData($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPbCommData() => $_has(10);
  @$pb.TagNumber(11)
  void clearPbCommData() => clearField(11);
}

/// 准备好接收群新消息信息，无返回，发送成功即可
class ReadyForGroupsNewMsgInfoReq extends $pb.GeneratedMessage {
  factory ReadyForGroupsNewMsgInfoReq() => create();
  ReadyForGroupsNewMsgInfoReq._() : super();
  factory ReadyForGroupsNewMsgInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadyForGroupsNewMsgInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadyForGroupsNewMsgInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadyForGroupsNewMsgInfoReq clone() => ReadyForGroupsNewMsgInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadyForGroupsNewMsgInfoReq copyWith(void Function(ReadyForGroupsNewMsgInfoReq) updates) => super.copyWith((message) => updates(message as ReadyForGroupsNewMsgInfoReq)) as ReadyForGroupsNewMsgInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadyForGroupsNewMsgInfoReq create() => ReadyForGroupsNewMsgInfoReq._();
  ReadyForGroupsNewMsgInfoReq createEmptyInstance() => create();
  static $pb.PbList<ReadyForGroupsNewMsgInfoReq> createRepeated() => $pb.PbList<ReadyForGroupsNewMsgInfoReq>();
  @$core.pragma('dart2js:noInline')
  static ReadyForGroupsNewMsgInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadyForGroupsNewMsgInfoReq>(create);
  static ReadyForGroupsNewMsgInfoReq? _defaultInstance;
}

class ReadyForGroupsNewMsgInfoRsp extends $pb.GeneratedMessage {
  factory ReadyForGroupsNewMsgInfoRsp() => create();
  ReadyForGroupsNewMsgInfoRsp._() : super();
  factory ReadyForGroupsNewMsgInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadyForGroupsNewMsgInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadyForGroupsNewMsgInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadyForGroupsNewMsgInfoRsp clone() => ReadyForGroupsNewMsgInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadyForGroupsNewMsgInfoRsp copyWith(void Function(ReadyForGroupsNewMsgInfoRsp) updates) => super.copyWith((message) => updates(message as ReadyForGroupsNewMsgInfoRsp)) as ReadyForGroupsNewMsgInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadyForGroupsNewMsgInfoRsp create() => ReadyForGroupsNewMsgInfoRsp._();
  ReadyForGroupsNewMsgInfoRsp createEmptyInstance() => create();
  static $pb.PbList<ReadyForGroupsNewMsgInfoRsp> createRepeated() => $pb.PbList<ReadyForGroupsNewMsgInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static ReadyForGroupsNewMsgInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadyForGroupsNewMsgInfoRsp>(create);
  static ReadyForGroupsNewMsgInfoRsp? _defaultInstance;
}

/// 获取用户相关所有群新消息信息
class UserGroupsNewMsgInfo extends $pb.GeneratedMessage {
  factory UserGroupsNewMsgInfo({
    $fixnum.Int64? groupId,
    $core.int? newMsgCount,
    GroupHistoryMsg? lastHisMsg,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (newMsgCount != null) {
      $result.newMsgCount = newMsgCount;
    }
    if (lastHisMsg != null) {
      $result.lastHisMsg = lastHisMsg;
    }
    return $result;
  }
  UserGroupsNewMsgInfo._() : super();
  factory UserGroupsNewMsgInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserGroupsNewMsgInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserGroupsNewMsgInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'newMsgCount', $pb.PbFieldType.O3, protoName: 'newMsgCount')
    ..aOM<GroupHistoryMsg>(3, _omitFieldNames ? '' : 'lastHisMsg', protoName: 'lastHisMsg', subBuilder: GroupHistoryMsg.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserGroupsNewMsgInfo clone() => UserGroupsNewMsgInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserGroupsNewMsgInfo copyWith(void Function(UserGroupsNewMsgInfo) updates) => super.copyWith((message) => updates(message as UserGroupsNewMsgInfo)) as UserGroupsNewMsgInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserGroupsNewMsgInfo create() => UserGroupsNewMsgInfo._();
  UserGroupsNewMsgInfo createEmptyInstance() => create();
  static $pb.PbList<UserGroupsNewMsgInfo> createRepeated() => $pb.PbList<UserGroupsNewMsgInfo>();
  @$core.pragma('dart2js:noInline')
  static UserGroupsNewMsgInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserGroupsNewMsgInfo>(create);
  static UserGroupsNewMsgInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get newMsgCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set newMsgCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewMsgCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewMsgCount() => clearField(2);

  @$pb.TagNumber(3)
  GroupHistoryMsg get lastHisMsg => $_getN(2);
  @$pb.TagNumber(3)
  set lastHisMsg(GroupHistoryMsg v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastHisMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastHisMsg() => clearField(3);
  @$pb.TagNumber(3)
  GroupHistoryMsg ensureLastHisMsg() => $_ensure(2);
}

/// ReadyForGroupsNewMsgInfoReq 消息到服务端后会触发下面的notify
class GroupsNewMsgInfoNotify extends $pb.GeneratedMessage {
  factory GroupsNewMsgInfoNotify({
    $core.Iterable<UserGroupsNewMsgInfo>? infoItem,
  }) {
    final $result = create();
    if (infoItem != null) {
      $result.infoItem.addAll(infoItem);
    }
    return $result;
  }
  GroupsNewMsgInfoNotify._() : super();
  factory GroupsNewMsgInfoNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupsNewMsgInfoNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupsNewMsgInfoNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..pc<UserGroupsNewMsgInfo>(4, _omitFieldNames ? '' : 'infoItem', $pb.PbFieldType.PM, protoName: 'infoItem', subBuilder: UserGroupsNewMsgInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupsNewMsgInfoNotify clone() => GroupsNewMsgInfoNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupsNewMsgInfoNotify copyWith(void Function(GroupsNewMsgInfoNotify) updates) => super.copyWith((message) => updates(message as GroupsNewMsgInfoNotify)) as GroupsNewMsgInfoNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupsNewMsgInfoNotify create() => GroupsNewMsgInfoNotify._();
  GroupsNewMsgInfoNotify createEmptyInstance() => create();
  static $pb.PbList<GroupsNewMsgInfoNotify> createRepeated() => $pb.PbList<GroupsNewMsgInfoNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupsNewMsgInfoNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupsNewMsgInfoNotify>(create);
  static GroupsNewMsgInfoNotify? _defaultInstance;

  @$pb.TagNumber(4)
  $core.List<UserGroupsNewMsgInfo> get infoItem => $_getList(0);
}

/// ////////////////////// 主动读取
class FetchGroupHistoryMsgReq extends $pb.GeneratedMessage {
  factory FetchGroupHistoryMsgReq({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? startCreatedAt,
    $fixnum.Int64? endCreatedAt,
    $fixnum.Int64? startUpdatedAt,
    $fixnum.Int64? endUpdatedAt,
    $fixnum.Int64? msgSn,
    $fixnum.Int64? groupId,
    $core.int? msgStatus,
    $fixnum.Int64? srcId,
    $core.String? pbName,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (startCreatedAt != null) {
      $result.startCreatedAt = startCreatedAt;
    }
    if (endCreatedAt != null) {
      $result.endCreatedAt = endCreatedAt;
    }
    if (startUpdatedAt != null) {
      $result.startUpdatedAt = startUpdatedAt;
    }
    if (endUpdatedAt != null) {
      $result.endUpdatedAt = endUpdatedAt;
    }
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (msgStatus != null) {
      $result.msgStatus = msgStatus;
    }
    if (srcId != null) {
      $result.srcId = srcId;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    return $result;
  }
  FetchGroupHistoryMsgReq._() : super();
  factory FetchGroupHistoryMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchGroupHistoryMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchGroupHistoryMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'startCreatedAt', protoName: 'startCreatedAt')
    ..aInt64(4, _omitFieldNames ? '' : 'endCreatedAt', protoName: 'endCreatedAt')
    ..aInt64(5, _omitFieldNames ? '' : 'startUpdatedAt', protoName: 'startUpdatedAt')
    ..aInt64(6, _omitFieldNames ? '' : 'endUpdatedAt', protoName: 'endUpdatedAt')
    ..aInt64(7, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..aInt64(8, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'msgStatus', $pb.PbFieldType.O3, protoName: 'msgStatus')
    ..aInt64(10, _omitFieldNames ? '' : 'srcId', protoName: 'srcId')
    ..aOS(11, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchGroupHistoryMsgReq clone() => FetchGroupHistoryMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchGroupHistoryMsgReq copyWith(void Function(FetchGroupHistoryMsgReq) updates) => super.copyWith((message) => updates(message as FetchGroupHistoryMsgReq)) as FetchGroupHistoryMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchGroupHistoryMsgReq create() => FetchGroupHistoryMsgReq._();
  FetchGroupHistoryMsgReq createEmptyInstance() => create();
  static $pb.PbList<FetchGroupHistoryMsgReq> createRepeated() => $pb.PbList<FetchGroupHistoryMsgReq>();
  @$core.pragma('dart2js:noInline')
  static FetchGroupHistoryMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchGroupHistoryMsgReq>(create);
  static FetchGroupHistoryMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  /// 查询条件
  @$pb.TagNumber(3)
  $fixnum.Int64 get startCreatedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set startCreatedAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartCreatedAt() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get endCreatedAt => $_getI64(3);
  @$pb.TagNumber(4)
  set endCreatedAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndCreatedAt() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get startUpdatedAt => $_getI64(4);
  @$pb.TagNumber(5)
  set startUpdatedAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartUpdatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartUpdatedAt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get endUpdatedAt => $_getI64(5);
  @$pb.TagNumber(6)
  set endUpdatedAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndUpdatedAt() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get msgSn => $_getI64(6);
  @$pb.TagNumber(7)
  set msgSn($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMsgSn() => $_has(6);
  @$pb.TagNumber(7)
  void clearMsgSn() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get groupId => $_getI64(7);
  @$pb.TagNumber(8)
  set groupId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGroupId() => $_has(7);
  @$pb.TagNumber(8)
  void clearGroupId() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get msgStatus => $_getIZ(8);
  @$pb.TagNumber(9)
  set msgStatus($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMsgStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearMsgStatus() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get srcId => $_getI64(9);
  @$pb.TagNumber(10)
  set srcId($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSrcId() => $_has(9);
  @$pb.TagNumber(10)
  void clearSrcId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get pbName => $_getSZ(10);
  @$pb.TagNumber(11)
  set pbName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPbName() => $_has(10);
  @$pb.TagNumber(11)
  void clearPbName() => clearField(11);
}

class FetchGroupHistoryMsgRsp extends $pb.GeneratedMessage {
  factory FetchGroupHistoryMsgRsp({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? total,
    $core.Iterable<GroupHistoryMsg>? pbHisMsg,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (total != null) {
      $result.total = total;
    }
    if (pbHisMsg != null) {
      $result.pbHisMsg.addAll(pbHisMsg);
    }
    return $result;
  }
  FetchGroupHistoryMsgRsp._() : super();
  factory FetchGroupHistoryMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchGroupHistoryMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchGroupHistoryMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'total')
    ..pc<GroupHistoryMsg>(4, _omitFieldNames ? '' : 'pbHisMsg', $pb.PbFieldType.PM, protoName: 'pbHisMsg', subBuilder: GroupHistoryMsg.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchGroupHistoryMsgRsp clone() => FetchGroupHistoryMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchGroupHistoryMsgRsp copyWith(void Function(FetchGroupHistoryMsgRsp) updates) => super.copyWith((message) => updates(message as FetchGroupHistoryMsgRsp)) as FetchGroupHistoryMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchGroupHistoryMsgRsp create() => FetchGroupHistoryMsgRsp._();
  FetchGroupHistoryMsgRsp createEmptyInstance() => create();
  static $pb.PbList<FetchGroupHistoryMsgRsp> createRepeated() => $pb.PbList<FetchGroupHistoryMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchGroupHistoryMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchGroupHistoryMsgRsp>(create);
  static FetchGroupHistoryMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get total => $_getI64(2);
  @$pb.TagNumber(3)
  set total($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);

  /// 消息
  @$pb.TagNumber(4)
  $core.List<GroupHistoryMsg> get pbHisMsg => $_getList(3);
}

/// ////////////////////// 主动读取
class FetchGroupHistoryMsgFromGroupMsgSnReq extends $pb.GeneratedMessage {
  factory FetchGroupHistoryMsgFromGroupMsgSnReq({
    $fixnum.Int64? startGroupMsgSn,
    $fixnum.Int64? wantCount,
    $core.bool? orderDesc,
  }) {
    final $result = create();
    if (startGroupMsgSn != null) {
      $result.startGroupMsgSn = startGroupMsgSn;
    }
    if (wantCount != null) {
      $result.wantCount = wantCount;
    }
    if (orderDesc != null) {
      $result.orderDesc = orderDesc;
    }
    return $result;
  }
  FetchGroupHistoryMsgFromGroupMsgSnReq._() : super();
  factory FetchGroupHistoryMsgFromGroupMsgSnReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchGroupHistoryMsgFromGroupMsgSnReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchGroupHistoryMsgFromGroupMsgSnReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'startGroupMsgSn', protoName: 'startGroupMsgSn')
    ..aInt64(2, _omitFieldNames ? '' : 'wantCount', protoName: 'wantCount')
    ..aOB(3, _omitFieldNames ? '' : 'orderDesc', protoName: 'orderDesc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchGroupHistoryMsgFromGroupMsgSnReq clone() => FetchGroupHistoryMsgFromGroupMsgSnReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchGroupHistoryMsgFromGroupMsgSnReq copyWith(void Function(FetchGroupHistoryMsgFromGroupMsgSnReq) updates) => super.copyWith((message) => updates(message as FetchGroupHistoryMsgFromGroupMsgSnReq)) as FetchGroupHistoryMsgFromGroupMsgSnReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchGroupHistoryMsgFromGroupMsgSnReq create() => FetchGroupHistoryMsgFromGroupMsgSnReq._();
  FetchGroupHistoryMsgFromGroupMsgSnReq createEmptyInstance() => create();
  static $pb.PbList<FetchGroupHistoryMsgFromGroupMsgSnReq> createRepeated() => $pb.PbList<FetchGroupHistoryMsgFromGroupMsgSnReq>();
  @$core.pragma('dart2js:noInline')
  static FetchGroupHistoryMsgFromGroupMsgSnReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchGroupHistoryMsgFromGroupMsgSnReq>(create);
  static FetchGroupHistoryMsgFromGroupMsgSnReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get startGroupMsgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set startGroupMsgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartGroupMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartGroupMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get wantCount => $_getI64(1);
  @$pb.TagNumber(2)
  set wantCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWantCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearWantCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get orderDesc => $_getBF(2);
  @$pb.TagNumber(3)
  set orderDesc($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderDesc() => clearField(3);
}

class FetchGroupHistoryMsgFromGroupMsgSnRsp extends $pb.GeneratedMessage {
  factory FetchGroupHistoryMsgFromGroupMsgSnRsp({
    $fixnum.Int64? startGroupMsgSn,
    $fixnum.Int64? wantCount,
    $core.bool? orderDesc,
    $core.Iterable<GroupHistoryMsg>? pbHisMsg,
  }) {
    final $result = create();
    if (startGroupMsgSn != null) {
      $result.startGroupMsgSn = startGroupMsgSn;
    }
    if (wantCount != null) {
      $result.wantCount = wantCount;
    }
    if (orderDesc != null) {
      $result.orderDesc = orderDesc;
    }
    if (pbHisMsg != null) {
      $result.pbHisMsg.addAll(pbHisMsg);
    }
    return $result;
  }
  FetchGroupHistoryMsgFromGroupMsgSnRsp._() : super();
  factory FetchGroupHistoryMsgFromGroupMsgSnRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchGroupHistoryMsgFromGroupMsgSnRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchGroupHistoryMsgFromGroupMsgSnRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'startGroupMsgSn', protoName: 'startGroupMsgSn')
    ..aInt64(2, _omitFieldNames ? '' : 'wantCount', protoName: 'wantCount')
    ..aOB(3, _omitFieldNames ? '' : 'orderDesc', protoName: 'orderDesc')
    ..pc<GroupHistoryMsg>(4, _omitFieldNames ? '' : 'pbHisMsg', $pb.PbFieldType.PM, protoName: 'pbHisMsg', subBuilder: GroupHistoryMsg.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchGroupHistoryMsgFromGroupMsgSnRsp clone() => FetchGroupHistoryMsgFromGroupMsgSnRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchGroupHistoryMsgFromGroupMsgSnRsp copyWith(void Function(FetchGroupHistoryMsgFromGroupMsgSnRsp) updates) => super.copyWith((message) => updates(message as FetchGroupHistoryMsgFromGroupMsgSnRsp)) as FetchGroupHistoryMsgFromGroupMsgSnRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchGroupHistoryMsgFromGroupMsgSnRsp create() => FetchGroupHistoryMsgFromGroupMsgSnRsp._();
  FetchGroupHistoryMsgFromGroupMsgSnRsp createEmptyInstance() => create();
  static $pb.PbList<FetchGroupHistoryMsgFromGroupMsgSnRsp> createRepeated() => $pb.PbList<FetchGroupHistoryMsgFromGroupMsgSnRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchGroupHistoryMsgFromGroupMsgSnRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchGroupHistoryMsgFromGroupMsgSnRsp>(create);
  static FetchGroupHistoryMsgFromGroupMsgSnRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get startGroupMsgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set startGroupMsgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartGroupMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartGroupMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get wantCount => $_getI64(1);
  @$pb.TagNumber(2)
  set wantCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWantCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearWantCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get orderDesc => $_getBF(2);
  @$pb.TagNumber(3)
  set orderDesc($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderDesc() => clearField(3);

  /// 消息
  @$pb.TagNumber(4)
  $core.List<GroupHistoryMsg> get pbHisMsg => $_getList(3);
}

/// 群置顶请求,true 为置顶， false：取消置顶
class GroupTopSetReq extends $pb.GeneratedMessage {
  factory GroupTopSetReq({
    $core.bool? top,
  }) {
    final $result = create();
    if (top != null) {
      $result.top = top;
    }
    return $result;
  }
  GroupTopSetReq._() : super();
  factory GroupTopSetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupTopSetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupTopSetReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'top')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupTopSetReq clone() => GroupTopSetReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupTopSetReq copyWith(void Function(GroupTopSetReq) updates) => super.copyWith((message) => updates(message as GroupTopSetReq)) as GroupTopSetReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupTopSetReq create() => GroupTopSetReq._();
  GroupTopSetReq createEmptyInstance() => create();
  static $pb.PbList<GroupTopSetReq> createRepeated() => $pb.PbList<GroupTopSetReq>();
  @$core.pragma('dart2js:noInline')
  static GroupTopSetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupTopSetReq>(create);
  static GroupTopSetReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get top => $_getBF(0);
  @$pb.TagNumber(1)
  set top($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTop() => $_has(0);
  @$pb.TagNumber(1)
  void clearTop() => clearField(1);
}

class GroupTopSetRsp extends $pb.GeneratedMessage {
  factory GroupTopSetRsp({
    $core.bool? top,
  }) {
    final $result = create();
    if (top != null) {
      $result.top = top;
    }
    return $result;
  }
  GroupTopSetRsp._() : super();
  factory GroupTopSetRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupTopSetRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupTopSetRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'top')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupTopSetRsp clone() => GroupTopSetRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupTopSetRsp copyWith(void Function(GroupTopSetRsp) updates) => super.copyWith((message) => updates(message as GroupTopSetRsp)) as GroupTopSetRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupTopSetRsp create() => GroupTopSetRsp._();
  GroupTopSetRsp createEmptyInstance() => create();
  static $pb.PbList<GroupTopSetRsp> createRepeated() => $pb.PbList<GroupTopSetRsp>();
  @$core.pragma('dart2js:noInline')
  static GroupTopSetRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupTopSetRsp>(create);
  static GroupTopSetRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get top => $_getBF(0);
  @$pb.TagNumber(1)
  set top($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTop() => $_has(0);
  @$pb.TagNumber(1)
  void clearTop() => clearField(1);
}

/// 修改群备注参数
class EditGroupRemarkReq extends $pb.GeneratedMessage {
  factory EditGroupRemarkReq({
    $core.String? remark,
  }) {
    final $result = create();
    if (remark != null) {
      $result.remark = remark;
    }
    return $result;
  }
  EditGroupRemarkReq._() : super();
  factory EditGroupRemarkReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditGroupRemarkReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditGroupRemarkReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remark')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditGroupRemarkReq clone() => EditGroupRemarkReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditGroupRemarkReq copyWith(void Function(EditGroupRemarkReq) updates) => super.copyWith((message) => updates(message as EditGroupRemarkReq)) as EditGroupRemarkReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditGroupRemarkReq create() => EditGroupRemarkReq._();
  EditGroupRemarkReq createEmptyInstance() => create();
  static $pb.PbList<EditGroupRemarkReq> createRepeated() => $pb.PbList<EditGroupRemarkReq>();
  @$core.pragma('dart2js:noInline')
  static EditGroupRemarkReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditGroupRemarkReq>(create);
  static EditGroupRemarkReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remark => $_getSZ(0);
  @$pb.TagNumber(1)
  set remark($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemark() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemark() => clearField(1);
}

class EditGroupRemarkRsp extends $pb.GeneratedMessage {
  factory EditGroupRemarkRsp({
    $core.String? remark,
  }) {
    final $result = create();
    if (remark != null) {
      $result.remark = remark;
    }
    return $result;
  }
  EditGroupRemarkRsp._() : super();
  factory EditGroupRemarkRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditGroupRemarkRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditGroupRemarkRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remark')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditGroupRemarkRsp clone() => EditGroupRemarkRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditGroupRemarkRsp copyWith(void Function(EditGroupRemarkRsp) updates) => super.copyWith((message) => updates(message as EditGroupRemarkRsp)) as EditGroupRemarkRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditGroupRemarkRsp create() => EditGroupRemarkRsp._();
  EditGroupRemarkRsp createEmptyInstance() => create();
  static $pb.PbList<EditGroupRemarkRsp> createRepeated() => $pb.PbList<EditGroupRemarkRsp>();
  @$core.pragma('dart2js:noInline')
  static EditGroupRemarkRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditGroupRemarkRsp>(create);
  static EditGroupRemarkRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remark => $_getSZ(0);
  @$pb.TagNumber(1)
  set remark($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemark() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemark() => clearField(1);
}

/// 修改群成员备注参数
class EditMemberRemarkReq extends $pb.GeneratedMessage {
  factory EditMemberRemarkReq({
    $fixnum.Int64? remarkedUserId,
    $core.String? remark,
  }) {
    final $result = create();
    if (remarkedUserId != null) {
      $result.remarkedUserId = remarkedUserId;
    }
    if (remark != null) {
      $result.remark = remark;
    }
    return $result;
  }
  EditMemberRemarkReq._() : super();
  factory EditMemberRemarkReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditMemberRemarkReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditMemberRemarkReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'remarkedUserId', protoName: 'remarkedUserId')
    ..aOS(2, _omitFieldNames ? '' : 'remark')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditMemberRemarkReq clone() => EditMemberRemarkReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditMemberRemarkReq copyWith(void Function(EditMemberRemarkReq) updates) => super.copyWith((message) => updates(message as EditMemberRemarkReq)) as EditMemberRemarkReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditMemberRemarkReq create() => EditMemberRemarkReq._();
  EditMemberRemarkReq createEmptyInstance() => create();
  static $pb.PbList<EditMemberRemarkReq> createRepeated() => $pb.PbList<EditMemberRemarkReq>();
  @$core.pragma('dart2js:noInline')
  static EditMemberRemarkReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditMemberRemarkReq>(create);
  static EditMemberRemarkReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get remarkedUserId => $_getI64(0);
  @$pb.TagNumber(1)
  set remarkedUserId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemarkedUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemarkedUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get remark => $_getSZ(1);
  @$pb.TagNumber(2)
  set remark($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemark() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemark() => clearField(2);
}

class EditMemberRemarkRsp extends $pb.GeneratedMessage {
  factory EditMemberRemarkRsp({
    $fixnum.Int64? remarkedUserId,
    $core.String? remark,
  }) {
    final $result = create();
    if (remarkedUserId != null) {
      $result.remarkedUserId = remarkedUserId;
    }
    if (remark != null) {
      $result.remark = remark;
    }
    return $result;
  }
  EditMemberRemarkRsp._() : super();
  factory EditMemberRemarkRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditMemberRemarkRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditMemberRemarkRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'remarkedUserId', protoName: 'remarkedUserId')
    ..aOS(2, _omitFieldNames ? '' : 'remark')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditMemberRemarkRsp clone() => EditMemberRemarkRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditMemberRemarkRsp copyWith(void Function(EditMemberRemarkRsp) updates) => super.copyWith((message) => updates(message as EditMemberRemarkRsp)) as EditMemberRemarkRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditMemberRemarkRsp create() => EditMemberRemarkRsp._();
  EditMemberRemarkRsp createEmptyInstance() => create();
  static $pb.PbList<EditMemberRemarkRsp> createRepeated() => $pb.PbList<EditMemberRemarkRsp>();
  @$core.pragma('dart2js:noInline')
  static EditMemberRemarkRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditMemberRemarkRsp>(create);
  static EditMemberRemarkRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get remarkedUserId => $_getI64(0);
  @$pb.TagNumber(1)
  set remarkedUserId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemarkedUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemarkedUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get remark => $_getSZ(1);
  @$pb.TagNumber(2)
  set remark($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemark() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemark() => clearField(2);
}

/// 判断是否群成员
class IsGroupMemberReq extends $pb.GeneratedMessage {
  factory IsGroupMemberReq() => create();
  IsGroupMemberReq._() : super();
  factory IsGroupMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsGroupMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsGroupMemberReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsGroupMemberReq clone() => IsGroupMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsGroupMemberReq copyWith(void Function(IsGroupMemberReq) updates) => super.copyWith((message) => updates(message as IsGroupMemberReq)) as IsGroupMemberReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsGroupMemberReq create() => IsGroupMemberReq._();
  IsGroupMemberReq createEmptyInstance() => create();
  static $pb.PbList<IsGroupMemberReq> createRepeated() => $pb.PbList<IsGroupMemberReq>();
  @$core.pragma('dart2js:noInline')
  static IsGroupMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsGroupMemberReq>(create);
  static IsGroupMemberReq? _defaultInstance;
}

class IsGroupMemberRsp extends $pb.GeneratedMessage {
  factory IsGroupMemberRsp({
    $core.bool? isGroupMember,
  }) {
    final $result = create();
    if (isGroupMember != null) {
      $result.isGroupMember = isGroupMember;
    }
    return $result;
  }
  IsGroupMemberRsp._() : super();
  factory IsGroupMemberRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsGroupMemberRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsGroupMemberRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'IsGroupMember', protoName: 'IsGroupMember')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsGroupMemberRsp clone() => IsGroupMemberRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsGroupMemberRsp copyWith(void Function(IsGroupMemberRsp) updates) => super.copyWith((message) => updates(message as IsGroupMemberRsp)) as IsGroupMemberRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsGroupMemberRsp create() => IsGroupMemberRsp._();
  IsGroupMemberRsp createEmptyInstance() => create();
  static $pb.PbList<IsGroupMemberRsp> createRepeated() => $pb.PbList<IsGroupMemberRsp>();
  @$core.pragma('dart2js:noInline')
  static IsGroupMemberRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsGroupMemberRsp>(create);
  static IsGroupMemberRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isGroupMember => $_getBF(0);
  @$pb.TagNumber(1)
  set isGroupMember($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsGroupMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsGroupMember() => clearField(1);
}

class StatusChangeItem extends $pb.GeneratedMessage {
  factory StatusChangeItem({
    $fixnum.Int64? msgSn,
    $0.MSG_STATE? msgCurStatus,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (msgCurStatus != null) {
      $result.msgCurStatus = msgCurStatus;
    }
    return $result;
  }
  StatusChangeItem._() : super();
  factory StatusChangeItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusChangeItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusChangeItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..e<$0.MSG_STATE>(2, _omitFieldNames ? '' : 'msgCurStatus', $pb.PbFieldType.OE, protoName: 'msgCurStatus', defaultOrMaker: $0.MSG_STATE.INIT, valueOf: $0.MSG_STATE.valueOf, enumValues: $0.MSG_STATE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusChangeItem clone() => StatusChangeItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusChangeItem copyWith(void Function(StatusChangeItem) updates) => super.copyWith((message) => updates(message as StatusChangeItem)) as StatusChangeItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusChangeItem create() => StatusChangeItem._();
  StatusChangeItem createEmptyInstance() => create();
  static $pb.PbList<StatusChangeItem> createRepeated() => $pb.PbList<StatusChangeItem>();
  @$core.pragma('dart2js:noInline')
  static StatusChangeItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusChangeItem>(create);
  static StatusChangeItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $0.MSG_STATE get msgCurStatus => $_getN(1);
  @$pb.TagNumber(2)
  set msgCurStatus($0.MSG_STATE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgCurStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgCurStatus() => clearField(2);
}

/// 服务端发送给客户端
class GroupOfflineMsgStatusChangeNotify extends $pb.GeneratedMessage {
  factory GroupOfflineMsgStatusChangeNotify({
    $fixnum.Int64? session,
    $core.Iterable<StatusChangeItem>? statusChangeItems,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    if (statusChangeItems != null) {
      $result.statusChangeItems.addAll(statusChangeItems);
    }
    return $result;
  }
  GroupOfflineMsgStatusChangeNotify._() : super();
  factory GroupOfflineMsgStatusChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupOfflineMsgStatusChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupOfflineMsgStatusChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'session')
    ..pc<StatusChangeItem>(2, _omitFieldNames ? '' : 'StatusChangeItems', $pb.PbFieldType.PM, protoName: 'StatusChangeItems', subBuilder: StatusChangeItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupOfflineMsgStatusChangeNotify clone() => GroupOfflineMsgStatusChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupOfflineMsgStatusChangeNotify copyWith(void Function(GroupOfflineMsgStatusChangeNotify) updates) => super.copyWith((message) => updates(message as GroupOfflineMsgStatusChangeNotify)) as GroupOfflineMsgStatusChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupOfflineMsgStatusChangeNotify create() => GroupOfflineMsgStatusChangeNotify._();
  GroupOfflineMsgStatusChangeNotify createEmptyInstance() => create();
  static $pb.PbList<GroupOfflineMsgStatusChangeNotify> createRepeated() => $pb.PbList<GroupOfflineMsgStatusChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupOfflineMsgStatusChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupOfflineMsgStatusChangeNotify>(create);
  static GroupOfflineMsgStatusChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get session => $_getI64(0);
  @$pb.TagNumber(1)
  set session($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<StatusChangeItem> get statusChangeItems => $_getList(1);
}

/// 客户端发回给服务端，确认已经收到
class GroupOfflineMsgStatusChangeNotifyReceived extends $pb.GeneratedMessage {
  factory GroupOfflineMsgStatusChangeNotifyReceived({
    $fixnum.Int64? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  GroupOfflineMsgStatusChangeNotifyReceived._() : super();
  factory GroupOfflineMsgStatusChangeNotifyReceived.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupOfflineMsgStatusChangeNotifyReceived.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupOfflineMsgStatusChangeNotifyReceived', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'session')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupOfflineMsgStatusChangeNotifyReceived clone() => GroupOfflineMsgStatusChangeNotifyReceived()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupOfflineMsgStatusChangeNotifyReceived copyWith(void Function(GroupOfflineMsgStatusChangeNotifyReceived) updates) => super.copyWith((message) => updates(message as GroupOfflineMsgStatusChangeNotifyReceived)) as GroupOfflineMsgStatusChangeNotifyReceived;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupOfflineMsgStatusChangeNotifyReceived create() => GroupOfflineMsgStatusChangeNotifyReceived._();
  GroupOfflineMsgStatusChangeNotifyReceived createEmptyInstance() => create();
  static $pb.PbList<GroupOfflineMsgStatusChangeNotifyReceived> createRepeated() => $pb.PbList<GroupOfflineMsgStatusChangeNotifyReceived>();
  @$core.pragma('dart2js:noInline')
  static GroupOfflineMsgStatusChangeNotifyReceived getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupOfflineMsgStatusChangeNotifyReceived>(create);
  static GroupOfflineMsgStatusChangeNotifyReceived? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get session => $_getI64(0);
  @$pb.TagNumber(1)
  set session($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
}

/// 群用户禁言状态，只有管理员才可发言
class SetMemberChatBannedStatusReq extends $pb.GeneratedMessage {
  factory SetMemberChatBannedStatusReq({
    $core.int? bannedStatus,
  }) {
    final $result = create();
    if (bannedStatus != null) {
      $result.bannedStatus = bannedStatus;
    }
    return $result;
  }
  SetMemberChatBannedStatusReq._() : super();
  factory SetMemberChatBannedStatusReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetMemberChatBannedStatusReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetMemberChatBannedStatusReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bannedStatus', $pb.PbFieldType.O3, protoName: 'bannedStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetMemberChatBannedStatusReq clone() => SetMemberChatBannedStatusReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetMemberChatBannedStatusReq copyWith(void Function(SetMemberChatBannedStatusReq) updates) => super.copyWith((message) => updates(message as SetMemberChatBannedStatusReq)) as SetMemberChatBannedStatusReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetMemberChatBannedStatusReq create() => SetMemberChatBannedStatusReq._();
  SetMemberChatBannedStatusReq createEmptyInstance() => create();
  static $pb.PbList<SetMemberChatBannedStatusReq> createRepeated() => $pb.PbList<SetMemberChatBannedStatusReq>();
  @$core.pragma('dart2js:noInline')
  static SetMemberChatBannedStatusReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetMemberChatBannedStatusReq>(create);
  static SetMemberChatBannedStatusReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bannedStatus => $_getIZ(0);
  @$pb.TagNumber(1)
  set bannedStatus($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBannedStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearBannedStatus() => clearField(1);
}

class SetMemberChatBannedStatusRsp extends $pb.GeneratedMessage {
  factory SetMemberChatBannedStatusRsp({
    $core.int? bannedStatus,
  }) {
    final $result = create();
    if (bannedStatus != null) {
      $result.bannedStatus = bannedStatus;
    }
    return $result;
  }
  SetMemberChatBannedStatusRsp._() : super();
  factory SetMemberChatBannedStatusRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetMemberChatBannedStatusRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetMemberChatBannedStatusRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bannedStatus', $pb.PbFieldType.O3, protoName: 'bannedStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetMemberChatBannedStatusRsp clone() => SetMemberChatBannedStatusRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetMemberChatBannedStatusRsp copyWith(void Function(SetMemberChatBannedStatusRsp) updates) => super.copyWith((message) => updates(message as SetMemberChatBannedStatusRsp)) as SetMemberChatBannedStatusRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetMemberChatBannedStatusRsp create() => SetMemberChatBannedStatusRsp._();
  SetMemberChatBannedStatusRsp createEmptyInstance() => create();
  static $pb.PbList<SetMemberChatBannedStatusRsp> createRepeated() => $pb.PbList<SetMemberChatBannedStatusRsp>();
  @$core.pragma('dart2js:noInline')
  static SetMemberChatBannedStatusRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetMemberChatBannedStatusRsp>(create);
  static SetMemberChatBannedStatusRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bannedStatus => $_getIZ(0);
  @$pb.TagNumber(1)
  set bannedStatus($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBannedStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearBannedStatus() => clearField(1);
}

/// 群用户禁言状态，只有管理员才可发言
class SetNewMemberRemindReq extends $pb.GeneratedMessage {
  factory SetNewMemberRemindReq({
    $core.bool? newMemberRemindClosed,
  }) {
    final $result = create();
    if (newMemberRemindClosed != null) {
      $result.newMemberRemindClosed = newMemberRemindClosed;
    }
    return $result;
  }
  SetNewMemberRemindReq._() : super();
  factory SetNewMemberRemindReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetNewMemberRemindReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetNewMemberRemindReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'newMemberRemindClosed', protoName: 'newMemberRemindClosed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetNewMemberRemindReq clone() => SetNewMemberRemindReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetNewMemberRemindReq copyWith(void Function(SetNewMemberRemindReq) updates) => super.copyWith((message) => updates(message as SetNewMemberRemindReq)) as SetNewMemberRemindReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetNewMemberRemindReq create() => SetNewMemberRemindReq._();
  SetNewMemberRemindReq createEmptyInstance() => create();
  static $pb.PbList<SetNewMemberRemindReq> createRepeated() => $pb.PbList<SetNewMemberRemindReq>();
  @$core.pragma('dart2js:noInline')
  static SetNewMemberRemindReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetNewMemberRemindReq>(create);
  static SetNewMemberRemindReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get newMemberRemindClosed => $_getBF(0);
  @$pb.TagNumber(1)
  set newMemberRemindClosed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewMemberRemindClosed() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewMemberRemindClosed() => clearField(1);
}

class SetNewMemberRemindRsp extends $pb.GeneratedMessage {
  factory SetNewMemberRemindRsp({
    $core.bool? newMemberRemindClosed,
  }) {
    final $result = create();
    if (newMemberRemindClosed != null) {
      $result.newMemberRemindClosed = newMemberRemindClosed;
    }
    return $result;
  }
  SetNewMemberRemindRsp._() : super();
  factory SetNewMemberRemindRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetNewMemberRemindRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetNewMemberRemindRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'newMemberRemindClosed', protoName: 'newMemberRemindClosed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetNewMemberRemindRsp clone() => SetNewMemberRemindRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetNewMemberRemindRsp copyWith(void Function(SetNewMemberRemindRsp) updates) => super.copyWith((message) => updates(message as SetNewMemberRemindRsp)) as SetNewMemberRemindRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetNewMemberRemindRsp create() => SetNewMemberRemindRsp._();
  SetNewMemberRemindRsp createEmptyInstance() => create();
  static $pb.PbList<SetNewMemberRemindRsp> createRepeated() => $pb.PbList<SetNewMemberRemindRsp>();
  @$core.pragma('dart2js:noInline')
  static SetNewMemberRemindRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetNewMemberRemindRsp>(create);
  static SetNewMemberRemindRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get newMemberRemindClosed => $_getBF(0);
  @$pb.TagNumber(1)
  set newMemberRemindClosed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewMemberRemindClosed() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewMemberRemindClosed() => clearField(1);
}

/// 禁言状态改变通知
class MemberChatBannedStatusChangeNotify extends $pb.GeneratedMessage {
  factory MemberChatBannedStatusChangeNotify({
    $core.int? bannedStatus,
  }) {
    final $result = create();
    if (bannedStatus != null) {
      $result.bannedStatus = bannedStatus;
    }
    return $result;
  }
  MemberChatBannedStatusChangeNotify._() : super();
  factory MemberChatBannedStatusChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberChatBannedStatusChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberChatBannedStatusChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bannedStatus', $pb.PbFieldType.O3, protoName: 'bannedStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberChatBannedStatusChangeNotify clone() => MemberChatBannedStatusChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberChatBannedStatusChangeNotify copyWith(void Function(MemberChatBannedStatusChangeNotify) updates) => super.copyWith((message) => updates(message as MemberChatBannedStatusChangeNotify)) as MemberChatBannedStatusChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberChatBannedStatusChangeNotify create() => MemberChatBannedStatusChangeNotify._();
  MemberChatBannedStatusChangeNotify createEmptyInstance() => create();
  static $pb.PbList<MemberChatBannedStatusChangeNotify> createRepeated() => $pb.PbList<MemberChatBannedStatusChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static MemberChatBannedStatusChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberChatBannedStatusChangeNotify>(create);
  static MemberChatBannedStatusChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bannedStatus => $_getIZ(0);
  @$pb.TagNumber(1)
  set bannedStatus($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBannedStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearBannedStatus() => clearField(1);
}

/// ///////////////////////////
///  扫码入群开关 开始
///  关闭状态： 二维码永久失效，无法扫码入群，再次开启则会使用新的key产生新的二维码
///  开启状态: 用户可以通过扫码入群
class SetScanCodeJoinGroupSwitchReq extends $pb.GeneratedMessage {
  factory SetScanCodeJoinGroupSwitchReq({
    $core.bool? switchStatus,
  }) {
    final $result = create();
    if (switchStatus != null) {
      $result.switchStatus = switchStatus;
    }
    return $result;
  }
  SetScanCodeJoinGroupSwitchReq._() : super();
  factory SetScanCodeJoinGroupSwitchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetScanCodeJoinGroupSwitchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetScanCodeJoinGroupSwitchReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'switchStatus', protoName: 'switchStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetScanCodeJoinGroupSwitchReq clone() => SetScanCodeJoinGroupSwitchReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetScanCodeJoinGroupSwitchReq copyWith(void Function(SetScanCodeJoinGroupSwitchReq) updates) => super.copyWith((message) => updates(message as SetScanCodeJoinGroupSwitchReq)) as SetScanCodeJoinGroupSwitchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetScanCodeJoinGroupSwitchReq create() => SetScanCodeJoinGroupSwitchReq._();
  SetScanCodeJoinGroupSwitchReq createEmptyInstance() => create();
  static $pb.PbList<SetScanCodeJoinGroupSwitchReq> createRepeated() => $pb.PbList<SetScanCodeJoinGroupSwitchReq>();
  @$core.pragma('dart2js:noInline')
  static SetScanCodeJoinGroupSwitchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetScanCodeJoinGroupSwitchReq>(create);
  static SetScanCodeJoinGroupSwitchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchStatus => $_getBF(0);
  @$pb.TagNumber(1)
  set switchStatus($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchStatus() => clearField(1);
}

class SetScanCodeJoinGroupSwitchRsp extends $pb.GeneratedMessage {
  factory SetScanCodeJoinGroupSwitchRsp({
    $core.bool? switchStatus,
    $core.String? scanCodeKey,
  }) {
    final $result = create();
    if (switchStatus != null) {
      $result.switchStatus = switchStatus;
    }
    if (scanCodeKey != null) {
      $result.scanCodeKey = scanCodeKey;
    }
    return $result;
  }
  SetScanCodeJoinGroupSwitchRsp._() : super();
  factory SetScanCodeJoinGroupSwitchRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetScanCodeJoinGroupSwitchRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetScanCodeJoinGroupSwitchRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'switchStatus', protoName: 'switchStatus')
    ..aOS(2, _omitFieldNames ? '' : 'scanCodeKey', protoName: 'scanCodeKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetScanCodeJoinGroupSwitchRsp clone() => SetScanCodeJoinGroupSwitchRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetScanCodeJoinGroupSwitchRsp copyWith(void Function(SetScanCodeJoinGroupSwitchRsp) updates) => super.copyWith((message) => updates(message as SetScanCodeJoinGroupSwitchRsp)) as SetScanCodeJoinGroupSwitchRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetScanCodeJoinGroupSwitchRsp create() => SetScanCodeJoinGroupSwitchRsp._();
  SetScanCodeJoinGroupSwitchRsp createEmptyInstance() => create();
  static $pb.PbList<SetScanCodeJoinGroupSwitchRsp> createRepeated() => $pb.PbList<SetScanCodeJoinGroupSwitchRsp>();
  @$core.pragma('dart2js:noInline')
  static SetScanCodeJoinGroupSwitchRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetScanCodeJoinGroupSwitchRsp>(create);
  static SetScanCodeJoinGroupSwitchRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchStatus => $_getBF(0);
  @$pb.TagNumber(1)
  set switchStatus($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get scanCodeKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set scanCodeKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScanCodeKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScanCodeKey() => clearField(2);
}

/// 扫码入群开关通知
class ScanCodeJoinGroupSwitchStatusChangeNotify extends $pb.GeneratedMessage {
  factory ScanCodeJoinGroupSwitchStatusChangeNotify({
    $core.bool? switchStatus,
    $core.String? scanCodeKey,
  }) {
    final $result = create();
    if (switchStatus != null) {
      $result.switchStatus = switchStatus;
    }
    if (scanCodeKey != null) {
      $result.scanCodeKey = scanCodeKey;
    }
    return $result;
  }
  ScanCodeJoinGroupSwitchStatusChangeNotify._() : super();
  factory ScanCodeJoinGroupSwitchStatusChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScanCodeJoinGroupSwitchStatusChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScanCodeJoinGroupSwitchStatusChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'switchStatus', protoName: 'switchStatus')
    ..aOS(2, _omitFieldNames ? '' : 'scanCodeKey', protoName: 'scanCodeKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScanCodeJoinGroupSwitchStatusChangeNotify clone() => ScanCodeJoinGroupSwitchStatusChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScanCodeJoinGroupSwitchStatusChangeNotify copyWith(void Function(ScanCodeJoinGroupSwitchStatusChangeNotify) updates) => super.copyWith((message) => updates(message as ScanCodeJoinGroupSwitchStatusChangeNotify)) as ScanCodeJoinGroupSwitchStatusChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScanCodeJoinGroupSwitchStatusChangeNotify create() => ScanCodeJoinGroupSwitchStatusChangeNotify._();
  ScanCodeJoinGroupSwitchStatusChangeNotify createEmptyInstance() => create();
  static $pb.PbList<ScanCodeJoinGroupSwitchStatusChangeNotify> createRepeated() => $pb.PbList<ScanCodeJoinGroupSwitchStatusChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static ScanCodeJoinGroupSwitchStatusChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScanCodeJoinGroupSwitchStatusChangeNotify>(create);
  static ScanCodeJoinGroupSwitchStatusChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchStatus => $_getBF(0);
  @$pb.TagNumber(1)
  set switchStatus($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get scanCodeKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set scanCodeKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScanCodeKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScanCodeKey() => clearField(2);
}

/// ////////////////////////////
///  清理群历史消息 开始
class ClearHisMsgReq extends $pb.GeneratedMessage {
  factory ClearHisMsgReq() => create();
  ClearHisMsgReq._() : super();
  factory ClearHisMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClearHisMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClearHisMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClearHisMsgReq clone() => ClearHisMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClearHisMsgReq copyWith(void Function(ClearHisMsgReq) updates) => super.copyWith((message) => updates(message as ClearHisMsgReq)) as ClearHisMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearHisMsgReq create() => ClearHisMsgReq._();
  ClearHisMsgReq createEmptyInstance() => create();
  static $pb.PbList<ClearHisMsgReq> createRepeated() => $pb.PbList<ClearHisMsgReq>();
  @$core.pragma('dart2js:noInline')
  static ClearHisMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClearHisMsgReq>(create);
  static ClearHisMsgReq? _defaultInstance;
}

class ClearHisMsgRsp extends $pb.GeneratedMessage {
  factory ClearHisMsgRsp() => create();
  ClearHisMsgRsp._() : super();
  factory ClearHisMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClearHisMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClearHisMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClearHisMsgRsp clone() => ClearHisMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClearHisMsgRsp copyWith(void Function(ClearHisMsgRsp) updates) => super.copyWith((message) => updates(message as ClearHisMsgRsp)) as ClearHisMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearHisMsgRsp create() => ClearHisMsgRsp._();
  ClearHisMsgRsp createEmptyInstance() => create();
  static $pb.PbList<ClearHisMsgRsp> createRepeated() => $pb.PbList<ClearHisMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static ClearHisMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClearHisMsgRsp>(create);
  static ClearHisMsgRsp? _defaultInstance;
}

/// 设置是否可以自由加入
class SetFreeJoinStatusReq extends $pb.GeneratedMessage {
  factory SetFreeJoinStatusReq({
    $core.bool? freeJoinStatus,
  }) {
    final $result = create();
    if (freeJoinStatus != null) {
      $result.freeJoinStatus = freeJoinStatus;
    }
    return $result;
  }
  SetFreeJoinStatusReq._() : super();
  factory SetFreeJoinStatusReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetFreeJoinStatusReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetFreeJoinStatusReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'freeJoinStatus', protoName: 'freeJoinStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetFreeJoinStatusReq clone() => SetFreeJoinStatusReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetFreeJoinStatusReq copyWith(void Function(SetFreeJoinStatusReq) updates) => super.copyWith((message) => updates(message as SetFreeJoinStatusReq)) as SetFreeJoinStatusReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFreeJoinStatusReq create() => SetFreeJoinStatusReq._();
  SetFreeJoinStatusReq createEmptyInstance() => create();
  static $pb.PbList<SetFreeJoinStatusReq> createRepeated() => $pb.PbList<SetFreeJoinStatusReq>();
  @$core.pragma('dart2js:noInline')
  static SetFreeJoinStatusReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetFreeJoinStatusReq>(create);
  static SetFreeJoinStatusReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get freeJoinStatus => $_getBF(0);
  @$pb.TagNumber(1)
  set freeJoinStatus($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFreeJoinStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearFreeJoinStatus() => clearField(1);
}

class SetFreeJoinStatusRsp extends $pb.GeneratedMessage {
  factory SetFreeJoinStatusRsp({
    $core.bool? freeJoinStatus,
  }) {
    final $result = create();
    if (freeJoinStatus != null) {
      $result.freeJoinStatus = freeJoinStatus;
    }
    return $result;
  }
  SetFreeJoinStatusRsp._() : super();
  factory SetFreeJoinStatusRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetFreeJoinStatusRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetFreeJoinStatusRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'freeJoinStatus', protoName: 'freeJoinStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetFreeJoinStatusRsp clone() => SetFreeJoinStatusRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetFreeJoinStatusRsp copyWith(void Function(SetFreeJoinStatusRsp) updates) => super.copyWith((message) => updates(message as SetFreeJoinStatusRsp)) as SetFreeJoinStatusRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFreeJoinStatusRsp create() => SetFreeJoinStatusRsp._();
  SetFreeJoinStatusRsp createEmptyInstance() => create();
  static $pb.PbList<SetFreeJoinStatusRsp> createRepeated() => $pb.PbList<SetFreeJoinStatusRsp>();
  @$core.pragma('dart2js:noInline')
  static SetFreeJoinStatusRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetFreeJoinStatusRsp>(create);
  static SetFreeJoinStatusRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get freeJoinStatus => $_getBF(0);
  @$pb.TagNumber(1)
  set freeJoinStatus($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFreeJoinStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearFreeJoinStatus() => clearField(1);
}

class FreeJoinStatusChangeNotify extends $pb.GeneratedMessage {
  factory FreeJoinStatusChangeNotify({
    $core.bool? freeJoinStatus,
  }) {
    final $result = create();
    if (freeJoinStatus != null) {
      $result.freeJoinStatus = freeJoinStatus;
    }
    return $result;
  }
  FreeJoinStatusChangeNotify._() : super();
  factory FreeJoinStatusChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FreeJoinStatusChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FreeJoinStatusChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'freeJoinStatus', protoName: 'freeJoinStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FreeJoinStatusChangeNotify clone() => FreeJoinStatusChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FreeJoinStatusChangeNotify copyWith(void Function(FreeJoinStatusChangeNotify) updates) => super.copyWith((message) => updates(message as FreeJoinStatusChangeNotify)) as FreeJoinStatusChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FreeJoinStatusChangeNotify create() => FreeJoinStatusChangeNotify._();
  FreeJoinStatusChangeNotify createEmptyInstance() => create();
  static $pb.PbList<FreeJoinStatusChangeNotify> createRepeated() => $pb.PbList<FreeJoinStatusChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static FreeJoinStatusChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FreeJoinStatusChangeNotify>(create);
  static FreeJoinStatusChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get freeJoinStatus => $_getBF(0);
  @$pb.TagNumber(1)
  set freeJoinStatus($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFreeJoinStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearFreeJoinStatus() => clearField(1);
}

/// 设置属性统一接口
class SetGroupPropReq extends $pb.GeneratedMessage {
  factory SetGroupPropReq({
    $core.String? key,
    $core.String? value,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  SetGroupPropReq._() : super();
  factory SetGroupPropReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetGroupPropReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetGroupPropReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetGroupPropReq clone() => SetGroupPropReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetGroupPropReq copyWith(void Function(SetGroupPropReq) updates) => super.copyWith((message) => updates(message as SetGroupPropReq)) as SetGroupPropReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetGroupPropReq create() => SetGroupPropReq._();
  SetGroupPropReq createEmptyInstance() => create();
  static $pb.PbList<SetGroupPropReq> createRepeated() => $pb.PbList<SetGroupPropReq>();
  @$core.pragma('dart2js:noInline')
  static SetGroupPropReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetGroupPropReq>(create);
  static SetGroupPropReq? _defaultInstance;

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
}

class GroupPropChangeNotify extends $pb.GeneratedMessage {
  factory GroupPropChangeNotify({
    $core.String? key,
    $core.String? value,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  GroupPropChangeNotify._() : super();
  factory GroupPropChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupPropChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupPropChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_group'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupPropChangeNotify clone() => GroupPropChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupPropChangeNotify copyWith(void Function(GroupPropChangeNotify) updates) => super.copyWith((message) => updates(message as GroupPropChangeNotify)) as GroupPropChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupPropChangeNotify create() => GroupPropChangeNotify._();
  GroupPropChangeNotify createEmptyInstance() => create();
  static $pb.PbList<GroupPropChangeNotify> createRepeated() => $pb.PbList<GroupPropChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupPropChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupPropChangeNotify>(create);
  static GroupPropChangeNotify? _defaultInstance;

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
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
