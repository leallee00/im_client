//
//  Generated code. Do not modify.
//  source: pb_msg/friend/friend.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FRIEND_APPLY_STATE extends $pb.ProtobufEnum {
  static const FRIEND_APPLY_STATE Init = FRIEND_APPLY_STATE._(0, _omitEnumNames ? '' : 'Init');
  static const FRIEND_APPLY_STATE Request = FRIEND_APPLY_STATE._(1, _omitEnumNames ? '' : 'Request');
  static const FRIEND_APPLY_STATE Agree = FRIEND_APPLY_STATE._(2, _omitEnumNames ? '' : 'Agree');
  static const FRIEND_APPLY_STATE Reject = FRIEND_APPLY_STATE._(3, _omitEnumNames ? '' : 'Reject');
  static const FRIEND_APPLY_STATE OverTime = FRIEND_APPLY_STATE._(4, _omitEnumNames ? '' : 'OverTime');

  static const $core.List<FRIEND_APPLY_STATE> values = <FRIEND_APPLY_STATE> [
    Init,
    Request,
    Agree,
    Reject,
    OverTime,
  ];

  static final $core.Map<$core.int, FRIEND_APPLY_STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FRIEND_APPLY_STATE? valueOf($core.int value) => _byValue[value];

  const FRIEND_APPLY_STATE._($core.int v, $core.String n) : super(v, n);
}

/// 再黑名单的状态
class EnIsInBlackListStatus extends $pb.ProtobufEnum {
  static const EnIsInBlackListStatus NotInBlackList = EnIsInBlackListStatus._(0, _omitEnumNames ? '' : 'NotInBlackList');
  static const EnIsInBlackListStatus InMyBlackList = EnIsInBlackListStatus._(1, _omitEnumNames ? '' : 'InMyBlackList');
  static const EnIsInBlackListStatus InFriendBlackList = EnIsInBlackListStatus._(2, _omitEnumNames ? '' : 'InFriendBlackList');

  static const $core.List<EnIsInBlackListStatus> values = <EnIsInBlackListStatus> [
    NotInBlackList,
    InMyBlackList,
    InFriendBlackList,
  ];

  static final $core.Map<$core.int, EnIsInBlackListStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EnIsInBlackListStatus? valueOf($core.int value) => _byValue[value];

  const EnIsInBlackListStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
