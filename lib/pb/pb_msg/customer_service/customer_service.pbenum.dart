//
//  Generated code. Do not modify.
//  source: pb_msg/customer_service/customer_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MESSAGE_TYPE extends $pb.ProtobufEnum {
  static const MESSAGE_TYPE TEXT = MESSAGE_TYPE._(0, _omitEnumNames ? '' : 'TEXT');
  static const MESSAGE_TYPE IMAGE = MESSAGE_TYPE._(1, _omitEnumNames ? '' : 'IMAGE');
  static const MESSAGE_TYPE AUDIO = MESSAGE_TYPE._(2, _omitEnumNames ? '' : 'AUDIO');
  static const MESSAGE_TYPE VIDEO = MESSAGE_TYPE._(3, _omitEnumNames ? '' : 'VIDEO');
  static const MESSAGE_TYPE PACT = MESSAGE_TYPE._(4, _omitEnumNames ? '' : 'PACT');
  static const MESSAGE_TYPE GET_RED_PACKET = MESSAGE_TYPE._(5, _omitEnumNames ? '' : 'GET_RED_PACKET');
  static const MESSAGE_TYPE RED_PACKET = MESSAGE_TYPE._(6, _omitEnumNames ? '' : 'RED_PACKET');
  static const MESSAGE_TYPE RED_PACKET_OPENED = MESSAGE_TYPE._(7, _omitEnumNames ? '' : 'RED_PACKET_OPENED');
  static const MESSAGE_TYPE CAT_CARD = MESSAGE_TYPE._(8, _omitEnumNames ? '' : 'CAT_CARD');
  static const MESSAGE_TYPE PRODUCT_CARD = MESSAGE_TYPE._(9, _omitEnumNames ? '' : 'PRODUCT_CARD');
  static const MESSAGE_TYPE PHONE_CALL = MESSAGE_TYPE._(10, _omitEnumNames ? '' : 'PHONE_CALL');
  static const MESSAGE_TYPE GREETING = MESSAGE_TYPE._(11, _omitEnumNames ? '' : 'GREETING');

  static const $core.List<MESSAGE_TYPE> values = <MESSAGE_TYPE> [
    TEXT,
    IMAGE,
    AUDIO,
    VIDEO,
    PACT,
    GET_RED_PACKET,
    RED_PACKET,
    RED_PACKET_OPENED,
    CAT_CARD,
    PRODUCT_CARD,
    PHONE_CALL,
    GREETING,
  ];

  static final $core.Map<$core.int, MESSAGE_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MESSAGE_TYPE? valueOf($core.int value) => _byValue[value];

  const MESSAGE_TYPE._($core.int v, $core.String n) : super(v, n);
}

class USER_TYPE extends $pb.ProtobufEnum {
  static const USER_TYPE KEHU = USER_TYPE._(0, _omitEnumNames ? '' : 'KEHU');
  static const USER_TYPE KEFU = USER_TYPE._(1, _omitEnumNames ? '' : 'KEFU');

  static const $core.List<USER_TYPE> values = <USER_TYPE> [
    KEHU,
    KEFU,
  ];

  static final $core.Map<$core.int, USER_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static USER_TYPE? valueOf($core.int value) => _byValue[value];

  const USER_TYPE._($core.int v, $core.String n) : super(v, n);
}

class STATE extends $pb.ProtobufEnum {
  static const STATE INIT = STATE._(0, _omitEnumNames ? '' : 'INIT');
  static const STATE SEND = STATE._(1, _omitEnumNames ? '' : 'SEND');
  static const STATE RECV = STATE._(2, _omitEnumNames ? '' : 'RECV');
  static const STATE READ = STATE._(3, _omitEnumNames ? '' : 'READ');
  static const STATE OVER = STATE._(4, _omitEnumNames ? '' : 'OVER');

  static const $core.List<STATE> values = <STATE> [
    INIT,
    SEND,
    RECV,
    READ,
    OVER,
  ];

  static final $core.Map<$core.int, STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static STATE? valueOf($core.int value) => _byValue[value];

  const STATE._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
