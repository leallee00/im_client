//
//  Generated code. Do not modify.
//  source: pb_msg/lucky/lucky.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class LuckyReq extends $pb.GeneratedMessage {
  factory LuckyReq({
    $fixnum.Int64? betChips,
    $fixnum.Int64? betChipsFree,
    $fixnum.Int64? betCount,
    $core.String? poolId,
  }) {
    final $result = create();
    if (betChips != null) {
      $result.betChips = betChips;
    }
    if (betChipsFree != null) {
      $result.betChipsFree = betChipsFree;
    }
    if (betCount != null) {
      $result.betCount = betCount;
    }
    if (poolId != null) {
      $result.poolId = poolId;
    }
    return $result;
  }
  LuckyReq._() : super();
  factory LuckyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LuckyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LuckyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_lucky'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'betChips', protoName: 'betChips')
    ..aInt64(2, _omitFieldNames ? '' : 'betChipsFree', protoName: 'betChipsFree')
    ..aInt64(3, _omitFieldNames ? '' : 'betCount', protoName: 'betCount')
    ..aOS(4, _omitFieldNames ? '' : 'poolId', protoName: 'poolId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LuckyReq clone() => LuckyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LuckyReq copyWith(void Function(LuckyReq) updates) => super.copyWith((message) => updates(message as LuckyReq)) as LuckyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LuckyReq create() => LuckyReq._();
  LuckyReq createEmptyInstance() => create();
  static $pb.PbList<LuckyReq> createRepeated() => $pb.PbList<LuckyReq>();
  @$core.pragma('dart2js:noInline')
  static LuckyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LuckyReq>(create);
  static LuckyReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get betChips => $_getI64(0);
  @$pb.TagNumber(1)
  set betChips($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBetChips() => $_has(0);
  @$pb.TagNumber(1)
  void clearBetChips() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get betChipsFree => $_getI64(1);
  @$pb.TagNumber(2)
  set betChipsFree($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBetChipsFree() => $_has(1);
  @$pb.TagNumber(2)
  void clearBetChipsFree() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get betCount => $_getI64(2);
  @$pb.TagNumber(3)
  set betCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBetCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearBetCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get poolId => $_getSZ(3);
  @$pb.TagNumber(4)
  set poolId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPoolId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPoolId() => clearField(4);
}

/// 中奖的结构
class LuckyBean extends $pb.GeneratedMessage {
  factory LuckyBean({
    $fixnum.Int64? no,
    $fixnum.Int64? betChips,
    $fixnum.Int64? betChipsFree,
    $fixnum.Int64? chance,
    $fixnum.Int64? odds,
    $fixnum.Int64? winChips,
    $fixnum.Int64? winChipsFree,
  }) {
    final $result = create();
    if (no != null) {
      $result.no = no;
    }
    if (betChips != null) {
      $result.betChips = betChips;
    }
    if (betChipsFree != null) {
      $result.betChipsFree = betChipsFree;
    }
    if (chance != null) {
      $result.chance = chance;
    }
    if (odds != null) {
      $result.odds = odds;
    }
    if (winChips != null) {
      $result.winChips = winChips;
    }
    if (winChipsFree != null) {
      $result.winChipsFree = winChipsFree;
    }
    return $result;
  }
  LuckyBean._() : super();
  factory LuckyBean.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LuckyBean.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LuckyBean', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_lucky'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'No', protoName: 'No')
    ..aInt64(2, _omitFieldNames ? '' : 'BetChips', protoName: 'BetChips')
    ..aInt64(3, _omitFieldNames ? '' : 'BetChipsFree', protoName: 'BetChipsFree')
    ..aInt64(4, _omitFieldNames ? '' : 'Chance', protoName: 'Chance')
    ..aInt64(5, _omitFieldNames ? '' : 'Odds', protoName: 'Odds')
    ..aInt64(6, _omitFieldNames ? '' : 'WinChips', protoName: 'WinChips')
    ..aInt64(7, _omitFieldNames ? '' : 'WinChipsFree', protoName: 'WinChipsFree')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LuckyBean clone() => LuckyBean()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LuckyBean copyWith(void Function(LuckyBean) updates) => super.copyWith((message) => updates(message as LuckyBean)) as LuckyBean;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LuckyBean create() => LuckyBean._();
  LuckyBean createEmptyInstance() => create();
  static $pb.PbList<LuckyBean> createRepeated() => $pb.PbList<LuckyBean>();
  @$core.pragma('dart2js:noInline')
  static LuckyBean getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LuckyBean>(create);
  static LuckyBean? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get no => $_getI64(0);
  @$pb.TagNumber(1)
  set no($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNo() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get betChips => $_getI64(1);
  @$pb.TagNumber(2)
  set betChips($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBetChips() => $_has(1);
  @$pb.TagNumber(2)
  void clearBetChips() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get betChipsFree => $_getI64(2);
  @$pb.TagNumber(3)
  set betChipsFree($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBetChipsFree() => $_has(2);
  @$pb.TagNumber(3)
  void clearBetChipsFree() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get chance => $_getI64(3);
  @$pb.TagNumber(4)
  set chance($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChance() => $_has(3);
  @$pb.TagNumber(4)
  void clearChance() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get odds => $_getI64(4);
  @$pb.TagNumber(5)
  set odds($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOdds() => $_has(4);
  @$pb.TagNumber(5)
  void clearOdds() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get winChips => $_getI64(5);
  @$pb.TagNumber(6)
  set winChips($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWinChips() => $_has(5);
  @$pb.TagNumber(6)
  void clearWinChips() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get winChipsFree => $_getI64(6);
  @$pb.TagNumber(7)
  set winChipsFree($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWinChipsFree() => $_has(6);
  @$pb.TagNumber(7)
  void clearWinChipsFree() => clearField(7);
}

class LuckyRsp extends $pb.GeneratedMessage {
  factory LuckyRsp({
    $fixnum.Int64? betChips,
    $fixnum.Int64? betChipsFree,
    $fixnum.Int64? betCount,
    $fixnum.Int64? luckyTotalCount,
    $fixnum.Int64? luckyTotalChips,
    $fixnum.Int64? luckyTotalChipsFree,
    $core.Iterable<LuckyBean>? luckyBean,
  }) {
    final $result = create();
    if (betChips != null) {
      $result.betChips = betChips;
    }
    if (betChipsFree != null) {
      $result.betChipsFree = betChipsFree;
    }
    if (betCount != null) {
      $result.betCount = betCount;
    }
    if (luckyTotalCount != null) {
      $result.luckyTotalCount = luckyTotalCount;
    }
    if (luckyTotalChips != null) {
      $result.luckyTotalChips = luckyTotalChips;
    }
    if (luckyTotalChipsFree != null) {
      $result.luckyTotalChipsFree = luckyTotalChipsFree;
    }
    if (luckyBean != null) {
      $result.luckyBean.addAll(luckyBean);
    }
    return $result;
  }
  LuckyRsp._() : super();
  factory LuckyRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LuckyRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LuckyRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_lucky'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'betChips', protoName: 'betChips')
    ..aInt64(2, _omitFieldNames ? '' : 'betChipsFree', protoName: 'betChipsFree')
    ..aInt64(3, _omitFieldNames ? '' : 'betCount', protoName: 'betCount')
    ..aInt64(4, _omitFieldNames ? '' : 'luckyTotalCount', protoName: 'luckyTotalCount')
    ..aInt64(5, _omitFieldNames ? '' : 'luckyTotalChips', protoName: 'luckyTotalChips')
    ..aInt64(6, _omitFieldNames ? '' : 'luckyTotalChipsFree', protoName: 'luckyTotalChipsFree')
    ..pc<LuckyBean>(7, _omitFieldNames ? '' : 'luckyBean', $pb.PbFieldType.PM, protoName: 'luckyBean', subBuilder: LuckyBean.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LuckyRsp clone() => LuckyRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LuckyRsp copyWith(void Function(LuckyRsp) updates) => super.copyWith((message) => updates(message as LuckyRsp)) as LuckyRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LuckyRsp create() => LuckyRsp._();
  LuckyRsp createEmptyInstance() => create();
  static $pb.PbList<LuckyRsp> createRepeated() => $pb.PbList<LuckyRsp>();
  @$core.pragma('dart2js:noInline')
  static LuckyRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LuckyRsp>(create);
  static LuckyRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get betChips => $_getI64(0);
  @$pb.TagNumber(1)
  set betChips($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBetChips() => $_has(0);
  @$pb.TagNumber(1)
  void clearBetChips() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get betChipsFree => $_getI64(1);
  @$pb.TagNumber(2)
  set betChipsFree($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBetChipsFree() => $_has(1);
  @$pb.TagNumber(2)
  void clearBetChipsFree() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get betCount => $_getI64(2);
  @$pb.TagNumber(3)
  set betCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBetCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearBetCount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get luckyTotalCount => $_getI64(3);
  @$pb.TagNumber(4)
  set luckyTotalCount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLuckyTotalCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearLuckyTotalCount() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get luckyTotalChips => $_getI64(4);
  @$pb.TagNumber(5)
  set luckyTotalChips($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLuckyTotalChips() => $_has(4);
  @$pb.TagNumber(5)
  void clearLuckyTotalChips() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get luckyTotalChipsFree => $_getI64(5);
  @$pb.TagNumber(6)
  set luckyTotalChipsFree($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLuckyTotalChipsFree() => $_has(5);
  @$pb.TagNumber(6)
  void clearLuckyTotalChipsFree() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<LuckyBean> get luckyBean => $_getList(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
