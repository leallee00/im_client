//
//  Generated code. Do not modify.
//  source: pb_msg/luxury/luxury.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// 拍卖最高出价信息推送
class TopAuctionBidNotify extends $pb.GeneratedMessage {
  factory TopAuctionBidNotify({
    $fixnum.Int64? goodsId,
    $fixnum.Int64? shopId,
    $fixnum.Int64? topBidderId,
    $core.double? topBidPrice,
  }) {
    final $result = create();
    if (goodsId != null) {
      $result.goodsId = goodsId;
    }
    if (shopId != null) {
      $result.shopId = shopId;
    }
    if (topBidderId != null) {
      $result.topBidderId = topBidderId;
    }
    if (topBidPrice != null) {
      $result.topBidPrice = topBidPrice;
    }
    return $result;
  }
  TopAuctionBidNotify._() : super();
  factory TopAuctionBidNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TopAuctionBidNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TopAuctionBidNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_luxury'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'goodsId', protoName: 'goodsId')
    ..aInt64(2, _omitFieldNames ? '' : 'shopId', protoName: 'shopId')
    ..aInt64(3, _omitFieldNames ? '' : 'topBidderId', protoName: 'topBidderId')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'topBidPrice', $pb.PbFieldType.OD, protoName: 'topBidPrice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TopAuctionBidNotify clone() => TopAuctionBidNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TopAuctionBidNotify copyWith(void Function(TopAuctionBidNotify) updates) => super.copyWith((message) => updates(message as TopAuctionBidNotify)) as TopAuctionBidNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopAuctionBidNotify create() => TopAuctionBidNotify._();
  TopAuctionBidNotify createEmptyInstance() => create();
  static $pb.PbList<TopAuctionBidNotify> createRepeated() => $pb.PbList<TopAuctionBidNotify>();
  @$core.pragma('dart2js:noInline')
  static TopAuctionBidNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TopAuctionBidNotify>(create);
  static TopAuctionBidNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get goodsId => $_getI64(0);
  @$pb.TagNumber(1)
  set goodsId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGoodsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoodsId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get shopId => $_getI64(1);
  @$pb.TagNumber(2)
  set shopId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShopId() => $_has(1);
  @$pb.TagNumber(2)
  void clearShopId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get topBidderId => $_getI64(2);
  @$pb.TagNumber(3)
  set topBidderId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTopBidderId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTopBidderId() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get topBidPrice => $_getN(3);
  @$pb.TagNumber(4)
  set topBidPrice($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTopBidPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopBidPrice() => clearField(4);
}

/// 拍卖出价信息推送
class AuctionBidNotify extends $pb.GeneratedMessage {
  factory AuctionBidNotify({
    $fixnum.Int64? goodsId,
    $fixnum.Int64? shopId,
    $core.String? buyerName,
    $core.double? bidPrice,
  }) {
    final $result = create();
    if (goodsId != null) {
      $result.goodsId = goodsId;
    }
    if (shopId != null) {
      $result.shopId = shopId;
    }
    if (buyerName != null) {
      $result.buyerName = buyerName;
    }
    if (bidPrice != null) {
      $result.bidPrice = bidPrice;
    }
    return $result;
  }
  AuctionBidNotify._() : super();
  factory AuctionBidNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuctionBidNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuctionBidNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_luxury'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'goodsId', protoName: 'goodsId')
    ..aInt64(2, _omitFieldNames ? '' : 'shopId', protoName: 'shopId')
    ..aOS(3, _omitFieldNames ? '' : 'buyerName', protoName: 'buyerName')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'bidPrice', $pb.PbFieldType.OD, protoName: 'bidPrice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuctionBidNotify clone() => AuctionBidNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuctionBidNotify copyWith(void Function(AuctionBidNotify) updates) => super.copyWith((message) => updates(message as AuctionBidNotify)) as AuctionBidNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuctionBidNotify create() => AuctionBidNotify._();
  AuctionBidNotify createEmptyInstance() => create();
  static $pb.PbList<AuctionBidNotify> createRepeated() => $pb.PbList<AuctionBidNotify>();
  @$core.pragma('dart2js:noInline')
  static AuctionBidNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuctionBidNotify>(create);
  static AuctionBidNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get goodsId => $_getI64(0);
  @$pb.TagNumber(1)
  set goodsId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGoodsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoodsId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get shopId => $_getI64(1);
  @$pb.TagNumber(2)
  set shopId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShopId() => $_has(1);
  @$pb.TagNumber(2)
  void clearShopId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get buyerName => $_getSZ(2);
  @$pb.TagNumber(3)
  set buyerName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBuyerName() => $_has(2);
  @$pb.TagNumber(3)
  void clearBuyerName() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get bidPrice => $_getN(3);
  @$pb.TagNumber(4)
  set bidPrice($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBidPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearBidPrice() => clearField(4);
}

/// 商品上架推送
class GoodsOnShelfNotify extends $pb.GeneratedMessage {
  factory GoodsOnShelfNotify({
    $fixnum.Int64? goodsId,
    $core.String? coverUrl,
    $core.String? name,
    $core.double? price,
    $core.int? sellType,
    $core.double? openingAsk,
    $core.double? bidStepSize,
    $fixnum.Int64? shopId,
  }) {
    final $result = create();
    if (goodsId != null) {
      $result.goodsId = goodsId;
    }
    if (coverUrl != null) {
      $result.coverUrl = coverUrl;
    }
    if (name != null) {
      $result.name = name;
    }
    if (price != null) {
      $result.price = price;
    }
    if (sellType != null) {
      $result.sellType = sellType;
    }
    if (openingAsk != null) {
      $result.openingAsk = openingAsk;
    }
    if (bidStepSize != null) {
      $result.bidStepSize = bidStepSize;
    }
    if (shopId != null) {
      $result.shopId = shopId;
    }
    return $result;
  }
  GoodsOnShelfNotify._() : super();
  factory GoodsOnShelfNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoodsOnShelfNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoodsOnShelfNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_luxury'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'goodsId', protoName: 'goodsId')
    ..aOS(2, _omitFieldNames ? '' : 'coverUrl', protoName: 'coverUrl')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'sellType', $pb.PbFieldType.O3, protoName: 'sellType')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'openingAsk', $pb.PbFieldType.OD, protoName: 'openingAsk')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'bidStepSize', $pb.PbFieldType.OD, protoName: 'bidStepSize')
    ..aInt64(8, _omitFieldNames ? '' : 'shopId', protoName: 'shopId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoodsOnShelfNotify clone() => GoodsOnShelfNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoodsOnShelfNotify copyWith(void Function(GoodsOnShelfNotify) updates) => super.copyWith((message) => updates(message as GoodsOnShelfNotify)) as GoodsOnShelfNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsOnShelfNotify create() => GoodsOnShelfNotify._();
  GoodsOnShelfNotify createEmptyInstance() => create();
  static $pb.PbList<GoodsOnShelfNotify> createRepeated() => $pb.PbList<GoodsOnShelfNotify>();
  @$core.pragma('dart2js:noInline')
  static GoodsOnShelfNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsOnShelfNotify>(create);
  static GoodsOnShelfNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get goodsId => $_getI64(0);
  @$pb.TagNumber(1)
  set goodsId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGoodsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoodsId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get coverUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set coverUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoverUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoverUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get sellType => $_getIZ(4);
  @$pb.TagNumber(5)
  set sellType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSellType() => $_has(4);
  @$pb.TagNumber(5)
  void clearSellType() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get openingAsk => $_getN(5);
  @$pb.TagNumber(6)
  set openingAsk($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOpeningAsk() => $_has(5);
  @$pb.TagNumber(6)
  void clearOpeningAsk() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get bidStepSize => $_getN(6);
  @$pb.TagNumber(7)
  set bidStepSize($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBidStepSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearBidStepSize() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get shopId => $_getI64(7);
  @$pb.TagNumber(8)
  set shopId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasShopId() => $_has(7);
  @$pb.TagNumber(8)
  void clearShopId() => clearField(8);
}

/// 商品下架推送
class GoodsOffShelfNotify extends $pb.GeneratedMessage {
  factory GoodsOffShelfNotify({
    $fixnum.Int64? goodsId,
    $fixnum.Int64? shopId,
  }) {
    final $result = create();
    if (goodsId != null) {
      $result.goodsId = goodsId;
    }
    if (shopId != null) {
      $result.shopId = shopId;
    }
    return $result;
  }
  GoodsOffShelfNotify._() : super();
  factory GoodsOffShelfNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoodsOffShelfNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoodsOffShelfNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_luxury'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'goodsId', protoName: 'goodsId')
    ..aInt64(2, _omitFieldNames ? '' : 'shopId', protoName: 'shopId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoodsOffShelfNotify clone() => GoodsOffShelfNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoodsOffShelfNotify copyWith(void Function(GoodsOffShelfNotify) updates) => super.copyWith((message) => updates(message as GoodsOffShelfNotify)) as GoodsOffShelfNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsOffShelfNotify create() => GoodsOffShelfNotify._();
  GoodsOffShelfNotify createEmptyInstance() => create();
  static $pb.PbList<GoodsOffShelfNotify> createRepeated() => $pb.PbList<GoodsOffShelfNotify>();
  @$core.pragma('dart2js:noInline')
  static GoodsOffShelfNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsOffShelfNotify>(create);
  static GoodsOffShelfNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get goodsId => $_getI64(0);
  @$pb.TagNumber(1)
  set goodsId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGoodsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoodsId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get shopId => $_getI64(1);
  @$pb.TagNumber(2)
  set shopId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShopId() => $_has(1);
  @$pb.TagNumber(2)
  void clearShopId() => clearField(2);
}

/// 买家购买消息推送
class BuyNotify extends $pb.GeneratedMessage {
  factory BuyNotify({
    $core.String? buyerName,
    $core.String? goodsName,
    $fixnum.Int64? shopId,
  }) {
    final $result = create();
    if (buyerName != null) {
      $result.buyerName = buyerName;
    }
    if (goodsName != null) {
      $result.goodsName = goodsName;
    }
    if (shopId != null) {
      $result.shopId = shopId;
    }
    return $result;
  }
  BuyNotify._() : super();
  factory BuyNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuyNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuyNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_luxury'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'buyerName', protoName: 'buyerName')
    ..aOS(2, _omitFieldNames ? '' : 'goodsName', protoName: 'goodsName')
    ..aInt64(3, _omitFieldNames ? '' : 'shopId', protoName: 'shopId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuyNotify clone() => BuyNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuyNotify copyWith(void Function(BuyNotify) updates) => super.copyWith((message) => updates(message as BuyNotify)) as BuyNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuyNotify create() => BuyNotify._();
  BuyNotify createEmptyInstance() => create();
  static $pb.PbList<BuyNotify> createRepeated() => $pb.PbList<BuyNotify>();
  @$core.pragma('dart2js:noInline')
  static BuyNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuyNotify>(create);
  static BuyNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get buyerName => $_getSZ(0);
  @$pb.TagNumber(1)
  set buyerName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBuyerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBuyerName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get goodsName => $_getSZ(1);
  @$pb.TagNumber(2)
  set goodsName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGoodsName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoodsName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get shopId => $_getI64(2);
  @$pb.TagNumber(3)
  set shopId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShopId() => $_has(2);
  @$pb.TagNumber(3)
  void clearShopId() => clearField(3);
}

/// 集市买家付款成功消息推送
class B2CPickUpPayResultNotify extends $pb.GeneratedMessage {
  factory B2CPickUpPayResultNotify({
    $core.String? systemOrderId,
    $core.bool? success,
  }) {
    final $result = create();
    if (systemOrderId != null) {
      $result.systemOrderId = systemOrderId;
    }
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  B2CPickUpPayResultNotify._() : super();
  factory B2CPickUpPayResultNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory B2CPickUpPayResultNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'B2CPickUpPayResultNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_luxury'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'systemOrderId', protoName: 'systemOrderId')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  B2CPickUpPayResultNotify clone() => B2CPickUpPayResultNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  B2CPickUpPayResultNotify copyWith(void Function(B2CPickUpPayResultNotify) updates) => super.copyWith((message) => updates(message as B2CPickUpPayResultNotify)) as B2CPickUpPayResultNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static B2CPickUpPayResultNotify create() => B2CPickUpPayResultNotify._();
  B2CPickUpPayResultNotify createEmptyInstance() => create();
  static $pb.PbList<B2CPickUpPayResultNotify> createRepeated() => $pb.PbList<B2CPickUpPayResultNotify>();
  @$core.pragma('dart2js:noInline')
  static B2CPickUpPayResultNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<B2CPickUpPayResultNotify>(create);
  static B2CPickUpPayResultNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get systemOrderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set systemOrderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSystemOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemOrderId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => clearField(2);
}

/// 集市买家核销成功消息推送
class B2CApplyResultNotify extends $pb.GeneratedMessage {
  factory B2CApplyResultNotify({
    $core.String? systemOrderId,
    $core.bool? success,
  }) {
    final $result = create();
    if (systemOrderId != null) {
      $result.systemOrderId = systemOrderId;
    }
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  B2CApplyResultNotify._() : super();
  factory B2CApplyResultNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory B2CApplyResultNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'B2CApplyResultNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_luxury'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'systemOrderId', protoName: 'systemOrderId')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  B2CApplyResultNotify clone() => B2CApplyResultNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  B2CApplyResultNotify copyWith(void Function(B2CApplyResultNotify) updates) => super.copyWith((message) => updates(message as B2CApplyResultNotify)) as B2CApplyResultNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static B2CApplyResultNotify create() => B2CApplyResultNotify._();
  B2CApplyResultNotify createEmptyInstance() => create();
  static $pb.PbList<B2CApplyResultNotify> createRepeated() => $pb.PbList<B2CApplyResultNotify>();
  @$core.pragma('dart2js:noInline')
  static B2CApplyResultNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<B2CApplyResultNotify>(create);
  static B2CApplyResultNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get systemOrderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set systemOrderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSystemOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemOrderId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
