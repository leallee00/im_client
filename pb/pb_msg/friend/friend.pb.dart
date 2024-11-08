//
//  Generated code. Do not modify.
//  source: pb_msg/friend/friend.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'friend.pbenum.dart';

export 'friend.pbenum.dart';

class ApplyReq extends $pb.GeneratedMessage {
  factory ApplyReq({
    $core.String? msg,
  }) {
    final $result = create();
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  ApplyReq._() : super();
  factory ApplyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'msg')
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

  @$pb.TagNumber(1)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(1)
  set msg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);
}

class ApplyRsp extends $pb.GeneratedMessage {
  factory ApplyRsp() => create();
  ApplyRsp._() : super();
  factory ApplyRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
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
}

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyAnswerReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
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
  factory ApplyAnswerRsp({
    $core.bool? agree,
  }) {
    final $result = create();
    if (agree != null) {
      $result.agree = agree;
    }
    return $result;
  }
  ApplyAnswerRsp._() : super();
  factory ApplyAnswerRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyAnswerRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyAnswerRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'agree')
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

  @$pb.TagNumber(1)
  $core.bool get agree => $_getBF(0);
  @$pb.TagNumber(1)
  set agree($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgree() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgree() => clearField(1);
}

class Application extends $pb.GeneratedMessage {
  factory Application({
    $fixnum.Int64? applicantId,
    $fixnum.Int64? respondentId,
    $core.int? status,
    $core.String? msg,
    $fixnum.Int64? createAt,
  }) {
    final $result = create();
    if (applicantId != null) {
      $result.applicantId = applicantId;
    }
    if (respondentId != null) {
      $result.respondentId = respondentId;
    }
    if (status != null) {
      $result.status = status;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    return $result;
  }
  Application._() : super();
  factory Application.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Application.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Application', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'applicantId', protoName: 'applicantId')
    ..aInt64(2, _omitFieldNames ? '' : 'respondentId', protoName: 'respondentId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'msg')
    ..aInt64(5, _omitFieldNames ? '' : 'createAt', protoName: 'createAt')
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
  $fixnum.Int64 get applicantId => $_getI64(0);
  @$pb.TagNumber(1)
  set applicantId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicantId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get respondentId => $_getI64(1);
  @$pb.TagNumber(2)
  set respondentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRespondentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRespondentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(2);
  @$pb.TagNumber(3)
  set status($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get msg => $_getSZ(3);
  @$pb.TagNumber(4)
  set msg($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMsg() => $_has(3);
  @$pb.TagNumber(4)
  void clearMsg() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreateAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateAt() => clearField(5);
}

/// 时间倒序
class ApplicationsReq extends $pb.GeneratedMessage {
  factory ApplicationsReq({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
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
  ApplicationsReq._() : super();
  factory ApplicationsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
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
}

class ApplicationsRsp extends $pb.GeneratedMessage {
  factory ApplicationsRsp({
    $core.Iterable<Application>? applications,
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? totalCount,
  }) {
    final $result = create();
    if (applications != null) {
      $result.applications.addAll(applications);
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
  ApplicationsRsp._() : super();
  factory ApplicationsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..pc<Application>(1, _omitFieldNames ? '' : 'applications', $pb.PbFieldType.PM, subBuilder: Application.create)
    ..aInt64(2, _omitFieldNames ? '' : 'page')
    ..aInt64(3, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(4, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
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

  @$pb.TagNumber(2)
  $fixnum.Int64 get page => $_getI64(1);
  @$pb.TagNumber(2)
  set page($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get pageSize => $_getI64(2);
  @$pb.TagNumber(3)
  set pageSize($fixnum.Int64 v) { $_setInt64(2, v); }
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

class Friend extends $pb.GeneratedMessage {
  factory Friend({
    $fixnum.Int64? userId,
    $core.String? username,
    $core.String? avatar,
    $core.String? name,
    $core.String? remark,
    $core.String? mobile,
    $core.String? description,
    $core.String? card,
    $core.String? sign,
    $core.String? tags,
    $core.bool? blocked,
    $core.bool? stared,
    $core.bool? deleted,
    $core.String? background,
    $core.int? source,
    $core.bool? top,
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
    if (name != null) {
      $result.name = name;
    }
    if (remark != null) {
      $result.remark = remark;
    }
    if (mobile != null) {
      $result.mobile = mobile;
    }
    if (description != null) {
      $result.description = description;
    }
    if (card != null) {
      $result.card = card;
    }
    if (sign != null) {
      $result.sign = sign;
    }
    if (tags != null) {
      $result.tags = tags;
    }
    if (blocked != null) {
      $result.blocked = blocked;
    }
    if (stared != null) {
      $result.stared = stared;
    }
    if (deleted != null) {
      $result.deleted = deleted;
    }
    if (background != null) {
      $result.background = background;
    }
    if (source != null) {
      $result.source = source;
    }
    if (top != null) {
      $result.top = top;
    }
    return $result;
  }
  Friend._() : super();
  factory Friend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Friend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Friend', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'remark')
    ..aOS(6, _omitFieldNames ? '' : 'mobile')
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..aOS(8, _omitFieldNames ? '' : 'card')
    ..aOS(9, _omitFieldNames ? '' : 'sign')
    ..aOS(10, _omitFieldNames ? '' : 'tags')
    ..aOB(11, _omitFieldNames ? '' : 'blocked')
    ..aOB(12, _omitFieldNames ? '' : 'stared')
    ..aOB(13, _omitFieldNames ? '' : 'deleted')
    ..aOS(14, _omitFieldNames ? '' : 'background')
    ..a<$core.int>(15, _omitFieldNames ? '' : 'source', $pb.PbFieldType.O3)
    ..aOB(16, _omitFieldNames ? '' : 'top')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Friend clone() => Friend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Friend copyWith(void Function(Friend) updates) => super.copyWith((message) => updates(message as Friend)) as Friend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Friend create() => Friend._();
  Friend createEmptyInstance() => create();
  static $pb.PbList<Friend> createRepeated() => $pb.PbList<Friend>();
  @$core.pragma('dart2js:noInline')
  static Friend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Friend>(create);
  static Friend? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get remark => $_getSZ(4);
  @$pb.TagNumber(5)
  set remark($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRemark() => $_has(4);
  @$pb.TagNumber(5)
  void clearRemark() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get mobile => $_getSZ(5);
  @$pb.TagNumber(6)
  set mobile($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMobile() => $_has(5);
  @$pb.TagNumber(6)
  void clearMobile() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get card => $_getSZ(7);
  @$pb.TagNumber(8)
  set card($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCard() => $_has(7);
  @$pb.TagNumber(8)
  void clearCard() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get sign => $_getSZ(8);
  @$pb.TagNumber(9)
  set sign($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSign() => $_has(8);
  @$pb.TagNumber(9)
  void clearSign() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get tags => $_getSZ(9);
  @$pb.TagNumber(10)
  set tags($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTags() => $_has(9);
  @$pb.TagNumber(10)
  void clearTags() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get blocked => $_getBF(10);
  @$pb.TagNumber(11)
  set blocked($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBlocked() => $_has(10);
  @$pb.TagNumber(11)
  void clearBlocked() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get stared => $_getBF(11);
  @$pb.TagNumber(12)
  set stared($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasStared() => $_has(11);
  @$pb.TagNumber(12)
  void clearStared() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get deleted => $_getBF(12);
  @$pb.TagNumber(13)
  set deleted($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDeleted() => $_has(12);
  @$pb.TagNumber(13)
  void clearDeleted() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get background => $_getSZ(13);
  @$pb.TagNumber(14)
  set background($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasBackground() => $_has(13);
  @$pb.TagNumber(14)
  void clearBackground() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get source => $_getIZ(14);
  @$pb.TagNumber(15)
  set source($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasSource() => $_has(14);
  @$pb.TagNumber(15)
  void clearSource() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get top => $_getBF(15);
  @$pb.TagNumber(16)
  set top($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasTop() => $_has(15);
  @$pb.TagNumber(16)
  void clearTop() => clearField(16);
}

class FriendsReq extends $pb.GeneratedMessage {
  factory FriendsReq() => create();
  FriendsReq._() : super();
  factory FriendsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FriendsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendsReq clone() => FriendsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendsReq copyWith(void Function(FriendsReq) updates) => super.copyWith((message) => updates(message as FriendsReq)) as FriendsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FriendsReq create() => FriendsReq._();
  FriendsReq createEmptyInstance() => create();
  static $pb.PbList<FriendsReq> createRepeated() => $pb.PbList<FriendsReq>();
  @$core.pragma('dart2js:noInline')
  static FriendsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendsReq>(create);
  static FriendsReq? _defaultInstance;
}

class FriendsRsp extends $pb.GeneratedMessage {
  factory FriendsRsp({
    $core.Iterable<Friend>? friends,
  }) {
    final $result = create();
    if (friends != null) {
      $result.friends.addAll(friends);
    }
    return $result;
  }
  FriendsRsp._() : super();
  factory FriendsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FriendsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..pc<Friend>(1, _omitFieldNames ? '' : 'friends', $pb.PbFieldType.PM, subBuilder: Friend.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendsRsp clone() => FriendsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendsRsp copyWith(void Function(FriendsRsp) updates) => super.copyWith((message) => updates(message as FriendsRsp)) as FriendsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FriendsRsp create() => FriendsRsp._();
  FriendsRsp createEmptyInstance() => create();
  static $pb.PbList<FriendsRsp> createRepeated() => $pb.PbList<FriendsRsp>();
  @$core.pragma('dart2js:noInline')
  static FriendsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendsRsp>(create);
  static FriendsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Friend> get friends => $_getList(0);
}

class FriendDetailReq extends $pb.GeneratedMessage {
  factory FriendDetailReq() => create();
  FriendDetailReq._() : super();
  factory FriendDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FriendDetailReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendDetailReq clone() => FriendDetailReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendDetailReq copyWith(void Function(FriendDetailReq) updates) => super.copyWith((message) => updates(message as FriendDetailReq)) as FriendDetailReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FriendDetailReq create() => FriendDetailReq._();
  FriendDetailReq createEmptyInstance() => create();
  static $pb.PbList<FriendDetailReq> createRepeated() => $pb.PbList<FriendDetailReq>();
  @$core.pragma('dart2js:noInline')
  static FriendDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendDetailReq>(create);
  static FriendDetailReq? _defaultInstance;
}

class FriendDetailRsp extends $pb.GeneratedMessage {
  factory FriendDetailRsp({
    Friend? friend,
  }) {
    final $result = create();
    if (friend != null) {
      $result.friend = friend;
    }
    return $result;
  }
  FriendDetailRsp._() : super();
  factory FriendDetailRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendDetailRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FriendDetailRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aOM<Friend>(1, _omitFieldNames ? '' : 'friend', subBuilder: Friend.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendDetailRsp clone() => FriendDetailRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendDetailRsp copyWith(void Function(FriendDetailRsp) updates) => super.copyWith((message) => updates(message as FriendDetailRsp)) as FriendDetailRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FriendDetailRsp create() => FriendDetailRsp._();
  FriendDetailRsp createEmptyInstance() => create();
  static $pb.PbList<FriendDetailRsp> createRepeated() => $pb.PbList<FriendDetailRsp>();
  @$core.pragma('dart2js:noInline')
  static FriendDetailRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendDetailRsp>(create);
  static FriendDetailRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Friend get friend => $_getN(0);
  @$pb.TagNumber(1)
  set friend(Friend v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFriend() => $_has(0);
  @$pb.TagNumber(1)
  void clearFriend() => clearField(1);
  @$pb.TagNumber(1)
  Friend ensureFriend() => $_ensure(0);
}

class DeleteFriendReq extends $pb.GeneratedMessage {
  factory DeleteFriendReq() => create();
  DeleteFriendReq._() : super();
  factory DeleteFriendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFriendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteFriendReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteFriendReq clone() => DeleteFriendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteFriendReq copyWith(void Function(DeleteFriendReq) updates) => super.copyWith((message) => updates(message as DeleteFriendReq)) as DeleteFriendReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteFriendReq create() => DeleteFriendReq._();
  DeleteFriendReq createEmptyInstance() => create();
  static $pb.PbList<DeleteFriendReq> createRepeated() => $pb.PbList<DeleteFriendReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteFriendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFriendReq>(create);
  static DeleteFriendReq? _defaultInstance;
}

class DeleteFriendRsp extends $pb.GeneratedMessage {
  factory DeleteFriendRsp() => create();
  DeleteFriendRsp._() : super();
  factory DeleteFriendRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFriendRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteFriendRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteFriendRsp clone() => DeleteFriendRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteFriendRsp copyWith(void Function(DeleteFriendRsp) updates) => super.copyWith((message) => updates(message as DeleteFriendRsp)) as DeleteFriendRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteFriendRsp create() => DeleteFriendRsp._();
  DeleteFriendRsp createEmptyInstance() => create();
  static $pb.PbList<DeleteFriendRsp> createRepeated() => $pb.PbList<DeleteFriendRsp>();
  @$core.pragma('dart2js:noInline')
  static DeleteFriendRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFriendRsp>(create);
  static DeleteFriendRsp? _defaultInstance;
}

/// 更新用户信息
class UpdateFriendReq extends $pb.GeneratedMessage {
  factory UpdateFriendReq({
    Friend? friend,
    $core.Iterable<$core.String>? keys,
  }) {
    final $result = create();
    if (friend != null) {
      $result.friend = friend;
    }
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  UpdateFriendReq._() : super();
  factory UpdateFriendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateFriendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateFriendReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aOM<Friend>(1, _omitFieldNames ? '' : 'friend', subBuilder: Friend.create)
    ..pPS(2, _omitFieldNames ? '' : 'keys')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateFriendReq clone() => UpdateFriendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateFriendReq copyWith(void Function(UpdateFriendReq) updates) => super.copyWith((message) => updates(message as UpdateFriendReq)) as UpdateFriendReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateFriendReq create() => UpdateFriendReq._();
  UpdateFriendReq createEmptyInstance() => create();
  static $pb.PbList<UpdateFriendReq> createRepeated() => $pb.PbList<UpdateFriendReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateFriendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateFriendReq>(create);
  static UpdateFriendReq? _defaultInstance;

  @$pb.TagNumber(1)
  Friend get friend => $_getN(0);
  @$pb.TagNumber(1)
  set friend(Friend v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFriend() => $_has(0);
  @$pb.TagNumber(1)
  void clearFriend() => clearField(1);
  @$pb.TagNumber(1)
  Friend ensureFriend() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get keys => $_getList(1);
}

class UpdateFriendRsp extends $pb.GeneratedMessage {
  factory UpdateFriendRsp() => create();
  UpdateFriendRsp._() : super();
  factory UpdateFriendRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateFriendRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateFriendRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateFriendRsp clone() => UpdateFriendRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateFriendRsp copyWith(void Function(UpdateFriendRsp) updates) => super.copyWith((message) => updates(message as UpdateFriendRsp)) as UpdateFriendRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateFriendRsp create() => UpdateFriendRsp._();
  UpdateFriendRsp createEmptyInstance() => create();
  static $pb.PbList<UpdateFriendRsp> createRepeated() => $pb.PbList<UpdateFriendRsp>();
  @$core.pragma('dart2js:noInline')
  static UpdateFriendRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateFriendRsp>(create);
  static UpdateFriendRsp? _defaultInstance;
}

class GmMakeFriendRelationReq extends $pb.GeneratedMessage {
  factory GmMakeFriendRelationReq({
    $fixnum.Int64? userId1,
    $fixnum.Int64? userId2,
  }) {
    final $result = create();
    if (userId1 != null) {
      $result.userId1 = userId1;
    }
    if (userId2 != null) {
      $result.userId2 = userId2;
    }
    return $result;
  }
  GmMakeFriendRelationReq._() : super();
  factory GmMakeFriendRelationReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GmMakeFriendRelationReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GmMakeFriendRelationReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId1', protoName: 'userId1')
    ..aInt64(2, _omitFieldNames ? '' : 'userId2', protoName: 'userId2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GmMakeFriendRelationReq clone() => GmMakeFriendRelationReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GmMakeFriendRelationReq copyWith(void Function(GmMakeFriendRelationReq) updates) => super.copyWith((message) => updates(message as GmMakeFriendRelationReq)) as GmMakeFriendRelationReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GmMakeFriendRelationReq create() => GmMakeFriendRelationReq._();
  GmMakeFriendRelationReq createEmptyInstance() => create();
  static $pb.PbList<GmMakeFriendRelationReq> createRepeated() => $pb.PbList<GmMakeFriendRelationReq>();
  @$core.pragma('dart2js:noInline')
  static GmMakeFriendRelationReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GmMakeFriendRelationReq>(create);
  static GmMakeFriendRelationReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId1 => $_getI64(0);
  @$pb.TagNumber(1)
  set userId1($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId1() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId1() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId2 => $_getI64(1);
  @$pb.TagNumber(2)
  set userId2($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId2() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId2() => clearField(2);
}

class GmMakeFriendRelationRsp extends $pb.GeneratedMessage {
  factory GmMakeFriendRelationRsp({
    $fixnum.Int64? userId1,
    $fixnum.Int64? userId2,
  }) {
    final $result = create();
    if (userId1 != null) {
      $result.userId1 = userId1;
    }
    if (userId2 != null) {
      $result.userId2 = userId2;
    }
    return $result;
  }
  GmMakeFriendRelationRsp._() : super();
  factory GmMakeFriendRelationRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GmMakeFriendRelationRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GmMakeFriendRelationRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId1', protoName: 'userId1')
    ..aInt64(2, _omitFieldNames ? '' : 'userId2', protoName: 'userId2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GmMakeFriendRelationRsp clone() => GmMakeFriendRelationRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GmMakeFriendRelationRsp copyWith(void Function(GmMakeFriendRelationRsp) updates) => super.copyWith((message) => updates(message as GmMakeFriendRelationRsp)) as GmMakeFriendRelationRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GmMakeFriendRelationRsp create() => GmMakeFriendRelationRsp._();
  GmMakeFriendRelationRsp createEmptyInstance() => create();
  static $pb.PbList<GmMakeFriendRelationRsp> createRepeated() => $pb.PbList<GmMakeFriendRelationRsp>();
  @$core.pragma('dart2js:noInline')
  static GmMakeFriendRelationRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GmMakeFriendRelationRsp>(create);
  static GmMakeFriendRelationRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId1 => $_getI64(0);
  @$pb.TagNumber(1)
  set userId1($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId1() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId1() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId2 => $_getI64(1);
  @$pb.TagNumber(2)
  set userId2($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId2() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId2() => clearField(2);
}

class IsFriendReq extends $pb.GeneratedMessage {
  factory IsFriendReq({
    $fixnum.Int64? userId1,
    $fixnum.Int64? userId2,
  }) {
    final $result = create();
    if (userId1 != null) {
      $result.userId1 = userId1;
    }
    if (userId2 != null) {
      $result.userId2 = userId2;
    }
    return $result;
  }
  IsFriendReq._() : super();
  factory IsFriendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsFriendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsFriendReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId1', protoName: 'userId1')
    ..aInt64(2, _omitFieldNames ? '' : 'userId2', protoName: 'userId2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsFriendReq clone() => IsFriendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsFriendReq copyWith(void Function(IsFriendReq) updates) => super.copyWith((message) => updates(message as IsFriendReq)) as IsFriendReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsFriendReq create() => IsFriendReq._();
  IsFriendReq createEmptyInstance() => create();
  static $pb.PbList<IsFriendReq> createRepeated() => $pb.PbList<IsFriendReq>();
  @$core.pragma('dart2js:noInline')
  static IsFriendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsFriendReq>(create);
  static IsFriendReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId1 => $_getI64(0);
  @$pb.TagNumber(1)
  set userId1($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId1() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId1() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId2 => $_getI64(1);
  @$pb.TagNumber(2)
  set userId2($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId2() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId2() => clearField(2);
}

class IsFriendRsp extends $pb.GeneratedMessage {
  factory IsFriendRsp({
    $core.bool? isFriend,
    $core.bool? isBlocked,
    EnIsInBlackListStatus? isInBlackListStatus,
  }) {
    final $result = create();
    if (isFriend != null) {
      $result.isFriend = isFriend;
    }
    if (isBlocked != null) {
      $result.isBlocked = isBlocked;
    }
    if (isInBlackListStatus != null) {
      $result.isInBlackListStatus = isInBlackListStatus;
    }
    return $result;
  }
  IsFriendRsp._() : super();
  factory IsFriendRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsFriendRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsFriendRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'IsFriend', protoName: 'IsFriend')
    ..aOB(2, _omitFieldNames ? '' : 'IsBlocked', protoName: 'IsBlocked')
    ..e<EnIsInBlackListStatus>(3, _omitFieldNames ? '' : 'isInBlackListStatus', $pb.PbFieldType.OE, protoName: 'isInBlackListStatus', defaultOrMaker: EnIsInBlackListStatus.NotInBlackList, valueOf: EnIsInBlackListStatus.valueOf, enumValues: EnIsInBlackListStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsFriendRsp clone() => IsFriendRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsFriendRsp copyWith(void Function(IsFriendRsp) updates) => super.copyWith((message) => updates(message as IsFriendRsp)) as IsFriendRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsFriendRsp create() => IsFriendRsp._();
  IsFriendRsp createEmptyInstance() => create();
  static $pb.PbList<IsFriendRsp> createRepeated() => $pb.PbList<IsFriendRsp>();
  @$core.pragma('dart2js:noInline')
  static IsFriendRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsFriendRsp>(create);
  static IsFriendRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isFriend => $_getBF(0);
  @$pb.TagNumber(1)
  set isFriend($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsFriend() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsFriend() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isBlocked => $_getBF(1);
  @$pb.TagNumber(2)
  set isBlocked($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsBlocked() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsBlocked() => clearField(2);

  @$pb.TagNumber(3)
  EnIsInBlackListStatus get isInBlackListStatus => $_getN(2);
  @$pb.TagNumber(3)
  set isInBlackListStatus(EnIsInBlackListStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsInBlackListStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsInBlackListStatus() => clearField(3);
}

/// 读取黑名单列表,查询这从 commData 的srcId获取
class ReadBlackListReq extends $pb.GeneratedMessage {
  factory ReadBlackListReq() => create();
  ReadBlackListReq._() : super();
  factory ReadBlackListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadBlackListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadBlackListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadBlackListReq clone() => ReadBlackListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadBlackListReq copyWith(void Function(ReadBlackListReq) updates) => super.copyWith((message) => updates(message as ReadBlackListReq)) as ReadBlackListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadBlackListReq create() => ReadBlackListReq._();
  ReadBlackListReq createEmptyInstance() => create();
  static $pb.PbList<ReadBlackListReq> createRepeated() => $pb.PbList<ReadBlackListReq>();
  @$core.pragma('dart2js:noInline')
  static ReadBlackListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadBlackListReq>(create);
  static ReadBlackListReq? _defaultInstance;
}

class ReadBlackListRsp extends $pb.GeneratedMessage {
  factory ReadBlackListRsp({
    $core.Iterable<$fixnum.Int64>? blackUserId,
  }) {
    final $result = create();
    if (blackUserId != null) {
      $result.blackUserId.addAll(blackUserId);
    }
    return $result;
  }
  ReadBlackListRsp._() : super();
  factory ReadBlackListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadBlackListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadBlackListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'blackUserId', $pb.PbFieldType.K6, protoName: 'blackUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadBlackListRsp clone() => ReadBlackListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadBlackListRsp copyWith(void Function(ReadBlackListRsp) updates) => super.copyWith((message) => updates(message as ReadBlackListRsp)) as ReadBlackListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadBlackListRsp create() => ReadBlackListRsp._();
  ReadBlackListRsp createEmptyInstance() => create();
  static $pb.PbList<ReadBlackListRsp> createRepeated() => $pb.PbList<ReadBlackListRsp>();
  @$core.pragma('dart2js:noInline')
  static ReadBlackListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadBlackListRsp>(create);
  static ReadBlackListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get blackUserId => $_getList(0);
}

/// ///////////////////////////////////////////
///  是否在黑名单中, commData 中获取双方id
class IsInBlackListReq extends $pb.GeneratedMessage {
  factory IsInBlackListReq() => create();
  IsInBlackListReq._() : super();
  factory IsInBlackListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsInBlackListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsInBlackListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsInBlackListReq clone() => IsInBlackListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsInBlackListReq copyWith(void Function(IsInBlackListReq) updates) => super.copyWith((message) => updates(message as IsInBlackListReq)) as IsInBlackListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsInBlackListReq create() => IsInBlackListReq._();
  IsInBlackListReq createEmptyInstance() => create();
  static $pb.PbList<IsInBlackListReq> createRepeated() => $pb.PbList<IsInBlackListReq>();
  @$core.pragma('dart2js:noInline')
  static IsInBlackListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsInBlackListReq>(create);
  static IsInBlackListReq? _defaultInstance;
}

class IsInBlackListRsp extends $pb.GeneratedMessage {
  factory IsInBlackListRsp({
    EnIsInBlackListStatus? isInBlackListStatus,
  }) {
    final $result = create();
    if (isInBlackListStatus != null) {
      $result.isInBlackListStatus = isInBlackListStatus;
    }
    return $result;
  }
  IsInBlackListRsp._() : super();
  factory IsInBlackListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsInBlackListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsInBlackListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_friend'), createEmptyInstance: create)
    ..e<EnIsInBlackListStatus>(2, _omitFieldNames ? '' : 'isInBlackListStatus', $pb.PbFieldType.OE, protoName: 'isInBlackListStatus', defaultOrMaker: EnIsInBlackListStatus.NotInBlackList, valueOf: EnIsInBlackListStatus.valueOf, enumValues: EnIsInBlackListStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsInBlackListRsp clone() => IsInBlackListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsInBlackListRsp copyWith(void Function(IsInBlackListRsp) updates) => super.copyWith((message) => updates(message as IsInBlackListRsp)) as IsInBlackListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsInBlackListRsp create() => IsInBlackListRsp._();
  IsInBlackListRsp createEmptyInstance() => create();
  static $pb.PbList<IsInBlackListRsp> createRepeated() => $pb.PbList<IsInBlackListRsp>();
  @$core.pragma('dart2js:noInline')
  static IsInBlackListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsInBlackListRsp>(create);
  static IsInBlackListRsp? _defaultInstance;

  @$pb.TagNumber(2)
  EnIsInBlackListStatus get isInBlackListStatus => $_getN(0);
  @$pb.TagNumber(2)
  set isInBlackListStatus(EnIsInBlackListStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsInBlackListStatus() => $_has(0);
  @$pb.TagNumber(2)
  void clearIsInBlackListStatus() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
