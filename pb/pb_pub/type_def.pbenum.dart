//
//  Generated code. Do not modify.
//  source: pb_pub/type_def.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class KickUserReason extends $pb.ProtobufEnum {
  static const KickUserReason Sys = KickUserReason._(0, _omitEnumNames ? '' : 'Sys');
  static const KickUserReason Relogon = KickUserReason._(1, _omitEnumNames ? '' : 'Relogon');
  static const KickUserReason ClientException = KickUserReason._(2, _omitEnumNames ? '' : 'ClientException');

  static const $core.List<KickUserReason> values = <KickUserReason> [
    Sys,
    Relogon,
    ClientException,
  ];

  static final $core.Map<$core.int, KickUserReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static KickUserReason? valueOf($core.int value) => _byValue[value];

  const KickUserReason._($core.int v, $core.String n) : super(v, n);
}

class PubRoomId extends $pb.ProtobufEnum {
  static const PubRoomId Unknown = PubRoomId._(0, _omitEnumNames ? '' : 'Unknown');
  static const PubRoomId PartyRoomHall = PubRoomId._(1, _omitEnumNames ? '' : 'PartyRoomHall');
  static const PubRoomId TTKGame = PubRoomId._(2, _omitEnumNames ? '' : 'TTKGame');
  static const PubRoomId WishHall = PubRoomId._(3, _omitEnumNames ? '' : 'WishHall');
  static const PubRoomId CommRoomAuctionHouse = PubRoomId._(4, _omitEnumNames ? '' : 'CommRoomAuctionHouse');

  static const $core.List<PubRoomId> values = <PubRoomId> [
    Unknown,
    PartyRoomHall,
    TTKGame,
    WishHall,
    CommRoomAuctionHouse,
  ];

  static final $core.Map<$core.int, PubRoomId> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PubRoomId? valueOf($core.int value) => _byValue[value];

  const PubRoomId._($core.int v, $core.String n) : super(v, n);
}

/// exp keys exp 携带字段的key
/// 使用时把key转成字符串使用 如：pb_pub.ExpKey_ExpRoomId.String()
class ExpKey extends $pb.ProtobufEnum {
  static const ExpKey ExpUnknown = ExpKey._(0, _omitEnumNames ? '' : 'ExpUnknown');
  static const ExpKey ExpGroupId = ExpKey._(1, _omitEnumNames ? '' : 'ExpGroupId');

  static const $core.List<ExpKey> values = <ExpKey> [
    ExpUnknown,
    ExpGroupId,
  ];

  static final $core.Map<$core.int, ExpKey> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExpKey? valueOf($core.int value) => _byValue[value];

  const ExpKey._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
