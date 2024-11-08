//
//  Generated code. Do not modify.
//  source: pb_msg/msg_sender/msgSender.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// 私信推送
class MsgSenderNotify extends $pb.GeneratedMessage {
  factory MsgSenderNotify({
    $fixnum.Int64? srcId,
    $core.String? msg,
    $core.String? title,
    $core.int? type,
    $core.String? nickName,
    $core.String? bigImageOriginal,
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (srcId != null) {
      $result.srcId = srcId;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    if (title != null) {
      $result.title = title;
    }
    if (type != null) {
      $result.type = type;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (bigImageOriginal != null) {
      $result.bigImageOriginal = bigImageOriginal;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  MsgSenderNotify._() : super();
  factory MsgSenderNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSenderNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSenderNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgSender'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'srcId', protoName: 'srcId')
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aOS(6, _omitFieldNames ? '' : 'bigImageOriginal', protoName: 'bigImageOriginal')
    ..aInt64(7, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSenderNotify clone() => MsgSenderNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSenderNotify copyWith(void Function(MsgSenderNotify) updates) => super.copyWith((message) => updates(message as MsgSenderNotify)) as MsgSenderNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSenderNotify create() => MsgSenderNotify._();
  MsgSenderNotify createEmptyInstance() => create();
  static $pb.PbList<MsgSenderNotify> createRepeated() => $pb.PbList<MsgSenderNotify>();
  @$core.pragma('dart2js:noInline')
  static MsgSenderNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSenderNotify>(create);
  static MsgSenderNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get srcId => $_getI64(0);
  @$pb.TagNumber(1)
  set srcId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get nickName => $_getSZ(4);
  @$pb.TagNumber(5)
  set nickName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNickName() => $_has(4);
  @$pb.TagNumber(5)
  void clearNickName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get bigImageOriginal => $_getSZ(5);
  @$pb.TagNumber(6)
  set bigImageOriginal($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBigImageOriginal() => $_has(5);
  @$pb.TagNumber(6)
  void clearBigImageOriginal() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get groupId => $_getI64(6);
  @$pb.TagNumber(7)
  set groupId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGroupId() => $_has(6);
  @$pb.TagNumber(7)
  void clearGroupId() => clearField(7);
}

/// 成员变更通知
class ShopMemberChangeNotify extends $pb.GeneratedMessage {
  factory ShopMemberChangeNotify({
    $fixnum.Int64? shopId,
    $fixnum.Int64? memberID,
    $core.int? type,
  }) {
    final $result = create();
    if (shopId != null) {
      $result.shopId = shopId;
    }
    if (memberID != null) {
      $result.memberID = memberID;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  ShopMemberChangeNotify._() : super();
  factory ShopMemberChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopMemberChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShopMemberChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgSender'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shopId', protoName: 'shopId')
    ..aInt64(2, _omitFieldNames ? '' : 'memberID', protoName: 'memberID')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShopMemberChangeNotify clone() => ShopMemberChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShopMemberChangeNotify copyWith(void Function(ShopMemberChangeNotify) updates) => super.copyWith((message) => updates(message as ShopMemberChangeNotify)) as ShopMemberChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShopMemberChangeNotify create() => ShopMemberChangeNotify._();
  ShopMemberChangeNotify createEmptyInstance() => create();
  static $pb.PbList<ShopMemberChangeNotify> createRepeated() => $pb.PbList<ShopMemberChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static ShopMemberChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopMemberChangeNotify>(create);
  static ShopMemberChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get shopId => $_getI64(0);
  @$pb.TagNumber(1)
  set shopId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShopId() => $_has(0);
  @$pb.TagNumber(1)
  void clearShopId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get memberID => $_getI64(1);
  @$pb.TagNumber(2)
  set memberID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemberID() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberID() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
