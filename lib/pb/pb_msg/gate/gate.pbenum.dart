//
//  Generated code. Do not modify.
//  source: pb_msg/gate/gate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LOGIN_TOCKEN_TYPE extends $pb.ProtobufEnum {
  static const LOGIN_TOCKEN_TYPE LOGIN_TOCKEN_TYPE_JAVA = LOGIN_TOCKEN_TYPE._(0, _omitEnumNames ? '' : 'LOGIN_TOCKEN_TYPE_JAVA');
  static const LOGIN_TOCKEN_TYPE LOGIN_TOCKEN_TYPE_IM = LOGIN_TOCKEN_TYPE._(1, _omitEnumNames ? '' : 'LOGIN_TOCKEN_TYPE_IM');
  static const LOGIN_TOCKEN_TYPE LOGIN_TOCKEN_TYPE_UNI_USER = LOGIN_TOCKEN_TYPE._(2, _omitEnumNames ? '' : 'LOGIN_TOCKEN_TYPE_UNI_USER');

  static const $core.List<LOGIN_TOCKEN_TYPE> values = <LOGIN_TOCKEN_TYPE> [
    LOGIN_TOCKEN_TYPE_JAVA,
    LOGIN_TOCKEN_TYPE_IM,
    LOGIN_TOCKEN_TYPE_UNI_USER,
  ];

  static final $core.Map<$core.int, LOGIN_TOCKEN_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LOGIN_TOCKEN_TYPE? valueOf($core.int value) => _byValue[value];

  const LOGIN_TOCKEN_TYPE._($core.int v, $core.String n) : super(v, n);
}

class BUSINESS_TYPE extends $pb.ProtobufEnum {
  static const BUSINESS_TYPE UNKNOWN = BUSINESS_TYPE._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const BUSINESS_TYPE SECRET_ROOM = BUSINESS_TYPE._(1, _omitEnumNames ? '' : 'SECRET_ROOM');

  static const $core.List<BUSINESS_TYPE> values = <BUSINESS_TYPE> [
    UNKNOWN,
    SECRET_ROOM,
  ];

  static final $core.Map<$core.int, BUSINESS_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BUSINESS_TYPE? valueOf($core.int value) => _byValue[value];

  const BUSINESS_TYPE._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
