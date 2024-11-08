//
//  Generated code. Do not modify.
//  source: pb_pub/nats_msg.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NatsPBMsgChannel extends $pb.ProtobufEnum {
  static const NatsPBMsgChannel PBMsg_SysConfigChange = NatsPBMsgChannel._(0, _omitEnumNames ? '' : 'PBMsg_SysConfigChange');
  static const NatsPBMsgChannel PBMsg_EventBus = NatsPBMsgChannel._(1, _omitEnumNames ? '' : 'PBMsg_EventBus');
  static const NatsPBMsgChannel PBMsg_ServiceErrStatusConfigChange = NatsPBMsgChannel._(2, _omitEnumNames ? '' : 'PBMsg_ServiceErrStatusConfigChange');
  static const NatsPBMsgChannel PBMsg_ToGateProcessByGroup = NatsPBMsgChannel._(3, _omitEnumNames ? '' : 'PBMsg_ToGateProcessByGroup');
  static const NatsPBMsgChannel PBMsg_EventBusForServiceGroup = NatsPBMsgChannel._(4, _omitEnumNames ? '' : 'PBMsg_EventBusForServiceGroup');

  static const $core.List<NatsPBMsgChannel> values = <NatsPBMsgChannel> [
    PBMsg_SysConfigChange,
    PBMsg_EventBus,
    PBMsg_ServiceErrStatusConfigChange,
    PBMsg_ToGateProcessByGroup,
    PBMsg_EventBusForServiceGroup,
  ];

  static final $core.Map<$core.int, NatsPBMsgChannel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NatsPBMsgChannel? valueOf($core.int value) => _byValue[value];

  const NatsPBMsgChannel._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
