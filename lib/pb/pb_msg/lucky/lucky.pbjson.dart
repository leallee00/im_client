//
//  Generated code. Do not modify.
//  source: pb_msg/lucky/lucky.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use luckyReqDescriptor instead')
const LuckyReq$json = {
  '1': 'LuckyReq',
  '2': [
    {'1': 'betChips', '3': 1, '4': 1, '5': 3, '10': 'betChips'},
    {'1': 'betChipsFree', '3': 2, '4': 1, '5': 3, '10': 'betChipsFree'},
    {'1': 'betCount', '3': 3, '4': 1, '5': 3, '10': 'betCount'},
    {'1': 'poolId', '3': 4, '4': 1, '5': 9, '10': 'poolId'},
  ],
};

/// Descriptor for `LuckyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List luckyReqDescriptor = $convert.base64Decode(
    'CghMdWNreVJlcRIaCghiZXRDaGlwcxgBIAEoA1IIYmV0Q2hpcHMSIgoMYmV0Q2hpcHNGcmVlGA'
    'IgASgDUgxiZXRDaGlwc0ZyZWUSGgoIYmV0Q291bnQYAyABKANSCGJldENvdW50EhYKBnBvb2xJ'
    'ZBgEIAEoCVIGcG9vbElk');

@$core.Deprecated('Use luckyBeanDescriptor instead')
const LuckyBean$json = {
  '1': 'LuckyBean',
  '2': [
    {'1': 'No', '3': 1, '4': 1, '5': 3, '10': 'No'},
    {'1': 'BetChips', '3': 2, '4': 1, '5': 3, '10': 'BetChips'},
    {'1': 'BetChipsFree', '3': 3, '4': 1, '5': 3, '10': 'BetChipsFree'},
    {'1': 'Chance', '3': 4, '4': 1, '5': 3, '10': 'Chance'},
    {'1': 'Odds', '3': 5, '4': 1, '5': 3, '10': 'Odds'},
    {'1': 'WinChips', '3': 6, '4': 1, '5': 3, '10': 'WinChips'},
    {'1': 'WinChipsFree', '3': 7, '4': 1, '5': 3, '10': 'WinChipsFree'},
  ],
};

/// Descriptor for `LuckyBean`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List luckyBeanDescriptor = $convert.base64Decode(
    'CglMdWNreUJlYW4SDgoCTm8YASABKANSAk5vEhoKCEJldENoaXBzGAIgASgDUghCZXRDaGlwcx'
    'IiCgxCZXRDaGlwc0ZyZWUYAyABKANSDEJldENoaXBzRnJlZRIWCgZDaGFuY2UYBCABKANSBkNo'
    'YW5jZRISCgRPZGRzGAUgASgDUgRPZGRzEhoKCFdpbkNoaXBzGAYgASgDUghXaW5DaGlwcxIiCg'
    'xXaW5DaGlwc0ZyZWUYByABKANSDFdpbkNoaXBzRnJlZQ==');

@$core.Deprecated('Use luckyRspDescriptor instead')
const LuckyRsp$json = {
  '1': 'LuckyRsp',
  '2': [
    {'1': 'betChips', '3': 1, '4': 1, '5': 3, '10': 'betChips'},
    {'1': 'betChipsFree', '3': 2, '4': 1, '5': 3, '10': 'betChipsFree'},
    {'1': 'betCount', '3': 3, '4': 1, '5': 3, '10': 'betCount'},
    {'1': 'luckyTotalCount', '3': 4, '4': 1, '5': 3, '10': 'luckyTotalCount'},
    {'1': 'luckyTotalChips', '3': 5, '4': 1, '5': 3, '10': 'luckyTotalChips'},
    {'1': 'luckyTotalChipsFree', '3': 6, '4': 1, '5': 3, '10': 'luckyTotalChipsFree'},
    {'1': 'luckyBean', '3': 7, '4': 3, '5': 11, '6': '.pb_msg_lucky.LuckyBean', '10': 'luckyBean'},
  ],
};

/// Descriptor for `LuckyRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List luckyRspDescriptor = $convert.base64Decode(
    'CghMdWNreVJzcBIaCghiZXRDaGlwcxgBIAEoA1IIYmV0Q2hpcHMSIgoMYmV0Q2hpcHNGcmVlGA'
    'IgASgDUgxiZXRDaGlwc0ZyZWUSGgoIYmV0Q291bnQYAyABKANSCGJldENvdW50EigKD2x1Y2t5'
    'VG90YWxDb3VudBgEIAEoA1IPbHVja3lUb3RhbENvdW50EigKD2x1Y2t5VG90YWxDaGlwcxgFIA'
    'EoA1IPbHVja3lUb3RhbENoaXBzEjAKE2x1Y2t5VG90YWxDaGlwc0ZyZWUYBiABKANSE2x1Y2t5'
    'VG90YWxDaGlwc0ZyZWUSNQoJbHVja3lCZWFuGAcgAygLMhcucGJfbXNnX2x1Y2t5Lkx1Y2t5Qm'
    'VhblIJbHVja3lCZWFu');

