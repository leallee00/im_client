//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/secret_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CHAT_ANSWER extends $pb.ProtobufEnum {
  static const CHAT_ANSWER REFUSE = CHAT_ANSWER._(0, _omitEnumNames ? '' : 'REFUSE');
  static const CHAT_ANSWER AGREE = CHAT_ANSWER._(1, _omitEnumNames ? '' : 'AGREE');

  static const $core.List<CHAT_ANSWER> values = <CHAT_ANSWER> [
    REFUSE,
    AGREE,
  ];

  static final $core.Map<$core.int, CHAT_ANSWER> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CHAT_ANSWER? valueOf($core.int value) => _byValue[value];

  const CHAT_ANSWER._($core.int v, $core.String n) : super(v, n);
}

class CHAT_CLOSE_TYPE extends $pb.ProtobufEnum {
  static const CHAT_CLOSE_TYPE TIMEOUT = CHAT_CLOSE_TYPE._(0, _omitEnumNames ? '' : 'TIMEOUT');
  static const CHAT_CLOSE_TYPE MANUAL = CHAT_CLOSE_TYPE._(1, _omitEnumNames ? '' : 'MANUAL');
  static const CHAT_CLOSE_TYPE BY_HOST = CHAT_CLOSE_TYPE._(2, _omitEnumNames ? '' : 'BY_HOST');

  static const $core.List<CHAT_CLOSE_TYPE> values = <CHAT_CLOSE_TYPE> [
    TIMEOUT,
    MANUAL,
    BY_HOST,
  ];

  static final $core.Map<$core.int, CHAT_CLOSE_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CHAT_CLOSE_TYPE? valueOf($core.int value) => _byValue[value];

  const CHAT_CLOSE_TYPE._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
