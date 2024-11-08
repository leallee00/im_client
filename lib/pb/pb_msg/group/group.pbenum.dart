//
//  Generated code. Do not modify.
//  source: pb_msg/group/group.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GroupType extends $pb.ProtobufEnum {
  static const GroupType Comm = GroupType._(0, _omitEnumNames ? '' : 'Comm');
  static const GroupType ChatRoom = GroupType._(1, _omitEnumNames ? '' : 'ChatRoom');
  static const GroupType Channel = GroupType._(2, _omitEnumNames ? '' : 'Channel');
  static const GroupType SystemNotice = GroupType._(3, _omitEnumNames ? '' : 'SystemNotice');

  static const $core.List<GroupType> values = <GroupType> [
    Comm,
    ChatRoom,
    Channel,
    SystemNotice,
  ];

  static final $core.Map<$core.int, GroupType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GroupType? valueOf($core.int value) => _byValue[value];

  const GroupType._($core.int v, $core.String n) : super(v, n);
}

class ApplyRspStatus extends $pb.ProtobufEnum {
  static const ApplyRspStatus WaitConfirm = ApplyRspStatus._(0, _omitEnumNames ? '' : 'WaitConfirm');
  static const ApplyRspStatus SuccessAddedToGroup = ApplyRspStatus._(1, _omitEnumNames ? '' : 'SuccessAddedToGroup');

  static const $core.List<ApplyRspStatus> values = <ApplyRspStatus> [
    WaitConfirm,
    SuccessAddedToGroup,
  ];

  static final $core.Map<$core.int, ApplyRspStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ApplyRspStatus? valueOf($core.int value) => _byValue[value];

  const ApplyRspStatus._($core.int v, $core.String n) : super(v, n);
}

/// 拨打类型
class EnterGroupType extends $pb.ProtobufEnum {
  static const EnterGroupType Create = EnterGroupType._(0, _omitEnumNames ? '' : 'Create');
  static const EnterGroupType Apply = EnterGroupType._(1, _omitEnumNames ? '' : 'Apply');
  static const EnterGroupType Invite = EnterGroupType._(2, _omitEnumNames ? '' : 'Invite');
  static const EnterGroupType ScanCode = EnterGroupType._(3, _omitEnumNames ? '' : 'ScanCode');

  static const $core.List<EnterGroupType> values = <EnterGroupType> [
    Create,
    Apply,
    Invite,
    ScanCode,
  ];

  static final $core.Map<$core.int, EnterGroupType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EnterGroupType? valueOf($core.int value) => _byValue[value];

  const EnterGroupType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
