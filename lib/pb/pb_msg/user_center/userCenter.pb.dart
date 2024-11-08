//
//  Generated code. Do not modify.
//  source: pb_msg/user_center/userCenter.proto
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
import '../../pb_pub/error_code.pbenum.dart' as $1;
import 'userCenter.pbenum.dart';

export 'userCenter.pbenum.dart';

/// 是否需要这个结构
class FriendInfoReq extends $pb.GeneratedMessage {
  factory FriendInfoReq({
    $core.Iterable<$fixnum.Int64>? friendUserIds,
  }) {
    final $result = create();
    if (friendUserIds != null) {
      $result.friendUserIds.addAll(friendUserIds);
    }
    return $result;
  }
  FriendInfoReq._() : super();
  factory FriendInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FriendInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'friendUserIds', $pb.PbFieldType.K6, protoName: 'friendUserIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendInfoReq clone() => FriendInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendInfoReq copyWith(void Function(FriendInfoReq) updates) => super.copyWith((message) => updates(message as FriendInfoReq)) as FriendInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FriendInfoReq create() => FriendInfoReq._();
  FriendInfoReq createEmptyInstance() => create();
  static $pb.PbList<FriendInfoReq> createRepeated() => $pb.PbList<FriendInfoReq>();
  @$core.pragma('dart2js:noInline')
  static FriendInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendInfoReq>(create);
  static FriendInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get friendUserIds => $_getList(0);
}

class FriendInfoRsp extends $pb.GeneratedMessage {
  factory FriendInfoRsp({
    $core.Iterable<FriendInfo>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  FriendInfoRsp._() : super();
  factory FriendInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FriendInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..pc<FriendInfo>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: FriendInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendInfoRsp clone() => FriendInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendInfoRsp copyWith(void Function(FriendInfoRsp) updates) => super.copyWith((message) => updates(message as FriendInfoRsp)) as FriendInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FriendInfoRsp create() => FriendInfoRsp._();
  FriendInfoRsp createEmptyInstance() => create();
  static $pb.PbList<FriendInfoRsp> createRepeated() => $pb.PbList<FriendInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static FriendInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendInfoRsp>(create);
  static FriendInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FriendInfo> get results => $_getList(0);
}

/// 这个就是取用户信息，如果取自己的信息就到uaa去取
class UsersInfoReq extends $pb.GeneratedMessage {
  factory UsersInfoReq({
    $core.Iterable<$fixnum.Int64>? userIds,
  }) {
    final $result = create();
    if (userIds != null) {
      $result.userIds.addAll(userIds);
    }
    return $result;
  }
  UsersInfoReq._() : super();
  factory UsersInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UsersInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UsersInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'UserIds', $pb.PbFieldType.K6, protoName: 'UserIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UsersInfoReq clone() => UsersInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UsersInfoReq copyWith(void Function(UsersInfoReq) updates) => super.copyWith((message) => updates(message as UsersInfoReq)) as UsersInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsersInfoReq create() => UsersInfoReq._();
  UsersInfoReq createEmptyInstance() => create();
  static $pb.PbList<UsersInfoReq> createRepeated() => $pb.PbList<UsersInfoReq>();
  @$core.pragma('dart2js:noInline')
  static UsersInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UsersInfoReq>(create);
  static UsersInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get userIds => $_getList(0);
}

class UsersInfoRsp extends $pb.GeneratedMessage {
  factory UsersInfoRsp({
    $core.Iterable<UsersInfo>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  UsersInfoRsp._() : super();
  factory UsersInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UsersInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UsersInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..pc<UsersInfo>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: UsersInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UsersInfoRsp clone() => UsersInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UsersInfoRsp copyWith(void Function(UsersInfoRsp) updates) => super.copyWith((message) => updates(message as UsersInfoRsp)) as UsersInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsersInfoRsp create() => UsersInfoRsp._();
  UsersInfoRsp createEmptyInstance() => create();
  static $pb.PbList<UsersInfoRsp> createRepeated() => $pb.PbList<UsersInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static UsersInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UsersInfoRsp>(create);
  static UsersInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UsersInfo> get results => $_getList(0);
}

class UsersInfo extends $pb.GeneratedMessage {
  factory UsersInfo({
    $fixnum.Int64? userId,
    $core.String? appUserId,
    $fixnum.Int64? appId,
    $core.String? registerApp,
    $core.String? gender,
    $core.String? headerImageOriginal,
    $core.String? userLevel,
    $core.String? authAccess,
    $core.String? nickName,
    $core.String? sign,
    $core.int? actorGrade,
    $core.int? role,
    $core.bool? banned,
    $core.int? memberFlag,
    $core.String? bigImageOriginal,
    $core.int? userSourceVersion,
    $0.USER_STATE_TYPE? state,
    $core.bool? freeAddMeFriend,
    $core.int? status,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (registerApp != null) {
      $result.registerApp = registerApp;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    if (userLevel != null) {
      $result.userLevel = userLevel;
    }
    if (authAccess != null) {
      $result.authAccess = authAccess;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (sign != null) {
      $result.sign = sign;
    }
    if (actorGrade != null) {
      $result.actorGrade = actorGrade;
    }
    if (role != null) {
      $result.role = role;
    }
    if (banned != null) {
      $result.banned = banned;
    }
    if (memberFlag != null) {
      $result.memberFlag = memberFlag;
    }
    if (bigImageOriginal != null) {
      $result.bigImageOriginal = bigImageOriginal;
    }
    if (userSourceVersion != null) {
      $result.userSourceVersion = userSourceVersion;
    }
    if (state != null) {
      $result.state = state;
    }
    if (freeAddMeFriend != null) {
      $result.freeAddMeFriend = freeAddMeFriend;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UsersInfo._() : super();
  factory UsersInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UsersInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UsersInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..aInt64(3, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aOS(4, _omitFieldNames ? '' : 'registerApp', protoName: 'registerApp')
    ..aOS(5, _omitFieldNames ? '' : 'gender')
    ..aOS(6, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..aOS(7, _omitFieldNames ? '' : 'userLevel', protoName: 'userLevel')
    ..aOS(8, _omitFieldNames ? '' : 'authAccess', protoName: 'authAccess')
    ..aOS(9, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aOS(10, _omitFieldNames ? '' : 'sign')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'actorGrade', $pb.PbFieldType.O3, protoName: 'actorGrade')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'role', $pb.PbFieldType.O3)
    ..aOB(13, _omitFieldNames ? '' : 'banned')
    ..a<$core.int>(14, _omitFieldNames ? '' : 'memberFlag', $pb.PbFieldType.O3, protoName: 'memberFlag')
    ..aOS(15, _omitFieldNames ? '' : 'bigImageOriginal', protoName: 'bigImageOriginal')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'userSourceVersion', $pb.PbFieldType.O3, protoName: 'userSourceVersion')
    ..e<$0.USER_STATE_TYPE>(17, _omitFieldNames ? '' : 'State', $pb.PbFieldType.OE, protoName: 'State', defaultOrMaker: $0.USER_STATE_TYPE.USER_STATE_INIT, valueOf: $0.USER_STATE_TYPE.valueOf, enumValues: $0.USER_STATE_TYPE.values)
    ..aOB(18, _omitFieldNames ? '' : 'freeAddMeFriend', protoName: 'freeAddMeFriend')
    ..a<$core.int>(19, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UsersInfo clone() => UsersInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UsersInfo copyWith(void Function(UsersInfo) updates) => super.copyWith((message) => updates(message as UsersInfo)) as UsersInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsersInfo create() => UsersInfo._();
  UsersInfo createEmptyInstance() => create();
  static $pb.PbList<UsersInfo> createRepeated() => $pb.PbList<UsersInfo>();
  @$core.pragma('dart2js:noInline')
  static UsersInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UsersInfo>(create);
  static UsersInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appUserId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appUserId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppUserId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get appId => $_getI64(2);
  @$pb.TagNumber(3)
  set appId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get registerApp => $_getSZ(3);
  @$pb.TagNumber(4)
  set registerApp($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegisterApp() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegisterApp() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get gender => $_getSZ(4);
  @$pb.TagNumber(5)
  set gender($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearGender() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get headerImageOriginal => $_getSZ(5);
  @$pb.TagNumber(6)
  set headerImageOriginal($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHeaderImageOriginal() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeaderImageOriginal() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get userLevel => $_getSZ(6);
  @$pb.TagNumber(7)
  set userLevel($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get authAccess => $_getSZ(7);
  @$pb.TagNumber(8)
  set authAccess($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAuthAccess() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuthAccess() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get nickName => $_getSZ(8);
  @$pb.TagNumber(9)
  set nickName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasNickName() => $_has(8);
  @$pb.TagNumber(9)
  void clearNickName() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get sign => $_getSZ(9);
  @$pb.TagNumber(10)
  set sign($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSign() => $_has(9);
  @$pb.TagNumber(10)
  void clearSign() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get actorGrade => $_getIZ(10);
  @$pb.TagNumber(11)
  set actorGrade($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasActorGrade() => $_has(10);
  @$pb.TagNumber(11)
  void clearActorGrade() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get role => $_getIZ(11);
  @$pb.TagNumber(12)
  set role($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasRole() => $_has(11);
  @$pb.TagNumber(12)
  void clearRole() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get banned => $_getBF(12);
  @$pb.TagNumber(13)
  set banned($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasBanned() => $_has(12);
  @$pb.TagNumber(13)
  void clearBanned() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get memberFlag => $_getIZ(13);
  @$pb.TagNumber(14)
  set memberFlag($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasMemberFlag() => $_has(13);
  @$pb.TagNumber(14)
  void clearMemberFlag() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get bigImageOriginal => $_getSZ(14);
  @$pb.TagNumber(15)
  set bigImageOriginal($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasBigImageOriginal() => $_has(14);
  @$pb.TagNumber(15)
  void clearBigImageOriginal() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get userSourceVersion => $_getIZ(15);
  @$pb.TagNumber(16)
  set userSourceVersion($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasUserSourceVersion() => $_has(15);
  @$pb.TagNumber(16)
  void clearUserSourceVersion() => clearField(16);

  @$pb.TagNumber(17)
  $0.USER_STATE_TYPE get state => $_getN(16);
  @$pb.TagNumber(17)
  set state($0.USER_STATE_TYPE v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasState() => $_has(16);
  @$pb.TagNumber(17)
  void clearState() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get freeAddMeFriend => $_getBF(17);
  @$pb.TagNumber(18)
  set freeAddMeFriend($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasFreeAddMeFriend() => $_has(17);
  @$pb.TagNumber(18)
  void clearFreeAddMeFriend() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get status => $_getIZ(18);
  @$pb.TagNumber(19)
  set status($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasStatus() => $_has(18);
  @$pb.TagNumber(19)
  void clearStatus() => clearField(19);
}

class FriendInfo extends $pb.GeneratedMessage {
  factory FriendInfo({
    $fixnum.Int64? userId,
    $core.String? gender,
    $core.String? headerImageOriginal,
    $core.String? userLevel,
    $core.String? authAccess,
    $core.String? nickName,
    $core.String? sign,
    $core.int? actorGrade,
    $core.String? packageName,
    $core.String? systemVersion,
    $core.String? phoneModels,
    $core.String? appVersion,
    $core.String? systemName,
    $core.String? identifier,
    $0.USER_STATE_TYPE? userState,
    $core.bool? switchToBack,
    $fixnum.Int64? updateTime,
    $core.Map<$core.String, $core.String>? exp,
    $fixnum.Int64? appId,
    $core.String? appUserId,
    $0.MODEL_TYPE? modelType,
    $core.int? userSourceVersion,
    $core.int? status,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    if (userLevel != null) {
      $result.userLevel = userLevel;
    }
    if (authAccess != null) {
      $result.authAccess = authAccess;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (sign != null) {
      $result.sign = sign;
    }
    if (actorGrade != null) {
      $result.actorGrade = actorGrade;
    }
    if (packageName != null) {
      $result.packageName = packageName;
    }
    if (systemVersion != null) {
      $result.systemVersion = systemVersion;
    }
    if (phoneModels != null) {
      $result.phoneModels = phoneModels;
    }
    if (appVersion != null) {
      $result.appVersion = appVersion;
    }
    if (systemName != null) {
      $result.systemName = systemName;
    }
    if (identifier != null) {
      $result.identifier = identifier;
    }
    if (userState != null) {
      $result.userState = userState;
    }
    if (switchToBack != null) {
      $result.switchToBack = switchToBack;
    }
    if (updateTime != null) {
      $result.updateTime = updateTime;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    if (modelType != null) {
      $result.modelType = modelType;
    }
    if (userSourceVersion != null) {
      $result.userSourceVersion = userSourceVersion;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  FriendInfo._() : super();
  factory FriendInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FriendInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'gender')
    ..aOS(3, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..aOS(4, _omitFieldNames ? '' : 'userLevel', protoName: 'userLevel')
    ..aOS(5, _omitFieldNames ? '' : 'authAccess', protoName: 'authAccess')
    ..aOS(6, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aOS(7, _omitFieldNames ? '' : 'sign')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'actorGrade', $pb.PbFieldType.O3, protoName: 'actorGrade')
    ..aOS(9, _omitFieldNames ? '' : 'packageName', protoName: 'packageName')
    ..aOS(10, _omitFieldNames ? '' : 'systemVersion', protoName: 'systemVersion')
    ..aOS(11, _omitFieldNames ? '' : 'phoneModels', protoName: 'phoneModels')
    ..aOS(12, _omitFieldNames ? '' : 'appVersion', protoName: 'appVersion')
    ..aOS(13, _omitFieldNames ? '' : 'systemName', protoName: 'systemName')
    ..aOS(14, _omitFieldNames ? '' : 'identifier')
    ..e<$0.USER_STATE_TYPE>(15, _omitFieldNames ? '' : 'userState', $pb.PbFieldType.OE, protoName: 'userState', defaultOrMaker: $0.USER_STATE_TYPE.USER_STATE_INIT, valueOf: $0.USER_STATE_TYPE.valueOf, enumValues: $0.USER_STATE_TYPE.values)
    ..aOB(16, _omitFieldNames ? '' : 'switchToBack', protoName: 'switchToBack')
    ..aInt64(17, _omitFieldNames ? '' : 'updateTime', protoName: 'updateTime')
    ..m<$core.String, $core.String>(18, _omitFieldNames ? '' : 'exp', entryClassName: 'FriendInfo.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_userCenter'))
    ..aInt64(19, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aOS(20, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..e<$0.MODEL_TYPE>(21, _omitFieldNames ? '' : 'modelType', $pb.PbFieldType.OE, protoName: 'modelType', defaultOrMaker: $0.MODEL_TYPE.NIL, valueOf: $0.MODEL_TYPE.valueOf, enumValues: $0.MODEL_TYPE.values)
    ..a<$core.int>(22, _omitFieldNames ? '' : 'userSourceVersion', $pb.PbFieldType.O3, protoName: 'userSourceVersion')
    ..a<$core.int>(23, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendInfo clone() => FriendInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendInfo copyWith(void Function(FriendInfo) updates) => super.copyWith((message) => updates(message as FriendInfo)) as FriendInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FriendInfo create() => FriendInfo._();
  FriendInfo createEmptyInstance() => create();
  static $pb.PbList<FriendInfo> createRepeated() => $pb.PbList<FriendInfo>();
  @$core.pragma('dart2js:noInline')
  static FriendInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendInfo>(create);
  static FriendInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gender => $_getSZ(1);
  @$pb.TagNumber(2)
  set gender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGender() => $_has(1);
  @$pb.TagNumber(2)
  void clearGender() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get headerImageOriginal => $_getSZ(2);
  @$pb.TagNumber(3)
  set headerImageOriginal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeaderImageOriginal() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeaderImageOriginal() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userLevel => $_getSZ(3);
  @$pb.TagNumber(4)
  set userLevel($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserLevel() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get authAccess => $_getSZ(4);
  @$pb.TagNumber(5)
  set authAccess($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAuthAccess() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthAccess() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get nickName => $_getSZ(5);
  @$pb.TagNumber(6)
  set nickName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNickName() => $_has(5);
  @$pb.TagNumber(6)
  void clearNickName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get sign => $_getSZ(6);
  @$pb.TagNumber(7)
  set sign($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSign() => $_has(6);
  @$pb.TagNumber(7)
  void clearSign() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get actorGrade => $_getIZ(7);
  @$pb.TagNumber(8)
  set actorGrade($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasActorGrade() => $_has(7);
  @$pb.TagNumber(8)
  void clearActorGrade() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get packageName => $_getSZ(8);
  @$pb.TagNumber(9)
  set packageName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPackageName() => $_has(8);
  @$pb.TagNumber(9)
  void clearPackageName() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get systemVersion => $_getSZ(9);
  @$pb.TagNumber(10)
  set systemVersion($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSystemVersion() => $_has(9);
  @$pb.TagNumber(10)
  void clearSystemVersion() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get phoneModels => $_getSZ(10);
  @$pb.TagNumber(11)
  set phoneModels($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPhoneModels() => $_has(10);
  @$pb.TagNumber(11)
  void clearPhoneModels() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get appVersion => $_getSZ(11);
  @$pb.TagNumber(12)
  set appVersion($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAppVersion() => $_has(11);
  @$pb.TagNumber(12)
  void clearAppVersion() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get systemName => $_getSZ(12);
  @$pb.TagNumber(13)
  set systemName($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSystemName() => $_has(12);
  @$pb.TagNumber(13)
  void clearSystemName() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get identifier => $_getSZ(13);
  @$pb.TagNumber(14)
  set identifier($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasIdentifier() => $_has(13);
  @$pb.TagNumber(14)
  void clearIdentifier() => clearField(14);

  @$pb.TagNumber(15)
  $0.USER_STATE_TYPE get userState => $_getN(14);
  @$pb.TagNumber(15)
  set userState($0.USER_STATE_TYPE v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasUserState() => $_has(14);
  @$pb.TagNumber(15)
  void clearUserState() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get switchToBack => $_getBF(15);
  @$pb.TagNumber(16)
  set switchToBack($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSwitchToBack() => $_has(15);
  @$pb.TagNumber(16)
  void clearSwitchToBack() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get updateTime => $_getI64(16);
  @$pb.TagNumber(17)
  set updateTime($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasUpdateTime() => $_has(16);
  @$pb.TagNumber(17)
  void clearUpdateTime() => clearField(17);

  @$pb.TagNumber(18)
  $core.Map<$core.String, $core.String> get exp => $_getMap(17);

  @$pb.TagNumber(19)
  $fixnum.Int64 get appId => $_getI64(18);
  @$pb.TagNumber(19)
  set appId($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasAppId() => $_has(18);
  @$pb.TagNumber(19)
  void clearAppId() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get appUserId => $_getSZ(19);
  @$pb.TagNumber(20)
  set appUserId($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasAppUserId() => $_has(19);
  @$pb.TagNumber(20)
  void clearAppUserId() => clearField(20);

  @$pb.TagNumber(21)
  $0.MODEL_TYPE get modelType => $_getN(20);
  @$pb.TagNumber(21)
  set modelType($0.MODEL_TYPE v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasModelType() => $_has(20);
  @$pb.TagNumber(21)
  void clearModelType() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get userSourceVersion => $_getIZ(21);
  @$pb.TagNumber(22)
  set userSourceVersion($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasUserSourceVersion() => $_has(21);
  @$pb.TagNumber(22)
  void clearUserSourceVersion() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get status => $_getIZ(22);
  @$pb.TagNumber(23)
  set status($core.int v) { $_setSignedInt32(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasStatus() => $_has(22);
  @$pb.TagNumber(23)
  void clearStatus() => clearField(23);
}

class AppUidToImIdReq extends $pb.GeneratedMessage {
  factory AppUidToImIdReq({
    $fixnum.Int64? appId,
    $core.String? appUserId,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    return $result;
  }
  AppUidToImIdReq._() : super();
  factory AppUidToImIdReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppUidToImIdReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppUidToImIdReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aOS(2, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppUidToImIdReq clone() => AppUidToImIdReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppUidToImIdReq copyWith(void Function(AppUidToImIdReq) updates) => super.copyWith((message) => updates(message as AppUidToImIdReq)) as AppUidToImIdReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppUidToImIdReq create() => AppUidToImIdReq._();
  AppUidToImIdReq createEmptyInstance() => create();
  static $pb.PbList<AppUidToImIdReq> createRepeated() => $pb.PbList<AppUidToImIdReq>();
  @$core.pragma('dart2js:noInline')
  static AppUidToImIdReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppUidToImIdReq>(create);
  static AppUidToImIdReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get appId => $_getI64(0);
  @$pb.TagNumber(1)
  set appId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appUserId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appUserId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppUserId() => clearField(2);
}

class AppUidToImIdRsp extends $pb.GeneratedMessage {
  factory AppUidToImIdRsp({
    $fixnum.Int64? appId,
    $fixnum.Int64? userId,
    $core.String? appUserId,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    return $result;
  }
  AppUidToImIdRsp._() : super();
  factory AppUidToImIdRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppUidToImIdRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppUidToImIdRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aInt64(2, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppUidToImIdRsp clone() => AppUidToImIdRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppUidToImIdRsp copyWith(void Function(AppUidToImIdRsp) updates) => super.copyWith((message) => updates(message as AppUidToImIdRsp)) as AppUidToImIdRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppUidToImIdRsp create() => AppUidToImIdRsp._();
  AppUidToImIdRsp createEmptyInstance() => create();
  static $pb.PbList<AppUidToImIdRsp> createRepeated() => $pb.PbList<AppUidToImIdRsp>();
  @$core.pragma('dart2js:noInline')
  static AppUidToImIdRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppUidToImIdRsp>(create);
  static AppUidToImIdRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get appId => $_getI64(0);
  @$pb.TagNumber(1)
  set appId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get appUserId => $_getSZ(2);
  @$pb.TagNumber(3)
  set appUserId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppUserId() => clearField(3);
}

class OnlineNotify extends $pb.GeneratedMessage {
  factory OnlineNotify({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  OnlineNotify._() : super();
  factory OnlineNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OnlineNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OnlineNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OnlineNotify clone() => OnlineNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OnlineNotify copyWith(void Function(OnlineNotify) updates) => super.copyWith((message) => updates(message as OnlineNotify)) as OnlineNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnlineNotify create() => OnlineNotify._();
  OnlineNotify createEmptyInstance() => create();
  static $pb.PbList<OnlineNotify> createRepeated() => $pb.PbList<OnlineNotify>();
  @$core.pragma('dart2js:noInline')
  static OnlineNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OnlineNotify>(create);
  static OnlineNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class OfflineNotify extends $pb.GeneratedMessage {
  factory OfflineNotify({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  OfflineNotify._() : super();
  factory OfflineNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OfflineNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OfflineNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OfflineNotify clone() => OfflineNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OfflineNotify copyWith(void Function(OfflineNotify) updates) => super.copyWith((message) => updates(message as OfflineNotify)) as OfflineNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OfflineNotify create() => OfflineNotify._();
  OfflineNotify createEmptyInstance() => create();
  static $pb.PbList<OfflineNotify> createRepeated() => $pb.PbList<OfflineNotify>();
  @$core.pragma('dart2js:noInline')
  static OfflineNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OfflineNotify>(create);
  static OfflineNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class SwitchBackNotify extends $pb.GeneratedMessage {
  factory SwitchBackNotify({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  SwitchBackNotify._() : super();
  factory SwitchBackNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwitchBackNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SwitchBackNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwitchBackNotify clone() => SwitchBackNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwitchBackNotify copyWith(void Function(SwitchBackNotify) updates) => super.copyWith((message) => updates(message as SwitchBackNotify)) as SwitchBackNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SwitchBackNotify create() => SwitchBackNotify._();
  SwitchBackNotify createEmptyInstance() => create();
  static $pb.PbList<SwitchBackNotify> createRepeated() => $pb.PbList<SwitchBackNotify>();
  @$core.pragma('dart2js:noInline')
  static SwitchBackNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwitchBackNotify>(create);
  static SwitchBackNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class SwitchFrontNotify extends $pb.GeneratedMessage {
  factory SwitchFrontNotify({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  SwitchFrontNotify._() : super();
  factory SwitchFrontNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwitchFrontNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SwitchFrontNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwitchFrontNotify clone() => SwitchFrontNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwitchFrontNotify copyWith(void Function(SwitchFrontNotify) updates) => super.copyWith((message) => updates(message as SwitchFrontNotify)) as SwitchFrontNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SwitchFrontNotify create() => SwitchFrontNotify._();
  SwitchFrontNotify createEmptyInstance() => create();
  static $pb.PbList<SwitchFrontNotify> createRepeated() => $pb.PbList<SwitchFrontNotify>();
  @$core.pragma('dart2js:noInline')
  static SwitchFrontNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwitchFrontNotify>(create);
  static SwitchFrontNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class HeartbeatNotify extends $pb.GeneratedMessage {
  factory HeartbeatNotify({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  HeartbeatNotify._() : super();
  factory HeartbeatNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeartbeatNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HeartbeatNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HeartbeatNotify clone() => HeartbeatNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HeartbeatNotify copyWith(void Function(HeartbeatNotify) updates) => super.copyWith((message) => updates(message as HeartbeatNotify)) as HeartbeatNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeartbeatNotify create() => HeartbeatNotify._();
  HeartbeatNotify createEmptyInstance() => create();
  static $pb.PbList<HeartbeatNotify> createRepeated() => $pb.PbList<HeartbeatNotify>();
  @$core.pragma('dart2js:noInline')
  static HeartbeatNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeartbeatNotify>(create);
  static HeartbeatNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

/// 发红包
class RedPacketHandOutReq extends $pb.GeneratedMessage {
  factory RedPacketHandOutReq({
    $fixnum.Int64? grantUserId,
    $core.int? walletType,
    GrantScene? grantScene,
    GroupRedPacketType? groupRedPacketType,
    $fixnum.Int64? aimId,
    $fixnum.Int64? groupAimId,
    $core.String? description,
    $core.int? createCount,
    $fixnum.Int64? createValue,
    $core.String? walletPasswd,
    $core.String? aimName,
  }) {
    final $result = create();
    if (grantUserId != null) {
      $result.grantUserId = grantUserId;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (grantScene != null) {
      $result.grantScene = grantScene;
    }
    if (groupRedPacketType != null) {
      $result.groupRedPacketType = groupRedPacketType;
    }
    if (aimId != null) {
      $result.aimId = aimId;
    }
    if (groupAimId != null) {
      $result.groupAimId = groupAimId;
    }
    if (description != null) {
      $result.description = description;
    }
    if (createCount != null) {
      $result.createCount = createCount;
    }
    if (createValue != null) {
      $result.createValue = createValue;
    }
    if (walletPasswd != null) {
      $result.walletPasswd = walletPasswd;
    }
    if (aimName != null) {
      $result.aimName = aimName;
    }
    return $result;
  }
  RedPacketHandOutReq._() : super();
  factory RedPacketHandOutReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketHandOutReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketHandOutReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'grantUserId', protoName: 'grantUserId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..e<GrantScene>(3, _omitFieldNames ? '' : 'grantScene', $pb.PbFieldType.OE, protoName: 'grantScene', defaultOrMaker: GrantScene.PrivateChat, valueOf: GrantScene.valueOf, enumValues: GrantScene.values)
    ..e<GroupRedPacketType>(4, _omitFieldNames ? '' : 'groupRedPacketType', $pb.PbFieldType.OE, protoName: 'groupRedPacketType', defaultOrMaker: GroupRedPacketType.Lucky, valueOf: GroupRedPacketType.valueOf, enumValues: GroupRedPacketType.values)
    ..aInt64(5, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..aInt64(6, _omitFieldNames ? '' : 'groupAimId', protoName: 'groupAimId')
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'createCount', $pb.PbFieldType.O3, protoName: 'createCount')
    ..aInt64(9, _omitFieldNames ? '' : 'createValue', protoName: 'createValue')
    ..aOS(10, _omitFieldNames ? '' : 'walletPasswd', protoName: 'walletPasswd')
    ..aOS(11, _omitFieldNames ? '' : 'aimName', protoName: 'aimName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketHandOutReq clone() => RedPacketHandOutReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketHandOutReq copyWith(void Function(RedPacketHandOutReq) updates) => super.copyWith((message) => updates(message as RedPacketHandOutReq)) as RedPacketHandOutReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketHandOutReq create() => RedPacketHandOutReq._();
  RedPacketHandOutReq createEmptyInstance() => create();
  static $pb.PbList<RedPacketHandOutReq> createRepeated() => $pb.PbList<RedPacketHandOutReq>();
  @$core.pragma('dart2js:noInline')
  static RedPacketHandOutReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketHandOutReq>(create);
  static RedPacketHandOutReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get grantUserId => $_getI64(0);
  @$pb.TagNumber(1)
  set grantUserId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGrantUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGrantUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(1);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);

  @$pb.TagNumber(3)
  GrantScene get grantScene => $_getN(2);
  @$pb.TagNumber(3)
  set grantScene(GrantScene v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGrantScene() => $_has(2);
  @$pb.TagNumber(3)
  void clearGrantScene() => clearField(3);

  @$pb.TagNumber(4)
  GroupRedPacketType get groupRedPacketType => $_getN(3);
  @$pb.TagNumber(4)
  set groupRedPacketType(GroupRedPacketType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGroupRedPacketType() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroupRedPacketType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get aimId => $_getI64(4);
  @$pb.TagNumber(5)
  set aimId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAimId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAimId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get groupAimId => $_getI64(5);
  @$pb.TagNumber(6)
  set groupAimId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupAimId() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupAimId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get createCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set createCount($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreateCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreateCount() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get createValue => $_getI64(8);
  @$pb.TagNumber(9)
  set createValue($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreateValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreateValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get walletPasswd => $_getSZ(9);
  @$pb.TagNumber(10)
  set walletPasswd($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasWalletPasswd() => $_has(9);
  @$pb.TagNumber(10)
  void clearWalletPasswd() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get aimName => $_getSZ(10);
  @$pb.TagNumber(11)
  set aimName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAimName() => $_has(10);
  @$pb.TagNumber(11)
  void clearAimName() => clearField(11);
}

class RedPacketHandOutRsp extends $pb.GeneratedMessage {
  factory RedPacketHandOutRsp({
    $fixnum.Int64? redPacketId,
    RedPacketInfo? info,
    $1.ErrCode? errCode,
    $core.String? reason,
  }) {
    final $result = create();
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    if (info != null) {
      $result.info = info;
    }
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  RedPacketHandOutRsp._() : super();
  factory RedPacketHandOutRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketHandOutRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketHandOutRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..aOM<RedPacketInfo>(2, _omitFieldNames ? '' : 'info', subBuilder: RedPacketInfo.create)
    ..e<$1.ErrCode>(3, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.OE, protoName: 'errCode', defaultOrMaker: $1.ErrCode.SUCCESS, valueOf: $1.ErrCode.valueOf, enumValues: $1.ErrCode.values)
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketHandOutRsp clone() => RedPacketHandOutRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketHandOutRsp copyWith(void Function(RedPacketHandOutRsp) updates) => super.copyWith((message) => updates(message as RedPacketHandOutRsp)) as RedPacketHandOutRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketHandOutRsp create() => RedPacketHandOutRsp._();
  RedPacketHandOutRsp createEmptyInstance() => create();
  static $pb.PbList<RedPacketHandOutRsp> createRepeated() => $pb.PbList<RedPacketHandOutRsp>();
  @$core.pragma('dart2js:noInline')
  static RedPacketHandOutRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketHandOutRsp>(create);
  static RedPacketHandOutRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get redPacketId => $_getI64(0);
  @$pb.TagNumber(1)
  set redPacketId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRedPacketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedPacketId() => clearField(1);

  @$pb.TagNumber(2)
  RedPacketInfo get info => $_getN(1);
  @$pb.TagNumber(2)
  set info(RedPacketInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearInfo() => clearField(2);
  @$pb.TagNumber(2)
  RedPacketInfo ensureInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.ErrCode get errCode => $_getN(2);
  @$pb.TagNumber(3)
  set errCode($1.ErrCode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);
}

/// 红包信息
class RedPacketInfo extends $pb.GeneratedMessage {
  factory RedPacketInfo({
    $fixnum.Int64? redPacketId,
    $fixnum.Int64? grantUserId,
    GrantScene? grantScene,
    GroupRedPacketType? groupRedPacketType,
    $fixnum.Int64? aimId,
    $fixnum.Int64? groupAimId,
    $core.String? description,
    $core.int? createCount,
    $fixnum.Int64? createValue,
    $core.int? remainCount,
    $fixnum.Int64? remainValue,
    RedPacketStatus? status,
    $fixnum.Int64? createTime,
  }) {
    final $result = create();
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    if (grantUserId != null) {
      $result.grantUserId = grantUserId;
    }
    if (grantScene != null) {
      $result.grantScene = grantScene;
    }
    if (groupRedPacketType != null) {
      $result.groupRedPacketType = groupRedPacketType;
    }
    if (aimId != null) {
      $result.aimId = aimId;
    }
    if (groupAimId != null) {
      $result.groupAimId = groupAimId;
    }
    if (description != null) {
      $result.description = description;
    }
    if (createCount != null) {
      $result.createCount = createCount;
    }
    if (createValue != null) {
      $result.createValue = createValue;
    }
    if (remainCount != null) {
      $result.remainCount = remainCount;
    }
    if (remainValue != null) {
      $result.remainValue = remainValue;
    }
    if (status != null) {
      $result.status = status;
    }
    if (createTime != null) {
      $result.createTime = createTime;
    }
    return $result;
  }
  RedPacketInfo._() : super();
  factory RedPacketInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..aInt64(2, _omitFieldNames ? '' : 'grantUserId', protoName: 'grantUserId')
    ..e<GrantScene>(3, _omitFieldNames ? '' : 'grantScene', $pb.PbFieldType.OE, protoName: 'grantScene', defaultOrMaker: GrantScene.PrivateChat, valueOf: GrantScene.valueOf, enumValues: GrantScene.values)
    ..e<GroupRedPacketType>(4, _omitFieldNames ? '' : 'groupRedPacketType', $pb.PbFieldType.OE, protoName: 'groupRedPacketType', defaultOrMaker: GroupRedPacketType.Lucky, valueOf: GroupRedPacketType.valueOf, enumValues: GroupRedPacketType.values)
    ..aInt64(5, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..aInt64(6, _omitFieldNames ? '' : 'groupAimId', protoName: 'groupAimId')
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'createCount', $pb.PbFieldType.O3, protoName: 'createCount')
    ..aInt64(9, _omitFieldNames ? '' : 'createValue', protoName: 'createValue')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'remainCount', $pb.PbFieldType.O3, protoName: 'remainCount')
    ..aInt64(11, _omitFieldNames ? '' : 'remainValue', protoName: 'remainValue')
    ..e<RedPacketStatus>(12, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: RedPacketStatus.Edit, valueOf: RedPacketStatus.valueOf, enumValues: RedPacketStatus.values)
    ..aInt64(13, _omitFieldNames ? '' : 'createTime', protoName: 'createTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketInfo clone() => RedPacketInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketInfo copyWith(void Function(RedPacketInfo) updates) => super.copyWith((message) => updates(message as RedPacketInfo)) as RedPacketInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketInfo create() => RedPacketInfo._();
  RedPacketInfo createEmptyInstance() => create();
  static $pb.PbList<RedPacketInfo> createRepeated() => $pb.PbList<RedPacketInfo>();
  @$core.pragma('dart2js:noInline')
  static RedPacketInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketInfo>(create);
  static RedPacketInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get redPacketId => $_getI64(0);
  @$pb.TagNumber(1)
  set redPacketId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRedPacketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedPacketId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get grantUserId => $_getI64(1);
  @$pb.TagNumber(2)
  set grantUserId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGrantUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGrantUserId() => clearField(2);

  @$pb.TagNumber(3)
  GrantScene get grantScene => $_getN(2);
  @$pb.TagNumber(3)
  set grantScene(GrantScene v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGrantScene() => $_has(2);
  @$pb.TagNumber(3)
  void clearGrantScene() => clearField(3);

  @$pb.TagNumber(4)
  GroupRedPacketType get groupRedPacketType => $_getN(3);
  @$pb.TagNumber(4)
  set groupRedPacketType(GroupRedPacketType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGroupRedPacketType() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroupRedPacketType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get aimId => $_getI64(4);
  @$pb.TagNumber(5)
  set aimId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAimId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAimId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get groupAimId => $_getI64(5);
  @$pb.TagNumber(6)
  set groupAimId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupAimId() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupAimId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get createCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set createCount($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreateCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreateCount() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get createValue => $_getI64(8);
  @$pb.TagNumber(9)
  set createValue($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreateValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreateValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get remainCount => $_getIZ(9);
  @$pb.TagNumber(10)
  set remainCount($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRemainCount() => $_has(9);
  @$pb.TagNumber(10)
  void clearRemainCount() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get remainValue => $_getI64(10);
  @$pb.TagNumber(11)
  set remainValue($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRemainValue() => $_has(10);
  @$pb.TagNumber(11)
  void clearRemainValue() => clearField(11);

  @$pb.TagNumber(12)
  RedPacketStatus get status => $_getN(11);
  @$pb.TagNumber(12)
  set status(RedPacketStatus v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasStatus() => $_has(11);
  @$pb.TagNumber(12)
  void clearStatus() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get createTime => $_getI64(12);
  @$pb.TagNumber(13)
  set createTime($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCreateTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearCreateTime() => clearField(13);
}

/// 生成红包后通知到目标用户
class RedPacketNotify extends $pb.GeneratedMessage {
  factory RedPacketNotify({
    $fixnum.Int64? redPacketId,
    RedPacketInfo? info,
  }) {
    final $result = create();
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  RedPacketNotify._() : super();
  factory RedPacketNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..aOM<RedPacketInfo>(2, _omitFieldNames ? '' : 'info', subBuilder: RedPacketInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketNotify clone() => RedPacketNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketNotify copyWith(void Function(RedPacketNotify) updates) => super.copyWith((message) => updates(message as RedPacketNotify)) as RedPacketNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketNotify create() => RedPacketNotify._();
  RedPacketNotify createEmptyInstance() => create();
  static $pb.PbList<RedPacketNotify> createRepeated() => $pb.PbList<RedPacketNotify>();
  @$core.pragma('dart2js:noInline')
  static RedPacketNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketNotify>(create);
  static RedPacketNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get redPacketId => $_getI64(0);
  @$pb.TagNumber(1)
  set redPacketId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRedPacketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedPacketId() => clearField(1);

  @$pb.TagNumber(2)
  RedPacketInfo get info => $_getN(1);
  @$pb.TagNumber(2)
  set info(RedPacketInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearInfo() => clearField(2);
  @$pb.TagNumber(2)
  RedPacketInfo ensureInfo() => $_ensure(1);
}

///   结果  pb_pub.CommRsp
///  领红包
class RedPacketReceiveReq extends $pb.GeneratedMessage {
  factory RedPacketReceiveReq({
    $fixnum.Int64? redPacketId,
  }) {
    final $result = create();
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    return $result;
  }
  RedPacketReceiveReq._() : super();
  factory RedPacketReceiveReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketReceiveReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketReceiveReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketReceiveReq clone() => RedPacketReceiveReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketReceiveReq copyWith(void Function(RedPacketReceiveReq) updates) => super.copyWith((message) => updates(message as RedPacketReceiveReq)) as RedPacketReceiveReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketReceiveReq create() => RedPacketReceiveReq._();
  RedPacketReceiveReq createEmptyInstance() => create();
  static $pb.PbList<RedPacketReceiveReq> createRepeated() => $pb.PbList<RedPacketReceiveReq>();
  @$core.pragma('dart2js:noInline')
  static RedPacketReceiveReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketReceiveReq>(create);
  static RedPacketReceiveReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get redPacketId => $_getI64(0);
  @$pb.TagNumber(1)
  set redPacketId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRedPacketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedPacketId() => clearField(1);
}

class RedPacketReceiveRsp extends $pb.GeneratedMessage {
  factory RedPacketReceiveRsp({
    $fixnum.Int64? redPacketId,
    $core.int? walletType,
    $fixnum.Int64? receivedValue,
    $fixnum.Int64? grantUserId,
    GrantScene? grantScene,
    GroupRedPacketType? groupRedPacketType,
    $fixnum.Int64? aimId,
    RedPacketStatus? status,
  }) {
    final $result = create();
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (receivedValue != null) {
      $result.receivedValue = receivedValue;
    }
    if (grantUserId != null) {
      $result.grantUserId = grantUserId;
    }
    if (grantScene != null) {
      $result.grantScene = grantScene;
    }
    if (groupRedPacketType != null) {
      $result.groupRedPacketType = groupRedPacketType;
    }
    if (aimId != null) {
      $result.aimId = aimId;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  RedPacketReceiveRsp._() : super();
  factory RedPacketReceiveRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketReceiveRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketReceiveRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..aInt64(3, _omitFieldNames ? '' : 'receivedValue', protoName: 'receivedValue')
    ..aInt64(4, _omitFieldNames ? '' : 'grantUserId', protoName: 'grantUserId')
    ..e<GrantScene>(5, _omitFieldNames ? '' : 'grantScene', $pb.PbFieldType.OE, protoName: 'grantScene', defaultOrMaker: GrantScene.PrivateChat, valueOf: GrantScene.valueOf, enumValues: GrantScene.values)
    ..e<GroupRedPacketType>(6, _omitFieldNames ? '' : 'groupRedPacketType', $pb.PbFieldType.OE, protoName: 'groupRedPacketType', defaultOrMaker: GroupRedPacketType.Lucky, valueOf: GroupRedPacketType.valueOf, enumValues: GroupRedPacketType.values)
    ..aInt64(7, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..e<RedPacketStatus>(12, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: RedPacketStatus.Edit, valueOf: RedPacketStatus.valueOf, enumValues: RedPacketStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketReceiveRsp clone() => RedPacketReceiveRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketReceiveRsp copyWith(void Function(RedPacketReceiveRsp) updates) => super.copyWith((message) => updates(message as RedPacketReceiveRsp)) as RedPacketReceiveRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketReceiveRsp create() => RedPacketReceiveRsp._();
  RedPacketReceiveRsp createEmptyInstance() => create();
  static $pb.PbList<RedPacketReceiveRsp> createRepeated() => $pb.PbList<RedPacketReceiveRsp>();
  @$core.pragma('dart2js:noInline')
  static RedPacketReceiveRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketReceiveRsp>(create);
  static RedPacketReceiveRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get redPacketId => $_getI64(0);
  @$pb.TagNumber(1)
  set redPacketId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRedPacketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedPacketId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(1);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get receivedValue => $_getI64(2);
  @$pb.TagNumber(3)
  set receivedValue($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceivedValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceivedValue() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get grantUserId => $_getI64(3);
  @$pb.TagNumber(4)
  set grantUserId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGrantUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearGrantUserId() => clearField(4);

  @$pb.TagNumber(5)
  GrantScene get grantScene => $_getN(4);
  @$pb.TagNumber(5)
  set grantScene(GrantScene v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGrantScene() => $_has(4);
  @$pb.TagNumber(5)
  void clearGrantScene() => clearField(5);

  @$pb.TagNumber(6)
  GroupRedPacketType get groupRedPacketType => $_getN(5);
  @$pb.TagNumber(6)
  set groupRedPacketType(GroupRedPacketType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupRedPacketType() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupRedPacketType() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get aimId => $_getI64(6);
  @$pb.TagNumber(7)
  set aimId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAimId() => $_has(6);
  @$pb.TagNumber(7)
  void clearAimId() => clearField(7);

  /// 	int64 createValue = 9; // 金额
  /// 	int32 remainCount = 10; // 剩余个数, 自己发的红包这两个才有效
  /// 	int64 remainValue = 11; // 剩余金额，自己发的红包这两个才有效
  @$pb.TagNumber(12)
  RedPacketStatus get status => $_getN(7);
  @$pb.TagNumber(12)
  set status(RedPacketStatus v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(12)
  void clearStatus() => clearField(12);
}

/// 领取红包后的通知，一般只通知给发放者，界面展示 xx领取了您的红包
class RedPacketReceivedNotify extends $pb.GeneratedMessage {
  factory RedPacketReceivedNotify({
    $fixnum.Int64? redPacketId,
    $fixnum.Int64? receiveUserId,
    $fixnum.Int64? grantUserId,
    $fixnum.Int64? aimId,
    $fixnum.Int64? receivedValue,
    $core.int? remainCount,
    $fixnum.Int64? remainValue,
    RedPacketStatus? status,
  }) {
    final $result = create();
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    if (receiveUserId != null) {
      $result.receiveUserId = receiveUserId;
    }
    if (grantUserId != null) {
      $result.grantUserId = grantUserId;
    }
    if (aimId != null) {
      $result.aimId = aimId;
    }
    if (receivedValue != null) {
      $result.receivedValue = receivedValue;
    }
    if (remainCount != null) {
      $result.remainCount = remainCount;
    }
    if (remainValue != null) {
      $result.remainValue = remainValue;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  RedPacketReceivedNotify._() : super();
  factory RedPacketReceivedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketReceivedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketReceivedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..aInt64(2, _omitFieldNames ? '' : 'receiveUserId', protoName: 'receiveUserId')
    ..aInt64(3, _omitFieldNames ? '' : 'grantUserId', protoName: 'grantUserId')
    ..aInt64(4, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..aInt64(5, _omitFieldNames ? '' : 'receivedValue', protoName: 'receivedValue')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'remainCount', $pb.PbFieldType.O3, protoName: 'remainCount')
    ..aInt64(7, _omitFieldNames ? '' : 'remainValue', protoName: 'remainValue')
    ..e<RedPacketStatus>(8, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: RedPacketStatus.Edit, valueOf: RedPacketStatus.valueOf, enumValues: RedPacketStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketReceivedNotify clone() => RedPacketReceivedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketReceivedNotify copyWith(void Function(RedPacketReceivedNotify) updates) => super.copyWith((message) => updates(message as RedPacketReceivedNotify)) as RedPacketReceivedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketReceivedNotify create() => RedPacketReceivedNotify._();
  RedPacketReceivedNotify createEmptyInstance() => create();
  static $pb.PbList<RedPacketReceivedNotify> createRepeated() => $pb.PbList<RedPacketReceivedNotify>();
  @$core.pragma('dart2js:noInline')
  static RedPacketReceivedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketReceivedNotify>(create);
  static RedPacketReceivedNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get redPacketId => $_getI64(0);
  @$pb.TagNumber(1)
  set redPacketId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRedPacketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedPacketId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get receiveUserId => $_getI64(1);
  @$pb.TagNumber(2)
  set receiveUserId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiveUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiveUserId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get grantUserId => $_getI64(2);
  @$pb.TagNumber(3)
  set grantUserId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGrantUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGrantUserId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get aimId => $_getI64(3);
  @$pb.TagNumber(4)
  set aimId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAimId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAimId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get receivedValue => $_getI64(4);
  @$pb.TagNumber(5)
  set receivedValue($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReceivedValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearReceivedValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get remainCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set remainCount($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemainCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemainCount() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get remainValue => $_getI64(6);
  @$pb.TagNumber(7)
  set remainValue($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRemainValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearRemainValue() => clearField(7);

  @$pb.TagNumber(8)
  RedPacketStatus get status => $_getN(7);
  @$pb.TagNumber(8)
  set status(RedPacketStatus v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => clearField(8);
}

/// 获取单个红包信息
class RedPacketInfoReq extends $pb.GeneratedMessage {
  factory RedPacketInfoReq({
    $fixnum.Int64? redPacketId,
  }) {
    final $result = create();
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    return $result;
  }
  RedPacketInfoReq._() : super();
  factory RedPacketInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketInfoReq clone() => RedPacketInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketInfoReq copyWith(void Function(RedPacketInfoReq) updates) => super.copyWith((message) => updates(message as RedPacketInfoReq)) as RedPacketInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketInfoReq create() => RedPacketInfoReq._();
  RedPacketInfoReq createEmptyInstance() => create();
  static $pb.PbList<RedPacketInfoReq> createRepeated() => $pb.PbList<RedPacketInfoReq>();
  @$core.pragma('dart2js:noInline')
  static RedPacketInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketInfoReq>(create);
  static RedPacketInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get redPacketId => $_getI64(0);
  @$pb.TagNumber(1)
  set redPacketId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRedPacketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedPacketId() => clearField(1);
}

class RedPacketInfoRsp extends $pb.GeneratedMessage {
  factory RedPacketInfoRsp({
    RedPacketInfo? data,
    $core.bool? isMeReceived,
    $fixnum.Int64? iReceivedCount,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (isMeReceived != null) {
      $result.isMeReceived = isMeReceived;
    }
    if (iReceivedCount != null) {
      $result.iReceivedCount = iReceivedCount;
    }
    return $result;
  }
  RedPacketInfoRsp._() : super();
  factory RedPacketInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aOM<RedPacketInfo>(1, _omitFieldNames ? '' : 'data', subBuilder: RedPacketInfo.create)
    ..aOB(2, _omitFieldNames ? '' : 'isMeReceived', protoName: 'isMeReceived')
    ..aInt64(3, _omitFieldNames ? '' : 'iReceivedCount', protoName: 'iReceivedCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketInfoRsp clone() => RedPacketInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketInfoRsp copyWith(void Function(RedPacketInfoRsp) updates) => super.copyWith((message) => updates(message as RedPacketInfoRsp)) as RedPacketInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketInfoRsp create() => RedPacketInfoRsp._();
  RedPacketInfoRsp createEmptyInstance() => create();
  static $pb.PbList<RedPacketInfoRsp> createRepeated() => $pb.PbList<RedPacketInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static RedPacketInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketInfoRsp>(create);
  static RedPacketInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  RedPacketInfo get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(RedPacketInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  RedPacketInfo ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get isMeReceived => $_getBF(1);
  @$pb.TagNumber(2)
  set isMeReceived($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsMeReceived() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsMeReceived() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get iReceivedCount => $_getI64(2);
  @$pb.TagNumber(3)
  set iReceivedCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIReceivedCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearIReceivedCount() => clearField(3);
}

/// 红包领取列表数据
class RedPacketReceivedItem extends $pb.GeneratedMessage {
  factory RedPacketReceivedItem({
    $fixnum.Int64? redPacketId,
    $fixnum.Int64? grantUserId,
    GrantScene? grantScene,
    GroupRedPacketType? groupRedPacketType,
    $fixnum.Int64? aimId,
    $fixnum.Int64? groupAimId,
    $core.String? description,
    $fixnum.Int64? recipientUserId,
    $fixnum.Int64? receivedValue,
    $fixnum.Int64? createdTime,
  }) {
    final $result = create();
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    if (grantUserId != null) {
      $result.grantUserId = grantUserId;
    }
    if (grantScene != null) {
      $result.grantScene = grantScene;
    }
    if (groupRedPacketType != null) {
      $result.groupRedPacketType = groupRedPacketType;
    }
    if (aimId != null) {
      $result.aimId = aimId;
    }
    if (groupAimId != null) {
      $result.groupAimId = groupAimId;
    }
    if (description != null) {
      $result.description = description;
    }
    if (recipientUserId != null) {
      $result.recipientUserId = recipientUserId;
    }
    if (receivedValue != null) {
      $result.receivedValue = receivedValue;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  RedPacketReceivedItem._() : super();
  factory RedPacketReceivedItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketReceivedItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketReceivedItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..aInt64(2, _omitFieldNames ? '' : 'grantUserId', protoName: 'grantUserId')
    ..e<GrantScene>(3, _omitFieldNames ? '' : 'grantScene', $pb.PbFieldType.OE, protoName: 'grantScene', defaultOrMaker: GrantScene.PrivateChat, valueOf: GrantScene.valueOf, enumValues: GrantScene.values)
    ..e<GroupRedPacketType>(4, _omitFieldNames ? '' : 'groupRedPacketType', $pb.PbFieldType.OE, protoName: 'groupRedPacketType', defaultOrMaker: GroupRedPacketType.Lucky, valueOf: GroupRedPacketType.valueOf, enumValues: GroupRedPacketType.values)
    ..aInt64(5, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..aInt64(6, _omitFieldNames ? '' : 'groupAimId', protoName: 'groupAimId')
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..aInt64(8, _omitFieldNames ? '' : 'recipientUserId', protoName: 'recipientUserId')
    ..aInt64(9, _omitFieldNames ? '' : 'receivedValue', protoName: 'receivedValue')
    ..aInt64(10, _omitFieldNames ? '' : 'createdTime', protoName: 'createdTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketReceivedItem clone() => RedPacketReceivedItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketReceivedItem copyWith(void Function(RedPacketReceivedItem) updates) => super.copyWith((message) => updates(message as RedPacketReceivedItem)) as RedPacketReceivedItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketReceivedItem create() => RedPacketReceivedItem._();
  RedPacketReceivedItem createEmptyInstance() => create();
  static $pb.PbList<RedPacketReceivedItem> createRepeated() => $pb.PbList<RedPacketReceivedItem>();
  @$core.pragma('dart2js:noInline')
  static RedPacketReceivedItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketReceivedItem>(create);
  static RedPacketReceivedItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get redPacketId => $_getI64(0);
  @$pb.TagNumber(1)
  set redPacketId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRedPacketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedPacketId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get grantUserId => $_getI64(1);
  @$pb.TagNumber(2)
  set grantUserId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGrantUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGrantUserId() => clearField(2);

  @$pb.TagNumber(3)
  GrantScene get grantScene => $_getN(2);
  @$pb.TagNumber(3)
  set grantScene(GrantScene v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGrantScene() => $_has(2);
  @$pb.TagNumber(3)
  void clearGrantScene() => clearField(3);

  @$pb.TagNumber(4)
  GroupRedPacketType get groupRedPacketType => $_getN(3);
  @$pb.TagNumber(4)
  set groupRedPacketType(GroupRedPacketType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGroupRedPacketType() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroupRedPacketType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get aimId => $_getI64(4);
  @$pb.TagNumber(5)
  set aimId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAimId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAimId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get groupAimId => $_getI64(5);
  @$pb.TagNumber(6)
  set groupAimId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupAimId() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupAimId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get recipientUserId => $_getI64(7);
  @$pb.TagNumber(8)
  set recipientUserId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRecipientUserId() => $_has(7);
  @$pb.TagNumber(8)
  void clearRecipientUserId() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get receivedValue => $_getI64(8);
  @$pb.TagNumber(9)
  set receivedValue($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasReceivedValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearReceivedValue() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get createdTime => $_getI64(9);
  @$pb.TagNumber(10)
  set createdTime($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedTime() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedTime() => clearField(10);
}

/// 自己领取的
class RedPacketMyReceivedListReq extends $pb.GeneratedMessage {
  factory RedPacketMyReceivedListReq({
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
  RedPacketMyReceivedListReq._() : super();
  factory RedPacketMyReceivedListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketMyReceivedListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketMyReceivedListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketMyReceivedListReq clone() => RedPacketMyReceivedListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketMyReceivedListReq copyWith(void Function(RedPacketMyReceivedListReq) updates) => super.copyWith((message) => updates(message as RedPacketMyReceivedListReq)) as RedPacketMyReceivedListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketMyReceivedListReq create() => RedPacketMyReceivedListReq._();
  RedPacketMyReceivedListReq createEmptyInstance() => create();
  static $pb.PbList<RedPacketMyReceivedListReq> createRepeated() => $pb.PbList<RedPacketMyReceivedListReq>();
  @$core.pragma('dart2js:noInline')
  static RedPacketMyReceivedListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketMyReceivedListReq>(create);
  static RedPacketMyReceivedListReq? _defaultInstance;

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

class RedPacketMyReceivedListRsp extends $pb.GeneratedMessage {
  factory RedPacketMyReceivedListRsp({
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? totalCount,
    $core.Iterable<RedPacketReceivedItem>? items,
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
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  RedPacketMyReceivedListRsp._() : super();
  factory RedPacketMyReceivedListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketMyReceivedListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketMyReceivedListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..pc<RedPacketReceivedItem>(4, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RedPacketReceivedItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketMyReceivedListRsp clone() => RedPacketMyReceivedListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketMyReceivedListRsp copyWith(void Function(RedPacketMyReceivedListRsp) updates) => super.copyWith((message) => updates(message as RedPacketMyReceivedListRsp)) as RedPacketMyReceivedListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketMyReceivedListRsp create() => RedPacketMyReceivedListRsp._();
  RedPacketMyReceivedListRsp createEmptyInstance() => create();
  static $pb.PbList<RedPacketMyReceivedListRsp> createRepeated() => $pb.PbList<RedPacketMyReceivedListRsp>();
  @$core.pragma('dart2js:noInline')
  static RedPacketMyReceivedListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketMyReceivedListRsp>(create);
  static RedPacketMyReceivedListRsp? _defaultInstance;

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

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalCount => $_getI64(2);
  @$pb.TagNumber(3)
  set totalCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<RedPacketReceivedItem> get items => $_getList(3);
}

/// 自己发出去的红包列表
class RedPacketMyHandedOutListReq extends $pb.GeneratedMessage {
  factory RedPacketMyHandedOutListReq({
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
  RedPacketMyHandedOutListReq._() : super();
  factory RedPacketMyHandedOutListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketMyHandedOutListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketMyHandedOutListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketMyHandedOutListReq clone() => RedPacketMyHandedOutListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketMyHandedOutListReq copyWith(void Function(RedPacketMyHandedOutListReq) updates) => super.copyWith((message) => updates(message as RedPacketMyHandedOutListReq)) as RedPacketMyHandedOutListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketMyHandedOutListReq create() => RedPacketMyHandedOutListReq._();
  RedPacketMyHandedOutListReq createEmptyInstance() => create();
  static $pb.PbList<RedPacketMyHandedOutListReq> createRepeated() => $pb.PbList<RedPacketMyHandedOutListReq>();
  @$core.pragma('dart2js:noInline')
  static RedPacketMyHandedOutListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketMyHandedOutListReq>(create);
  static RedPacketMyHandedOutListReq? _defaultInstance;

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

class RedPacketMyHandedOutListRsp extends $pb.GeneratedMessage {
  factory RedPacketMyHandedOutListRsp({
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? totalCount,
    $core.Iterable<RedPacketInfo>? items,
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
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  RedPacketMyHandedOutListRsp._() : super();
  factory RedPacketMyHandedOutListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketMyHandedOutListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketMyHandedOutListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..pc<RedPacketInfo>(4, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RedPacketInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketMyHandedOutListRsp clone() => RedPacketMyHandedOutListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketMyHandedOutListRsp copyWith(void Function(RedPacketMyHandedOutListRsp) updates) => super.copyWith((message) => updates(message as RedPacketMyHandedOutListRsp)) as RedPacketMyHandedOutListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketMyHandedOutListRsp create() => RedPacketMyHandedOutListRsp._();
  RedPacketMyHandedOutListRsp createEmptyInstance() => create();
  static $pb.PbList<RedPacketMyHandedOutListRsp> createRepeated() => $pb.PbList<RedPacketMyHandedOutListRsp>();
  @$core.pragma('dart2js:noInline')
  static RedPacketMyHandedOutListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketMyHandedOutListRsp>(create);
  static RedPacketMyHandedOutListRsp? _defaultInstance;

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

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalCount => $_getI64(2);
  @$pb.TagNumber(3)
  set totalCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<RedPacketInfo> get items => $_getList(3);
}

class RedPacketFlowItem extends $pb.GeneratedMessage {
  factory RedPacketFlowItem({
    $fixnum.Int64? id,
    $fixnum.Int64? redPacketId,
    $fixnum.Int64? recipientUserId,
    $fixnum.Int64? value,
    $fixnum.Int64? createTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    if (recipientUserId != null) {
      $result.recipientUserId = recipientUserId;
    }
    if (value != null) {
      $result.value = value;
    }
    if (createTime != null) {
      $result.createTime = createTime;
    }
    return $result;
  }
  RedPacketFlowItem._() : super();
  factory RedPacketFlowItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketFlowItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketFlowItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..aInt64(3, _omitFieldNames ? '' : 'recipientUserId', protoName: 'recipientUserId')
    ..aInt64(4, _omitFieldNames ? '' : 'value')
    ..aInt64(5, _omitFieldNames ? '' : 'createTime', protoName: 'createTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketFlowItem clone() => RedPacketFlowItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketFlowItem copyWith(void Function(RedPacketFlowItem) updates) => super.copyWith((message) => updates(message as RedPacketFlowItem)) as RedPacketFlowItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketFlowItem create() => RedPacketFlowItem._();
  RedPacketFlowItem createEmptyInstance() => create();
  static $pb.PbList<RedPacketFlowItem> createRepeated() => $pb.PbList<RedPacketFlowItem>();
  @$core.pragma('dart2js:noInline')
  static RedPacketFlowItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketFlowItem>(create);
  static RedPacketFlowItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get redPacketId => $_getI64(1);
  @$pb.TagNumber(2)
  set redPacketId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRedPacketId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRedPacketId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get recipientUserId => $_getI64(2);
  @$pb.TagNumber(3)
  set recipientUserId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRecipientUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecipientUserId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get value => $_getI64(3);
  @$pb.TagNumber(4)
  set value($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createTime => $_getI64(4);
  @$pb.TagNumber(5)
  set createTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreateTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateTime() => clearField(5);
}

/// 获取当前红包领取列表，打开红包后下面的领取列表
class RedPacketCurFlowReq extends $pb.GeneratedMessage {
  factory RedPacketCurFlowReq({
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? redPacketId,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (redPacketId != null) {
      $result.redPacketId = redPacketId;
    }
    return $result;
  }
  RedPacketCurFlowReq._() : super();
  factory RedPacketCurFlowReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketCurFlowReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketCurFlowReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'redPacketId', protoName: 'redPacketId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketCurFlowReq clone() => RedPacketCurFlowReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketCurFlowReq copyWith(void Function(RedPacketCurFlowReq) updates) => super.copyWith((message) => updates(message as RedPacketCurFlowReq)) as RedPacketCurFlowReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketCurFlowReq create() => RedPacketCurFlowReq._();
  RedPacketCurFlowReq createEmptyInstance() => create();
  static $pb.PbList<RedPacketCurFlowReq> createRepeated() => $pb.PbList<RedPacketCurFlowReq>();
  @$core.pragma('dart2js:noInline')
  static RedPacketCurFlowReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketCurFlowReq>(create);
  static RedPacketCurFlowReq? _defaultInstance;

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

  @$pb.TagNumber(3)
  $fixnum.Int64 get redPacketId => $_getI64(2);
  @$pb.TagNumber(3)
  set redPacketId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRedPacketId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRedPacketId() => clearField(3);
}

class RedPacketCurFlowRsp extends $pb.GeneratedMessage {
  factory RedPacketCurFlowRsp({
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? totalCount,
    $core.Iterable<RedPacketFlowItem>? items,
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
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  RedPacketCurFlowRsp._() : super();
  factory RedPacketCurFlowRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedPacketCurFlowRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedPacketCurFlowRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_userCenter'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..pc<RedPacketFlowItem>(4, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RedPacketFlowItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedPacketCurFlowRsp clone() => RedPacketCurFlowRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedPacketCurFlowRsp copyWith(void Function(RedPacketCurFlowRsp) updates) => super.copyWith((message) => updates(message as RedPacketCurFlowRsp)) as RedPacketCurFlowRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketCurFlowRsp create() => RedPacketCurFlowRsp._();
  RedPacketCurFlowRsp createEmptyInstance() => create();
  static $pb.PbList<RedPacketCurFlowRsp> createRepeated() => $pb.PbList<RedPacketCurFlowRsp>();
  @$core.pragma('dart2js:noInline')
  static RedPacketCurFlowRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacketCurFlowRsp>(create);
  static RedPacketCurFlowRsp? _defaultInstance;

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

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalCount => $_getI64(2);
  @$pb.TagNumber(3)
  set totalCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<RedPacketFlowItem> get items => $_getList(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
