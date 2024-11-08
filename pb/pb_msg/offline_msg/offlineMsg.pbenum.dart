//
//  Generated code. Do not modify.
//  source: pb_msg/offline_msg/offlineMsg.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CHAT_SESSION_TYPE extends $pb.ProtobufEnum {
  static const CHAT_SESSION_TYPE CHAT_SESSION_TYPE_GROUP_CHAT = CHAT_SESSION_TYPE._(0, _omitEnumNames ? '' : 'CHAT_SESSION_TYPE_GROUP_CHAT');
  static const CHAT_SESSION_TYPE CHAT_SESSION_TYPE_PRIVATE_CHAT = CHAT_SESSION_TYPE._(100, _omitEnumNames ? '' : 'CHAT_SESSION_TYPE_PRIVATE_CHAT');

  static const $core.List<CHAT_SESSION_TYPE> values = <CHAT_SESSION_TYPE> [
    CHAT_SESSION_TYPE_GROUP_CHAT,
    CHAT_SESSION_TYPE_PRIVATE_CHAT,
  ];

  static final $core.Map<$core.int, CHAT_SESSION_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CHAT_SESSION_TYPE? valueOf($core.int value) => _byValue[value];

  const CHAT_SESSION_TYPE._($core.int v, $core.String n) : super(v, n);
}

class FETCH_SESSION_RANGE extends $pb.ProtobufEnum {
  static const FETCH_SESSION_RANGE ALL = FETCH_SESSION_RANGE._(0, _omitEnumNames ? '' : 'ALL');
  static const FETCH_SESSION_RANGE PRIVATE_CHAT = FETCH_SESSION_RANGE._(1, _omitEnumNames ? '' : 'PRIVATE_CHAT');
  static const FETCH_SESSION_RANGE GROUP_CHAT = FETCH_SESSION_RANGE._(2, _omitEnumNames ? '' : 'GROUP_CHAT');

  static const $core.List<FETCH_SESSION_RANGE> values = <FETCH_SESSION_RANGE> [
    ALL,
    PRIVATE_CHAT,
    GROUP_CHAT,
  ];

  static final $core.Map<$core.int, FETCH_SESSION_RANGE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FETCH_SESSION_RANGE? valueOf($core.int value) => _byValue[value];

  const FETCH_SESSION_RANGE._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
