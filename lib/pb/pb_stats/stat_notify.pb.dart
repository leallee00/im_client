//
//  Generated code. Do not modify.
//  source: pb_stats/stat_notify.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../pb_pub/comm.pb.dart' as $0;

class StatisticNotify extends $pb.GeneratedMessage {
  factory StatisticNotify({
    $0.PBCommData? pbCommData,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  StatisticNotify._() : super();
  factory StatisticNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatisticNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatisticNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$0.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $0.PBCommData.create)
    ..aOS(2, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatisticNotify clone() => StatisticNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatisticNotify copyWith(void Function(StatisticNotify) updates) => super.copyWith((message) => updates(message as StatisticNotify)) as StatisticNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatisticNotify create() => StatisticNotify._();
  StatisticNotify createEmptyInstance() => create();
  static $pb.PbList<StatisticNotify> createRepeated() => $pb.PbList<StatisticNotify>();
  @$core.pragma('dart2js:noInline')
  static StatisticNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatisticNotify>(create);
  static StatisticNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $0.PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData($0.PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  $0.PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get pbName => $_getSZ(1);
  @$pb.TagNumber(2)
  set pbName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPbName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPbName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get pbData => $_getN(2);
  @$pb.TagNumber(3)
  set pbData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPbData() => $_has(2);
  @$pb.TagNumber(3)
  void clearPbData() => clearField(3);
}

/// 邀请状态变更
class InvitationStatusChanged extends $pb.GeneratedMessage {
  factory InvitationStatusChanged({
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
    $fixnum.Int64? inviteTime,
    $fixnum.Int64? interval,
    $fixnum.Int64? price,
    $core.int? status,
  }) {
    final $result = create();
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (inviteTime != null) {
      $result.inviteTime = inviteTime;
    }
    if (interval != null) {
      $result.interval = interval;
    }
    if (price != null) {
      $result.price = price;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  InvitationStatusChanged._() : super();
  factory InvitationStatusChanged.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvitationStatusChanged.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InvitationStatusChanged', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(2, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..aInt64(3, _omitFieldNames ? '' : 'inviteTime', protoName: 'inviteTime')
    ..aInt64(4, _omitFieldNames ? '' : 'interval')
    ..aInt64(5, _omitFieldNames ? '' : 'price')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvitationStatusChanged clone() => InvitationStatusChanged()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvitationStatusChanged copyWith(void Function(InvitationStatusChanged) updates) => super.copyWith((message) => updates(message as InvitationStatusChanged)) as InvitationStatusChanged;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvitationStatusChanged create() => InvitationStatusChanged._();
  InvitationStatusChanged createEmptyInstance() => create();
  static $pb.PbList<InvitationStatusChanged> createRepeated() => $pb.PbList<InvitationStatusChanged>();
  @$core.pragma('dart2js:noInline')
  static InvitationStatusChanged getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvitationStatusChanged>(create);
  static InvitationStatusChanged? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callerId => $_getI64(0);
  @$pb.TagNumber(1)
  set callerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallerId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get calleeId => $_getI64(1);
  @$pb.TagNumber(2)
  set calleeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCalleeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalleeId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get inviteTime => $_getI64(2);
  @$pb.TagNumber(3)
  set inviteTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInviteTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearInviteTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get interval => $_getI64(3);
  @$pb.TagNumber(4)
  set interval($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInterval() => $_has(3);
  @$pb.TagNumber(4)
  void clearInterval() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get price => $_getI64(4);
  @$pb.TagNumber(5)
  set price($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get status => $_getIZ(5);
  @$pb.TagNumber(6)
  set status($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);
}

/// chatroom 关闭
class ChatRoomClosed extends $pb.GeneratedMessage {
  factory ChatRoomClosed({
    $fixnum.Int64? roomId,
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
    $fixnum.Int64? startTime,
    $fixnum.Int64? closeTime,
    $fixnum.Int64? duration,
    $fixnum.Int64? interval,
    $fixnum.Int64? price,
    $fixnum.Int64? round,
  }) {
    final $result = create();
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (closeTime != null) {
      $result.closeTime = closeTime;
    }
    if (duration != null) {
      $result.duration = duration;
    }
    if (interval != null) {
      $result.interval = interval;
    }
    if (price != null) {
      $result.price = price;
    }
    if (round != null) {
      $result.round = round;
    }
    return $result;
  }
  ChatRoomClosed._() : super();
  factory ChatRoomClosed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatRoomClosed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatRoomClosed', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..aInt64(2, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(3, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..aInt64(4, _omitFieldNames ? '' : 'startTime', protoName: 'startTime')
    ..aInt64(5, _omitFieldNames ? '' : 'closeTime', protoName: 'closeTime')
    ..aInt64(6, _omitFieldNames ? '' : 'duration')
    ..aInt64(7, _omitFieldNames ? '' : 'interval')
    ..aInt64(8, _omitFieldNames ? '' : 'price')
    ..aInt64(9, _omitFieldNames ? '' : 'round')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatRoomClosed clone() => ChatRoomClosed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatRoomClosed copyWith(void Function(ChatRoomClosed) updates) => super.copyWith((message) => updates(message as ChatRoomClosed)) as ChatRoomClosed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatRoomClosed create() => ChatRoomClosed._();
  ChatRoomClosed createEmptyInstance() => create();
  static $pb.PbList<ChatRoomClosed> createRepeated() => $pb.PbList<ChatRoomClosed>();
  @$core.pragma('dart2js:noInline')
  static ChatRoomClosed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatRoomClosed>(create);
  static ChatRoomClosed? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get callerId => $_getI64(1);
  @$pb.TagNumber(2)
  set callerId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallerId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get calleeId => $_getI64(2);
  @$pb.TagNumber(3)
  set calleeId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCalleeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalleeId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get startTime => $_getI64(3);
  @$pb.TagNumber(4)
  set startTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get closeTime => $_getI64(4);
  @$pb.TagNumber(5)
  set closeTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCloseTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCloseTime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get duration => $_getI64(5);
  @$pb.TagNumber(6)
  set duration($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDuration() => $_has(5);
  @$pb.TagNumber(6)
  void clearDuration() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get interval => $_getI64(6);
  @$pb.TagNumber(7)
  set interval($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasInterval() => $_has(6);
  @$pb.TagNumber(7)
  void clearInterval() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get price => $_getI64(7);
  @$pb.TagNumber(8)
  set price($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPrice() => $_has(7);
  @$pb.TagNumber(8)
  void clearPrice() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get round => $_getI64(8);
  @$pb.TagNumber(9)
  set round($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRound() => $_has(8);
  @$pb.TagNumber(9)
  void clearRound() => clearField(9);
}

/// videoroom 关闭
class VideoRoomClosed extends $pb.GeneratedMessage {
  factory VideoRoomClosed({
    $fixnum.Int64? userId,
    $fixnum.Int64? roomId,
    $fixnum.Int64? enterTime,
    $fixnum.Int64? exitTime,
    $fixnum.Int64? watchTime,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (enterTime != null) {
      $result.enterTime = enterTime;
    }
    if (exitTime != null) {
      $result.exitTime = exitTime;
    }
    if (watchTime != null) {
      $result.watchTime = watchTime;
    }
    return $result;
  }
  VideoRoomClosed._() : super();
  factory VideoRoomClosed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoRoomClosed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VideoRoomClosed', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..aInt64(3, _omitFieldNames ? '' : 'EnterTime', protoName: 'EnterTime')
    ..aInt64(4, _omitFieldNames ? '' : 'ExitTime', protoName: 'ExitTime')
    ..aInt64(5, _omitFieldNames ? '' : 'WatchTime', protoName: 'WatchTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoRoomClosed clone() => VideoRoomClosed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoRoomClosed copyWith(void Function(VideoRoomClosed) updates) => super.copyWith((message) => updates(message as VideoRoomClosed)) as VideoRoomClosed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoRoomClosed create() => VideoRoomClosed._();
  VideoRoomClosed createEmptyInstance() => create();
  static $pb.PbList<VideoRoomClosed> createRepeated() => $pb.PbList<VideoRoomClosed>();
  @$core.pragma('dart2js:noInline')
  static VideoRoomClosed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoRoomClosed>(create);
  static VideoRoomClosed? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roomId => $_getI64(1);
  @$pb.TagNumber(2)
  set roomId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get enterTime => $_getI64(2);
  @$pb.TagNumber(3)
  set enterTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnterTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnterTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get exitTime => $_getI64(3);
  @$pb.TagNumber(4)
  set exitTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExitTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearExitTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get watchTime => $_getI64(4);
  @$pb.TagNumber(5)
  set watchTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWatchTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearWatchTime() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
