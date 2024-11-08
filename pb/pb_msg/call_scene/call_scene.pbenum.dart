//
//  Generated code. Do not modify.
//  source: pb_msg/call_scene/call_scene.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 通话场景状态
class CALL_SCENE_STATE extends $pb.ProtobufEnum {
  static const CALL_SCENE_STATE CALL_SCENE_STATE_INIT = CALL_SCENE_STATE._(0, _omitEnumNames ? '' : 'CALL_SCENE_STATE_INIT');
  static const CALL_SCENE_STATE CALL_SCENE_STATE_CALLING = CALL_SCENE_STATE._(1, _omitEnumNames ? '' : 'CALL_SCENE_STATE_CALLING');
  static const CALL_SCENE_STATE CALL_SCENE_STATE_ONLINE = CALL_SCENE_STATE._(2, _omitEnumNames ? '' : 'CALL_SCENE_STATE_ONLINE');
  static const CALL_SCENE_STATE CALL_SCENE_STATE_CALL_END = CALL_SCENE_STATE._(3, _omitEnumNames ? '' : 'CALL_SCENE_STATE_CALL_END');

  static const $core.List<CALL_SCENE_STATE> values = <CALL_SCENE_STATE> [
    CALL_SCENE_STATE_INIT,
    CALL_SCENE_STATE_CALLING,
    CALL_SCENE_STATE_ONLINE,
    CALL_SCENE_STATE_CALL_END,
  ];

  static final $core.Map<$core.int, CALL_SCENE_STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CALL_SCENE_STATE? valueOf($core.int value) => _byValue[value];

  const CALL_SCENE_STATE._($core.int v, $core.String n) : super(v, n);
}

/// 通话场景结束原因
class CALL_OVER_RESION extends $pb.ProtobufEnum {
  static const CALL_OVER_RESION CALL_OVER_RESION_TIMEOUT = CALL_OVER_RESION._(0, _omitEnumNames ? '' : 'CALL_OVER_RESION_TIMEOUT');
  static const CALL_OVER_RESION CALL_OVER_RESION_CALLEE_NOT_ONLINE = CALL_OVER_RESION._(1, _omitEnumNames ? '' : 'CALL_OVER_RESION_CALLEE_NOT_ONLINE');
  static const CALL_OVER_RESION CALL_OVER_RESION_CALLEE_NO_ANSWER = CALL_OVER_RESION._(2, _omitEnumNames ? '' : 'CALL_OVER_RESION_CALLEE_NO_ANSWER');
  static const CALL_OVER_RESION CALL_OVER_RESION_CALLEE_OFFLINE = CALL_OVER_RESION._(3, _omitEnumNames ? '' : 'CALL_OVER_RESION_CALLEE_OFFLINE');
  static const CALL_OVER_RESION CALL_OVER_RESION_CALLER_OFFLINE = CALL_OVER_RESION._(4, _omitEnumNames ? '' : 'CALL_OVER_RESION_CALLER_OFFLINE');
  static const CALL_OVER_RESION CALL_OVER_RESION_CALLER_HANGUP = CALL_OVER_RESION._(5, _omitEnumNames ? '' : 'CALL_OVER_RESION_CALLER_HANGUP');
  static const CALL_OVER_RESION CALL_OVER_RESION_CALLEE_HANGUP = CALL_OVER_RESION._(6, _omitEnumNames ? '' : 'CALL_OVER_RESION_CALLEE_HANGUP');
  static const CALL_OVER_RESION CALL_OVER_RESION_BALANCE_NOT_ENOUGH = CALL_OVER_RESION._(7, _omitEnumNames ? '' : 'CALL_OVER_RESION_BALANCE_NOT_ENOUGH');
  static const CALL_OVER_RESION CALL_OVER_RESION_CALLER_CANCEL = CALL_OVER_RESION._(8, _omitEnumNames ? '' : 'CALL_OVER_RESION_CALLER_CANCEL');
  static const CALL_OVER_RESION CALL_OVER_RESION_CALLEE_BUZY = CALL_OVER_RESION._(9, _omitEnumNames ? '' : 'CALL_OVER_RESION_CALLEE_BUZY');
  static const CALL_OVER_RESION CALL_OVER_RESION_CALLEE_NOT_ANSWER = CALL_OVER_RESION._(10, _omitEnumNames ? '' : 'CALL_OVER_RESION_CALLEE_NOT_ANSWER');

  static const $core.List<CALL_OVER_RESION> values = <CALL_OVER_RESION> [
    CALL_OVER_RESION_TIMEOUT,
    CALL_OVER_RESION_CALLEE_NOT_ONLINE,
    CALL_OVER_RESION_CALLEE_NO_ANSWER,
    CALL_OVER_RESION_CALLEE_OFFLINE,
    CALL_OVER_RESION_CALLER_OFFLINE,
    CALL_OVER_RESION_CALLER_HANGUP,
    CALL_OVER_RESION_CALLEE_HANGUP,
    CALL_OVER_RESION_BALANCE_NOT_ENOUGH,
    CALL_OVER_RESION_CALLER_CANCEL,
    CALL_OVER_RESION_CALLEE_BUZY,
    CALL_OVER_RESION_CALLEE_NOT_ANSWER,
  ];

  static final $core.Map<$core.int, CALL_OVER_RESION> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CALL_OVER_RESION? valueOf($core.int value) => _byValue[value];

  const CALL_OVER_RESION._($core.int v, $core.String n) : super(v, n);
}

/// 通话类型
class CALL_TYPE extends $pb.ProtobufEnum {
  static const CALL_TYPE CALL_TYPE_UNKNOWN = CALL_TYPE._(0, _omitEnumNames ? '' : 'CALL_TYPE_UNKNOWN');
  static const CALL_TYPE CALL_TYPE_VIDEO = CALL_TYPE._(1, _omitEnumNames ? '' : 'CALL_TYPE_VIDEO');
  static const CALL_TYPE CALL_TYPE_VOICE = CALL_TYPE._(2, _omitEnumNames ? '' : 'CALL_TYPE_VOICE');

  static const $core.List<CALL_TYPE> values = <CALL_TYPE> [
    CALL_TYPE_UNKNOWN,
    CALL_TYPE_VIDEO,
    CALL_TYPE_VOICE,
  ];

  static final $core.Map<$core.int, CALL_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CALL_TYPE? valueOf($core.int value) => _byValue[value];

  const CALL_TYPE._($core.int v, $core.String n) : super(v, n);
}

class ANSWER_OF_CALL extends $pb.ProtobufEnum {
  static const ANSWER_OF_CALL REFUSE = ANSWER_OF_CALL._(0, _omitEnumNames ? '' : 'REFUSE');
  static const ANSWER_OF_CALL AGREE = ANSWER_OF_CALL._(1, _omitEnumNames ? '' : 'AGREE');
  static const ANSWER_OF_CALL BUZY = ANSWER_OF_CALL._(2, _omitEnumNames ? '' : 'BUZY');
  static const ANSWER_OF_CALL NOT_ANSWER = ANSWER_OF_CALL._(3, _omitEnumNames ? '' : 'NOT_ANSWER');

  static const $core.List<ANSWER_OF_CALL> values = <ANSWER_OF_CALL> [
    REFUSE,
    AGREE,
    BUZY,
    NOT_ANSWER,
  ];

  static final $core.Map<$core.int, ANSWER_OF_CALL> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ANSWER_OF_CALL? valueOf($core.int value) => _byValue[value];

  const ANSWER_OF_CALL._($core.int v, $core.String n) : super(v, n);
}

class WealthType extends $pb.ProtobufEnum {
  static const WealthType Unknown = WealthType._(0, _omitEnumNames ? '' : 'Unknown');
  static const WealthType Balance = WealthType._(1, _omitEnumNames ? '' : 'Balance');
  static const WealthType YeCoin = WealthType._(2, _omitEnumNames ? '' : 'YeCoin');

  static const $core.List<WealthType> values = <WealthType> [
    Unknown,
    Balance,
    YeCoin,
  ];

  static final $core.Map<$core.int, WealthType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WealthType? valueOf($core.int value) => _byValue[value];

  const WealthType._($core.int v, $core.String n) : super(v, n);
}

class WealthChangeReason extends $pb.ProtobufEnum {
  static const WealthChangeReason CallFee = WealthChangeReason._(0, _omitEnumNames ? '' : 'CallFee');
  static const WealthChangeReason EarnCallFee = WealthChangeReason._(1, _omitEnumNames ? '' : 'EarnCallFee');

  static const $core.List<WealthChangeReason> values = <WealthChangeReason> [
    CallFee,
    EarnCallFee,
  ];

  static final $core.Map<$core.int, WealthChangeReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WealthChangeReason? valueOf($core.int value) => _byValue[value];

  const WealthChangeReason._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
