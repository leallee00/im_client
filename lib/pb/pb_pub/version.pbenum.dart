//
//  Generated code. Do not modify.
//  source: pb_pub/version.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Version im版本
class Version extends $pb.ProtobufEnum {
  static const Version UnknownVersion = Version._(0, _omitEnumNames ? '' : 'UnknownVersion');
  static const Version V210121 = Version._(210121, _omitEnumNames ? '' : 'V210121');

  static const $core.List<Version> values = <Version> [
    UnknownVersion,
    V210121,
  ];

  static final $core.Map<$core.int, Version> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Version? valueOf($core.int value) => _byValue[value];

  const Version._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
