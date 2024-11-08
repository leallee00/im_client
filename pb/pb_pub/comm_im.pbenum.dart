//
//  Generated code. Do not modify.
//  source: pb_pub/comm_im.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CODEC extends $pb.ProtobufEnum {
  static const CODEC PROTOBUF = CODEC._(0, _omitEnumNames ? '' : 'PROTOBUF');
  static const CODEC JSON = CODEC._(1, _omitEnumNames ? '' : 'JSON');

  static const $core.List<CODEC> values = <CODEC> [
    PROTOBUF,
    JSON,
  ];

  static final $core.Map<$core.int, CODEC> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CODEC? valueOf($core.int value) => _byValue[value];

  const CODEC._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
