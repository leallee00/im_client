//
//  Generated code. Do not modify.
//  source: pb_msg/pk_room/pk_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ANSWER extends $pb.ProtobufEnum {
  static const ANSWER REFUSE = ANSWER._(0, _omitEnumNames ? '' : 'REFUSE');
  static const ANSWER AGREE = ANSWER._(1, _omitEnumNames ? '' : 'AGREE');

  static const $core.List<ANSWER> values = <ANSWER> [
    REFUSE,
    AGREE,
  ];

  static final $core.Map<$core.int, ANSWER> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ANSWER? valueOf($core.int value) => _byValue[value];

  const ANSWER._($core.int v, $core.String n) : super(v, n);
}

class PK_TYPE extends $pb.ProtobufEnum {
  static const PK_TYPE RANDOM = PK_TYPE._(0, _omitEnumNames ? '' : 'RANDOM');
  static const PK_TYPE RANK = PK_TYPE._(1, _omitEnumNames ? '' : 'RANK');
  static const PK_TYPE INVITE = PK_TYPE._(2, _omitEnumNames ? '' : 'INVITE');
  static const PK_TYPE GRAND_RANK = PK_TYPE._(3, _omitEnumNames ? '' : 'GRAND_RANK');
  static const PK_TYPE SUMMIT_FINAL = PK_TYPE._(4, _omitEnumNames ? '' : 'SUMMIT_FINAL');

  static const $core.List<PK_TYPE> values = <PK_TYPE> [
    RANDOM,
    RANK,
    INVITE,
    GRAND_RANK,
    SUMMIT_FINAL,
  ];

  static final $core.Map<$core.int, PK_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PK_TYPE? valueOf($core.int value) => _byValue[value];

  const PK_TYPE._($core.int v, $core.String n) : super(v, n);
}

/// PKGameOverNotify 中 END_TYPE
class END_TYPE extends $pb.ProtobufEnum {
  static const END_TYPE NATURAL = END_TYPE._(0, _omitEnumNames ? '' : 'NATURAL');
  static const END_TYPE MANUAL = END_TYPE._(1, _omitEnumNames ? '' : 'MANUAL');

  static const $core.List<END_TYPE> values = <END_TYPE> [
    NATURAL,
    MANUAL,
  ];

  static final $core.Map<$core.int, END_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static END_TYPE? valueOf($core.int value) => _byValue[value];

  const END_TYPE._($core.int v, $core.String n) : super(v, n);
}

class PK_STATUS extends $pb.ProtobufEnum {
  static const PK_STATUS IDLING = PK_STATUS._(0, _omitEnumNames ? '' : 'IDLING');
  static const PK_STATUS QUEUING = PK_STATUS._(1, _omitEnumNames ? '' : 'QUEUING');
  static const PK_STATUS RINGING = PK_STATUS._(2, _omitEnumNames ? '' : 'RINGING');
  static const PK_STATUS WAITING = PK_STATUS._(3, _omitEnumNames ? '' : 'WAITING');
  static const PK_STATUS COMPETING = PK_STATUS._(4, _omitEnumNames ? '' : 'COMPETING');
  static const PK_STATUS PENALIZING = PK_STATUS._(5, _omitEnumNames ? '' : 'PENALIZING');

  static const $core.List<PK_STATUS> values = <PK_STATUS> [
    IDLING,
    QUEUING,
    RINGING,
    WAITING,
    COMPETING,
    PENALIZING,
  ];

  static final $core.Map<$core.int, PK_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PK_STATUS? valueOf($core.int value) => _byValue[value];

  const PK_STATUS._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
