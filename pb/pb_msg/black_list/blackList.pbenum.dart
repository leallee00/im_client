//
//  Generated code. Do not modify.
//  source: pb_msg/black_list/blackList.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Judge_State extends $pb.ProtobufEnum {
  static const Judge_State NOT_EXIST = Judge_State._(0, _omitEnumNames ? '' : 'NOT_EXIST');
  static const Judge_State EXIST = Judge_State._(1, _omitEnumNames ? '' : 'EXIST');

  static const $core.List<Judge_State> values = <Judge_State> [
    NOT_EXIST,
    EXIST,
  ];

  static final $core.Map<$core.int, Judge_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Judge_State? valueOf($core.int value) => _byValue[value];

  const Judge_State._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
