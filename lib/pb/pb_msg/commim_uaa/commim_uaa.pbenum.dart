//
//  Generated code. Do not modify.
//  source: pb_msg/commim_uaa/commim_uaa.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// //////////////////////////////
///  背景图片操作开始
class ENBackgroundImageModelType extends $pb.ProtobufEnum {
  static const ENBackgroundImageModelType ENBackgroundImageModelChat = ENBackgroundImageModelType._(0, _omitEnumNames ? '' : 'ENBackgroundImageModelChat');
  static const ENBackgroundImageModelType ENBackgroundImageModelAudio = ENBackgroundImageModelType._(1, _omitEnumNames ? '' : 'ENBackgroundImageModelAudio');
  static const ENBackgroundImageModelType ENBackgroundImageModelGroup = ENBackgroundImageModelType._(2, _omitEnumNames ? '' : 'ENBackgroundImageModelGroup');

  static const $core.List<ENBackgroundImageModelType> values = <ENBackgroundImageModelType> [
    ENBackgroundImageModelChat,
    ENBackgroundImageModelAudio,
    ENBackgroundImageModelGroup,
  ];

  static final $core.Map<$core.int, ENBackgroundImageModelType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ENBackgroundImageModelType? valueOf($core.int value) => _byValue[value];

  const ENBackgroundImageModelType._($core.int v, $core.String n) : super(v, n);
}

/// 任务循环类型
class TaskLoopType extends $pb.ProtobufEnum {
  static const TaskLoopType TaskLoopOnce = TaskLoopType._(0, _omitEnumNames ? '' : 'TaskLoopOnce');
  static const TaskLoopType TaskLoopPeriodicity = TaskLoopType._(1, _omitEnumNames ? '' : 'TaskLoopPeriodicity');

  static const $core.List<TaskLoopType> values = <TaskLoopType> [
    TaskLoopOnce,
    TaskLoopPeriodicity,
  ];

  static final $core.Map<$core.int, TaskLoopType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskLoopType? valueOf($core.int value) => _byValue[value];

  const TaskLoopType._($core.int v, $core.String n) : super(v, n);
}

/// 周期个数，对应子任务个数,PeriodCounts*Period=此任务一个大轮回
/// 0:天，1：周 周期，任务冷却时间，每隔这个周期都可以重复做一次任务，每隔周期对应一个子任务
class TaskPeriod extends $pb.ProtobufEnum {
  static const TaskPeriod Day = TaskPeriod._(0, _omitEnumNames ? '' : 'Day');
  static const TaskPeriod Week = TaskPeriod._(1, _omitEnumNames ? '' : 'Week');

  static const $core.List<TaskPeriod> values = <TaskPeriod> [
    Day,
    Week,
  ];

  static final $core.Map<$core.int, TaskPeriod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskPeriod? valueOf($core.int value) => _byValue[value];

  const TaskPeriod._($core.int v, $core.String n) : super(v, n);
}

class TaskStatus extends $pb.ProtobufEnum {
  static const TaskStatus Edit = TaskStatus._(0, _omitEnumNames ? '' : 'Edit');
  static const TaskStatus OnLine = TaskStatus._(1, _omitEnumNames ? '' : 'OnLine');
  static const TaskStatus OffLine = TaskStatus._(2, _omitEnumNames ? '' : 'OffLine');

  static const $core.List<TaskStatus> values = <TaskStatus> [
    Edit,
    OnLine,
    OffLine,
  ];

  static final $core.Map<$core.int, TaskStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskStatus? valueOf($core.int value) => _byValue[value];

  const TaskStatus._($core.int v, $core.String n) : super(v, n);
}

/// 任务进行状态
class TaskGoingStatus extends $pb.ProtobufEnum {
  static const TaskGoingStatus Default = TaskGoingStatus._(0, _omitEnumNames ? '' : 'Default');
  static const TaskGoingStatus Receipted = TaskGoingStatus._(1, _omitEnumNames ? '' : 'Receipted');
  static const TaskGoingStatus Going = TaskGoingStatus._(2, _omitEnumNames ? '' : 'Going');
  static const TaskGoingStatus Completed = TaskGoingStatus._(3, _omitEnumNames ? '' : 'Completed');
  static const TaskGoingStatus Rewarded = TaskGoingStatus._(4, _omitEnumNames ? '' : 'Rewarded');

  static const $core.List<TaskGoingStatus> values = <TaskGoingStatus> [
    Default,
    Receipted,
    Going,
    Completed,
    Rewarded,
  ];

  static final $core.Map<$core.int, TaskGoingStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskGoingStatus? valueOf($core.int value) => _byValue[value];

  const TaskGoingStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
