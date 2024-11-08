//
//  Generated code. Do not modify.
//  source: pb_msg/community/community.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'community.pbenum.dart';

export 'community.pbenum.dart';

/// Topic 话题模型
class Topic extends $pb.GeneratedMessage {
  factory Topic({
    $fixnum.Int64? id,
    $fixnum.Int64? createAt,
    $core.String? name,
    $core.String? cover,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    if (name != null) {
      $result.name = name;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  Topic._() : super();
  factory Topic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Topic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Topic', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'createAt', protoName: 'createAt')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'cover')
    ..aInt64(5, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Topic clone() => Topic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Topic copyWith(void Function(Topic) updates) => super.copyWith((message) => updates(message as Topic)) as Topic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Topic create() => Topic._();
  Topic createEmptyInstance() => create();
  static $pb.PbList<Topic> createRepeated() => $pb.PbList<Topic>();
  @$core.pragma('dart2js:noInline')
  static Topic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Topic>(create);
  static Topic? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createAt => $_getI64(1);
  @$pb.TagNumber(2)
  set createAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get cover => $_getSZ(3);
  @$pb.TagNumber(4)
  set cover($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCover() => $_has(3);
  @$pb.TagNumber(4)
  void clearCover() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get count => $_getI64(4);
  @$pb.TagNumber(5)
  set count($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearCount() => clearField(5);
}

class AddTopicReq extends $pb.GeneratedMessage {
  factory AddTopicReq({
    $fixnum.Int64? parentId,
    $core.String? name,
    $core.String? cover,
  }) {
    final $result = create();
    if (parentId != null) {
      $result.parentId = parentId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    return $result;
  }
  AddTopicReq._() : super();
  factory AddTopicReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTopicReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddTopicReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'parentId', protoName: 'parentId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'cover')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddTopicReq clone() => AddTopicReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddTopicReq copyWith(void Function(AddTopicReq) updates) => super.copyWith((message) => updates(message as AddTopicReq)) as AddTopicReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddTopicReq create() => AddTopicReq._();
  AddTopicReq createEmptyInstance() => create();
  static $pb.PbList<AddTopicReq> createRepeated() => $pb.PbList<AddTopicReq>();
  @$core.pragma('dart2js:noInline')
  static AddTopicReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTopicReq>(create);
  static AddTopicReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get parentId => $_getI64(0);
  @$pb.TagNumber(1)
  set parentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearParentId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => clearField(3);
}

class AddTopicRsp extends $pb.GeneratedMessage {
  factory AddTopicRsp() => create();
  AddTopicRsp._() : super();
  factory AddTopicRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTopicRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddTopicRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddTopicRsp clone() => AddTopicRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddTopicRsp copyWith(void Function(AddTopicRsp) updates) => super.copyWith((message) => updates(message as AddTopicRsp)) as AddTopicRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddTopicRsp create() => AddTopicRsp._();
  AddTopicRsp createEmptyInstance() => create();
  static $pb.PbList<AddTopicRsp> createRepeated() => $pb.PbList<AddTopicRsp>();
  @$core.pragma('dart2js:noInline')
  static AddTopicRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTopicRsp>(create);
  static AddTopicRsp? _defaultInstance;
}

class AddGiftReq extends $pb.GeneratedMessage {
  factory AddGiftReq({
    $fixnum.Int64? price,
    $core.String? url,
    $core.String? name,
  }) {
    final $result = create();
    if (price != null) {
      $result.price = price;
    }
    if (url != null) {
      $result.url = url;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  AddGiftReq._() : super();
  factory AddGiftReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddGiftReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddGiftReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'price')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddGiftReq clone() => AddGiftReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddGiftReq copyWith(void Function(AddGiftReq) updates) => super.copyWith((message) => updates(message as AddGiftReq)) as AddGiftReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddGiftReq create() => AddGiftReq._();
  AddGiftReq createEmptyInstance() => create();
  static $pb.PbList<AddGiftReq> createRepeated() => $pb.PbList<AddGiftReq>();
  @$core.pragma('dart2js:noInline')
  static AddGiftReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddGiftReq>(create);
  static AddGiftReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get price => $_getI64(0);
  @$pb.TagNumber(1)
  set price($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrice() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrice() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class AddGiftRsp extends $pb.GeneratedMessage {
  factory AddGiftRsp() => create();
  AddGiftRsp._() : super();
  factory AddGiftRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddGiftRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddGiftRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddGiftRsp clone() => AddGiftRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddGiftRsp copyWith(void Function(AddGiftRsp) updates) => super.copyWith((message) => updates(message as AddGiftRsp)) as AddGiftRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddGiftRsp create() => AddGiftRsp._();
  AddGiftRsp createEmptyInstance() => create();
  static $pb.PbList<AddGiftRsp> createRepeated() => $pb.PbList<AddGiftRsp>();
  @$core.pragma('dart2js:noInline')
  static AddGiftRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddGiftRsp>(create);
  static AddGiftRsp? _defaultInstance;
}

/// Community 社区
class Community extends $pb.GeneratedMessage {
  factory Community({
    $fixnum.Int64? id,
    $fixnum.Int64? createAt,
    $core.String? name,
    $core.String? avatar,
    $core.String? describe,
    $core.String? positiveRules,
    $core.String? negativeRules,
    JoinType? joinType,
    $core.bool? inviteJoin,
    $core.String? password,
    $core.String? question,
    $core.String? answer,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    if (name != null) {
      $result.name = name;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (describe != null) {
      $result.describe = describe;
    }
    if (positiveRules != null) {
      $result.positiveRules = positiveRules;
    }
    if (negativeRules != null) {
      $result.negativeRules = negativeRules;
    }
    if (joinType != null) {
      $result.joinType = joinType;
    }
    if (inviteJoin != null) {
      $result.inviteJoin = inviteJoin;
    }
    if (password != null) {
      $result.password = password;
    }
    if (question != null) {
      $result.question = question;
    }
    if (answer != null) {
      $result.answer = answer;
    }
    return $result;
  }
  Community._() : super();
  factory Community.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Community.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Community', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'createAt', protoName: 'createAt')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'avatar')
    ..aOS(5, _omitFieldNames ? '' : 'describe')
    ..aOS(6, _omitFieldNames ? '' : 'positiveRules', protoName: 'positiveRules')
    ..aOS(7, _omitFieldNames ? '' : 'negativeRules', protoName: 'negativeRules')
    ..e<JoinType>(8, _omitFieldNames ? '' : 'joinType', $pb.PbFieldType.OE, protoName: 'joinType', defaultOrMaker: JoinType.FREE, valueOf: JoinType.valueOf, enumValues: JoinType.values)
    ..aOB(12, _omitFieldNames ? '' : 'inviteJoin', protoName: 'inviteJoin')
    ..aOS(20, _omitFieldNames ? '' : 'password')
    ..aOS(21, _omitFieldNames ? '' : 'question')
    ..aOS(22, _omitFieldNames ? '' : 'answer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Community clone() => Community()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Community copyWith(void Function(Community) updates) => super.copyWith((message) => updates(message as Community)) as Community;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Community create() => Community._();
  Community createEmptyInstance() => create();
  static $pb.PbList<Community> createRepeated() => $pb.PbList<Community>();
  @$core.pragma('dart2js:noInline')
  static Community getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Community>(create);
  static Community? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createAt => $_getI64(1);
  @$pb.TagNumber(2)
  set createAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatar => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatar($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatar() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatar() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get describe => $_getSZ(4);
  @$pb.TagNumber(5)
  set describe($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescribe() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescribe() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get positiveRules => $_getSZ(5);
  @$pb.TagNumber(6)
  set positiveRules($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPositiveRules() => $_has(5);
  @$pb.TagNumber(6)
  void clearPositiveRules() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get negativeRules => $_getSZ(6);
  @$pb.TagNumber(7)
  set negativeRules($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNegativeRules() => $_has(6);
  @$pb.TagNumber(7)
  void clearNegativeRules() => clearField(7);

  @$pb.TagNumber(8)
  JoinType get joinType => $_getN(7);
  @$pb.TagNumber(8)
  set joinType(JoinType v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasJoinType() => $_has(7);
  @$pb.TagNumber(8)
  void clearJoinType() => clearField(8);

  /// bool freeJoin = 10;        // 0. 是否开启自由入团
  /// bool applyJoin = 11;       // 1. 是否开启申请入团,如果开启自由入团此种方式无效
  @$pb.TagNumber(12)
  $core.bool get inviteJoin => $_getBF(8);
  @$pb.TagNumber(12)
  set inviteJoin($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(12)
  $core.bool hasInviteJoin() => $_has(8);
  @$pb.TagNumber(12)
  void clearInviteJoin() => clearField(12);

  /// bool passwordJoin = 13;    // 3. 是否开启口令入团,如果开启自由入团此种方式无效
  /// bool answerJoin = 14;      // 4. 是否开启答题入团,如果开启自由入团此种方式无效
  @$pb.TagNumber(20)
  $core.String get password => $_getSZ(9);
  @$pb.TagNumber(20)
  set password($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(20)
  $core.bool hasPassword() => $_has(9);
  @$pb.TagNumber(20)
  void clearPassword() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get question => $_getSZ(10);
  @$pb.TagNumber(21)
  set question($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(21)
  $core.bool hasQuestion() => $_has(10);
  @$pb.TagNumber(21)
  void clearQuestion() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get answer => $_getSZ(11);
  @$pb.TagNumber(22)
  set answer($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(22)
  $core.bool hasAnswer() => $_has(11);
  @$pb.TagNumber(22)
  void clearAnswer() => clearField(22);
}

/// 创建社团
class CreateCommunityReq extends $pb.GeneratedMessage {
  factory CreateCommunityReq({
    $core.String? name,
    $core.String? avatar,
    $core.String? describe,
    $core.String? positiveRules,
    $core.String? negativeRules,
    JoinType? joinType,
    $core.bool? inviteJoin,
    $core.String? password,
    $core.String? question,
    $core.String? answer,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (describe != null) {
      $result.describe = describe;
    }
    if (positiveRules != null) {
      $result.positiveRules = positiveRules;
    }
    if (negativeRules != null) {
      $result.negativeRules = negativeRules;
    }
    if (joinType != null) {
      $result.joinType = joinType;
    }
    if (inviteJoin != null) {
      $result.inviteJoin = inviteJoin;
    }
    if (password != null) {
      $result.password = password;
    }
    if (question != null) {
      $result.question = question;
    }
    if (answer != null) {
      $result.answer = answer;
    }
    return $result;
  }
  CreateCommunityReq._() : super();
  factory CreateCommunityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCommunityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateCommunityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'avatar')
    ..aOS(3, _omitFieldNames ? '' : 'describe')
    ..aOS(4, _omitFieldNames ? '' : 'positiveRules', protoName: 'positiveRules')
    ..aOS(5, _omitFieldNames ? '' : 'negativeRules', protoName: 'negativeRules')
    ..e<JoinType>(6, _omitFieldNames ? '' : 'joinType', $pb.PbFieldType.OE, protoName: 'joinType', defaultOrMaker: JoinType.FREE, valueOf: JoinType.valueOf, enumValues: JoinType.values)
    ..aOB(12, _omitFieldNames ? '' : 'inviteJoin', protoName: 'inviteJoin')
    ..aOS(20, _omitFieldNames ? '' : 'password')
    ..aOS(21, _omitFieldNames ? '' : 'question')
    ..aOS(22, _omitFieldNames ? '' : 'answer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCommunityReq clone() => CreateCommunityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCommunityReq copyWith(void Function(CreateCommunityReq) updates) => super.copyWith((message) => updates(message as CreateCommunityReq)) as CreateCommunityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCommunityReq create() => CreateCommunityReq._();
  CreateCommunityReq createEmptyInstance() => create();
  static $pb.PbList<CreateCommunityReq> createRepeated() => $pb.PbList<CreateCommunityReq>();
  @$core.pragma('dart2js:noInline')
  static CreateCommunityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCommunityReq>(create);
  static CreateCommunityReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatar => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatar($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatar() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatar() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get describe => $_getSZ(2);
  @$pb.TagNumber(3)
  set describe($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescribe() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescribe() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get positiveRules => $_getSZ(3);
  @$pb.TagNumber(4)
  set positiveRules($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPositiveRules() => $_has(3);
  @$pb.TagNumber(4)
  void clearPositiveRules() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get negativeRules => $_getSZ(4);
  @$pb.TagNumber(5)
  set negativeRules($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNegativeRules() => $_has(4);
  @$pb.TagNumber(5)
  void clearNegativeRules() => clearField(5);

  @$pb.TagNumber(6)
  JoinType get joinType => $_getN(5);
  @$pb.TagNumber(6)
  set joinType(JoinType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasJoinType() => $_has(5);
  @$pb.TagNumber(6)
  void clearJoinType() => clearField(6);

  /// bool freeJoin = 10;        // 是否开启自由入团
  /// bool applyJoin = 11;       // 是否开启申请入团,如果开启自由入团此种方式无效
  @$pb.TagNumber(12)
  $core.bool get inviteJoin => $_getBF(6);
  @$pb.TagNumber(12)
  set inviteJoin($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(12)
  $core.bool hasInviteJoin() => $_has(6);
  @$pb.TagNumber(12)
  void clearInviteJoin() => clearField(12);

  /// bool passwordJoin = 13;    // 是否开启口令入团,如果开启自由入团此种方式无效
  /// bool answerJoin = 14;      // 是否开启答题入团,如果开启自由入团此种方式无效
  @$pb.TagNumber(20)
  $core.String get password => $_getSZ(7);
  @$pb.TagNumber(20)
  set password($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(20)
  $core.bool hasPassword() => $_has(7);
  @$pb.TagNumber(20)
  void clearPassword() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get question => $_getSZ(8);
  @$pb.TagNumber(21)
  set question($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(21)
  $core.bool hasQuestion() => $_has(8);
  @$pb.TagNumber(21)
  void clearQuestion() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get answer => $_getSZ(9);
  @$pb.TagNumber(22)
  set answer($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(22)
  $core.bool hasAnswer() => $_has(9);
  @$pb.TagNumber(22)
  void clearAnswer() => clearField(22);
}

class CreateCommunityRsp extends $pb.GeneratedMessage {
  factory CreateCommunityRsp({
    Community? community,
  }) {
    final $result = create();
    if (community != null) {
      $result.community = community;
    }
    return $result;
  }
  CreateCommunityRsp._() : super();
  factory CreateCommunityRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCommunityRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateCommunityRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Community>(1, _omitFieldNames ? '' : 'community', subBuilder: Community.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCommunityRsp clone() => CreateCommunityRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCommunityRsp copyWith(void Function(CreateCommunityRsp) updates) => super.copyWith((message) => updates(message as CreateCommunityRsp)) as CreateCommunityRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCommunityRsp create() => CreateCommunityRsp._();
  CreateCommunityRsp createEmptyInstance() => create();
  static $pb.PbList<CreateCommunityRsp> createRepeated() => $pb.PbList<CreateCommunityRsp>();
  @$core.pragma('dart2js:noInline')
  static CreateCommunityRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCommunityRsp>(create);
  static CreateCommunityRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Community get community => $_getN(0);
  @$pb.TagNumber(1)
  set community(Community v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommunity() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommunity() => clearField(1);
  @$pb.TagNumber(1)
  Community ensureCommunity() => $_ensure(0);
}

class UpdateCommunityReq extends $pb.GeneratedMessage {
  factory UpdateCommunityReq({
    Community? community,
    $core.Iterable<$core.String>? keys,
  }) {
    final $result = create();
    if (community != null) {
      $result.community = community;
    }
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  UpdateCommunityReq._() : super();
  factory UpdateCommunityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCommunityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCommunityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Community>(1, _omitFieldNames ? '' : 'community', subBuilder: Community.create)
    ..pPS(2, _omitFieldNames ? '' : 'keys')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCommunityReq clone() => UpdateCommunityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCommunityReq copyWith(void Function(UpdateCommunityReq) updates) => super.copyWith((message) => updates(message as UpdateCommunityReq)) as UpdateCommunityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCommunityReq create() => UpdateCommunityReq._();
  UpdateCommunityReq createEmptyInstance() => create();
  static $pb.PbList<UpdateCommunityReq> createRepeated() => $pb.PbList<UpdateCommunityReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateCommunityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCommunityReq>(create);
  static UpdateCommunityReq? _defaultInstance;

  @$pb.TagNumber(1)
  Community get community => $_getN(0);
  @$pb.TagNumber(1)
  set community(Community v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommunity() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommunity() => clearField(1);
  @$pb.TagNumber(1)
  Community ensureCommunity() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get keys => $_getList(1);
}

class UpdateCommunityRsp extends $pb.GeneratedMessage {
  factory UpdateCommunityRsp() => create();
  UpdateCommunityRsp._() : super();
  factory UpdateCommunityRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCommunityRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCommunityRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCommunityRsp clone() => UpdateCommunityRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCommunityRsp copyWith(void Function(UpdateCommunityRsp) updates) => super.copyWith((message) => updates(message as UpdateCommunityRsp)) as UpdateCommunityRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCommunityRsp create() => UpdateCommunityRsp._();
  UpdateCommunityRsp createEmptyInstance() => create();
  static $pb.PbList<UpdateCommunityRsp> createRepeated() => $pb.PbList<UpdateCommunityRsp>();
  @$core.pragma('dart2js:noInline')
  static UpdateCommunityRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCommunityRsp>(create);
  static UpdateCommunityRsp? _defaultInstance;
}

/// 申请入团
class ApplyJoinReq extends $pb.GeneratedMessage {
  factory ApplyJoinReq() => create();
  ApplyJoinReq._() : super();
  factory ApplyJoinReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyJoinReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyJoinReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyJoinReq clone() => ApplyJoinReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyJoinReq copyWith(void Function(ApplyJoinReq) updates) => super.copyWith((message) => updates(message as ApplyJoinReq)) as ApplyJoinReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyJoinReq create() => ApplyJoinReq._();
  ApplyJoinReq createEmptyInstance() => create();
  static $pb.PbList<ApplyJoinReq> createRepeated() => $pb.PbList<ApplyJoinReq>();
  @$core.pragma('dart2js:noInline')
  static ApplyJoinReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyJoinReq>(create);
  static ApplyJoinReq? _defaultInstance;
}

class ApplyJoinRsp extends $pb.GeneratedMessage {
  factory ApplyJoinRsp() => create();
  ApplyJoinRsp._() : super();
  factory ApplyJoinRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyJoinRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyJoinRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyJoinRsp clone() => ApplyJoinRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyJoinRsp copyWith(void Function(ApplyJoinRsp) updates) => super.copyWith((message) => updates(message as ApplyJoinRsp)) as ApplyJoinRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyJoinRsp create() => ApplyJoinRsp._();
  ApplyJoinRsp createEmptyInstance() => create();
  static $pb.PbList<ApplyJoinRsp> createRepeated() => $pb.PbList<ApplyJoinRsp>();
  @$core.pragma('dart2js:noInline')
  static ApplyJoinRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyJoinRsp>(create);
  static ApplyJoinRsp? _defaultInstance;
}

/// 答复入团申请
class AnswerApplyReq extends $pb.GeneratedMessage {
  factory AnswerApplyReq({
    $core.bool? agree,
  }) {
    final $result = create();
    if (agree != null) {
      $result.agree = agree;
    }
    return $result;
  }
  AnswerApplyReq._() : super();
  factory AnswerApplyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerApplyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerApplyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'agree')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerApplyReq clone() => AnswerApplyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerApplyReq copyWith(void Function(AnswerApplyReq) updates) => super.copyWith((message) => updates(message as AnswerApplyReq)) as AnswerApplyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerApplyReq create() => AnswerApplyReq._();
  AnswerApplyReq createEmptyInstance() => create();
  static $pb.PbList<AnswerApplyReq> createRepeated() => $pb.PbList<AnswerApplyReq>();
  @$core.pragma('dart2js:noInline')
  static AnswerApplyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerApplyReq>(create);
  static AnswerApplyReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get agree => $_getBF(0);
  @$pb.TagNumber(1)
  set agree($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgree() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgree() => clearField(1);
}

class AnswerApplyRsp extends $pb.GeneratedMessage {
  factory AnswerApplyRsp() => create();
  AnswerApplyRsp._() : super();
  factory AnswerApplyRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerApplyRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerApplyRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerApplyRsp clone() => AnswerApplyRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerApplyRsp copyWith(void Function(AnswerApplyRsp) updates) => super.copyWith((message) => updates(message as AnswerApplyRsp)) as AnswerApplyRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerApplyRsp create() => AnswerApplyRsp._();
  AnswerApplyRsp createEmptyInstance() => create();
  static $pb.PbList<AnswerApplyRsp> createRepeated() => $pb.PbList<AnswerApplyRsp>();
  @$core.pragma('dart2js:noInline')
  static AnswerApplyRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerApplyRsp>(create);
  static AnswerApplyRsp? _defaultInstance;
}

/// 邀请入团
class InviteJoinReq extends $pb.GeneratedMessage {
  factory InviteJoinReq({
    $core.Iterable<User>? invitees,
  }) {
    final $result = create();
    if (invitees != null) {
      $result.invitees.addAll(invitees);
    }
    return $result;
  }
  InviteJoinReq._() : super();
  factory InviteJoinReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteJoinReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteJoinReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<User>(1, _omitFieldNames ? '' : 'invitees', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteJoinReq clone() => InviteJoinReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteJoinReq copyWith(void Function(InviteJoinReq) updates) => super.copyWith((message) => updates(message as InviteJoinReq)) as InviteJoinReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteJoinReq create() => InviteJoinReq._();
  InviteJoinReq createEmptyInstance() => create();
  static $pb.PbList<InviteJoinReq> createRepeated() => $pb.PbList<InviteJoinReq>();
  @$core.pragma('dart2js:noInline')
  static InviteJoinReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteJoinReq>(create);
  static InviteJoinReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get invitees => $_getList(0);
}

class InviteJoinRsp extends $pb.GeneratedMessage {
  factory InviteJoinRsp() => create();
  InviteJoinRsp._() : super();
  factory InviteJoinRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteJoinRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteJoinRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteJoinRsp clone() => InviteJoinRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteJoinRsp copyWith(void Function(InviteJoinRsp) updates) => super.copyWith((message) => updates(message as InviteJoinRsp)) as InviteJoinRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteJoinRsp create() => InviteJoinRsp._();
  InviteJoinRsp createEmptyInstance() => create();
  static $pb.PbList<InviteJoinRsp> createRepeated() => $pb.PbList<InviteJoinRsp>();
  @$core.pragma('dart2js:noInline')
  static InviteJoinRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteJoinRsp>(create);
  static InviteJoinRsp? _defaultInstance;
}

/// 答复入团邀请
class AnswerInviteReq extends $pb.GeneratedMessage {
  factory AnswerInviteReq({
    $core.bool? agree,
  }) {
    final $result = create();
    if (agree != null) {
      $result.agree = agree;
    }
    return $result;
  }
  AnswerInviteReq._() : super();
  factory AnswerInviteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerInviteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerInviteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'agree')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerInviteReq clone() => AnswerInviteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerInviteReq copyWith(void Function(AnswerInviteReq) updates) => super.copyWith((message) => updates(message as AnswerInviteReq)) as AnswerInviteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerInviteReq create() => AnswerInviteReq._();
  AnswerInviteReq createEmptyInstance() => create();
  static $pb.PbList<AnswerInviteReq> createRepeated() => $pb.PbList<AnswerInviteReq>();
  @$core.pragma('dart2js:noInline')
  static AnswerInviteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerInviteReq>(create);
  static AnswerInviteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get agree => $_getBF(0);
  @$pb.TagNumber(1)
  set agree($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgree() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgree() => clearField(1);
}

class AnswerInviteRsp extends $pb.GeneratedMessage {
  factory AnswerInviteRsp() => create();
  AnswerInviteRsp._() : super();
  factory AnswerInviteRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerInviteRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerInviteRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerInviteRsp clone() => AnswerInviteRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerInviteRsp copyWith(void Function(AnswerInviteRsp) updates) => super.copyWith((message) => updates(message as AnswerInviteRsp)) as AnswerInviteRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerInviteRsp create() => AnswerInviteRsp._();
  AnswerInviteRsp createEmptyInstance() => create();
  static $pb.PbList<AnswerInviteRsp> createRepeated() => $pb.PbList<AnswerInviteRsp>();
  @$core.pragma('dart2js:noInline')
  static AnswerInviteRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerInviteRsp>(create);
  static AnswerInviteRsp? _defaultInstance;
}

/// 自由加入,口令加入,答题加入
/// username 和 avatar 自带吧
class JoinCommunityReq extends $pb.GeneratedMessage {
  factory JoinCommunityReq({
    $core.String? username,
    $core.String? avatr,
    $core.String? answer,
    $core.String? password,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (avatr != null) {
      $result.avatr = avatr;
    }
    if (answer != null) {
      $result.answer = answer;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  JoinCommunityReq._() : super();
  factory JoinCommunityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinCommunityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JoinCommunityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'avatr')
    ..aOS(3, _omitFieldNames ? '' : 'answer')
    ..aOS(4, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinCommunityReq clone() => JoinCommunityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinCommunityReq copyWith(void Function(JoinCommunityReq) updates) => super.copyWith((message) => updates(message as JoinCommunityReq)) as JoinCommunityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JoinCommunityReq create() => JoinCommunityReq._();
  JoinCommunityReq createEmptyInstance() => create();
  static $pb.PbList<JoinCommunityReq> createRepeated() => $pb.PbList<JoinCommunityReq>();
  @$core.pragma('dart2js:noInline')
  static JoinCommunityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinCommunityReq>(create);
  static JoinCommunityReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatr => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatr() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatr() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get answer => $_getSZ(2);
  @$pb.TagNumber(3)
  set answer($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAnswer() => $_has(2);
  @$pb.TagNumber(3)
  void clearAnswer() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);
}

class JoinCommunityRsp extends $pb.GeneratedMessage {
  factory JoinCommunityRsp() => create();
  JoinCommunityRsp._() : super();
  factory JoinCommunityRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinCommunityRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JoinCommunityRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinCommunityRsp clone() => JoinCommunityRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinCommunityRsp copyWith(void Function(JoinCommunityRsp) updates) => super.copyWith((message) => updates(message as JoinCommunityRsp)) as JoinCommunityRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JoinCommunityRsp create() => JoinCommunityRsp._();
  JoinCommunityRsp createEmptyInstance() => create();
  static $pb.PbList<JoinCommunityRsp> createRepeated() => $pb.PbList<JoinCommunityRsp>();
  @$core.pragma('dart2js:noInline')
  static JoinCommunityRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinCommunityRsp>(create);
  static JoinCommunityRsp? _defaultInstance;
}

/// 退出社团
class QuitCommunityReq extends $pb.GeneratedMessage {
  factory QuitCommunityReq() => create();
  QuitCommunityReq._() : super();
  factory QuitCommunityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuitCommunityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuitCommunityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuitCommunityReq clone() => QuitCommunityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuitCommunityReq copyWith(void Function(QuitCommunityReq) updates) => super.copyWith((message) => updates(message as QuitCommunityReq)) as QuitCommunityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuitCommunityReq create() => QuitCommunityReq._();
  QuitCommunityReq createEmptyInstance() => create();
  static $pb.PbList<QuitCommunityReq> createRepeated() => $pb.PbList<QuitCommunityReq>();
  @$core.pragma('dart2js:noInline')
  static QuitCommunityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuitCommunityReq>(create);
  static QuitCommunityReq? _defaultInstance;
}

class QuitCommunityRsp extends $pb.GeneratedMessage {
  factory QuitCommunityRsp() => create();
  QuitCommunityRsp._() : super();
  factory QuitCommunityRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuitCommunityRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuitCommunityRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuitCommunityRsp clone() => QuitCommunityRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuitCommunityRsp copyWith(void Function(QuitCommunityRsp) updates) => super.copyWith((message) => updates(message as QuitCommunityRsp)) as QuitCommunityRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuitCommunityRsp create() => QuitCommunityRsp._();
  QuitCommunityRsp createEmptyInstance() => create();
  static $pb.PbList<QuitCommunityRsp> createRepeated() => $pb.PbList<QuitCommunityRsp>();
  @$core.pragma('dart2js:noInline')
  static QuitCommunityRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuitCommunityRsp>(create);
  static QuitCommunityRsp? _defaultInstance;
}

class UserCommunitiesReq extends $pb.GeneratedMessage {
  factory UserCommunitiesReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserCommunitiesReq._() : super();
  factory UserCommunitiesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCommunitiesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserCommunitiesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCommunitiesReq clone() => UserCommunitiesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCommunitiesReq copyWith(void Function(UserCommunitiesReq) updates) => super.copyWith((message) => updates(message as UserCommunitiesReq)) as UserCommunitiesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserCommunitiesReq create() => UserCommunitiesReq._();
  UserCommunitiesReq createEmptyInstance() => create();
  static $pb.PbList<UserCommunitiesReq> createRepeated() => $pb.PbList<UserCommunitiesReq>();
  @$core.pragma('dart2js:noInline')
  static UserCommunitiesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCommunitiesReq>(create);
  static UserCommunitiesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserCommunitiesRsp extends $pb.GeneratedMessage {
  factory UserCommunitiesRsp({
    $core.Iterable<Community>? communities,
  }) {
    final $result = create();
    if (communities != null) {
      $result.communities.addAll(communities);
    }
    return $result;
  }
  UserCommunitiesRsp._() : super();
  factory UserCommunitiesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCommunitiesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserCommunitiesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Community>(1, _omitFieldNames ? '' : 'communities', $pb.PbFieldType.PM, subBuilder: Community.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCommunitiesRsp clone() => UserCommunitiesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCommunitiesRsp copyWith(void Function(UserCommunitiesRsp) updates) => super.copyWith((message) => updates(message as UserCommunitiesRsp)) as UserCommunitiesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserCommunitiesRsp create() => UserCommunitiesRsp._();
  UserCommunitiesRsp createEmptyInstance() => create();
  static $pb.PbList<UserCommunitiesRsp> createRepeated() => $pb.PbList<UserCommunitiesRsp>();
  @$core.pragma('dart2js:noInline')
  static UserCommunitiesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCommunitiesRsp>(create);
  static UserCommunitiesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Community> get communities => $_getList(0);
}

class AllCommunitiesReq extends $pb.GeneratedMessage {
  factory AllCommunitiesReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $core.String? keyWord,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (keyWord != null) {
      $result.keyWord = keyWord;
    }
    return $result;
  }
  AllCommunitiesReq._() : super();
  factory AllCommunitiesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllCommunitiesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllCommunitiesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aOS(3, _omitFieldNames ? '' : 'keyWord', protoName: 'keyWord')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllCommunitiesReq clone() => AllCommunitiesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllCommunitiesReq copyWith(void Function(AllCommunitiesReq) updates) => super.copyWith((message) => updates(message as AllCommunitiesReq)) as AllCommunitiesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllCommunitiesReq create() => AllCommunitiesReq._();
  AllCommunitiesReq createEmptyInstance() => create();
  static $pb.PbList<AllCommunitiesReq> createRepeated() => $pb.PbList<AllCommunitiesReq>();
  @$core.pragma('dart2js:noInline')
  static AllCommunitiesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllCommunitiesReq>(create);
  static AllCommunitiesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get keyWord => $_getSZ(2);
  @$pb.TagNumber(3)
  set keyWord($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKeyWord() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyWord() => clearField(3);
}

class AllCommunitiesRsp extends $pb.GeneratedMessage {
  factory AllCommunitiesRsp({
    $core.Iterable<Community>? communities,
  }) {
    final $result = create();
    if (communities != null) {
      $result.communities.addAll(communities);
    }
    return $result;
  }
  AllCommunitiesRsp._() : super();
  factory AllCommunitiesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllCommunitiesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllCommunitiesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Community>(1, _omitFieldNames ? '' : 'communities', $pb.PbFieldType.PM, subBuilder: Community.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllCommunitiesRsp clone() => AllCommunitiesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllCommunitiesRsp copyWith(void Function(AllCommunitiesRsp) updates) => super.copyWith((message) => updates(message as AllCommunitiesRsp)) as AllCommunitiesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllCommunitiesRsp create() => AllCommunitiesRsp._();
  AllCommunitiesRsp createEmptyInstance() => create();
  static $pb.PbList<AllCommunitiesRsp> createRepeated() => $pb.PbList<AllCommunitiesRsp>();
  @$core.pragma('dart2js:noInline')
  static AllCommunitiesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllCommunitiesRsp>(create);
  static AllCommunitiesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Community> get communities => $_getList(0);
}

class CommunityDetailReq extends $pb.GeneratedMessage {
  factory CommunityDetailReq() => create();
  CommunityDetailReq._() : super();
  factory CommunityDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommunityDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommunityDetailReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommunityDetailReq clone() => CommunityDetailReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommunityDetailReq copyWith(void Function(CommunityDetailReq) updates) => super.copyWith((message) => updates(message as CommunityDetailReq)) as CommunityDetailReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommunityDetailReq create() => CommunityDetailReq._();
  CommunityDetailReq createEmptyInstance() => create();
  static $pb.PbList<CommunityDetailReq> createRepeated() => $pb.PbList<CommunityDetailReq>();
  @$core.pragma('dart2js:noInline')
  static CommunityDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommunityDetailReq>(create);
  static CommunityDetailReq? _defaultInstance;
}

class CommunityDetailRsp extends $pb.GeneratedMessage {
  factory CommunityDetailRsp({
    Community? community,
  }) {
    final $result = create();
    if (community != null) {
      $result.community = community;
    }
    return $result;
  }
  CommunityDetailRsp._() : super();
  factory CommunityDetailRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommunityDetailRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommunityDetailRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Community>(1, _omitFieldNames ? '' : 'community', subBuilder: Community.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommunityDetailRsp clone() => CommunityDetailRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommunityDetailRsp copyWith(void Function(CommunityDetailRsp) updates) => super.copyWith((message) => updates(message as CommunityDetailRsp)) as CommunityDetailRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommunityDetailRsp create() => CommunityDetailRsp._();
  CommunityDetailRsp createEmptyInstance() => create();
  static $pb.PbList<CommunityDetailRsp> createRepeated() => $pb.PbList<CommunityDetailRsp>();
  @$core.pragma('dart2js:noInline')
  static CommunityDetailRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommunityDetailRsp>(create);
  static CommunityDetailRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Community get community => $_getN(0);
  @$pb.TagNumber(1)
  set community(Community v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommunity() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommunity() => clearField(1);
  @$pb.TagNumber(1)
  Community ensureCommunity() => $_ensure(0);
}

class Member extends $pb.GeneratedMessage {
  factory Member({
    $fixnum.Int64? appId,
    $core.String? appUserId,
    $fixnum.Int64? userId,
    $core.String? username,
    $core.String? avatar,
    $core.int? role,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (role != null) {
      $result.role = role;
    }
    return $result;
  }
  Member._() : super();
  factory Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Member', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aOS(2, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(4, _omitFieldNames ? '' : 'username')
    ..aOS(5, _omitFieldNames ? '' : 'avatar')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'role', $pb.PbFieldType.O3)
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

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get username => $_getSZ(3);
  @$pb.TagNumber(4)
  set username($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUsername() => $_has(3);
  @$pb.TagNumber(4)
  void clearUsername() => clearField(4);

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
}

class MembersReq extends $pb.GeneratedMessage {
  factory MembersReq() => create();
  MembersReq._() : super();
  factory MembersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MembersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MembersReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
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
}

class MembersRsp extends $pb.GeneratedMessage {
  factory MembersRsp({
    $core.Iterable<Member>? members,
  }) {
    final $result = create();
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  MembersRsp._() : super();
  factory MembersRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MembersRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MembersRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Member>(1, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM, subBuilder: Member.create)
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
}

class UpdateMemberReq extends $pb.GeneratedMessage {
  factory UpdateMemberReq({
    Member? member,
    $core.Iterable<$core.String>? keys,
  }) {
    final $result = create();
    if (member != null) {
      $result.member = member;
    }
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  UpdateMemberReq._() : super();
  factory UpdateMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateMemberReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Member>(1, _omitFieldNames ? '' : 'member', subBuilder: Member.create)
    ..pPS(2, _omitFieldNames ? '' : 'keys')
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
  Member get member => $_getN(0);
  @$pb.TagNumber(1)
  set member(Member v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => clearField(1);
  @$pb.TagNumber(1)
  Member ensureMember() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get keys => $_getList(1);
}

class UpdateMemberRsp extends $pb.GeneratedMessage {
  factory UpdateMemberRsp() => create();
  UpdateMemberRsp._() : super();
  factory UpdateMemberRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMemberRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateMemberRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
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

/// Video 视频模型
class Video extends $pb.GeneratedMessage {
  factory Video({
    $fixnum.Int64? id,
    $core.String? url,
    $fixnum.Int64? plays,
    $fixnum.Int64? barrages,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (url != null) {
      $result.url = url;
    }
    if (plays != null) {
      $result.plays = plays;
    }
    if (barrages != null) {
      $result.barrages = barrages;
    }
    return $result;
  }
  Video._() : super();
  factory Video.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Video.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Video', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..aInt64(3, _omitFieldNames ? '' : 'Plays', protoName: 'Plays')
    ..aInt64(4, _omitFieldNames ? '' : 'Barrages', protoName: 'Barrages')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Video clone() => Video()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Video copyWith(void Function(Video) updates) => super.copyWith((message) => updates(message as Video)) as Video;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Video create() => Video._();
  Video createEmptyInstance() => create();
  static $pb.PbList<Video> createRepeated() => $pb.PbList<Video>();
  @$core.pragma('dart2js:noInline')
  static Video getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Video>(create);
  static Video? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get plays => $_getI64(2);
  @$pb.TagNumber(3)
  set plays($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlays() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlays() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get barrages => $_getI64(3);
  @$pb.TagNumber(4)
  set barrages($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBarrages() => $_has(3);
  @$pb.TagNumber(4)
  void clearBarrages() => clearField(4);
}

/// Image 图片模型
class Image extends $pb.GeneratedMessage {
  factory Image({
    $fixnum.Int64? id,
    $core.String? url,
    $core.Iterable<Tag>? tags,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (url != null) {
      $result.url = url;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    return $result;
  }
  Image._() : super();
  factory Image.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Image.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Image', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..pc<Tag>(3, _omitFieldNames ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: Tag.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Image clone() => Image()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Image copyWith(void Function(Image) updates) => super.copyWith((message) => updates(message as Image)) as Image;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Image create() => Image._();
  Image createEmptyInstance() => create();
  static $pb.PbList<Image> createRepeated() => $pb.PbList<Image>();
  @$core.pragma('dart2js:noInline')
  static Image getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Image>(create);
  static Image? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Tag> get tags => $_getList(2);
}

/// Tag 图片标签
class Tag extends $pb.GeneratedMessage {
  factory Tag({
    $fixnum.Int64? id,
    $core.int? type,
    $core.String? content,
    $fixnum.Int64? x,
    $fixnum.Int64? y,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (content != null) {
      $result.content = content;
    }
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  Tag._() : super();
  factory Tag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Tag', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'content')
    ..aInt64(4, _omitFieldNames ? '' : 'x')
    ..aInt64(5, _omitFieldNames ? '' : 'y')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Tag clone() => Tag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Tag copyWith(void Function(Tag) updates) => super.copyWith((message) => updates(message as Tag)) as Tag;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Tag create() => Tag._();
  Tag createEmptyInstance() => create();
  static $pb.PbList<Tag> createRepeated() => $pb.PbList<Tag>();
  @$core.pragma('dart2js:noInline')
  static Tag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tag>(create);
  static Tag? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get x => $_getI64(3);
  @$pb.TagNumber(4)
  set x($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get y => $_getI64(4);
  @$pb.TagNumber(5)
  set y($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => clearField(5);
}

/// Audio 音频模型
class Audio extends $pb.GeneratedMessage {
  factory Audio({
    $fixnum.Int64? id,
    $core.String? url,
    $core.String? cover,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (url != null) {
      $result.url = url;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    return $result;
  }
  Audio._() : super();
  factory Audio.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Audio.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Audio', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..aOS(3, _omitFieldNames ? '' : 'cover')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Audio clone() => Audio()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Audio copyWith(void Function(Audio) updates) => super.copyWith((message) => updates(message as Audio)) as Audio;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Audio create() => Audio._();
  Audio createEmptyInstance() => create();
  static $pb.PbList<Audio> createRepeated() => $pb.PbList<Audio>();
  @$core.pragma('dart2js:noInline')
  static Audio getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Audio>(create);
  static Audio? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => clearField(3);
}

/// Link 链接模型
class Link extends $pb.GeneratedMessage {
  factory Link({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? url,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  Link._() : super();
  factory Link.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Link.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Link', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Link clone() => Link()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Link copyWith(void Function(Link) updates) => super.copyWith((message) => updates(message as Link)) as Link;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Link create() => Link._();
  Link createEmptyInstance() => create();
  static $pb.PbList<Link> createRepeated() => $pb.PbList<Link>();
  @$core.pragma('dart2js:noInline')
  static Link getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Link>(create);
  static Link? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

/// Vote 投票模型
class Vote extends $pb.GeneratedMessage {
  factory Vote({
    $fixnum.Int64? id,
    $core.String? content,
    $core.Iterable<Option>? options,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (content != null) {
      $result.content = content;
    }
    if (options != null) {
      $result.options.addAll(options);
    }
    return $result;
  }
  Vote._() : super();
  factory Vote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Vote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Vote', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..pc<Option>(3, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: Option.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Vote clone() => Vote()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Vote copyWith(void Function(Vote) updates) => super.copyWith((message) => updates(message as Vote)) as Vote;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vote create() => Vote._();
  Vote createEmptyInstance() => create();
  static $pb.PbList<Vote> createRepeated() => $pb.PbList<Vote>();
  @$core.pragma('dart2js:noInline')
  static Vote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vote>(create);
  static Vote? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Option> get options => $_getList(2);
}

/// Option 投票选项
class Option extends $pb.GeneratedMessage {
  factory Option({
    $fixnum.Int64? id,
    $core.String? content,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (content != null) {
      $result.content = content;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  Option._() : super();
  factory Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Option', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Option clone() => Option()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Option copyWith(void Function(Option) updates) => super.copyWith((message) => updates(message as Option)) as Option;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Option create() => Option._();
  Option createEmptyInstance() => create();
  static $pb.PbList<Option> createRepeated() => $pb.PbList<Option>();
  @$core.pragma('dart2js:noInline')
  static Option getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Option>(create);
  static Option? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => clearField(3);
}

/// Post 帖子模型
class Post extends $pb.GeneratedMessage {
  factory Post({
    $fixnum.Int64? id,
    $fixnum.Int64? createAt,
    $fixnum.Int64? topicId,
    $core.String? topicName,
    $fixnum.Int64? appId,
    $fixnum.Int64? userId,
    $core.String? appUserId,
    $core.String? username,
    $core.String? avatar,
    $core.String? content,
    $fixnum.Int64? communityId,
    $core.String? communityName,
    $core.Iterable<Video>? videos,
    $core.Iterable<Image>? images,
    $core.Iterable<Audio>? audios,
    $core.Iterable<Link>? links,
    $core.Iterable<Vote>? votes,
    $fixnum.Int64? likes,
    $fixnum.Int64? likeas,
    $fixnum.Int64? likebs,
    $fixnum.Int64? likecs,
    $fixnum.Int64? likeds,
    $fixnum.Int64? shares,
    $fixnum.Int64? watchs,
    $fixnum.Int64? comments,
    $core.bool? award,
    $fixnum.Int64? awards,
    $core.Iterable<Comment>? topComments,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    if (topicId != null) {
      $result.topicId = topicId;
    }
    if (topicName != null) {
      $result.topicName = topicName;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (content != null) {
      $result.content = content;
    }
    if (communityId != null) {
      $result.communityId = communityId;
    }
    if (communityName != null) {
      $result.communityName = communityName;
    }
    if (videos != null) {
      $result.videos.addAll(videos);
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (audios != null) {
      $result.audios.addAll(audios);
    }
    if (links != null) {
      $result.links.addAll(links);
    }
    if (votes != null) {
      $result.votes.addAll(votes);
    }
    if (likes != null) {
      $result.likes = likes;
    }
    if (likeas != null) {
      $result.likeas = likeas;
    }
    if (likebs != null) {
      $result.likebs = likebs;
    }
    if (likecs != null) {
      $result.likecs = likecs;
    }
    if (likeds != null) {
      $result.likeds = likeds;
    }
    if (shares != null) {
      $result.shares = shares;
    }
    if (watchs != null) {
      $result.watchs = watchs;
    }
    if (comments != null) {
      $result.comments = comments;
    }
    if (award != null) {
      $result.award = award;
    }
    if (awards != null) {
      $result.awards = awards;
    }
    if (topComments != null) {
      $result.topComments.addAll(topComments);
    }
    return $result;
  }
  Post._() : super();
  factory Post.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Post.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Post', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'createAt', protoName: 'createAt')
    ..aInt64(3, _omitFieldNames ? '' : 'topicId', protoName: 'topicId')
    ..aOS(4, _omitFieldNames ? '' : 'topicName', protoName: 'topicName')
    ..aInt64(5, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aInt64(6, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(7, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..aOS(8, _omitFieldNames ? '' : 'username')
    ..aOS(9, _omitFieldNames ? '' : 'avatar')
    ..aOS(10, _omitFieldNames ? '' : 'content')
    ..aInt64(11, _omitFieldNames ? '' : 'communityId', protoName: 'communityId')
    ..aOS(12, _omitFieldNames ? '' : 'communityName', protoName: 'communityName')
    ..pc<Video>(20, _omitFieldNames ? '' : 'videos', $pb.PbFieldType.PM, subBuilder: Video.create)
    ..pc<Image>(21, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: Image.create)
    ..pc<Audio>(22, _omitFieldNames ? '' : 'audios', $pb.PbFieldType.PM, subBuilder: Audio.create)
    ..pc<Link>(23, _omitFieldNames ? '' : 'links', $pb.PbFieldType.PM, subBuilder: Link.create)
    ..pc<Vote>(24, _omitFieldNames ? '' : 'votes', $pb.PbFieldType.PM, subBuilder: Vote.create)
    ..aInt64(30, _omitFieldNames ? '' : 'likes')
    ..aInt64(31, _omitFieldNames ? '' : 'likeas')
    ..aInt64(32, _omitFieldNames ? '' : 'likebs')
    ..aInt64(33, _omitFieldNames ? '' : 'likecs')
    ..aInt64(34, _omitFieldNames ? '' : 'likeds')
    ..aInt64(35, _omitFieldNames ? '' : 'shares')
    ..aInt64(36, _omitFieldNames ? '' : 'watchs')
    ..aInt64(37, _omitFieldNames ? '' : 'comments')
    ..aOB(50, _omitFieldNames ? '' : 'award')
    ..aInt64(51, _omitFieldNames ? '' : 'awards')
    ..pc<Comment>(60, _omitFieldNames ? '' : 'topComments', $pb.PbFieldType.PM, protoName: 'topComments', subBuilder: Comment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Post clone() => Post()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Post copyWith(void Function(Post) updates) => super.copyWith((message) => updates(message as Post)) as Post;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Post create() => Post._();
  Post createEmptyInstance() => create();
  static $pb.PbList<Post> createRepeated() => $pb.PbList<Post>();
  @$core.pragma('dart2js:noInline')
  static Post getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Post>(create);
  static Post? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createAt => $_getI64(1);
  @$pb.TagNumber(2)
  set createAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateAt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get topicId => $_getI64(2);
  @$pb.TagNumber(3)
  set topicId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTopicId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTopicId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get topicName => $_getSZ(3);
  @$pb.TagNumber(4)
  set topicName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTopicName() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopicName() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get appId => $_getI64(4);
  @$pb.TagNumber(5)
  set appId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get userId => $_getI64(5);
  @$pb.TagNumber(6)
  set userId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get appUserId => $_getSZ(6);
  @$pb.TagNumber(7)
  set appUserId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppUserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppUserId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get username => $_getSZ(7);
  @$pb.TagNumber(8)
  set username($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUsername() => $_has(7);
  @$pb.TagNumber(8)
  void clearUsername() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get avatar => $_getSZ(8);
  @$pb.TagNumber(9)
  set avatar($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAvatar() => $_has(8);
  @$pb.TagNumber(9)
  void clearAvatar() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get content => $_getSZ(9);
  @$pb.TagNumber(10)
  set content($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasContent() => $_has(9);
  @$pb.TagNumber(10)
  void clearContent() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get communityId => $_getI64(10);
  @$pb.TagNumber(11)
  set communityId($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCommunityId() => $_has(10);
  @$pb.TagNumber(11)
  void clearCommunityId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get communityName => $_getSZ(11);
  @$pb.TagNumber(12)
  set communityName($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCommunityName() => $_has(11);
  @$pb.TagNumber(12)
  void clearCommunityName() => clearField(12);

  @$pb.TagNumber(20)
  $core.List<Video> get videos => $_getList(12);

  @$pb.TagNumber(21)
  $core.List<Image> get images => $_getList(13);

  @$pb.TagNumber(22)
  $core.List<Audio> get audios => $_getList(14);

  @$pb.TagNumber(23)
  $core.List<Link> get links => $_getList(15);

  @$pb.TagNumber(24)
  $core.List<Vote> get votes => $_getList(16);

  @$pb.TagNumber(30)
  $fixnum.Int64 get likes => $_getI64(17);
  @$pb.TagNumber(30)
  set likes($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(30)
  $core.bool hasLikes() => $_has(17);
  @$pb.TagNumber(30)
  void clearLikes() => clearField(30);

  @$pb.TagNumber(31)
  $fixnum.Int64 get likeas => $_getI64(18);
  @$pb.TagNumber(31)
  set likeas($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(31)
  $core.bool hasLikeas() => $_has(18);
  @$pb.TagNumber(31)
  void clearLikeas() => clearField(31);

  @$pb.TagNumber(32)
  $fixnum.Int64 get likebs => $_getI64(19);
  @$pb.TagNumber(32)
  set likebs($fixnum.Int64 v) { $_setInt64(19, v); }
  @$pb.TagNumber(32)
  $core.bool hasLikebs() => $_has(19);
  @$pb.TagNumber(32)
  void clearLikebs() => clearField(32);

  @$pb.TagNumber(33)
  $fixnum.Int64 get likecs => $_getI64(20);
  @$pb.TagNumber(33)
  set likecs($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(33)
  $core.bool hasLikecs() => $_has(20);
  @$pb.TagNumber(33)
  void clearLikecs() => clearField(33);

  @$pb.TagNumber(34)
  $fixnum.Int64 get likeds => $_getI64(21);
  @$pb.TagNumber(34)
  set likeds($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(34)
  $core.bool hasLikeds() => $_has(21);
  @$pb.TagNumber(34)
  void clearLikeds() => clearField(34);

  @$pb.TagNumber(35)
  $fixnum.Int64 get shares => $_getI64(22);
  @$pb.TagNumber(35)
  set shares($fixnum.Int64 v) { $_setInt64(22, v); }
  @$pb.TagNumber(35)
  $core.bool hasShares() => $_has(22);
  @$pb.TagNumber(35)
  void clearShares() => clearField(35);

  @$pb.TagNumber(36)
  $fixnum.Int64 get watchs => $_getI64(23);
  @$pb.TagNumber(36)
  set watchs($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(36)
  $core.bool hasWatchs() => $_has(23);
  @$pb.TagNumber(36)
  void clearWatchs() => clearField(36);

  @$pb.TagNumber(37)
  $fixnum.Int64 get comments => $_getI64(24);
  @$pb.TagNumber(37)
  set comments($fixnum.Int64 v) { $_setInt64(24, v); }
  @$pb.TagNumber(37)
  $core.bool hasComments() => $_has(24);
  @$pb.TagNumber(37)
  void clearComments() => clearField(37);

  @$pb.TagNumber(50)
  $core.bool get award => $_getBF(25);
  @$pb.TagNumber(50)
  set award($core.bool v) { $_setBool(25, v); }
  @$pb.TagNumber(50)
  $core.bool hasAward() => $_has(25);
  @$pb.TagNumber(50)
  void clearAward() => clearField(50);

  @$pb.TagNumber(51)
  $fixnum.Int64 get awards => $_getI64(26);
  @$pb.TagNumber(51)
  set awards($fixnum.Int64 v) { $_setInt64(26, v); }
  @$pb.TagNumber(51)
  $core.bool hasAwards() => $_has(26);
  @$pb.TagNumber(51)
  void clearAwards() => clearField(51);

  @$pb.TagNumber(60)
  $core.List<Comment> get topComments => $_getList(27);
}

/// 发布帖子
class PostReq extends $pb.GeneratedMessage {
  factory PostReq({
    $fixnum.Int64? topicId,
    $core.String? topicName,
    $core.String? content,
    $core.bool? award,
    $core.Iterable<Video>? videos,
    $core.Iterable<Audio>? audios,
    $core.Iterable<Image>? images,
    $core.Iterable<Vote>? votes,
    $core.Iterable<Link>? links,
    $fixnum.Int64? communityId,
    $core.String? communityName,
  }) {
    final $result = create();
    if (topicId != null) {
      $result.topicId = topicId;
    }
    if (topicName != null) {
      $result.topicName = topicName;
    }
    if (content != null) {
      $result.content = content;
    }
    if (award != null) {
      $result.award = award;
    }
    if (videos != null) {
      $result.videos.addAll(videos);
    }
    if (audios != null) {
      $result.audios.addAll(audios);
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (votes != null) {
      $result.votes.addAll(votes);
    }
    if (links != null) {
      $result.links.addAll(links);
    }
    if (communityId != null) {
      $result.communityId = communityId;
    }
    if (communityName != null) {
      $result.communityName = communityName;
    }
    return $result;
  }
  PostReq._() : super();
  factory PostReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'topicId', protoName: 'topicId')
    ..aOS(2, _omitFieldNames ? '' : 'topicName', protoName: 'topicName')
    ..aOS(3, _omitFieldNames ? '' : 'content')
    ..aOB(4, _omitFieldNames ? '' : 'award')
    ..pc<Video>(5, _omitFieldNames ? '' : 'videos', $pb.PbFieldType.PM, subBuilder: Video.create)
    ..pc<Audio>(6, _omitFieldNames ? '' : 'audios', $pb.PbFieldType.PM, subBuilder: Audio.create)
    ..pc<Image>(7, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: Image.create)
    ..pc<Vote>(8, _omitFieldNames ? '' : 'votes', $pb.PbFieldType.PM, subBuilder: Vote.create)
    ..pc<Link>(9, _omitFieldNames ? '' : 'links', $pb.PbFieldType.PM, subBuilder: Link.create)
    ..aInt64(10, _omitFieldNames ? '' : 'communityId', protoName: 'communityId')
    ..aOS(11, _omitFieldNames ? '' : 'communityName', protoName: 'communityName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostReq clone() => PostReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostReq copyWith(void Function(PostReq) updates) => super.copyWith((message) => updates(message as PostReq)) as PostReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostReq create() => PostReq._();
  PostReq createEmptyInstance() => create();
  static $pb.PbList<PostReq> createRepeated() => $pb.PbList<PostReq>();
  @$core.pragma('dart2js:noInline')
  static PostReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostReq>(create);
  static PostReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get topicId => $_getI64(0);
  @$pb.TagNumber(1)
  set topicId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get topicName => $_getSZ(1);
  @$pb.TagNumber(2)
  set topicName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopicName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get award => $_getBF(3);
  @$pb.TagNumber(4)
  set award($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAward() => $_has(3);
  @$pb.TagNumber(4)
  void clearAward() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Video> get videos => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<Audio> get audios => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<Image> get images => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<Vote> get votes => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<Link> get links => $_getList(8);

  @$pb.TagNumber(10)
  $fixnum.Int64 get communityId => $_getI64(9);
  @$pb.TagNumber(10)
  set communityId($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCommunityId() => $_has(9);
  @$pb.TagNumber(10)
  void clearCommunityId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get communityName => $_getSZ(10);
  @$pb.TagNumber(11)
  set communityName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCommunityName() => $_has(10);
  @$pb.TagNumber(11)
  void clearCommunityName() => clearField(11);
}

class PostRsp extends $pb.GeneratedMessage {
  factory PostRsp() => create();
  PostRsp._() : super();
  factory PostRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostRsp clone() => PostRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostRsp copyWith(void Function(PostRsp) updates) => super.copyWith((message) => updates(message as PostRsp)) as PostRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostRsp create() => PostRsp._();
  PostRsp createEmptyInstance() => create();
  static $pb.PbList<PostRsp> createRepeated() => $pb.PbList<PostRsp>();
  @$core.pragma('dart2js:noInline')
  static PostRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostRsp>(create);
  static PostRsp? _defaultInstance;
}

/// Comment 评论模型
class Comment extends $pb.GeneratedMessage {
  factory Comment({
    $fixnum.Int64? id,
    $fixnum.Int64? createAt,
    $fixnum.Int64? appId,
    $fixnum.Int64? userId,
    $core.String? appUserId,
    $core.String? username,
    $core.String? avatar,
    $fixnum.Int64? refId,
    $core.int? refType,
    $core.String? content,
    $core.bool? stamped,
    $core.Iterable<Video>? videos,
    $core.Iterable<Image>? images,
    $core.Iterable<Audio>? audios,
    $fixnum.Int64? likes,
    $fixnum.Int64? shares,
    $fixnum.Int64? watchs,
    $fixnum.Int64? replies,
    $core.Iterable<Reply>? topReplies,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    if (content != null) {
      $result.content = content;
    }
    if (stamped != null) {
      $result.stamped = stamped;
    }
    if (videos != null) {
      $result.videos.addAll(videos);
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (audios != null) {
      $result.audios.addAll(audios);
    }
    if (likes != null) {
      $result.likes = likes;
    }
    if (shares != null) {
      $result.shares = shares;
    }
    if (watchs != null) {
      $result.watchs = watchs;
    }
    if (replies != null) {
      $result.replies = replies;
    }
    if (topReplies != null) {
      $result.topReplies.addAll(topReplies);
    }
    return $result;
  }
  Comment._() : super();
  factory Comment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Comment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Comment', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'createAt', protoName: 'createAt')
    ..aInt64(3, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aInt64(4, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(5, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..aOS(6, _omitFieldNames ? '' : 'username')
    ..aOS(7, _omitFieldNames ? '' : 'avatar')
    ..aInt64(8, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..aOS(10, _omitFieldNames ? '' : 'content')
    ..aOB(11, _omitFieldNames ? '' : 'stamped')
    ..pc<Video>(20, _omitFieldNames ? '' : 'videos', $pb.PbFieldType.PM, subBuilder: Video.create)
    ..pc<Image>(21, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: Image.create)
    ..pc<Audio>(22, _omitFieldNames ? '' : 'audios', $pb.PbFieldType.PM, subBuilder: Audio.create)
    ..aInt64(30, _omitFieldNames ? '' : 'likes')
    ..aInt64(31, _omitFieldNames ? '' : 'shares')
    ..aInt64(32, _omitFieldNames ? '' : 'watchs')
    ..aInt64(33, _omitFieldNames ? '' : 'replies')
    ..pc<Reply>(41, _omitFieldNames ? '' : 'topReplies', $pb.PbFieldType.PM, protoName: 'topReplies', subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Comment clone() => Comment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Comment copyWith(void Function(Comment) updates) => super.copyWith((message) => updates(message as Comment)) as Comment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Comment create() => Comment._();
  Comment createEmptyInstance() => create();
  static $pb.PbList<Comment> createRepeated() => $pb.PbList<Comment>();
  @$core.pragma('dart2js:noInline')
  static Comment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Comment>(create);
  static Comment? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createAt => $_getI64(1);
  @$pb.TagNumber(2)
  set createAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateAt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get appId => $_getI64(2);
  @$pb.TagNumber(3)
  set appId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get userId => $_getI64(3);
  @$pb.TagNumber(4)
  set userId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get appUserId => $_getSZ(4);
  @$pb.TagNumber(5)
  set appUserId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppUserId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get username => $_getSZ(5);
  @$pb.TagNumber(6)
  set username($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUsername() => $_has(5);
  @$pb.TagNumber(6)
  void clearUsername() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get avatar => $_getSZ(6);
  @$pb.TagNumber(7)
  set avatar($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvatar() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvatar() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get refId => $_getI64(7);
  @$pb.TagNumber(8)
  set refId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRefId() => $_has(7);
  @$pb.TagNumber(8)
  void clearRefId() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get refType => $_getIZ(8);
  @$pb.TagNumber(9)
  set refType($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRefType() => $_has(8);
  @$pb.TagNumber(9)
  void clearRefType() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get content => $_getSZ(9);
  @$pb.TagNumber(10)
  set content($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasContent() => $_has(9);
  @$pb.TagNumber(10)
  void clearContent() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get stamped => $_getBF(10);
  @$pb.TagNumber(11)
  set stamped($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasStamped() => $_has(10);
  @$pb.TagNumber(11)
  void clearStamped() => clearField(11);

  @$pb.TagNumber(20)
  $core.List<Video> get videos => $_getList(11);

  @$pb.TagNumber(21)
  $core.List<Image> get images => $_getList(12);

  @$pb.TagNumber(22)
  $core.List<Audio> get audios => $_getList(13);

  @$pb.TagNumber(30)
  $fixnum.Int64 get likes => $_getI64(14);
  @$pb.TagNumber(30)
  set likes($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(30)
  $core.bool hasLikes() => $_has(14);
  @$pb.TagNumber(30)
  void clearLikes() => clearField(30);

  @$pb.TagNumber(31)
  $fixnum.Int64 get shares => $_getI64(15);
  @$pb.TagNumber(31)
  set shares($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(31)
  $core.bool hasShares() => $_has(15);
  @$pb.TagNumber(31)
  void clearShares() => clearField(31);

  @$pb.TagNumber(32)
  $fixnum.Int64 get watchs => $_getI64(16);
  @$pb.TagNumber(32)
  set watchs($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(32)
  $core.bool hasWatchs() => $_has(16);
  @$pb.TagNumber(32)
  void clearWatchs() => clearField(32);

  @$pb.TagNumber(33)
  $fixnum.Int64 get replies => $_getI64(17);
  @$pb.TagNumber(33)
  set replies($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(33)
  $core.bool hasReplies() => $_has(17);
  @$pb.TagNumber(33)
  void clearReplies() => clearField(33);

  @$pb.TagNumber(41)
  $core.List<Reply> get topReplies => $_getList(18);
}

/// 发表评论
class CommentReq extends $pb.GeneratedMessage {
  factory CommentReq({
    $fixnum.Int64? refId,
    $core.int? refType,
    $core.String? content,
    $core.Iterable<Video>? videos,
    $core.Iterable<Audio>? audios,
    $core.Iterable<Image>? images,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    if (content != null) {
      $result.content = content;
    }
    if (videos != null) {
      $result.videos.addAll(videos);
    }
    if (audios != null) {
      $result.audios.addAll(audios);
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    return $result;
  }
  CommentReq._() : super();
  factory CommentReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommentReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommentReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..aOS(3, _omitFieldNames ? '' : 'content')
    ..pc<Video>(4, _omitFieldNames ? '' : 'videos', $pb.PbFieldType.PM, subBuilder: Video.create)
    ..pc<Audio>(5, _omitFieldNames ? '' : 'audios', $pb.PbFieldType.PM, subBuilder: Audio.create)
    ..pc<Image>(6, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: Image.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommentReq clone() => CommentReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommentReq copyWith(void Function(CommentReq) updates) => super.copyWith((message) => updates(message as CommentReq)) as CommentReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommentReq create() => CommentReq._();
  CommentReq createEmptyInstance() => create();
  static $pb.PbList<CommentReq> createRepeated() => $pb.PbList<CommentReq>();
  @$core.pragma('dart2js:noInline')
  static CommentReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommentReq>(create);
  static CommentReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Video> get videos => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<Audio> get audios => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<Image> get images => $_getList(5);
}

class CommentRsp extends $pb.GeneratedMessage {
  factory CommentRsp({
    Comment? comment,
  }) {
    final $result = create();
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  CommentRsp._() : super();
  factory CommentRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommentRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommentRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Comment>(1, _omitFieldNames ? '' : 'comment', subBuilder: Comment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommentRsp clone() => CommentRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommentRsp copyWith(void Function(CommentRsp) updates) => super.copyWith((message) => updates(message as CommentRsp)) as CommentRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommentRsp create() => CommentRsp._();
  CommentRsp createEmptyInstance() => create();
  static $pb.PbList<CommentRsp> createRepeated() => $pb.PbList<CommentRsp>();
  @$core.pragma('dart2js:noInline')
  static CommentRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommentRsp>(create);
  static CommentRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Comment get comment => $_getN(0);
  @$pb.TagNumber(1)
  set comment(Comment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasComment() => $_has(0);
  @$pb.TagNumber(1)
  void clearComment() => clearField(1);
  @$pb.TagNumber(1)
  Comment ensureComment() => $_ensure(0);
}

/// Reply 回复模型
class Reply extends $pb.GeneratedMessage {
  factory Reply({
    $fixnum.Int64? id,
    $fixnum.Int64? createAt,
    $fixnum.Int64? appId,
    $fixnum.Int64? userId,
    $core.String? appUserId,
    $core.String? username,
    $core.String? avatar,
    $fixnum.Int64? commentId,
    $core.String? content,
    $fixnum.Int64? talkId,
    $fixnum.Int64? toAppId,
    $fixnum.Int64? toUserId,
    $core.String? toAppUserId,
    $core.String? toUsername,
    $core.Iterable<Video>? videos,
    $core.Iterable<Image>? images,
    $core.Iterable<Audio>? audios,
    $fixnum.Int64? likes,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (commentId != null) {
      $result.commentId = commentId;
    }
    if (content != null) {
      $result.content = content;
    }
    if (talkId != null) {
      $result.talkId = talkId;
    }
    if (toAppId != null) {
      $result.toAppId = toAppId;
    }
    if (toUserId != null) {
      $result.toUserId = toUserId;
    }
    if (toAppUserId != null) {
      $result.toAppUserId = toAppUserId;
    }
    if (toUsername != null) {
      $result.toUsername = toUsername;
    }
    if (videos != null) {
      $result.videos.addAll(videos);
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (audios != null) {
      $result.audios.addAll(audios);
    }
    if (likes != null) {
      $result.likes = likes;
    }
    return $result;
  }
  Reply._() : super();
  factory Reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'createAt', protoName: 'createAt')
    ..aInt64(3, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aInt64(4, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(5, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..aOS(6, _omitFieldNames ? '' : 'username')
    ..aOS(7, _omitFieldNames ? '' : 'avatar')
    ..aInt64(8, _omitFieldNames ? '' : 'commentId', protoName: 'commentId')
    ..aOS(9, _omitFieldNames ? '' : 'content')
    ..aInt64(10, _omitFieldNames ? '' : 'talkId', protoName: 'talkId')
    ..aInt64(11, _omitFieldNames ? '' : 'toAppId', protoName: 'toAppId')
    ..aInt64(12, _omitFieldNames ? '' : 'toUserId', protoName: 'toUserId')
    ..aOS(13, _omitFieldNames ? '' : 'toAppUserId', protoName: 'toAppUserId')
    ..aOS(14, _omitFieldNames ? '' : 'toUsername', protoName: 'toUsername')
    ..pc<Video>(20, _omitFieldNames ? '' : 'videos', $pb.PbFieldType.PM, subBuilder: Video.create)
    ..pc<Image>(21, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: Image.create)
    ..pc<Audio>(22, _omitFieldNames ? '' : 'audios', $pb.PbFieldType.PM, subBuilder: Audio.create)
    ..aInt64(31, _omitFieldNames ? '' : 'Likes', protoName: 'Likes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Reply clone() => Reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Reply copyWith(void Function(Reply) updates) => super.copyWith((message) => updates(message as Reply)) as Reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Reply create() => Reply._();
  Reply createEmptyInstance() => create();
  static $pb.PbList<Reply> createRepeated() => $pb.PbList<Reply>();
  @$core.pragma('dart2js:noInline')
  static Reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reply>(create);
  static Reply? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createAt => $_getI64(1);
  @$pb.TagNumber(2)
  set createAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateAt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get appId => $_getI64(2);
  @$pb.TagNumber(3)
  set appId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get userId => $_getI64(3);
  @$pb.TagNumber(4)
  set userId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get appUserId => $_getSZ(4);
  @$pb.TagNumber(5)
  set appUserId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppUserId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get username => $_getSZ(5);
  @$pb.TagNumber(6)
  set username($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUsername() => $_has(5);
  @$pb.TagNumber(6)
  void clearUsername() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get avatar => $_getSZ(6);
  @$pb.TagNumber(7)
  set avatar($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvatar() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvatar() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get commentId => $_getI64(7);
  @$pb.TagNumber(8)
  set commentId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCommentId() => $_has(7);
  @$pb.TagNumber(8)
  void clearCommentId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get content => $_getSZ(8);
  @$pb.TagNumber(9)
  set content($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasContent() => $_has(8);
  @$pb.TagNumber(9)
  void clearContent() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get talkId => $_getI64(9);
  @$pb.TagNumber(10)
  set talkId($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTalkId() => $_has(9);
  @$pb.TagNumber(10)
  void clearTalkId() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get toAppId => $_getI64(10);
  @$pb.TagNumber(11)
  set toAppId($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasToAppId() => $_has(10);
  @$pb.TagNumber(11)
  void clearToAppId() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get toUserId => $_getI64(11);
  @$pb.TagNumber(12)
  set toUserId($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasToUserId() => $_has(11);
  @$pb.TagNumber(12)
  void clearToUserId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get toAppUserId => $_getSZ(12);
  @$pb.TagNumber(13)
  set toAppUserId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasToAppUserId() => $_has(12);
  @$pb.TagNumber(13)
  void clearToAppUserId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get toUsername => $_getSZ(13);
  @$pb.TagNumber(14)
  set toUsername($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasToUsername() => $_has(13);
  @$pb.TagNumber(14)
  void clearToUsername() => clearField(14);

  @$pb.TagNumber(20)
  $core.List<Video> get videos => $_getList(14);

  @$pb.TagNumber(21)
  $core.List<Image> get images => $_getList(15);

  @$pb.TagNumber(22)
  $core.List<Audio> get audios => $_getList(16);

  @$pb.TagNumber(31)
  $fixnum.Int64 get likes => $_getI64(17);
  @$pb.TagNumber(31)
  set likes($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(31)
  $core.bool hasLikes() => $_has(17);
  @$pb.TagNumber(31)
  void clearLikes() => clearField(31);
}

/// 回复
/// 如果是回复>评论 TalkId ToUserId ToUsername 三项为零值
/// 如果是回复>回复 TalkId 是被回复的回复ID, ToUserId ToUsername 是被回复的用户ID和用户名
/// 如果是回复>回复的回复 TalkId 是被回复的回复的TalkId, ToUserId ToUsername 是被回复的用户ID和用户名
/// 相对于评论没有插眼,没有恢复,没有分享
class ReplyReq extends $pb.GeneratedMessage {
  factory ReplyReq({
    $core.String? content,
    $fixnum.Int64? commentId,
    $fixnum.Int64? talkId,
    $fixnum.Int64? toAppId,
    $fixnum.Int64? toUserId,
    $core.String? toAppUserId,
    $core.String? toUsername,
    $core.Iterable<Video>? videos,
    $core.Iterable<Audio>? audios,
    $core.Iterable<Image>? images,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    if (commentId != null) {
      $result.commentId = commentId;
    }
    if (talkId != null) {
      $result.talkId = talkId;
    }
    if (toAppId != null) {
      $result.toAppId = toAppId;
    }
    if (toUserId != null) {
      $result.toUserId = toUserId;
    }
    if (toAppUserId != null) {
      $result.toAppUserId = toAppUserId;
    }
    if (toUsername != null) {
      $result.toUsername = toUsername;
    }
    if (videos != null) {
      $result.videos.addAll(videos);
    }
    if (audios != null) {
      $result.audios.addAll(audios);
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    return $result;
  }
  ReplyReq._() : super();
  factory ReplyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..aInt64(2, _omitFieldNames ? '' : 'commentId', protoName: 'commentId')
    ..aInt64(3, _omitFieldNames ? '' : 'talkId', protoName: 'talkId')
    ..aInt64(10, _omitFieldNames ? '' : 'toAppId', protoName: 'toAppId')
    ..aInt64(11, _omitFieldNames ? '' : 'toUserId', protoName: 'toUserId')
    ..aOS(12, _omitFieldNames ? '' : 'toAppUserId', protoName: 'toAppUserId')
    ..aOS(13, _omitFieldNames ? '' : 'toUsername', protoName: 'toUsername')
    ..pc<Video>(20, _omitFieldNames ? '' : 'videos', $pb.PbFieldType.PM, subBuilder: Video.create)
    ..pc<Audio>(21, _omitFieldNames ? '' : 'audios', $pb.PbFieldType.PM, subBuilder: Audio.create)
    ..pc<Image>(22, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: Image.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyReq clone() => ReplyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyReq copyWith(void Function(ReplyReq) updates) => super.copyWith((message) => updates(message as ReplyReq)) as ReplyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyReq create() => ReplyReq._();
  ReplyReq createEmptyInstance() => create();
  static $pb.PbList<ReplyReq> createRepeated() => $pb.PbList<ReplyReq>();
  @$core.pragma('dart2js:noInline')
  static ReplyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyReq>(create);
  static ReplyReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);

  /// int32 refType = 2;
  /// int64 refId = 3;
  @$pb.TagNumber(2)
  $fixnum.Int64 get commentId => $_getI64(1);
  @$pb.TagNumber(2)
  set commentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommentId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get talkId => $_getI64(2);
  @$pb.TagNumber(3)
  set talkId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTalkId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTalkId() => clearField(3);

  /// 被回复用户信息
  @$pb.TagNumber(10)
  $fixnum.Int64 get toAppId => $_getI64(3);
  @$pb.TagNumber(10)
  set toAppId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(10)
  $core.bool hasToAppId() => $_has(3);
  @$pb.TagNumber(10)
  void clearToAppId() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get toUserId => $_getI64(4);
  @$pb.TagNumber(11)
  set toUserId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(11)
  $core.bool hasToUserId() => $_has(4);
  @$pb.TagNumber(11)
  void clearToUserId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get toAppUserId => $_getSZ(5);
  @$pb.TagNumber(12)
  set toAppUserId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(12)
  $core.bool hasToAppUserId() => $_has(5);
  @$pb.TagNumber(12)
  void clearToAppUserId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get toUsername => $_getSZ(6);
  @$pb.TagNumber(13)
  set toUsername($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(13)
  $core.bool hasToUsername() => $_has(6);
  @$pb.TagNumber(13)
  void clearToUsername() => clearField(13);

  @$pb.TagNumber(20)
  $core.List<Video> get videos => $_getList(7);

  @$pb.TagNumber(21)
  $core.List<Audio> get audios => $_getList(8);

  @$pb.TagNumber(22)
  $core.List<Image> get images => $_getList(9);
}

class ReplyRsp extends $pb.GeneratedMessage {
  factory ReplyRsp({
    Reply? reply,
  }) {
    final $result = create();
    if (reply != null) {
      $result.reply = reply;
    }
    return $result;
  }
  ReplyRsp._() : super();
  factory ReplyRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyRsp clone() => ReplyRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyRsp copyWith(void Function(ReplyRsp) updates) => super.copyWith((message) => updates(message as ReplyRsp)) as ReplyRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyRsp create() => ReplyRsp._();
  ReplyRsp createEmptyInstance() => create();
  static $pb.PbList<ReplyRsp> createRepeated() => $pb.PbList<ReplyRsp>();
  @$core.pragma('dart2js:noInline')
  static ReplyRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyRsp>(create);
  static ReplyRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);
}

/// Barrage 视频弹幕
/// TODO 如果弹幕有交互操作也应返回id,暂不考虑
class Barrage extends $pb.GeneratedMessage {
  factory Barrage({
    $core.String? content,
    $fixnum.Int64? playAt,
    $core.String? font,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    if (playAt != null) {
      $result.playAt = playAt;
    }
    if (font != null) {
      $result.font = font;
    }
    return $result;
  }
  Barrage._() : super();
  factory Barrage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Barrage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Barrage', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..aInt64(2, _omitFieldNames ? '' : 'playAt', protoName: 'playAt')
    ..aOS(3, _omitFieldNames ? '' : 'font')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Barrage clone() => Barrage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Barrage copyWith(void Function(Barrage) updates) => super.copyWith((message) => updates(message as Barrage)) as Barrage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Barrage create() => Barrage._();
  Barrage createEmptyInstance() => create();
  static $pb.PbList<Barrage> createRepeated() => $pb.PbList<Barrage>();
  @$core.pragma('dart2js:noInline')
  static Barrage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Barrage>(create);
  static Barrage? _defaultInstance;

  /// UserId  string
  /// RefId   int64
  /// RefType int32
  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get playAt => $_getI64(1);
  @$pb.TagNumber(2)
  set playAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get font => $_getSZ(2);
  @$pb.TagNumber(3)
  set font($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFont() => $_has(2);
  @$pb.TagNumber(3)
  void clearFont() => clearField(3);
}

/// 发弹幕
class ShootReq extends $pb.GeneratedMessage {
  factory ShootReq({
    $fixnum.Int64? refId,
    $core.int? refType,
    $core.String? content,
    $fixnum.Int64? playAt,
    $core.String? font,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    if (content != null) {
      $result.content = content;
    }
    if (playAt != null) {
      $result.playAt = playAt;
    }
    if (font != null) {
      $result.font = font;
    }
    return $result;
  }
  ShootReq._() : super();
  factory ShootReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShootReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShootReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..aOS(3, _omitFieldNames ? '' : 'content')
    ..aInt64(4, _omitFieldNames ? '' : 'playAt', protoName: 'playAt')
    ..aOS(5, _omitFieldNames ? '' : 'font')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShootReq clone() => ShootReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShootReq copyWith(void Function(ShootReq) updates) => super.copyWith((message) => updates(message as ShootReq)) as ShootReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShootReq create() => ShootReq._();
  ShootReq createEmptyInstance() => create();
  static $pb.PbList<ShootReq> createRepeated() => $pb.PbList<ShootReq>();
  @$core.pragma('dart2js:noInline')
  static ShootReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShootReq>(create);
  static ShootReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get playAt => $_getI64(3);
  @$pb.TagNumber(4)
  set playAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayAt() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get font => $_getSZ(4);
  @$pb.TagNumber(5)
  set font($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFont() => $_has(4);
  @$pb.TagNumber(5)
  void clearFont() => clearField(5);
}

class ShootRsp extends $pb.GeneratedMessage {
  factory ShootRsp() => create();
  ShootRsp._() : super();
  factory ShootRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShootRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShootRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShootRsp clone() => ShootRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShootRsp copyWith(void Function(ShootRsp) updates) => super.copyWith((message) => updates(message as ShootRsp)) as ShootRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShootRsp create() => ShootRsp._();
  ShootRsp createEmptyInstance() => create();
  static $pb.PbList<ShootRsp> createRepeated() => $pb.PbList<ShootRsp>();
  @$core.pragma('dart2js:noInline')
  static ShootRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShootRsp>(create);
  static ShootRsp? _defaultInstance;
}

/// 点赞, 下面类似的操作用户信息直接有客户端传递,原因:
///  1. 主要是为了减少一次网络请求,因为这类操作非常频繁
///  2. 相对评论和回复这类操作权限控制相对较弱,可以信任客户端
class LikeReq extends $pb.GeneratedMessage {
  factory LikeReq({
    $core.String? username,
    $core.String? avatar,
    $fixnum.Int64? refId,
    $core.int? refType,
    $core.int? type,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  LikeReq._() : super();
  factory LikeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LikeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'avatar')
    ..aInt64(3, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikeReq clone() => LikeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikeReq copyWith(void Function(LikeReq) updates) => super.copyWith((message) => updates(message as LikeReq)) as LikeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeReq create() => LikeReq._();
  LikeReq createEmptyInstance() => create();
  static $pb.PbList<LikeReq> createRepeated() => $pb.PbList<LikeReq>();
  @$core.pragma('dart2js:noInline')
  static LikeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeReq>(create);
  static LikeReq? _defaultInstance;

  /// int64 appId = 1;
  /// int64 userId = 2;
  /// string appUserId = 3;
  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatar => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatar($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatar() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatar() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get refId => $_getI64(2);
  @$pb.TagNumber(3)
  set refId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRefId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get refType => $_getIZ(3);
  @$pb.TagNumber(4)
  set refType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRefType() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefType() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get type => $_getIZ(4);
  @$pb.TagNumber(5)
  set type($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);
}

class LikeRsp extends $pb.GeneratedMessage {
  factory LikeRsp() => create();
  LikeRsp._() : super();
  factory LikeRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikeRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LikeRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikeRsp clone() => LikeRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikeRsp copyWith(void Function(LikeRsp) updates) => super.copyWith((message) => updates(message as LikeRsp)) as LikeRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeRsp create() => LikeRsp._();
  LikeRsp createEmptyInstance() => create();
  static $pb.PbList<LikeRsp> createRepeated() => $pb.PbList<LikeRsp>();
  @$core.pragma('dart2js:noInline')
  static LikeRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeRsp>(create);
  static LikeRsp? _defaultInstance;
}

class UnlikeReq extends $pb.GeneratedMessage {
  factory UnlikeReq({
    $fixnum.Int64? refId,
    $core.int? refType,
    $core.int? type,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  UnlikeReq._() : super();
  factory UnlikeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlikeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnlikeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlikeReq clone() => UnlikeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlikeReq copyWith(void Function(UnlikeReq) updates) => super.copyWith((message) => updates(message as UnlikeReq)) as UnlikeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnlikeReq create() => UnlikeReq._();
  UnlikeReq createEmptyInstance() => create();
  static $pb.PbList<UnlikeReq> createRepeated() => $pb.PbList<UnlikeReq>();
  @$core.pragma('dart2js:noInline')
  static UnlikeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlikeReq>(create);
  static UnlikeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class UnlikeRsp extends $pb.GeneratedMessage {
  factory UnlikeRsp() => create();
  UnlikeRsp._() : super();
  factory UnlikeRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlikeRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnlikeRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlikeRsp clone() => UnlikeRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlikeRsp copyWith(void Function(UnlikeRsp) updates) => super.copyWith((message) => updates(message as UnlikeRsp)) as UnlikeRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnlikeRsp create() => UnlikeRsp._();
  UnlikeRsp createEmptyInstance() => create();
  static $pb.PbList<UnlikeRsp> createRepeated() => $pb.PbList<UnlikeRsp>();
  @$core.pragma('dart2js:noInline')
  static UnlikeRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlikeRsp>(create);
  static UnlikeRsp? _defaultInstance;
}

/// 分享
class ShareReq extends $pb.GeneratedMessage {
  factory ShareReq({
    $fixnum.Int64? refId,
    $core.int? refType,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    return $result;
  }
  ShareReq._() : super();
  factory ShareReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReq clone() => ShareReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReq copyWith(void Function(ShareReq) updates) => super.copyWith((message) => updates(message as ShareReq)) as ShareReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReq create() => ShareReq._();
  ShareReq createEmptyInstance() => create();
  static $pb.PbList<ShareReq> createRepeated() => $pb.PbList<ShareReq>();
  @$core.pragma('dart2js:noInline')
  static ShareReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReq>(create);
  static ShareReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);
}

class ShareRsp extends $pb.GeneratedMessage {
  factory ShareRsp() => create();
  ShareRsp._() : super();
  factory ShareRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareRsp clone() => ShareRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareRsp copyWith(void Function(ShareRsp) updates) => super.copyWith((message) => updates(message as ShareRsp)) as ShareRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareRsp create() => ShareRsp._();
  ShareRsp createEmptyInstance() => create();
  static $pb.PbList<ShareRsp> createRepeated() => $pb.PbList<ShareRsp>();
  @$core.pragma('dart2js:noInline')
  static ShareRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareRsp>(create);
  static ShareRsp? _defaultInstance;
}

/// Ballot 投票记录
class Ballot extends $pb.GeneratedMessage {
  factory Ballot({
    $fixnum.Int64? voteId,
    $fixnum.Int64? optionId,
  }) {
    final $result = create();
    if (voteId != null) {
      $result.voteId = voteId;
    }
    if (optionId != null) {
      $result.optionId = optionId;
    }
    return $result;
  }
  Ballot._() : super();
  factory Ballot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ballot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ballot', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'voteId', protoName: 'voteId')
    ..aInt64(2, _omitFieldNames ? '' : 'optionId', protoName: 'optionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ballot clone() => Ballot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ballot copyWith(void Function(Ballot) updates) => super.copyWith((message) => updates(message as Ballot)) as Ballot;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ballot create() => Ballot._();
  Ballot createEmptyInstance() => create();
  static $pb.PbList<Ballot> createRepeated() => $pb.PbList<Ballot>();
  @$core.pragma('dart2js:noInline')
  static Ballot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ballot>(create);
  static Ballot? _defaultInstance;

  /// Base     `xorm:"extends"`
  /// UserId   string
  /// Username string
  /// Avatar   string
  @$pb.TagNumber(1)
  $fixnum.Int64 get voteId => $_getI64(0);
  @$pb.TagNumber(1)
  set voteId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVoteId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoteId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get optionId => $_getI64(1);
  @$pb.TagNumber(2)
  set optionId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptionId() => clearField(2);
}

/// 投票
class VoteReq extends $pb.GeneratedMessage {
  factory VoteReq({
    $core.String? username,
    $core.String? avatar,
    $fixnum.Int64? postId,
    $fixnum.Int64? voteId,
    $fixnum.Int64? optionId,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (postId != null) {
      $result.postId = postId;
    }
    if (voteId != null) {
      $result.voteId = voteId;
    }
    if (optionId != null) {
      $result.optionId = optionId;
    }
    return $result;
  }
  VoteReq._() : super();
  factory VoteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VoteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VoteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'avatar')
    ..aInt64(3, _omitFieldNames ? '' : 'postId', protoName: 'postId')
    ..aInt64(4, _omitFieldNames ? '' : 'voteId', protoName: 'voteId')
    ..aInt64(5, _omitFieldNames ? '' : 'optionId', protoName: 'optionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VoteReq clone() => VoteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VoteReq copyWith(void Function(VoteReq) updates) => super.copyWith((message) => updates(message as VoteReq)) as VoteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoteReq create() => VoteReq._();
  VoteReq createEmptyInstance() => create();
  static $pb.PbList<VoteReq> createRepeated() => $pb.PbList<VoteReq>();
  @$core.pragma('dart2js:noInline')
  static VoteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoteReq>(create);
  static VoteReq? _defaultInstance;

  /// int64 appId = 1; // 平台id
  /// int64 userId = 2;
  /// string appUserId = 3;
  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatar => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatar($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatar() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatar() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get postId => $_getI64(2);
  @$pb.TagNumber(3)
  set postId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPostId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPostId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get voteId => $_getI64(3);
  @$pb.TagNumber(4)
  set voteId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVoteId() => $_has(3);
  @$pb.TagNumber(4)
  void clearVoteId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get optionId => $_getI64(4);
  @$pb.TagNumber(5)
  set optionId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOptionId() => $_has(4);
  @$pb.TagNumber(5)
  void clearOptionId() => clearField(5);
}

class VoteRsp extends $pb.GeneratedMessage {
  factory VoteRsp() => create();
  VoteRsp._() : super();
  factory VoteRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VoteRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VoteRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VoteRsp clone() => VoteRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VoteRsp copyWith(void Function(VoteRsp) updates) => super.copyWith((message) => updates(message as VoteRsp)) as VoteRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoteRsp create() => VoteRsp._();
  VoteRsp createEmptyInstance() => create();
  static $pb.PbList<VoteRsp> createRepeated() => $pb.PbList<VoteRsp>();
  @$core.pragma('dart2js:noInline')
  static VoteRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoteRsp>(create);
  static VoteRsp? _defaultInstance;
}

/// 插眼
class WatchReq extends $pb.GeneratedMessage {
  factory WatchReq({
    $fixnum.Int64? refId,
    $core.int? refType,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    return $result;
  }
  WatchReq._() : super();
  factory WatchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WatchReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchReq clone() => WatchReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchReq copyWith(void Function(WatchReq) updates) => super.copyWith((message) => updates(message as WatchReq)) as WatchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchReq create() => WatchReq._();
  WatchReq createEmptyInstance() => create();
  static $pb.PbList<WatchReq> createRepeated() => $pb.PbList<WatchReq>();
  @$core.pragma('dart2js:noInline')
  static WatchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchReq>(create);
  static WatchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);
}

class WatchRsp extends $pb.GeneratedMessage {
  factory WatchRsp() => create();
  WatchRsp._() : super();
  factory WatchRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WatchRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchRsp clone() => WatchRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchRsp copyWith(void Function(WatchRsp) updates) => super.copyWith((message) => updates(message as WatchRsp)) as WatchRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchRsp create() => WatchRsp._();
  WatchRsp createEmptyInstance() => create();
  static $pb.PbList<WatchRsp> createRepeated() => $pb.PbList<WatchRsp>();
  @$core.pragma('dart2js:noInline')
  static WatchRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchRsp>(create);
  static WatchRsp? _defaultInstance;
}

/// 取消插眼
class UnwatchReq extends $pb.GeneratedMessage {
  factory UnwatchReq({
    $fixnum.Int64? refId,
    $core.int? refType,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    return $result;
  }
  UnwatchReq._() : super();
  factory UnwatchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnwatchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnwatchReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnwatchReq clone() => UnwatchReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnwatchReq copyWith(void Function(UnwatchReq) updates) => super.copyWith((message) => updates(message as UnwatchReq)) as UnwatchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnwatchReq create() => UnwatchReq._();
  UnwatchReq createEmptyInstance() => create();
  static $pb.PbList<UnwatchReq> createRepeated() => $pb.PbList<UnwatchReq>();
  @$core.pragma('dart2js:noInline')
  static UnwatchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnwatchReq>(create);
  static UnwatchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);
}

class UnwatchRsp extends $pb.GeneratedMessage {
  factory UnwatchRsp() => create();
  UnwatchRsp._() : super();
  factory UnwatchRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnwatchRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnwatchRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnwatchRsp clone() => UnwatchRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnwatchRsp copyWith(void Function(UnwatchRsp) updates) => super.copyWith((message) => updates(message as UnwatchRsp)) as UnwatchRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnwatchRsp create() => UnwatchRsp._();
  UnwatchRsp createEmptyInstance() => create();
  static $pb.PbList<UnwatchRsp> createRepeated() => $pb.PbList<UnwatchRsp>();
  @$core.pragma('dart2js:noInline')
  static UnwatchRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnwatchRsp>(create);
  static UnwatchRsp? _defaultInstance;
}

/// 打赏
class AwardReq extends $pb.GeneratedMessage {
  factory AwardReq({
    $fixnum.Int64? refId,
    $core.int? refType,
    $fixnum.Int64? giftId,
    $fixnum.Int64? giftNumber,
    $fixnum.Int64? giftPrice,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    if (giftId != null) {
      $result.giftId = giftId;
    }
    if (giftNumber != null) {
      $result.giftNumber = giftNumber;
    }
    if (giftPrice != null) {
      $result.giftPrice = giftPrice;
    }
    return $result;
  }
  AwardReq._() : super();
  factory AwardReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AwardReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AwardReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..aInt64(3, _omitFieldNames ? '' : 'giftId', protoName: 'giftId')
    ..aInt64(4, _omitFieldNames ? '' : 'giftNumber', protoName: 'giftNumber')
    ..aInt64(5, _omitFieldNames ? '' : 'giftPrice', protoName: 'giftPrice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AwardReq clone() => AwardReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AwardReq copyWith(void Function(AwardReq) updates) => super.copyWith((message) => updates(message as AwardReq)) as AwardReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AwardReq create() => AwardReq._();
  AwardReq createEmptyInstance() => create();
  static $pb.PbList<AwardReq> createRepeated() => $pb.PbList<AwardReq>();
  @$core.pragma('dart2js:noInline')
  static AwardReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AwardReq>(create);
  static AwardReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get giftId => $_getI64(2);
  @$pb.TagNumber(3)
  set giftId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGiftId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGiftId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get giftNumber => $_getI64(3);
  @$pb.TagNumber(4)
  set giftNumber($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGiftNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearGiftNumber() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get giftPrice => $_getI64(4);
  @$pb.TagNumber(5)
  set giftPrice($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGiftPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearGiftPrice() => clearField(5);
}

class AwardRsp extends $pb.GeneratedMessage {
  factory AwardRsp() => create();
  AwardRsp._() : super();
  factory AwardRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AwardRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AwardRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AwardRsp clone() => AwardRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AwardRsp copyWith(void Function(AwardRsp) updates) => super.copyWith((message) => updates(message as AwardRsp)) as AwardRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AwardRsp create() => AwardRsp._();
  AwardRsp createEmptyInstance() => create();
  static $pb.PbList<AwardRsp> createRepeated() => $pb.PbList<AwardRsp>();
  @$core.pragma('dart2js:noInline')
  static AwardRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AwardRsp>(create);
  static AwardRsp? _defaultInstance;
}

/// 收藏
class FavoriteReq extends $pb.GeneratedMessage {
  factory FavoriteReq({
    $fixnum.Int64? refId,
    $core.int? refType,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    return $result;
  }
  FavoriteReq._() : super();
  factory FavoriteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FavoriteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FavoriteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FavoriteReq clone() => FavoriteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FavoriteReq copyWith(void Function(FavoriteReq) updates) => super.copyWith((message) => updates(message as FavoriteReq)) as FavoriteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FavoriteReq create() => FavoriteReq._();
  FavoriteReq createEmptyInstance() => create();
  static $pb.PbList<FavoriteReq> createRepeated() => $pb.PbList<FavoriteReq>();
  @$core.pragma('dart2js:noInline')
  static FavoriteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FavoriteReq>(create);
  static FavoriteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);
}

class FavoriteRsp extends $pb.GeneratedMessage {
  factory FavoriteRsp() => create();
  FavoriteRsp._() : super();
  factory FavoriteRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FavoriteRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FavoriteRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FavoriteRsp clone() => FavoriteRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FavoriteRsp copyWith(void Function(FavoriteRsp) updates) => super.copyWith((message) => updates(message as FavoriteRsp)) as FavoriteRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FavoriteRsp create() => FavoriteRsp._();
  FavoriteRsp createEmptyInstance() => create();
  static $pb.PbList<FavoriteRsp> createRepeated() => $pb.PbList<FavoriteRsp>();
  @$core.pragma('dart2js:noInline')
  static FavoriteRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FavoriteRsp>(create);
  static FavoriteRsp? _defaultInstance;
}

/// 取消收藏
class UnfavoriteReq extends $pb.GeneratedMessage {
  factory UnfavoriteReq({
    $fixnum.Int64? refId,
    $core.int? refType,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    return $result;
  }
  UnfavoriteReq._() : super();
  factory UnfavoriteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnfavoriteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnfavoriteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnfavoriteReq clone() => UnfavoriteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnfavoriteReq copyWith(void Function(UnfavoriteReq) updates) => super.copyWith((message) => updates(message as UnfavoriteReq)) as UnfavoriteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnfavoriteReq create() => UnfavoriteReq._();
  UnfavoriteReq createEmptyInstance() => create();
  static $pb.PbList<UnfavoriteReq> createRepeated() => $pb.PbList<UnfavoriteReq>();
  @$core.pragma('dart2js:noInline')
  static UnfavoriteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnfavoriteReq>(create);
  static UnfavoriteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);
}

class UnfavoriteRsp extends $pb.GeneratedMessage {
  factory UnfavoriteRsp() => create();
  UnfavoriteRsp._() : super();
  factory UnfavoriteRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnfavoriteRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnfavoriteRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnfavoriteRsp clone() => UnfavoriteRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnfavoriteRsp copyWith(void Function(UnfavoriteRsp) updates) => super.copyWith((message) => updates(message as UnfavoriteRsp)) as UnfavoriteRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnfavoriteRsp create() => UnfavoriteRsp._();
  UnfavoriteRsp createEmptyInstance() => create();
  static $pb.PbList<UnfavoriteRsp> createRepeated() => $pb.PbList<UnfavoriteRsp>();
  @$core.pragma('dart2js:noInline')
  static UnfavoriteRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnfavoriteRsp>(create);
  static UnfavoriteRsp? _defaultInstance;
}

/// 观众用户
class FollowReq extends $pb.GeneratedMessage {
  factory FollowReq({
    $core.String? followerUsername,
    $core.String? followerAvatar,
    $fixnum.Int64? followeeAppId,
    $fixnum.Int64? followeeUserId,
    $core.String? followeeAppUserId,
    $core.String? followeeUsername,
    $core.String? followeeAvatar,
  }) {
    final $result = create();
    if (followerUsername != null) {
      $result.followerUsername = followerUsername;
    }
    if (followerAvatar != null) {
      $result.followerAvatar = followerAvatar;
    }
    if (followeeAppId != null) {
      $result.followeeAppId = followeeAppId;
    }
    if (followeeUserId != null) {
      $result.followeeUserId = followeeUserId;
    }
    if (followeeAppUserId != null) {
      $result.followeeAppUserId = followeeAppUserId;
    }
    if (followeeUsername != null) {
      $result.followeeUsername = followeeUsername;
    }
    if (followeeAvatar != null) {
      $result.followeeAvatar = followeeAvatar;
    }
    return $result;
  }
  FollowReq._() : super();
  factory FollowReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'followerUsername', protoName: 'followerUsername')
    ..aOS(2, _omitFieldNames ? '' : 'followerAvatar', protoName: 'followerAvatar')
    ..aInt64(3, _omitFieldNames ? '' : 'followeeAppId', protoName: 'followeeAppId')
    ..aInt64(4, _omitFieldNames ? '' : 'followeeUserId', protoName: 'followeeUserId')
    ..aOS(5, _omitFieldNames ? '' : 'followeeAppUserId', protoName: 'followeeAppUserId')
    ..aOS(6, _omitFieldNames ? '' : 'followeeUsername', protoName: 'followeeUsername')
    ..aOS(7, _omitFieldNames ? '' : 'followeeAvatar', protoName: 'followeeAvatar')
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

  /// 用户信息
  @$pb.TagNumber(1)
  $core.String get followerUsername => $_getSZ(0);
  @$pb.TagNumber(1)
  set followerUsername($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFollowerUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearFollowerUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get followerAvatar => $_getSZ(1);
  @$pb.TagNumber(2)
  set followerAvatar($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFollowerAvatar() => $_has(1);
  @$pb.TagNumber(2)
  void clearFollowerAvatar() => clearField(2);

  /// 被关注者信息
  @$pb.TagNumber(3)
  $fixnum.Int64 get followeeAppId => $_getI64(2);
  @$pb.TagNumber(3)
  set followeeAppId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFolloweeAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolloweeAppId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get followeeUserId => $_getI64(3);
  @$pb.TagNumber(4)
  set followeeUserId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFolloweeUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFolloweeUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get followeeAppUserId => $_getSZ(4);
  @$pb.TagNumber(5)
  set followeeAppUserId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFolloweeAppUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearFolloweeAppUserId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get followeeUsername => $_getSZ(5);
  @$pb.TagNumber(6)
  set followeeUsername($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFolloweeUsername() => $_has(5);
  @$pb.TagNumber(6)
  void clearFolloweeUsername() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get followeeAvatar => $_getSZ(6);
  @$pb.TagNumber(7)
  set followeeAvatar($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFolloweeAvatar() => $_has(6);
  @$pb.TagNumber(7)
  void clearFolloweeAvatar() => clearField(7);
}

class FollowRsp extends $pb.GeneratedMessage {
  factory FollowRsp() => create();
  FollowRsp._() : super();
  factory FollowRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
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
  factory UnfollowReq({
    $fixnum.Int64? followeeAppId,
    $fixnum.Int64? followeeUserId,
    $core.String? followeeAppUserId,
  }) {
    final $result = create();
    if (followeeAppId != null) {
      $result.followeeAppId = followeeAppId;
    }
    if (followeeUserId != null) {
      $result.followeeUserId = followeeUserId;
    }
    if (followeeAppUserId != null) {
      $result.followeeAppUserId = followeeAppUserId;
    }
    return $result;
  }
  UnfollowReq._() : super();
  factory UnfollowReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnfollowReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnfollowReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'followeeAppId', protoName: 'followeeAppId')
    ..aInt64(2, _omitFieldNames ? '' : 'followeeUserId', protoName: 'followeeUserId')
    ..aOS(3, _omitFieldNames ? '' : 'followeeAppUserId', protoName: 'followeeAppUserId')
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

  @$pb.TagNumber(1)
  $fixnum.Int64 get followeeAppId => $_getI64(0);
  @$pb.TagNumber(1)
  set followeeAppId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFolloweeAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFolloweeAppId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get followeeUserId => $_getI64(1);
  @$pb.TagNumber(2)
  set followeeUserId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFolloweeUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFolloweeUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get followeeAppUserId => $_getSZ(2);
  @$pb.TagNumber(3)
  set followeeAppUserId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFolloweeAppUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolloweeAppUserId() => clearField(3);
}

class UnfollowRsp extends $pb.GeneratedMessage {
  factory UnfollowRsp() => create();
  UnfollowRsp._() : super();
  factory UnfollowRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnfollowRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnfollowRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
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

/// 加入话题
class ParticipateReq extends $pb.GeneratedMessage {
  factory ParticipateReq({
    $fixnum.Int64? topicId,
  }) {
    final $result = create();
    if (topicId != null) {
      $result.topicId = topicId;
    }
    return $result;
  }
  ParticipateReq._() : super();
  factory ParticipateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParticipateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ParticipateReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'topicId', protoName: 'topicId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParticipateReq clone() => ParticipateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParticipateReq copyWith(void Function(ParticipateReq) updates) => super.copyWith((message) => updates(message as ParticipateReq)) as ParticipateReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParticipateReq create() => ParticipateReq._();
  ParticipateReq createEmptyInstance() => create();
  static $pb.PbList<ParticipateReq> createRepeated() => $pb.PbList<ParticipateReq>();
  @$core.pragma('dart2js:noInline')
  static ParticipateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParticipateReq>(create);
  static ParticipateReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get topicId => $_getI64(0);
  @$pb.TagNumber(1)
  set topicId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicId() => clearField(1);
}

class ParticipateRsp extends $pb.GeneratedMessage {
  factory ParticipateRsp() => create();
  ParticipateRsp._() : super();
  factory ParticipateRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParticipateRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ParticipateRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParticipateRsp clone() => ParticipateRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParticipateRsp copyWith(void Function(ParticipateRsp) updates) => super.copyWith((message) => updates(message as ParticipateRsp)) as ParticipateRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParticipateRsp create() => ParticipateRsp._();
  ParticipateRsp createEmptyInstance() => create();
  static $pb.PbList<ParticipateRsp> createRepeated() => $pb.PbList<ParticipateRsp>();
  @$core.pragma('dart2js:noInline')
  static ParticipateRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParticipateRsp>(create);
  static ParticipateRsp? _defaultInstance;
}

/// 退出话题
class UnparticipateReq extends $pb.GeneratedMessage {
  factory UnparticipateReq({
    $fixnum.Int64? topicId,
  }) {
    final $result = create();
    if (topicId != null) {
      $result.topicId = topicId;
    }
    return $result;
  }
  UnparticipateReq._() : super();
  factory UnparticipateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnparticipateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnparticipateReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'topicId', protoName: 'topicId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnparticipateReq clone() => UnparticipateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnparticipateReq copyWith(void Function(UnparticipateReq) updates) => super.copyWith((message) => updates(message as UnparticipateReq)) as UnparticipateReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnparticipateReq create() => UnparticipateReq._();
  UnparticipateReq createEmptyInstance() => create();
  static $pb.PbList<UnparticipateReq> createRepeated() => $pb.PbList<UnparticipateReq>();
  @$core.pragma('dart2js:noInline')
  static UnparticipateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnparticipateReq>(create);
  static UnparticipateReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get topicId => $_getI64(0);
  @$pb.TagNumber(1)
  set topicId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicId() => clearField(1);
}

class UnparticipateRsp extends $pb.GeneratedMessage {
  factory UnparticipateRsp() => create();
  UnparticipateRsp._() : super();
  factory UnparticipateRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnparticipateRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnparticipateRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnparticipateRsp clone() => UnparticipateRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnparticipateRsp copyWith(void Function(UnparticipateRsp) updates) => super.copyWith((message) => updates(message as UnparticipateRsp)) as UnparticipateRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnparticipateRsp create() => UnparticipateRsp._();
  UnparticipateRsp createEmptyInstance() => create();
  static $pb.PbList<UnparticipateRsp> createRepeated() => $pb.PbList<UnparticipateRsp>();
  @$core.pragma('dart2js:noInline')
  static UnparticipateRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnparticipateRsp>(create);
  static UnparticipateRsp? _defaultInstance;
}

/// 帖子列表查询,支持多种查询方式
class PostsReq extends $pb.GeneratedMessage {
  factory PostsReq({
    PostsReq_Type? type,
    $core.bool? video,
    $core.bool? image,
    $core.bool? audio,
    $core.bool? vote,
    $core.bool? link,
    PostsReq_Order? order,
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (video != null) {
      $result.video = video;
    }
    if (image != null) {
      $result.image = image;
    }
    if (audio != null) {
      $result.audio = audio;
    }
    if (vote != null) {
      $result.vote = vote;
    }
    if (link != null) {
      $result.link = link;
    }
    if (order != null) {
      $result.order = order;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  PostsReq._() : super();
  factory PostsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..e<PostsReq_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: PostsReq_Type.Community, valueOf: PostsReq_Type.valueOf, enumValues: PostsReq_Type.values)
    ..aOB(11, _omitFieldNames ? '' : 'video')
    ..aOB(12, _omitFieldNames ? '' : 'image')
    ..aOB(13, _omitFieldNames ? '' : 'audio')
    ..aOB(14, _omitFieldNames ? '' : 'vote')
    ..aOB(15, _omitFieldNames ? '' : 'link')
    ..e<PostsReq_Order>(21, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OE, defaultOrMaker: PostsReq_Order.New, valueOf: PostsReq_Order.valueOf, enumValues: PostsReq_Order.values)
    ..aInt64(22, _omitFieldNames ? '' : 'offset')
    ..aInt64(23, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostsReq clone() => PostsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostsReq copyWith(void Function(PostsReq) updates) => super.copyWith((message) => updates(message as PostsReq)) as PostsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostsReq create() => PostsReq._();
  PostsReq createEmptyInstance() => create();
  static $pb.PbList<PostsReq> createRepeated() => $pb.PbList<PostsReq>();
  @$core.pragma('dart2js:noInline')
  static PostsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostsReq>(create);
  static PostsReq? _defaultInstance;

  @$pb.TagNumber(1)
  PostsReq_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(PostsReq_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// 过滤, and关系
  @$pb.TagNumber(11)
  $core.bool get video => $_getBF(1);
  @$pb.TagNumber(11)
  set video($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasVideo() => $_has(1);
  @$pb.TagNumber(11)
  void clearVideo() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get image => $_getBF(2);
  @$pb.TagNumber(12)
  set image($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(12)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(12)
  void clearImage() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get audio => $_getBF(3);
  @$pb.TagNumber(13)
  set audio($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(13)
  $core.bool hasAudio() => $_has(3);
  @$pb.TagNumber(13)
  void clearAudio() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get vote => $_getBF(4);
  @$pb.TagNumber(14)
  set vote($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(14)
  $core.bool hasVote() => $_has(4);
  @$pb.TagNumber(14)
  void clearVote() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get link => $_getBF(5);
  @$pb.TagNumber(15)
  set link($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(15)
  $core.bool hasLink() => $_has(5);
  @$pb.TagNumber(15)
  void clearLink() => clearField(15);

  @$pb.TagNumber(21)
  PostsReq_Order get order => $_getN(6);
  @$pb.TagNumber(21)
  set order(PostsReq_Order v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasOrder() => $_has(6);
  @$pb.TagNumber(21)
  void clearOrder() => clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get offset => $_getI64(7);
  @$pb.TagNumber(22)
  set offset($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(22)
  $core.bool hasOffset() => $_has(7);
  @$pb.TagNumber(22)
  void clearOffset() => clearField(22);

  @$pb.TagNumber(23)
  $fixnum.Int64 get count => $_getI64(8);
  @$pb.TagNumber(23)
  set count($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(23)
  $core.bool hasCount() => $_has(8);
  @$pb.TagNumber(23)
  void clearCount() => clearField(23);
}

class PostsRsp extends $pb.GeneratedMessage {
  factory PostsRsp({
    $core.Iterable<Post>? posts,
  }) {
    final $result = create();
    if (posts != null) {
      $result.posts.addAll(posts);
    }
    return $result;
  }
  PostsRsp._() : super();
  factory PostsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Post>(1, _omitFieldNames ? '' : 'posts', $pb.PbFieldType.PM, subBuilder: Post.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostsRsp clone() => PostsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostsRsp copyWith(void Function(PostsRsp) updates) => super.copyWith((message) => updates(message as PostsRsp)) as PostsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostsRsp create() => PostsRsp._();
  PostsRsp createEmptyInstance() => create();
  static $pb.PbList<PostsRsp> createRepeated() => $pb.PbList<PostsRsp>();
  @$core.pragma('dart2js:noInline')
  static PostsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostsRsp>(create);
  static PostsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Post> get posts => $_getList(0);
}

class PostDetailReq extends $pb.GeneratedMessage {
  factory PostDetailReq({
    $fixnum.Int64? postId,
  }) {
    final $result = create();
    if (postId != null) {
      $result.postId = postId;
    }
    return $result;
  }
  PostDetailReq._() : super();
  factory PostDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostDetailReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'postId', protoName: 'postId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostDetailReq clone() => PostDetailReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostDetailReq copyWith(void Function(PostDetailReq) updates) => super.copyWith((message) => updates(message as PostDetailReq)) as PostDetailReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostDetailReq create() => PostDetailReq._();
  PostDetailReq createEmptyInstance() => create();
  static $pb.PbList<PostDetailReq> createRepeated() => $pb.PbList<PostDetailReq>();
  @$core.pragma('dart2js:noInline')
  static PostDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostDetailReq>(create);
  static PostDetailReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get postId => $_getI64(0);
  @$pb.TagNumber(1)
  set postId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);
}

class PostDetailRsp extends $pb.GeneratedMessage {
  factory PostDetailRsp({
    Post? post,
    $core.Iterable<Comment>? comments,
  }) {
    final $result = create();
    if (post != null) {
      $result.post = post;
    }
    if (comments != null) {
      $result.comments.addAll(comments);
    }
    return $result;
  }
  PostDetailRsp._() : super();
  factory PostDetailRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostDetailRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostDetailRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Post>(1, _omitFieldNames ? '' : 'post', subBuilder: Post.create)
    ..pc<Comment>(2, _omitFieldNames ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: Comment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostDetailRsp clone() => PostDetailRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostDetailRsp copyWith(void Function(PostDetailRsp) updates) => super.copyWith((message) => updates(message as PostDetailRsp)) as PostDetailRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostDetailRsp create() => PostDetailRsp._();
  PostDetailRsp createEmptyInstance() => create();
  static $pb.PbList<PostDetailRsp> createRepeated() => $pb.PbList<PostDetailRsp>();
  @$core.pragma('dart2js:noInline')
  static PostDetailRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostDetailRsp>(create);
  static PostDetailRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Post get post => $_getN(0);
  @$pb.TagNumber(1)
  set post(Post v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPost() => $_has(0);
  @$pb.TagNumber(1)
  void clearPost() => clearField(1);
  @$pb.TagNumber(1)
  Post ensurePost() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Comment> get comments => $_getList(1);
}

class CommentsReq extends $pb.GeneratedMessage {
  factory CommentsReq({
    $fixnum.Int64? refId,
    $core.int? refType,
    CommentsReq_Order? order,
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    if (order != null) {
      $result.order = order;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  CommentsReq._() : super();
  factory CommentsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommentsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommentsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..e<CommentsReq_Order>(10, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OE, defaultOrMaker: CommentsReq_Order.New, valueOf: CommentsReq_Order.valueOf, enumValues: CommentsReq_Order.values)
    ..aInt64(11, _omitFieldNames ? '' : 'offset')
    ..aInt64(12, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommentsReq clone() => CommentsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommentsReq copyWith(void Function(CommentsReq) updates) => super.copyWith((message) => updates(message as CommentsReq)) as CommentsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommentsReq create() => CommentsReq._();
  CommentsReq createEmptyInstance() => create();
  static $pb.PbList<CommentsReq> createRepeated() => $pb.PbList<CommentsReq>();
  @$core.pragma('dart2js:noInline')
  static CommentsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommentsReq>(create);
  static CommentsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);

  @$pb.TagNumber(10)
  CommentsReq_Order get order => $_getN(2);
  @$pb.TagNumber(10)
  set order(CommentsReq_Order v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(10)
  void clearOrder() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get offset => $_getI64(3);
  @$pb.TagNumber(11)
  set offset($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(11)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(11)
  void clearOffset() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get count => $_getI64(4);
  @$pb.TagNumber(12)
  set count($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(12)
  $core.bool hasCount() => $_has(4);
  @$pb.TagNumber(12)
  void clearCount() => clearField(12);
}

class CommentsRsp extends $pb.GeneratedMessage {
  factory CommentsRsp({
    $core.Iterable<Comment>? comments,
  }) {
    final $result = create();
    if (comments != null) {
      $result.comments.addAll(comments);
    }
    return $result;
  }
  CommentsRsp._() : super();
  factory CommentsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommentsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommentsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Comment>(1, _omitFieldNames ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: Comment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommentsRsp clone() => CommentsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommentsRsp copyWith(void Function(CommentsRsp) updates) => super.copyWith((message) => updates(message as CommentsRsp)) as CommentsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommentsRsp create() => CommentsRsp._();
  CommentsRsp createEmptyInstance() => create();
  static $pb.PbList<CommentsRsp> createRepeated() => $pb.PbList<CommentsRsp>();
  @$core.pragma('dart2js:noInline')
  static CommentsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommentsRsp>(create);
  static CommentsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Comment> get comments => $_getList(0);
}

class CommentDetailReq extends $pb.GeneratedMessage {
  factory CommentDetailReq({
    $fixnum.Int64? commentId,
  }) {
    final $result = create();
    if (commentId != null) {
      $result.commentId = commentId;
    }
    return $result;
  }
  CommentDetailReq._() : super();
  factory CommentDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommentDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommentDetailReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'commentId', protoName: 'commentId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommentDetailReq clone() => CommentDetailReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommentDetailReq copyWith(void Function(CommentDetailReq) updates) => super.copyWith((message) => updates(message as CommentDetailReq)) as CommentDetailReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommentDetailReq create() => CommentDetailReq._();
  CommentDetailReq createEmptyInstance() => create();
  static $pb.PbList<CommentDetailReq> createRepeated() => $pb.PbList<CommentDetailReq>();
  @$core.pragma('dart2js:noInline')
  static CommentDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommentDetailReq>(create);
  static CommentDetailReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get commentId => $_getI64(0);
  @$pb.TagNumber(1)
  set commentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommentId() => clearField(1);
}

class CommentDetailRsp extends $pb.GeneratedMessage {
  factory CommentDetailRsp({
    Comment? comment,
    $core.Iterable<Reply>? replies,
  }) {
    final $result = create();
    if (comment != null) {
      $result.comment = comment;
    }
    if (replies != null) {
      $result.replies.addAll(replies);
    }
    return $result;
  }
  CommentDetailRsp._() : super();
  factory CommentDetailRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommentDetailRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommentDetailRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Comment>(1, _omitFieldNames ? '' : 'comment', subBuilder: Comment.create)
    ..pc<Reply>(2, _omitFieldNames ? '' : 'replies', $pb.PbFieldType.PM, subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommentDetailRsp clone() => CommentDetailRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommentDetailRsp copyWith(void Function(CommentDetailRsp) updates) => super.copyWith((message) => updates(message as CommentDetailRsp)) as CommentDetailRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommentDetailRsp create() => CommentDetailRsp._();
  CommentDetailRsp createEmptyInstance() => create();
  static $pb.PbList<CommentDetailRsp> createRepeated() => $pb.PbList<CommentDetailRsp>();
  @$core.pragma('dart2js:noInline')
  static CommentDetailRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommentDetailRsp>(create);
  static CommentDetailRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Comment get comment => $_getN(0);
  @$pb.TagNumber(1)
  set comment(Comment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasComment() => $_has(0);
  @$pb.TagNumber(1)
  void clearComment() => clearField(1);
  @$pb.TagNumber(1)
  Comment ensureComment() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Reply> get replies => $_getList(1);
}

class RepliesReq extends $pb.GeneratedMessage {
  factory RepliesReq({
    $fixnum.Int64? commentId,
    $fixnum.Int64? talkId,
    RepliesReq_Order? order,
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (commentId != null) {
      $result.commentId = commentId;
    }
    if (talkId != null) {
      $result.talkId = talkId;
    }
    if (order != null) {
      $result.order = order;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  RepliesReq._() : super();
  factory RepliesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RepliesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RepliesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'commentId', protoName: 'commentId')
    ..aInt64(2, _omitFieldNames ? '' : 'talkId', protoName: 'talkId')
    ..e<RepliesReq_Order>(10, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OE, defaultOrMaker: RepliesReq_Order.New, valueOf: RepliesReq_Order.valueOf, enumValues: RepliesReq_Order.values)
    ..aInt64(11, _omitFieldNames ? '' : 'offset')
    ..aInt64(12, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RepliesReq clone() => RepliesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RepliesReq copyWith(void Function(RepliesReq) updates) => super.copyWith((message) => updates(message as RepliesReq)) as RepliesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepliesReq create() => RepliesReq._();
  RepliesReq createEmptyInstance() => create();
  static $pb.PbList<RepliesReq> createRepeated() => $pb.PbList<RepliesReq>();
  @$core.pragma('dart2js:noInline')
  static RepliesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepliesReq>(create);
  static RepliesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get commentId => $_getI64(0);
  @$pb.TagNumber(1)
  set commentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommentId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get talkId => $_getI64(1);
  @$pb.TagNumber(2)
  set talkId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTalkId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTalkId() => clearField(2);

  @$pb.TagNumber(10)
  RepliesReq_Order get order => $_getN(2);
  @$pb.TagNumber(10)
  set order(RepliesReq_Order v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(10)
  void clearOrder() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get offset => $_getI64(3);
  @$pb.TagNumber(11)
  set offset($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(11)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(11)
  void clearOffset() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get count => $_getI64(4);
  @$pb.TagNumber(12)
  set count($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(12)
  $core.bool hasCount() => $_has(4);
  @$pb.TagNumber(12)
  void clearCount() => clearField(12);
}

class RepliesRsp extends $pb.GeneratedMessage {
  factory RepliesRsp({
    $core.Iterable<Reply>? replies,
  }) {
    final $result = create();
    if (replies != null) {
      $result.replies.addAll(replies);
    }
    return $result;
  }
  RepliesRsp._() : super();
  factory RepliesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RepliesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RepliesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Reply>(1, _omitFieldNames ? '' : 'replies', $pb.PbFieldType.PM, subBuilder: Reply.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RepliesRsp clone() => RepliesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RepliesRsp copyWith(void Function(RepliesRsp) updates) => super.copyWith((message) => updates(message as RepliesRsp)) as RepliesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepliesRsp create() => RepliesRsp._();
  RepliesRsp createEmptyInstance() => create();
  static $pb.PbList<RepliesRsp> createRepeated() => $pb.PbList<RepliesRsp>();
  @$core.pragma('dart2js:noInline')
  static RepliesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepliesRsp>(create);
  static RepliesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Reply> get replies => $_getList(0);
}

class BarragesReq extends $pb.GeneratedMessage {
  factory BarragesReq({
    $fixnum.Int64? refId,
    $core.int? refType,
    $fixnum.Int64? playAt,
  }) {
    final $result = create();
    if (refId != null) {
      $result.refId = refId;
    }
    if (refType != null) {
      $result.refType = refType;
    }
    if (playAt != null) {
      $result.playAt = playAt;
    }
    return $result;
  }
  BarragesReq._() : super();
  factory BarragesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BarragesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BarragesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'refId', protoName: 'refId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'refType', $pb.PbFieldType.O3, protoName: 'refType')
    ..aInt64(3, _omitFieldNames ? '' : 'playAt', protoName: 'playAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BarragesReq clone() => BarragesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BarragesReq copyWith(void Function(BarragesReq) updates) => super.copyWith((message) => updates(message as BarragesReq)) as BarragesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BarragesReq create() => BarragesReq._();
  BarragesReq createEmptyInstance() => create();
  static $pb.PbList<BarragesReq> createRepeated() => $pb.PbList<BarragesReq>();
  @$core.pragma('dart2js:noInline')
  static BarragesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BarragesReq>(create);
  static BarragesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get refId => $_getI64(0);
  @$pb.TagNumber(1)
  set refId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refType => $_getIZ(1);
  @$pb.TagNumber(2)
  set refType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get playAt => $_getI64(2);
  @$pb.TagNumber(3)
  set playAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlayAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayAt() => clearField(3);
}

class BarragesRsp extends $pb.GeneratedMessage {
  factory BarragesRsp({
    $core.Iterable<Barrage>? barrages,
  }) {
    final $result = create();
    if (barrages != null) {
      $result.barrages.addAll(barrages);
    }
    return $result;
  }
  BarragesRsp._() : super();
  factory BarragesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BarragesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BarragesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Barrage>(1, _omitFieldNames ? '' : 'barrages', $pb.PbFieldType.PM, subBuilder: Barrage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BarragesRsp clone() => BarragesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BarragesRsp copyWith(void Function(BarragesRsp) updates) => super.copyWith((message) => updates(message as BarragesRsp)) as BarragesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BarragesRsp create() => BarragesRsp._();
  BarragesRsp createEmptyInstance() => create();
  static $pb.PbList<BarragesRsp> createRepeated() => $pb.PbList<BarragesRsp>();
  @$core.pragma('dart2js:noInline')
  static BarragesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BarragesRsp>(create);
  static BarragesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Barrage> get barrages => $_getList(0);
}

/// 携带评论对象的评论,用于从我的视角展示评论
class CommentRef extends $pb.GeneratedMessage {
  factory CommentRef({
    Comment? comment,
    Post? post,
  }) {
    final $result = create();
    if (comment != null) {
      $result.comment = comment;
    }
    if (post != null) {
      $result.post = post;
    }
    return $result;
  }
  CommentRef._() : super();
  factory CommentRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommentRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommentRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Comment>(1, _omitFieldNames ? '' : 'comment', subBuilder: Comment.create)
    ..aOM<Post>(2, _omitFieldNames ? '' : 'post', subBuilder: Post.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommentRef clone() => CommentRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommentRef copyWith(void Function(CommentRef) updates) => super.copyWith((message) => updates(message as CommentRef)) as CommentRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommentRef create() => CommentRef._();
  CommentRef createEmptyInstance() => create();
  static $pb.PbList<CommentRef> createRepeated() => $pb.PbList<CommentRef>();
  @$core.pragma('dart2js:noInline')
  static CommentRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommentRef>(create);
  static CommentRef? _defaultInstance;

  @$pb.TagNumber(1)
  Comment get comment => $_getN(0);
  @$pb.TagNumber(1)
  set comment(Comment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasComment() => $_has(0);
  @$pb.TagNumber(1)
  void clearComment() => clearField(1);
  @$pb.TagNumber(1)
  Comment ensureComment() => $_ensure(0);

  @$pb.TagNumber(2)
  Post get post => $_getN(1);
  @$pb.TagNumber(2)
  set post(Post v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPost() => $_has(1);
  @$pb.TagNumber(2)
  void clearPost() => clearField(2);
  @$pb.TagNumber(2)
  Post ensurePost() => $_ensure(1);
}

/// 这里是链: 帖子->评论->视频 (我的视角查询时反向引用)
class VideoRef extends $pb.GeneratedMessage {
  factory VideoRef({
    Video? video,
    Post? post,
    CommentRef? comment,
  }) {
    final $result = create();
    if (video != null) {
      $result.video = video;
    }
    if (post != null) {
      $result.post = post;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  VideoRef._() : super();
  factory VideoRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VideoRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Video>(1, _omitFieldNames ? '' : 'video', subBuilder: Video.create)
    ..aOM<Post>(2, _omitFieldNames ? '' : 'post', subBuilder: Post.create)
    ..aOM<CommentRef>(3, _omitFieldNames ? '' : 'comment', subBuilder: CommentRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoRef clone() => VideoRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoRef copyWith(void Function(VideoRef) updates) => super.copyWith((message) => updates(message as VideoRef)) as VideoRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoRef create() => VideoRef._();
  VideoRef createEmptyInstance() => create();
  static $pb.PbList<VideoRef> createRepeated() => $pb.PbList<VideoRef>();
  @$core.pragma('dart2js:noInline')
  static VideoRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoRef>(create);
  static VideoRef? _defaultInstance;

  @$pb.TagNumber(1)
  Video get video => $_getN(0);
  @$pb.TagNumber(1)
  set video(Video v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVideo() => $_has(0);
  @$pb.TagNumber(1)
  void clearVideo() => clearField(1);
  @$pb.TagNumber(1)
  Video ensureVideo() => $_ensure(0);

  @$pb.TagNumber(2)
  Post get post => $_getN(1);
  @$pb.TagNumber(2)
  set post(Post v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPost() => $_has(1);
  @$pb.TagNumber(2)
  void clearPost() => clearField(2);
  @$pb.TagNumber(2)
  Post ensurePost() => $_ensure(1);

  @$pb.TagNumber(3)
  CommentRef get comment => $_getN(2);
  @$pb.TagNumber(3)
  set comment(CommentRef v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasComment() => $_has(2);
  @$pb.TagNumber(3)
  void clearComment() => clearField(3);
  @$pb.TagNumber(3)
  CommentRef ensureComment() => $_ensure(2);
}

class BallotRef extends $pb.GeneratedMessage {
  factory BallotRef({
    Ballot? ballot,
    Vote? vote,
    Post? post,
  }) {
    final $result = create();
    if (ballot != null) {
      $result.ballot = ballot;
    }
    if (vote != null) {
      $result.vote = vote;
    }
    if (post != null) {
      $result.post = post;
    }
    return $result;
  }
  BallotRef._() : super();
  factory BallotRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BallotRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BallotRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOM<Ballot>(1, _omitFieldNames ? '' : 'ballot', subBuilder: Ballot.create)
    ..aOM<Vote>(2, _omitFieldNames ? '' : 'vote', subBuilder: Vote.create)
    ..aOM<Post>(3, _omitFieldNames ? '' : 'post', subBuilder: Post.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BallotRef clone() => BallotRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BallotRef copyWith(void Function(BallotRef) updates) => super.copyWith((message) => updates(message as BallotRef)) as BallotRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BallotRef create() => BallotRef._();
  BallotRef createEmptyInstance() => create();
  static $pb.PbList<BallotRef> createRepeated() => $pb.PbList<BallotRef>();
  @$core.pragma('dart2js:noInline')
  static BallotRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BallotRef>(create);
  static BallotRef? _defaultInstance;

  @$pb.TagNumber(1)
  Ballot get ballot => $_getN(0);
  @$pb.TagNumber(1)
  set ballot(Ballot v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBallot() => $_has(0);
  @$pb.TagNumber(1)
  void clearBallot() => clearField(1);
  @$pb.TagNumber(1)
  Ballot ensureBallot() => $_ensure(0);

  @$pb.TagNumber(2)
  Vote get vote => $_getN(1);
  @$pb.TagNumber(2)
  set vote(Vote v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVote() => $_has(1);
  @$pb.TagNumber(2)
  void clearVote() => clearField(2);
  @$pb.TagNumber(2)
  Vote ensureVote() => $_ensure(1);

  @$pb.TagNumber(3)
  Post get post => $_getN(2);
  @$pb.TagNumber(3)
  set post(Post v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPost() => $_has(2);
  @$pb.TagNumber(3)
  void clearPost() => clearField(3);
  @$pb.TagNumber(3)
  Post ensurePost() => $_ensure(2);
}

/// 我的帖子
class UserPostsReq extends $pb.GeneratedMessage {
  factory UserPostsReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserPostsReq._() : super();
  factory UserPostsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserPostsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserPostsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserPostsReq clone() => UserPostsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserPostsReq copyWith(void Function(UserPostsReq) updates) => super.copyWith((message) => updates(message as UserPostsReq)) as UserPostsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPostsReq create() => UserPostsReq._();
  UserPostsReq createEmptyInstance() => create();
  static $pb.PbList<UserPostsReq> createRepeated() => $pb.PbList<UserPostsReq>();
  @$core.pragma('dart2js:noInline')
  static UserPostsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserPostsReq>(create);
  static UserPostsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserPostsRsp extends $pb.GeneratedMessage {
  factory UserPostsRsp({
    $core.Iterable<Post>? posts,
  }) {
    final $result = create();
    if (posts != null) {
      $result.posts.addAll(posts);
    }
    return $result;
  }
  UserPostsRsp._() : super();
  factory UserPostsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserPostsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserPostsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Post>(1, _omitFieldNames ? '' : 'posts', $pb.PbFieldType.PM, subBuilder: Post.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserPostsRsp clone() => UserPostsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserPostsRsp copyWith(void Function(UserPostsRsp) updates) => super.copyWith((message) => updates(message as UserPostsRsp)) as UserPostsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPostsRsp create() => UserPostsRsp._();
  UserPostsRsp createEmptyInstance() => create();
  static $pb.PbList<UserPostsRsp> createRepeated() => $pb.PbList<UserPostsRsp>();
  @$core.pragma('dart2js:noInline')
  static UserPostsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserPostsRsp>(create);
  static UserPostsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Post> get posts => $_getList(0);
}

/// 我的评论
class UserCommentsReq extends $pb.GeneratedMessage {
  factory UserCommentsReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserCommentsReq._() : super();
  factory UserCommentsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCommentsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserCommentsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCommentsReq clone() => UserCommentsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCommentsReq copyWith(void Function(UserCommentsReq) updates) => super.copyWith((message) => updates(message as UserCommentsReq)) as UserCommentsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserCommentsReq create() => UserCommentsReq._();
  UserCommentsReq createEmptyInstance() => create();
  static $pb.PbList<UserCommentsReq> createRepeated() => $pb.PbList<UserCommentsReq>();
  @$core.pragma('dart2js:noInline')
  static UserCommentsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCommentsReq>(create);
  static UserCommentsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserCommentsRsp extends $pb.GeneratedMessage {
  factory UserCommentsRsp({
    $core.Iterable<CommentRef>? comments,
  }) {
    final $result = create();
    if (comments != null) {
      $result.comments.addAll(comments);
    }
    return $result;
  }
  UserCommentsRsp._() : super();
  factory UserCommentsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCommentsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserCommentsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<CommentRef>(1, _omitFieldNames ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: CommentRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCommentsRsp clone() => UserCommentsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCommentsRsp copyWith(void Function(UserCommentsRsp) updates) => super.copyWith((message) => updates(message as UserCommentsRsp)) as UserCommentsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserCommentsRsp create() => UserCommentsRsp._();
  UserCommentsRsp createEmptyInstance() => create();
  static $pb.PbList<UserCommentsRsp> createRepeated() => $pb.PbList<UserCommentsRsp>();
  @$core.pragma('dart2js:noInline')
  static UserCommentsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCommentsRsp>(create);
  static UserCommentsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CommentRef> get comments => $_getList(0);
}

/// 我的插眼
class UserWatchsReq extends $pb.GeneratedMessage {
  factory UserWatchsReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserWatchsReq._() : super();
  factory UserWatchsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserWatchsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserWatchsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserWatchsReq clone() => UserWatchsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserWatchsReq copyWith(void Function(UserWatchsReq) updates) => super.copyWith((message) => updates(message as UserWatchsReq)) as UserWatchsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserWatchsReq create() => UserWatchsReq._();
  UserWatchsReq createEmptyInstance() => create();
  static $pb.PbList<UserWatchsReq> createRepeated() => $pb.PbList<UserWatchsReq>();
  @$core.pragma('dart2js:noInline')
  static UserWatchsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserWatchsReq>(create);
  static UserWatchsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserWatchsRsp extends $pb.GeneratedMessage {
  factory UserWatchsRsp({
    $core.Iterable<CommentRef>? comments,
    $core.Iterable<Post>? posts,
  }) {
    final $result = create();
    if (comments != null) {
      $result.comments.addAll(comments);
    }
    if (posts != null) {
      $result.posts.addAll(posts);
    }
    return $result;
  }
  UserWatchsRsp._() : super();
  factory UserWatchsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserWatchsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserWatchsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<CommentRef>(1, _omitFieldNames ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: CommentRef.create)
    ..pc<Post>(2, _omitFieldNames ? '' : 'posts', $pb.PbFieldType.PM, subBuilder: Post.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserWatchsRsp clone() => UserWatchsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserWatchsRsp copyWith(void Function(UserWatchsRsp) updates) => super.copyWith((message) => updates(message as UserWatchsRsp)) as UserWatchsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserWatchsRsp create() => UserWatchsRsp._();
  UserWatchsRsp createEmptyInstance() => create();
  static $pb.PbList<UserWatchsRsp> createRepeated() => $pb.PbList<UserWatchsRsp>();
  @$core.pragma('dart2js:noInline')
  static UserWatchsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserWatchsRsp>(create);
  static UserWatchsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CommentRef> get comments => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Post> get posts => $_getList(1);
}

/// 我的点赞
class UserLikesReq extends $pb.GeneratedMessage {
  factory UserLikesReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserLikesReq._() : super();
  factory UserLikesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLikesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLikesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLikesReq clone() => UserLikesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLikesReq copyWith(void Function(UserLikesReq) updates) => super.copyWith((message) => updates(message as UserLikesReq)) as UserLikesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLikesReq create() => UserLikesReq._();
  UserLikesReq createEmptyInstance() => create();
  static $pb.PbList<UserLikesReq> createRepeated() => $pb.PbList<UserLikesReq>();
  @$core.pragma('dart2js:noInline')
  static UserLikesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLikesReq>(create);
  static UserLikesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserLikesRsp extends $pb.GeneratedMessage {
  factory UserLikesRsp({
    $core.Iterable<Post>? posts,
    $core.Iterable<CommentRef>? comments,
    $core.Iterable<VideoRef>? videos,
  }) {
    final $result = create();
    if (posts != null) {
      $result.posts.addAll(posts);
    }
    if (comments != null) {
      $result.comments.addAll(comments);
    }
    if (videos != null) {
      $result.videos.addAll(videos);
    }
    return $result;
  }
  UserLikesRsp._() : super();
  factory UserLikesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLikesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLikesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Post>(1, _omitFieldNames ? '' : 'posts', $pb.PbFieldType.PM, subBuilder: Post.create)
    ..pc<CommentRef>(2, _omitFieldNames ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: CommentRef.create)
    ..pc<VideoRef>(3, _omitFieldNames ? '' : 'videos', $pb.PbFieldType.PM, subBuilder: VideoRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLikesRsp clone() => UserLikesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLikesRsp copyWith(void Function(UserLikesRsp) updates) => super.copyWith((message) => updates(message as UserLikesRsp)) as UserLikesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLikesRsp create() => UserLikesRsp._();
  UserLikesRsp createEmptyInstance() => create();
  static $pb.PbList<UserLikesRsp> createRepeated() => $pb.PbList<UserLikesRsp>();
  @$core.pragma('dart2js:noInline')
  static UserLikesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLikesRsp>(create);
  static UserLikesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Post> get posts => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<CommentRef> get comments => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<VideoRef> get videos => $_getList(2);
}

/// 关注视角用户
class User extends $pb.GeneratedMessage {
  factory User({
    $fixnum.Int64? appId,
    $fixnum.Int64? userId,
    $core.String? appUserId,
    $core.String? username,
    $core.String? avatar,
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
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aInt64(2, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..aOS(4, _omitFieldNames ? '' : 'username')
    ..aOS(5, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get username => $_getSZ(3);
  @$pb.TagNumber(4)
  set username($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUsername() => $_has(3);
  @$pb.TagNumber(4)
  void clearUsername() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);
}

/// 关注我的
class UserFollowersReq extends $pb.GeneratedMessage {
  factory UserFollowersReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserFollowersReq._() : super();
  factory UserFollowersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFollowersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFollowersReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFollowersReq clone() => UserFollowersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFollowersReq copyWith(void Function(UserFollowersReq) updates) => super.copyWith((message) => updates(message as UserFollowersReq)) as UserFollowersReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFollowersReq create() => UserFollowersReq._();
  UserFollowersReq createEmptyInstance() => create();
  static $pb.PbList<UserFollowersReq> createRepeated() => $pb.PbList<UserFollowersReq>();
  @$core.pragma('dart2js:noInline')
  static UserFollowersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFollowersReq>(create);
  static UserFollowersReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserFollowersRsp extends $pb.GeneratedMessage {
  factory UserFollowersRsp({
    $core.Iterable<User>? followers,
  }) {
    final $result = create();
    if (followers != null) {
      $result.followers.addAll(followers);
    }
    return $result;
  }
  UserFollowersRsp._() : super();
  factory UserFollowersRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFollowersRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFollowersRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<User>(1, _omitFieldNames ? '' : 'followers', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFollowersRsp clone() => UserFollowersRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFollowersRsp copyWith(void Function(UserFollowersRsp) updates) => super.copyWith((message) => updates(message as UserFollowersRsp)) as UserFollowersRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFollowersRsp create() => UserFollowersRsp._();
  UserFollowersRsp createEmptyInstance() => create();
  static $pb.PbList<UserFollowersRsp> createRepeated() => $pb.PbList<UserFollowersRsp>();
  @$core.pragma('dart2js:noInline')
  static UserFollowersRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFollowersRsp>(create);
  static UserFollowersRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get followers => $_getList(0);
}

/// 我的关注
class UserFolloweesReq extends $pb.GeneratedMessage {
  factory UserFolloweesReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserFolloweesReq._() : super();
  factory UserFolloweesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFolloweesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFolloweesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFolloweesReq clone() => UserFolloweesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFolloweesReq copyWith(void Function(UserFolloweesReq) updates) => super.copyWith((message) => updates(message as UserFolloweesReq)) as UserFolloweesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFolloweesReq create() => UserFolloweesReq._();
  UserFolloweesReq createEmptyInstance() => create();
  static $pb.PbList<UserFolloweesReq> createRepeated() => $pb.PbList<UserFolloweesReq>();
  @$core.pragma('dart2js:noInline')
  static UserFolloweesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFolloweesReq>(create);
  static UserFolloweesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserFolloweesRsp extends $pb.GeneratedMessage {
  factory UserFolloweesRsp({
    $core.Iterable<User>? followees,
  }) {
    final $result = create();
    if (followees != null) {
      $result.followees.addAll(followees);
    }
    return $result;
  }
  UserFolloweesRsp._() : super();
  factory UserFolloweesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFolloweesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFolloweesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<User>(1, _omitFieldNames ? '' : 'followees', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFolloweesRsp clone() => UserFolloweesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFolloweesRsp copyWith(void Function(UserFolloweesRsp) updates) => super.copyWith((message) => updates(message as UserFolloweesRsp)) as UserFolloweesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFolloweesRsp create() => UserFolloweesRsp._();
  UserFolloweesRsp createEmptyInstance() => create();
  static $pb.PbList<UserFolloweesRsp> createRepeated() => $pb.PbList<UserFolloweesRsp>();
  @$core.pragma('dart2js:noInline')
  static UserFolloweesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFolloweesRsp>(create);
  static UserFolloweesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get followees => $_getList(0);
}

/// 我的收藏
class UserFavoritesReq extends $pb.GeneratedMessage {
  factory UserFavoritesReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserFavoritesReq._() : super();
  factory UserFavoritesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFavoritesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFavoritesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFavoritesReq clone() => UserFavoritesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFavoritesReq copyWith(void Function(UserFavoritesReq) updates) => super.copyWith((message) => updates(message as UserFavoritesReq)) as UserFavoritesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFavoritesReq create() => UserFavoritesReq._();
  UserFavoritesReq createEmptyInstance() => create();
  static $pb.PbList<UserFavoritesReq> createRepeated() => $pb.PbList<UserFavoritesReq>();
  @$core.pragma('dart2js:noInline')
  static UserFavoritesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFavoritesReq>(create);
  static UserFavoritesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserFavoritesRsp extends $pb.GeneratedMessage {
  factory UserFavoritesRsp({
    $core.Iterable<Post>? posts,
  }) {
    final $result = create();
    if (posts != null) {
      $result.posts.addAll(posts);
    }
    return $result;
  }
  UserFavoritesRsp._() : super();
  factory UserFavoritesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFavoritesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFavoritesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Post>(1, _omitFieldNames ? '' : 'posts', $pb.PbFieldType.PM, subBuilder: Post.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFavoritesRsp clone() => UserFavoritesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFavoritesRsp copyWith(void Function(UserFavoritesRsp) updates) => super.copyWith((message) => updates(message as UserFavoritesRsp)) as UserFavoritesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFavoritesRsp create() => UserFavoritesRsp._();
  UserFavoritesRsp createEmptyInstance() => create();
  static $pb.PbList<UserFavoritesRsp> createRepeated() => $pb.PbList<UserFavoritesRsp>();
  @$core.pragma('dart2js:noInline')
  static UserFavoritesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFavoritesRsp>(create);
  static UserFavoritesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Post> get posts => $_getList(0);
}

/// 我参与的话题
class UserParticipatesReq extends $pb.GeneratedMessage {
  factory UserParticipatesReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserParticipatesReq._() : super();
  factory UserParticipatesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserParticipatesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserParticipatesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserParticipatesReq clone() => UserParticipatesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserParticipatesReq copyWith(void Function(UserParticipatesReq) updates) => super.copyWith((message) => updates(message as UserParticipatesReq)) as UserParticipatesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserParticipatesReq create() => UserParticipatesReq._();
  UserParticipatesReq createEmptyInstance() => create();
  static $pb.PbList<UserParticipatesReq> createRepeated() => $pb.PbList<UserParticipatesReq>();
  @$core.pragma('dart2js:noInline')
  static UserParticipatesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserParticipatesReq>(create);
  static UserParticipatesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserParticipatesRsp extends $pb.GeneratedMessage {
  factory UserParticipatesRsp({
    $core.Iterable<Topic>? topics,
  }) {
    final $result = create();
    if (topics != null) {
      $result.topics.addAll(topics);
    }
    return $result;
  }
  UserParticipatesRsp._() : super();
  factory UserParticipatesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserParticipatesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserParticipatesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Topic>(1, _omitFieldNames ? '' : 'topics', $pb.PbFieldType.PM, subBuilder: Topic.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserParticipatesRsp clone() => UserParticipatesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserParticipatesRsp copyWith(void Function(UserParticipatesRsp) updates) => super.copyWith((message) => updates(message as UserParticipatesRsp)) as UserParticipatesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserParticipatesRsp create() => UserParticipatesRsp._();
  UserParticipatesRsp createEmptyInstance() => create();
  static $pb.PbList<UserParticipatesRsp> createRepeated() => $pb.PbList<UserParticipatesRsp>();
  @$core.pragma('dart2js:noInline')
  static UserParticipatesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserParticipatesRsp>(create);
  static UserParticipatesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Topic> get topics => $_getList(0);
}

/// 我的投票记录
class UserBallotsReq extends $pb.GeneratedMessage {
  factory UserBallotsReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserBallotsReq._() : super();
  factory UserBallotsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBallotsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserBallotsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBallotsReq clone() => UserBallotsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBallotsReq copyWith(void Function(UserBallotsReq) updates) => super.copyWith((message) => updates(message as UserBallotsReq)) as UserBallotsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserBallotsReq create() => UserBallotsReq._();
  UserBallotsReq createEmptyInstance() => create();
  static $pb.PbList<UserBallotsReq> createRepeated() => $pb.PbList<UserBallotsReq>();
  @$core.pragma('dart2js:noInline')
  static UserBallotsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBallotsReq>(create);
  static UserBallotsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserBallotsRsp extends $pb.GeneratedMessage {
  factory UserBallotsRsp({
    $core.Iterable<BallotRef>? ballots,
  }) {
    final $result = create();
    if (ballots != null) {
      $result.ballots.addAll(ballots);
    }
    return $result;
  }
  UserBallotsRsp._() : super();
  factory UserBallotsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBallotsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserBallotsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<BallotRef>(1, _omitFieldNames ? '' : 'ballots', $pb.PbFieldType.PM, subBuilder: BallotRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBallotsRsp clone() => UserBallotsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBallotsRsp copyWith(void Function(UserBallotsRsp) updates) => super.copyWith((message) => updates(message as UserBallotsRsp)) as UserBallotsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserBallotsRsp create() => UserBallotsRsp._();
  UserBallotsRsp createEmptyInstance() => create();
  static $pb.PbList<UserBallotsRsp> createRepeated() => $pb.PbList<UserBallotsRsp>();
  @$core.pragma('dart2js:noInline')
  static UserBallotsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBallotsRsp>(create);
  static UserBallotsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BallotRef> get ballots => $_getList(0);
}

/// 我的文件
class UserFilesReq extends $pb.GeneratedMessage {
  factory UserFilesReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserFilesReq._() : super();
  factory UserFilesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFilesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFilesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFilesReq clone() => UserFilesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFilesReq copyWith(void Function(UserFilesReq) updates) => super.copyWith((message) => updates(message as UserFilesReq)) as UserFilesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFilesReq create() => UserFilesReq._();
  UserFilesReq createEmptyInstance() => create();
  static $pb.PbList<UserFilesReq> createRepeated() => $pb.PbList<UserFilesReq>();
  @$core.pragma('dart2js:noInline')
  static UserFilesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFilesReq>(create);
  static UserFilesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserFilesRsp extends $pb.GeneratedMessage {
  factory UserFilesRsp({
    $core.Iterable<Video>? videos,
    $core.Iterable<Image>? images,
    $core.Iterable<Audio>? audios,
  }) {
    final $result = create();
    if (videos != null) {
      $result.videos.addAll(videos);
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (audios != null) {
      $result.audios.addAll(audios);
    }
    return $result;
  }
  UserFilesRsp._() : super();
  factory UserFilesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFilesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFilesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..pc<Video>(1, _omitFieldNames ? '' : 'videos', $pb.PbFieldType.PM, subBuilder: Video.create)
    ..pc<Image>(2, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: Image.create)
    ..pc<Audio>(3, _omitFieldNames ? '' : 'audios', $pb.PbFieldType.PM, subBuilder: Audio.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFilesRsp clone() => UserFilesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFilesRsp copyWith(void Function(UserFilesRsp) updates) => super.copyWith((message) => updates(message as UserFilesRsp)) as UserFilesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFilesRsp create() => UserFilesRsp._();
  UserFilesRsp createEmptyInstance() => create();
  static $pb.PbList<UserFilesRsp> createRepeated() => $pb.PbList<UserFilesRsp>();
  @$core.pragma('dart2js:noInline')
  static UserFilesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFilesRsp>(create);
  static UserFilesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Video> get videos => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Image> get images => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<Audio> get audios => $_getList(2);
}

/// 我的打赏
class UserAwardsReq extends $pb.GeneratedMessage {
  factory UserAwardsReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? count,
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserAwardsReq._() : super();
  factory UserAwardsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAwardsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserAwardsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAwardsReq clone() => UserAwardsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAwardsReq copyWith(void Function(UserAwardsReq) updates) => super.copyWith((message) => updates(message as UserAwardsReq)) as UserAwardsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAwardsReq create() => UserAwardsReq._();
  UserAwardsReq createEmptyInstance() => create();
  static $pb.PbList<UserAwardsReq> createRepeated() => $pb.PbList<UserAwardsReq>();
  @$core.pragma('dart2js:noInline')
  static UserAwardsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAwardsReq>(create);
  static UserAwardsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class UserAwardsRsp extends $pb.GeneratedMessage {
  factory UserAwardsRsp() => create();
  UserAwardsRsp._() : super();
  factory UserAwardsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAwardsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserAwardsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAwardsRsp clone() => UserAwardsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAwardsRsp copyWith(void Function(UserAwardsRsp) updates) => super.copyWith((message) => updates(message as UserAwardsRsp)) as UserAwardsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAwardsRsp create() => UserAwardsRsp._();
  UserAwardsRsp createEmptyInstance() => create();
  static $pb.PbList<UserAwardsRsp> createRepeated() => $pb.PbList<UserAwardsRsp>();
  @$core.pragma('dart2js:noInline')
  static UserAwardsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAwardsRsp>(create);
  static UserAwardsRsp? _defaultInstance;
}

/// 我的部分信息
class UserInfoReq extends $pb.GeneratedMessage {
  factory UserInfoReq({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserInfoReq._() : super();
  factory UserInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoReq clone() => UserInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoReq copyWith(void Function(UserInfoReq) updates) => super.copyWith((message) => updates(message as UserInfoReq)) as UserInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfoReq create() => UserInfoReq._();
  UserInfoReq createEmptyInstance() => create();
  static $pb.PbList<UserInfoReq> createRepeated() => $pb.PbList<UserInfoReq>();
  @$core.pragma('dart2js:noInline')
  static UserInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoReq>(create);
  static UserInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class UserInfoRsp extends $pb.GeneratedMessage {
  factory UserInfoRsp({
    $core.String? like,
    $core.String? follow,
    $core.String? follower,
  }) {
    final $result = create();
    if (like != null) {
      $result.like = like;
    }
    if (follow != null) {
      $result.follow = follow;
    }
    if (follower != null) {
      $result.follower = follower;
    }
    return $result;
  }
  UserInfoRsp._() : super();
  factory UserInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_community'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'like')
    ..aOS(2, _omitFieldNames ? '' : 'follow')
    ..aOS(3, _omitFieldNames ? '' : 'follower')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoRsp clone() => UserInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoRsp copyWith(void Function(UserInfoRsp) updates) => super.copyWith((message) => updates(message as UserInfoRsp)) as UserInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfoRsp create() => UserInfoRsp._();
  UserInfoRsp createEmptyInstance() => create();
  static $pb.PbList<UserInfoRsp> createRepeated() => $pb.PbList<UserInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static UserInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoRsp>(create);
  static UserInfoRsp? _defaultInstance;

  /// 获赞
  @$pb.TagNumber(1)
  $core.String get like => $_getSZ(0);
  @$pb.TagNumber(1)
  set like($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLike() => $_has(0);
  @$pb.TagNumber(1)
  void clearLike() => clearField(1);

  /// 关注
  @$pb.TagNumber(2)
  $core.String get follow => $_getSZ(1);
  @$pb.TagNumber(2)
  set follow($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFollow() => $_has(1);
  @$pb.TagNumber(2)
  void clearFollow() => clearField(2);

  /// 粉丝
  @$pb.TagNumber(3)
  $core.String get follower => $_getSZ(2);
  @$pb.TagNumber(3)
  set follower($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFollower() => $_has(2);
  @$pb.TagNumber(3)
  void clearFollower() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
