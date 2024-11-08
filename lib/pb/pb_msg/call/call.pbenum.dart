//
//  Generated code. Do not modify.
//  source: pb_msg/call/call.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 业务类型
class BusinessType extends $pb.ProtobufEnum {
  static const BusinessType NORMAL = BusinessType._(0, _omitEnumNames ? '' : 'NORMAL');
  static const BusinessType MATCH = BusinessType._(1, _omitEnumNames ? '' : 'MATCH');

  static const $core.List<BusinessType> values = <BusinessType> [
    NORMAL,
    MATCH,
  ];

  static final $core.Map<$core.int, BusinessType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BusinessType? valueOf($core.int value) => _byValue[value];

  const BusinessType._($core.int v, $core.String n) : super(v, n);
}

/// 拨打类型
class CallType extends $pb.ProtobufEnum {
  static const CallType VOICE = CallType._(0, _omitEnumNames ? '' : 'VOICE');
  static const CallType VIDEO = CallType._(1, _omitEnumNames ? '' : 'VIDEO');

  static const $core.List<CallType> values = <CallType> [
    VOICE,
    VIDEO,
  ];

  static final $core.Map<$core.int, CallType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CallType? valueOf($core.int value) => _byValue[value];

  const CallType._($core.int v, $core.String n) : super(v, n);
}

/// 客户端使用的SDK
class SDK extends $pb.ProtobufEnum {
  static const SDK ZEGO = SDK._(0, _omitEnumNames ? '' : 'ZEGO');
  static const SDK QINIU = SDK._(1, _omitEnumNames ? '' : 'QINIU');

  static const $core.List<SDK> values = <SDK> [
    ZEGO,
    QINIU,
  ];

  static final $core.Map<$core.int, SDK> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SDK? valueOf($core.int value) => _byValue[value];

  const SDK._($core.int v, $core.String n) : super(v, n);
}

class Reason extends $pb.ProtobufEnum {
  static const Reason CALLER_HEARTBEAT_TIMEOUT = Reason._(0, _omitEnumNames ? '' : 'CALLER_HEARTBEAT_TIMEOUT');
  static const Reason CALLEE_HEARTBEAT_TIMEOUT = Reason._(10, _omitEnumNames ? '' : 'CALLEE_HEARTBEAT_TIMEOUT');
  static const Reason USER_NO_MONEY = Reason._(20, _omitEnumNames ? '' : 'USER_NO_MONEY');
  static const Reason CALLING_TIMEOUT = Reason._(21, _omitEnumNames ? '' : 'CALLING_TIMEOUT');

  static const $core.List<Reason> values = <Reason> [
    CALLER_HEARTBEAT_TIMEOUT,
    CALLEE_HEARTBEAT_TIMEOUT,
    USER_NO_MONEY,
    CALLING_TIMEOUT,
  ];

  static final $core.Map<$core.int, Reason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Reason? valueOf($core.int value) => _byValue[value];

  const Reason._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
