//
//  Generated code. Do not modify.
//  source: pb_grpc/live_room/live_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EVENT extends $pb.ProtobufEnum {
  static const EVENT UNKNOWN = EVENT._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const EVENT LIVE_START = EVENT._(1, _omitEnumNames ? '' : 'LIVE_START');
  static const EVENT LIVE_STOP = EVENT._(2, _omitEnumNames ? '' : 'LIVE_STOP');
  static const EVENT ENTER_ROOM = EVENT._(3, _omitEnumNames ? '' : 'ENTER_ROOM');
  static const EVENT EXIT_ROOM = EVENT._(4, _omitEnumNames ? '' : 'EXIT_ROOM');
  static const EVENT ROOM_TIME_OUT = EVENT._(5, _omitEnumNames ? '' : 'ROOM_TIME_OUT');
  static const EVENT USER_TIME_OUT = EVENT._(6, _omitEnumNames ? '' : 'USER_TIME_OUT');

  static const $core.List<EVENT> values = <EVENT> [
    UNKNOWN,
    LIVE_START,
    LIVE_STOP,
    ENTER_ROOM,
    EXIT_ROOM,
    ROOM_TIME_OUT,
    USER_TIME_OUT,
  ];

  static final $core.Map<$core.int, EVENT> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EVENT? valueOf($core.int value) => _byValue[value];

  const EVENT._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
