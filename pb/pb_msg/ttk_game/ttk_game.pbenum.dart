//
//  Generated code. Do not modify.
//  source: pb_msg/ttk_game/ttk_game.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// PATTERN 牌型枚举
class PATTERN extends $pb.ProtobufEnum {
  static const PATTERN GENERAL_0 = PATTERN._(0, _omitEnumNames ? '' : 'GENERAL_0');
  static const PATTERN GENERAL_1 = PATTERN._(1, _omitEnumNames ? '' : 'GENERAL_1');
  static const PATTERN GENERAL_2 = PATTERN._(2, _omitEnumNames ? '' : 'GENERAL_2');
  static const PATTERN GENERAL_3 = PATTERN._(3, _omitEnumNames ? '' : 'GENERAL_3');
  static const PATTERN GENERAL_4 = PATTERN._(4, _omitEnumNames ? '' : 'GENERAL_4');
  static const PATTERN GENERAL_5 = PATTERN._(5, _omitEnumNames ? '' : 'GENERAL_5');
  static const PATTERN GENERAL_6 = PATTERN._(6, _omitEnumNames ? '' : 'GENERAL_6');
  static const PATTERN GENERAL_7 = PATTERN._(7, _omitEnumNames ? '' : 'GENERAL_7');
  static const PATTERN GENERAL_8 = PATTERN._(8, _omitEnumNames ? '' : 'GENERAL_8');
  static const PATTERN GENERAL_9 = PATTERN._(9, _omitEnumNames ? '' : 'GENERAL_9');
  static const PATTERN GENERAL_10 = PATTERN._(10, _omitEnumNames ? '' : 'GENERAL_10');
  static const PATTERN SILVER_GENERAL = PATTERN._(11, _omitEnumNames ? '' : 'SILVER_GENERAL');
  static const PATTERN BOMB = PATTERN._(12, _omitEnumNames ? '' : 'BOMB');
  static const PATTERN TIGER = PATTERN._(13, _omitEnumNames ? '' : 'TIGER');
  static const PATTERN SMALL = PATTERN._(14, _omitEnumNames ? '' : 'SMALL');

  static const $core.List<PATTERN> values = <PATTERN> [
    GENERAL_0,
    GENERAL_1,
    GENERAL_2,
    GENERAL_3,
    GENERAL_4,
    GENERAL_5,
    GENERAL_6,
    GENERAL_7,
    GENERAL_8,
    GENERAL_9,
    GENERAL_10,
    SILVER_GENERAL,
    BOMB,
    TIGER,
    SMALL,
  ];

  static final $core.Map<$core.int, PATTERN> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PATTERN? valueOf($core.int value) => _byValue[value];

  const PATTERN._($core.int v, $core.String n) : super(v, n);
}

/// 牌的颜色枚举
class SUIT extends $pb.ProtobufEnum {
  static const SUIT DIAMOND = SUIT._(0, _omitEnumNames ? '' : 'DIAMOND');
  static const SUIT CLUB = SUIT._(1, _omitEnumNames ? '' : 'CLUB');
  static const SUIT HEART = SUIT._(2, _omitEnumNames ? '' : 'HEART');
  static const SUIT SPADE = SUIT._(3, _omitEnumNames ? '' : 'SPADE');

  static const $core.List<SUIT> values = <SUIT> [
    DIAMOND,
    CLUB,
    HEART,
    SPADE,
  ];

  static final $core.Map<$core.int, SUIT> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SUIT? valueOf($core.int value) => _byValue[value];

  const SUIT._($core.int v, $core.String n) : super(v, n);
}

/// 桌位区域枚举
class KINGDOM extends $pb.ProtobufEnum {
  static const KINGDOM WEI = KINGDOM._(0, _omitEnumNames ? '' : 'WEI');
  static const KINGDOM SHU = KINGDOM._(1, _omitEnumNames ? '' : 'SHU');
  static const KINGDOM WU = KINGDOM._(2, _omitEnumNames ? '' : 'WU');
  static const KINGDOM QUN = KINGDOM._(3, _omitEnumNames ? '' : 'QUN');

  static const $core.List<KINGDOM> values = <KINGDOM> [
    WEI,
    SHU,
    WU,
    QUN,
  ];

  static final $core.Map<$core.int, KINGDOM> _byValue = $pb.ProtobufEnum.initByValue(values);
  static KINGDOM? valueOf($core.int value) => _byValue[value];

  const KINGDOM._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
