//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/multi_pk.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// PK状态
class MULTI_PK_STATE extends $pb.ProtobufEnum {
  static const MULTI_PK_STATE IDLING = MULTI_PK_STATE._(0, _omitEnumNames ? '' : 'IDLING');
  static const MULTI_PK_STATE COMPETING = MULTI_PK_STATE._(1, _omitEnumNames ? '' : 'COMPETING');
  static const MULTI_PK_STATE PENALIZING = MULTI_PK_STATE._(2, _omitEnumNames ? '' : 'PENALIZING');

  static const $core.List<MULTI_PK_STATE> values = <MULTI_PK_STATE> [
    IDLING,
    COMPETING,
    PENALIZING,
  ];

  static final $core.Map<$core.int, MULTI_PK_STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MULTI_PK_STATE? valueOf($core.int value) => _byValue[value];

  const MULTI_PK_STATE._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
