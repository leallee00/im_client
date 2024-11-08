//
//  Generated code. Do not modify.
//  source: pb_msg/followship/followship.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// 关注
class FollowReq extends $pb.GeneratedMessage {
  factory FollowReq() => create();
  FollowReq._() : super();
  factory FollowReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FollowReq clone() => FollowReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FollowReq copyWith(void Function(FollowReq) updates) => super.copyWith((message) => updates(message as FollowReq)) as FollowReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowReq create() => FollowReq._();
  FollowReq createEmptyInstance() => create();
  static $pb.PbList<FollowReq> createRepeated() => $pb.PbList<FollowReq>();
  @$core.pragma('dart2js:noInline')
  static FollowReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowReq>(create);
  static FollowReq? _defaultInstance;
}

class FollowRsp extends $pb.GeneratedMessage {
  factory FollowRsp() => create();
  FollowRsp._() : super();
  factory FollowRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FollowRsp clone() => FollowRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FollowRsp copyWith(void Function(FollowRsp) updates) => super.copyWith((message) => updates(message as FollowRsp)) as FollowRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowRsp create() => FollowRsp._();
  FollowRsp createEmptyInstance() => create();
  static $pb.PbList<FollowRsp> createRepeated() => $pb.PbList<FollowRsp>();
  @$core.pragma('dart2js:noInline')
  static FollowRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowRsp>(create);
  static FollowRsp? _defaultInstance;
}

/// 取消关注
class UnfollowReq extends $pb.GeneratedMessage {
  factory UnfollowReq() => create();
  UnfollowReq._() : super();
  factory UnfollowReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnfollowReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnfollowReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnfollowReq clone() => UnfollowReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnfollowReq copyWith(void Function(UnfollowReq) updates) => super.copyWith((message) => updates(message as UnfollowReq)) as UnfollowReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnfollowReq create() => UnfollowReq._();
  UnfollowReq createEmptyInstance() => create();
  static $pb.PbList<UnfollowReq> createRepeated() => $pb.PbList<UnfollowReq>();
  @$core.pragma('dart2js:noInline')
  static UnfollowReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnfollowReq>(create);
  static UnfollowReq? _defaultInstance;
}

class UnfollowRsp extends $pb.GeneratedMessage {
  factory UnfollowRsp() => create();
  UnfollowRsp._() : super();
  factory UnfollowRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnfollowRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnfollowRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnfollowRsp clone() => UnfollowRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnfollowRsp copyWith(void Function(UnfollowRsp) updates) => super.copyWith((message) => updates(message as UnfollowRsp)) as UnfollowRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnfollowRsp create() => UnfollowRsp._();
  UnfollowRsp createEmptyInstance() => create();
  static $pb.PbList<UnfollowRsp> createRepeated() => $pb.PbList<UnfollowRsp>();
  @$core.pragma('dart2js:noInline')
  static UnfollowRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnfollowRsp>(create);
  static UnfollowRsp? _defaultInstance;
}

/// 关注我的人
class Follower extends $pb.GeneratedMessage {
  factory Follower({
    $fixnum.Int64? userId,
    $core.String? username,
    $core.String? avatar,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  Follower._() : super();
  factory Follower.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Follower.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Follower', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Follower clone() => Follower()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Follower copyWith(void Function(Follower) updates) => super.copyWith((message) => updates(message as Follower)) as Follower;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Follower create() => Follower._();
  Follower createEmptyInstance() => create();
  static $pb.PbList<Follower> createRepeated() => $pb.PbList<Follower>();
  @$core.pragma('dart2js:noInline')
  static Follower getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Follower>(create);
  static Follower? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);
}

class FollowersReq extends $pb.GeneratedMessage {
  factory FollowersReq() => create();
  FollowersReq._() : super();
  factory FollowersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowersReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FollowersReq clone() => FollowersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FollowersReq copyWith(void Function(FollowersReq) updates) => super.copyWith((message) => updates(message as FollowersReq)) as FollowersReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowersReq create() => FollowersReq._();
  FollowersReq createEmptyInstance() => create();
  static $pb.PbList<FollowersReq> createRepeated() => $pb.PbList<FollowersReq>();
  @$core.pragma('dart2js:noInline')
  static FollowersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowersReq>(create);
  static FollowersReq? _defaultInstance;
}

class FollowersRsp extends $pb.GeneratedMessage {
  factory FollowersRsp({
    $core.Iterable<Follower>? followers,
  }) {
    final $result = create();
    if (followers != null) {
      $result.followers.addAll(followers);
    }
    return $result;
  }
  FollowersRsp._() : super();
  factory FollowersRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowersRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowersRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..pc<Follower>(1, _omitFieldNames ? '' : 'followers', $pb.PbFieldType.PM, subBuilder: Follower.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FollowersRsp clone() => FollowersRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FollowersRsp copyWith(void Function(FollowersRsp) updates) => super.copyWith((message) => updates(message as FollowersRsp)) as FollowersRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowersRsp create() => FollowersRsp._();
  FollowersRsp createEmptyInstance() => create();
  static $pb.PbList<FollowersRsp> createRepeated() => $pb.PbList<FollowersRsp>();
  @$core.pragma('dart2js:noInline')
  static FollowersRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowersRsp>(create);
  static FollowersRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Follower> get followers => $_getList(0);
}

/// 我关注的人
class Followee extends $pb.GeneratedMessage {
  factory Followee({
    $fixnum.Int64? userId,
    $core.String? username,
    $core.String? avatar,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  Followee._() : super();
  factory Followee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Followee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Followee', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Followee clone() => Followee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Followee copyWith(void Function(Followee) updates) => super.copyWith((message) => updates(message as Followee)) as Followee;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Followee create() => Followee._();
  Followee createEmptyInstance() => create();
  static $pb.PbList<Followee> createRepeated() => $pb.PbList<Followee>();
  @$core.pragma('dart2js:noInline')
  static Followee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Followee>(create);
  static Followee? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);
}

class FolloweesReq extends $pb.GeneratedMessage {
  factory FolloweesReq() => create();
  FolloweesReq._() : super();
  factory FolloweesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FolloweesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FolloweesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FolloweesReq clone() => FolloweesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FolloweesReq copyWith(void Function(FolloweesReq) updates) => super.copyWith((message) => updates(message as FolloweesReq)) as FolloweesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FolloweesReq create() => FolloweesReq._();
  FolloweesReq createEmptyInstance() => create();
  static $pb.PbList<FolloweesReq> createRepeated() => $pb.PbList<FolloweesReq>();
  @$core.pragma('dart2js:noInline')
  static FolloweesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FolloweesReq>(create);
  static FolloweesReq? _defaultInstance;
}

class FolloweesRsp extends $pb.GeneratedMessage {
  factory FolloweesRsp({
    $core.Iterable<Followee>? followees,
  }) {
    final $result = create();
    if (followees != null) {
      $result.followees.addAll(followees);
    }
    return $result;
  }
  FolloweesRsp._() : super();
  factory FolloweesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FolloweesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FolloweesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_followship'), createEmptyInstance: create)
    ..pc<Followee>(1, _omitFieldNames ? '' : 'followees', $pb.PbFieldType.PM, subBuilder: Followee.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FolloweesRsp clone() => FolloweesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FolloweesRsp copyWith(void Function(FolloweesRsp) updates) => super.copyWith((message) => updates(message as FolloweesRsp)) as FolloweesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FolloweesRsp create() => FolloweesRsp._();
  FolloweesRsp createEmptyInstance() => create();
  static $pb.PbList<FolloweesRsp> createRepeated() => $pb.PbList<FolloweesRsp>();
  @$core.pragma('dart2js:noInline')
  static FolloweesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FolloweesRsp>(create);
  static FolloweesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Followee> get followees => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
