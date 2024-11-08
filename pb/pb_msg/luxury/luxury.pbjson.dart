//
//  Generated code. Do not modify.
//  source: pb_msg/luxury/luxury.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use topAuctionBidNotifyDescriptor instead')
const TopAuctionBidNotify$json = {
  '1': 'TopAuctionBidNotify',
  '2': [
    {'1': 'goodsId', '3': 1, '4': 1, '5': 3, '10': 'goodsId'},
    {'1': 'shopId', '3': 2, '4': 1, '5': 3, '10': 'shopId'},
    {'1': 'topBidderId', '3': 3, '4': 1, '5': 3, '10': 'topBidderId'},
    {'1': 'topBidPrice', '3': 4, '4': 1, '5': 1, '10': 'topBidPrice'},
  ],
};

/// Descriptor for `TopAuctionBidNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topAuctionBidNotifyDescriptor = $convert.base64Decode(
    'ChNUb3BBdWN0aW9uQmlkTm90aWZ5EhgKB2dvb2RzSWQYASABKANSB2dvb2RzSWQSFgoGc2hvcE'
    'lkGAIgASgDUgZzaG9wSWQSIAoLdG9wQmlkZGVySWQYAyABKANSC3RvcEJpZGRlcklkEiAKC3Rv'
    'cEJpZFByaWNlGAQgASgBUgt0b3BCaWRQcmljZQ==');

@$core.Deprecated('Use auctionBidNotifyDescriptor instead')
const AuctionBidNotify$json = {
  '1': 'AuctionBidNotify',
  '2': [
    {'1': 'goodsId', '3': 1, '4': 1, '5': 3, '10': 'goodsId'},
    {'1': 'shopId', '3': 2, '4': 1, '5': 3, '10': 'shopId'},
    {'1': 'buyerName', '3': 3, '4': 1, '5': 9, '10': 'buyerName'},
    {'1': 'bidPrice', '3': 4, '4': 1, '5': 1, '10': 'bidPrice'},
  ],
};

/// Descriptor for `AuctionBidNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List auctionBidNotifyDescriptor = $convert.base64Decode(
    'ChBBdWN0aW9uQmlkTm90aWZ5EhgKB2dvb2RzSWQYASABKANSB2dvb2RzSWQSFgoGc2hvcElkGA'
    'IgASgDUgZzaG9wSWQSHAoJYnV5ZXJOYW1lGAMgASgJUglidXllck5hbWUSGgoIYmlkUHJpY2UY'
    'BCABKAFSCGJpZFByaWNl');

@$core.Deprecated('Use goodsOnShelfNotifyDescriptor instead')
const GoodsOnShelfNotify$json = {
  '1': 'GoodsOnShelfNotify',
  '2': [
    {'1': 'goodsId', '3': 1, '4': 1, '5': 3, '10': 'goodsId'},
    {'1': 'coverUrl', '3': 2, '4': 1, '5': 9, '10': 'coverUrl'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
    {'1': 'sellType', '3': 5, '4': 1, '5': 5, '10': 'sellType'},
    {'1': 'openingAsk', '3': 6, '4': 1, '5': 1, '10': 'openingAsk'},
    {'1': 'bidStepSize', '3': 7, '4': 1, '5': 1, '10': 'bidStepSize'},
    {'1': 'shopId', '3': 8, '4': 1, '5': 3, '10': 'shopId'},
  ],
};

/// Descriptor for `GoodsOnShelfNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsOnShelfNotifyDescriptor = $convert.base64Decode(
    'ChJHb29kc09uU2hlbGZOb3RpZnkSGAoHZ29vZHNJZBgBIAEoA1IHZ29vZHNJZBIaCghjb3Zlcl'
    'VybBgCIAEoCVIIY292ZXJVcmwSEgoEbmFtZRgDIAEoCVIEbmFtZRIUCgVwcmljZRgEIAEoAVIF'
    'cHJpY2USGgoIc2VsbFR5cGUYBSABKAVSCHNlbGxUeXBlEh4KCm9wZW5pbmdBc2sYBiABKAFSCm'
    '9wZW5pbmdBc2sSIAoLYmlkU3RlcFNpemUYByABKAFSC2JpZFN0ZXBTaXplEhYKBnNob3BJZBgI'
    'IAEoA1IGc2hvcElk');

@$core.Deprecated('Use goodsOffShelfNotifyDescriptor instead')
const GoodsOffShelfNotify$json = {
  '1': 'GoodsOffShelfNotify',
  '2': [
    {'1': 'goodsId', '3': 1, '4': 1, '5': 3, '10': 'goodsId'},
    {'1': 'shopId', '3': 2, '4': 1, '5': 3, '10': 'shopId'},
  ],
};

/// Descriptor for `GoodsOffShelfNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsOffShelfNotifyDescriptor = $convert.base64Decode(
    'ChNHb29kc09mZlNoZWxmTm90aWZ5EhgKB2dvb2RzSWQYASABKANSB2dvb2RzSWQSFgoGc2hvcE'
    'lkGAIgASgDUgZzaG9wSWQ=');

@$core.Deprecated('Use buyNotifyDescriptor instead')
const BuyNotify$json = {
  '1': 'BuyNotify',
  '2': [
    {'1': 'buyerName', '3': 1, '4': 1, '5': 9, '10': 'buyerName'},
    {'1': 'goodsName', '3': 2, '4': 1, '5': 9, '10': 'goodsName'},
    {'1': 'shopId', '3': 3, '4': 1, '5': 3, '10': 'shopId'},
  ],
};

/// Descriptor for `BuyNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buyNotifyDescriptor = $convert.base64Decode(
    'CglCdXlOb3RpZnkSHAoJYnV5ZXJOYW1lGAEgASgJUglidXllck5hbWUSHAoJZ29vZHNOYW1lGA'
    'IgASgJUglnb29kc05hbWUSFgoGc2hvcElkGAMgASgDUgZzaG9wSWQ=');

@$core.Deprecated('Use b2CPickUpPayResultNotifyDescriptor instead')
const B2CPickUpPayResultNotify$json = {
  '1': 'B2CPickUpPayResultNotify',
  '2': [
    {'1': 'systemOrderId', '3': 1, '4': 1, '5': 9, '10': 'systemOrderId'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `B2CPickUpPayResultNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List b2CPickUpPayResultNotifyDescriptor = $convert.base64Decode(
    'ChhCMkNQaWNrVXBQYXlSZXN1bHROb3RpZnkSJAoNc3lzdGVtT3JkZXJJZBgBIAEoCVINc3lzdG'
    'VtT3JkZXJJZBIYCgdzdWNjZXNzGAIgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use b2CApplyResultNotifyDescriptor instead')
const B2CApplyResultNotify$json = {
  '1': 'B2CApplyResultNotify',
  '2': [
    {'1': 'systemOrderId', '3': 1, '4': 1, '5': 9, '10': 'systemOrderId'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `B2CApplyResultNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List b2CApplyResultNotifyDescriptor = $convert.base64Decode(
    'ChRCMkNBcHBseVJlc3VsdE5vdGlmeRIkCg1zeXN0ZW1PcmRlcklkGAEgASgJUg1zeXN0ZW1Pcm'
    'RlcklkEhgKB3N1Y2Nlc3MYAiABKAhSB3N1Y2Nlc3M=');

