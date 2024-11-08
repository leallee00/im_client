//
//  Generated code. Do not modify.
//  source: pb_msg/user_center/userCenter.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// ///////////////////////////////////
///  红包
///  发红包
class GrantScene extends $pb.ProtobufEnum {
  static const GrantScene PrivateChat = GrantScene._(0, _omitEnumNames ? '' : 'PrivateChat');
  static const GrantScene GroupChat = GrantScene._(1, _omitEnumNames ? '' : 'GroupChat');

  static const $core.List<GrantScene> values = <GrantScene> [
    PrivateChat,
    GroupChat,
  ];

  static final $core.Map<$core.int, GrantScene> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GrantScene? valueOf($core.int value) => _byValue[value];

  const GrantScene._($core.int v, $core.String n) : super(v, n);
}

class GroupRedPacketType extends $pb.ProtobufEnum {
  static const GroupRedPacketType Lucky = GroupRedPacketType._(0, _omitEnumNames ? '' : 'Lucky');
  static const GroupRedPacketType Average = GroupRedPacketType._(1, _omitEnumNames ? '' : 'Average');

  static const $core.List<GroupRedPacketType> values = <GroupRedPacketType> [
    Lucky,
    Average,
  ];

  static final $core.Map<$core.int, GroupRedPacketType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GroupRedPacketType? valueOf($core.int value) => _byValue[value];

  const GroupRedPacketType._($core.int v, $core.String n) : super(v, n);
}

class RedPacketStatus extends $pb.ProtobufEnum {
  static const RedPacketStatus Edit = RedPacketStatus._(0, _omitEnumNames ? '' : 'Edit');
  static const RedPacketStatus Going = RedPacketStatus._(1, _omitEnumNames ? '' : 'Going');
  static const RedPacketStatus Completed = RedPacketStatus._(2, _omitEnumNames ? '' : 'Completed');
  static const RedPacketStatus Overtime = RedPacketStatus._(3, _omitEnumNames ? '' : 'Overtime');
  static const RedPacketStatus Refunded = RedPacketStatus._(4, _omitEnumNames ? '' : 'Refunded');

  static const $core.List<RedPacketStatus> values = <RedPacketStatus> [
    Edit,
    Going,
    Completed,
    Overtime,
    Refunded,
  ];

  static final $core.Map<$core.int, RedPacketStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RedPacketStatus? valueOf($core.int value) => _byValue[value];

  const RedPacketStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
