//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/live_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/comm.pb.dart' as $1;
import '../../pb_pub/error_code.pbenum.dart' as $2;
import '../../pb_pub/yx_msg.pb.dart' as $0;
import '../../pb_pub/yx_msg_type.pbenum.dart' as $3;
import 'live_room.pbenum.dart';

export 'live_room.pbenum.dart';

/// ============主播开播相关消息定义======================
///  主播开播请求
class LiveStartReq extends $pb.GeneratedMessage {
  factory LiveStartReq({
    RoomType? roomType,
    $core.String? roomName,
    $fixnum.Int64? roomId,
    PartyType? partyType,
    RoomTheme? roomTheme,
  }) {
    final $result = create();
    if (roomType != null) {
      $result.roomType = roomType;
    }
    if (roomName != null) {
      $result.roomName = roomName;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (partyType != null) {
      $result.partyType = partyType;
    }
    if (roomTheme != null) {
      $result.roomTheme = roomTheme;
    }
    return $result;
  }
  LiveStartReq._() : super();
  factory LiveStartReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveStartReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveStartReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<RoomType>(1, _omitFieldNames ? '' : 'roomType', $pb.PbFieldType.OE, protoName: 'roomType', defaultOrMaker: RoomType.Unknow, valueOf: RoomType.valueOf, enumValues: RoomType.values)
    ..aOS(2, _omitFieldNames ? '' : 'roomName', protoName: 'roomName')
    ..aInt64(3, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..e<PartyType>(4, _omitFieldNames ? '' : 'partyType', $pb.PbFieldType.OE, protoName: 'partyType', defaultOrMaker: PartyType.Six, valueOf: PartyType.valueOf, enumValues: PartyType.values)
    ..e<RoomTheme>(5, _omitFieldNames ? '' : 'roomTheme', $pb.PbFieldType.OE, protoName: 'roomTheme', defaultOrMaker: RoomTheme.UNKNOWN_THEME, valueOf: RoomTheme.valueOf, enumValues: RoomTheme.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveStartReq clone() => LiveStartReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveStartReq copyWith(void Function(LiveStartReq) updates) => super.copyWith((message) => updates(message as LiveStartReq)) as LiveStartReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStartReq create() => LiveStartReq._();
  LiveStartReq createEmptyInstance() => create();
  static $pb.PbList<LiveStartReq> createRepeated() => $pb.PbList<LiveStartReq>();
  @$core.pragma('dart2js:noInline')
  static LiveStartReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveStartReq>(create);
  static LiveStartReq? _defaultInstance;

  @$pb.TagNumber(1)
  RoomType get roomType => $_getN(0);
  @$pb.TagNumber(1)
  set roomType(RoomType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomName => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get roomId => $_getI64(2);
  @$pb.TagNumber(3)
  set roomId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);

  @$pb.TagNumber(4)
  PartyType get partyType => $_getN(3);
  @$pb.TagNumber(4)
  set partyType(PartyType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPartyType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartyType() => clearField(4);

  @$pb.TagNumber(5)
  RoomTheme get roomTheme => $_getN(4);
  @$pb.TagNumber(5)
  set roomTheme(RoomTheme v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoomTheme() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoomTheme() => clearField(5);
}

/// ALPHA 主播开播逻辑改造
class LiveStartRsp extends $pb.GeneratedMessage {
  factory LiveStartRsp({
    $core.int? streamType,
    $core.String? pushStreamAddress,
    $core.int? liveMode,
    $core.String? coverImage,
    $core.String? unPassReason,
    $core.String? coverStatus,
    $core.bool? canLiveStatus,
    $core.String? message,
    $2.ErrCode? result,
  }) {
    final $result = create();
    if (streamType != null) {
      $result.streamType = streamType;
    }
    if (pushStreamAddress != null) {
      $result.pushStreamAddress = pushStreamAddress;
    }
    if (liveMode != null) {
      $result.liveMode = liveMode;
    }
    if (coverImage != null) {
      $result.coverImage = coverImage;
    }
    if (unPassReason != null) {
      $result.unPassReason = unPassReason;
    }
    if (coverStatus != null) {
      $result.coverStatus = coverStatus;
    }
    if (canLiveStatus != null) {
      $result.canLiveStatus = canLiveStatus;
    }
    if (message != null) {
      $result.message = message;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  LiveStartRsp._() : super();
  factory LiveStartRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveStartRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveStartRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamType', $pb.PbFieldType.O3, protoName: 'streamType')
    ..aOS(2, _omitFieldNames ? '' : 'pushStreamAddress', protoName: 'pushStreamAddress')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'liveMode', $pb.PbFieldType.O3, protoName: 'liveMode')
    ..aOS(4, _omitFieldNames ? '' : 'coverImage', protoName: 'coverImage')
    ..aOS(5, _omitFieldNames ? '' : 'unPassReason', protoName: 'unPassReason')
    ..aOS(6, _omitFieldNames ? '' : 'coverStatus', protoName: 'coverStatus')
    ..aOB(7, _omitFieldNames ? '' : 'canLiveStatus', protoName: 'canLiveStatus')
    ..aOS(8, _omitFieldNames ? '' : 'message')
    ..e<$2.ErrCode>(9, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveStartRsp clone() => LiveStartRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveStartRsp copyWith(void Function(LiveStartRsp) updates) => super.copyWith((message) => updates(message as LiveStartRsp)) as LiveStartRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStartRsp create() => LiveStartRsp._();
  LiveStartRsp createEmptyInstance() => create();
  static $pb.PbList<LiveStartRsp> createRepeated() => $pb.PbList<LiveStartRsp>();
  @$core.pragma('dart2js:noInline')
  static LiveStartRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveStartRsp>(create);
  static LiveStartRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get streamType => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStreamType() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pushStreamAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set pushStreamAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPushStreamAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearPushStreamAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get liveMode => $_getIZ(2);
  @$pb.TagNumber(3)
  set liveMode($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLiveMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearLiveMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get coverImage => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverImage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoverImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverImage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get unPassReason => $_getSZ(4);
  @$pb.TagNumber(5)
  set unPassReason($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnPassReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnPassReason() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get coverStatus => $_getSZ(5);
  @$pb.TagNumber(6)
  set coverStatus($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCoverStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoverStatus() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get canLiveStatus => $_getBF(6);
  @$pb.TagNumber(7)
  set canLiveStatus($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCanLiveStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearCanLiveStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get message => $_getSZ(7);
  @$pb.TagNumber(8)
  set message($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMessage() => $_has(7);
  @$pb.TagNumber(8)
  void clearMessage() => clearField(8);

  @$pb.TagNumber(9)
  $2.ErrCode get result => $_getN(8);
  @$pb.TagNumber(9)
  set result($2.ErrCode v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasResult() => $_has(8);
  @$pb.TagNumber(9)
  void clearResult() => clearField(9);
}

/// 主播下播请求
class LiveStopReq extends $pb.GeneratedMessage {
  factory LiveStopReq({
    $core.String? reason,
  }) {
    final $result = create();
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  LiveStopReq._() : super();
  factory LiveStopReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveStopReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveStopReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveStopReq clone() => LiveStopReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveStopReq copyWith(void Function(LiveStopReq) updates) => super.copyWith((message) => updates(message as LiveStopReq)) as LiveStopReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStopReq create() => LiveStopReq._();
  LiveStopReq createEmptyInstance() => create();
  static $pb.PbList<LiveStopReq> createRepeated() => $pb.PbList<LiveStopReq>();
  @$core.pragma('dart2js:noInline')
  static LiveStopReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveStopReq>(create);
  static LiveStopReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get reason => $_getSZ(0);
  @$pb.TagNumber(1)
  set reason($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => clearField(1);
}

/// 主播下播应答
class LiveStopRsp extends $pb.GeneratedMessage {
  factory LiveStopRsp() => create();
  LiveStopRsp._() : super();
  factory LiveStopRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveStopRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveStopRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveStopRsp clone() => LiveStopRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveStopRsp copyWith(void Function(LiveStopRsp) updates) => super.copyWith((message) => updates(message as LiveStopRsp)) as LiveStopRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStopRsp create() => LiveStopRsp._();
  LiveStopRsp createEmptyInstance() => create();
  static $pb.PbList<LiveStopRsp> createRepeated() => $pb.PbList<LiveStopRsp>();
  @$core.pragma('dart2js:noInline')
  static LiveStopRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveStopRsp>(create);
  static LiveStopRsp? _defaultInstance;
}

/// 推流成功，允许观众进入
class LiveStartSuccessReq extends $pb.GeneratedMessage {
  factory LiveStartSuccessReq() => create();
  LiveStartSuccessReq._() : super();
  factory LiveStartSuccessReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveStartSuccessReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveStartSuccessReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveStartSuccessReq clone() => LiveStartSuccessReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveStartSuccessReq copyWith(void Function(LiveStartSuccessReq) updates) => super.copyWith((message) => updates(message as LiveStartSuccessReq)) as LiveStartSuccessReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStartSuccessReq create() => LiveStartSuccessReq._();
  LiveStartSuccessReq createEmptyInstance() => create();
  static $pb.PbList<LiveStartSuccessReq> createRepeated() => $pb.PbList<LiveStartSuccessReq>();
  @$core.pragma('dart2js:noInline')
  static LiveStartSuccessReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveStartSuccessReq>(create);
  static LiveStartSuccessReq? _defaultInstance;
}

/// 推流成功，允许观众进入应答
class LiveStartSuccessRsp extends $pb.GeneratedMessage {
  factory LiveStartSuccessRsp() => create();
  LiveStartSuccessRsp._() : super();
  factory LiveStartSuccessRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveStartSuccessRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveStartSuccessRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveStartSuccessRsp clone() => LiveStartSuccessRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveStartSuccessRsp copyWith(void Function(LiveStartSuccessRsp) updates) => super.copyWith((message) => updates(message as LiveStartSuccessRsp)) as LiveStartSuccessRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStartSuccessRsp create() => LiveStartSuccessRsp._();
  LiveStartSuccessRsp createEmptyInstance() => create();
  static $pb.PbList<LiveStartSuccessRsp> createRepeated() => $pb.PbList<LiveStartSuccessRsp>();
  @$core.pragma('dart2js:noInline')
  static LiveStartSuccessRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveStartSuccessRsp>(create);
  static LiveStartSuccessRsp? _defaultInstance;
}

/// 主播开播信息推送粉丝
class LiveStartNotify extends $pb.GeneratedMessage {
  factory LiveStartNotify({
    $fixnum.Int64? groupId,
    $core.String? msg,
    $core.String? title,
    $core.int? type,
    $core.String? nickName,
    $core.String? bigImageOriginal,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    if (title != null) {
      $result.title = title;
    }
    if (type != null) {
      $result.type = type;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (bigImageOriginal != null) {
      $result.bigImageOriginal = bigImageOriginal;
    }
    return $result;
  }
  LiveStartNotify._() : super();
  factory LiveStartNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveStartNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveStartNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aOS(6, _omitFieldNames ? '' : 'bigImageOriginal', protoName: 'bigImageOriginal')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveStartNotify clone() => LiveStartNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveStartNotify copyWith(void Function(LiveStartNotify) updates) => super.copyWith((message) => updates(message as LiveStartNotify)) as LiveStartNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStartNotify create() => LiveStartNotify._();
  LiveStartNotify createEmptyInstance() => create();
  static $pb.PbList<LiveStartNotify> createRepeated() => $pb.PbList<LiveStartNotify>();
  @$core.pragma('dart2js:noInline')
  static LiveStartNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveStartNotify>(create);
  static LiveStartNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get nickName => $_getSZ(4);
  @$pb.TagNumber(5)
  set nickName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNickName() => $_has(4);
  @$pb.TagNumber(5)
  void clearNickName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get bigImageOriginal => $_getSZ(5);
  @$pb.TagNumber(6)
  set bigImageOriginal($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBigImageOriginal() => $_has(5);
  @$pb.TagNumber(6)
  void clearBigImageOriginal() => clearField(6);
}

/// //============观众进入直播间相关消息定义======================
///  用户进入房间
class AudienceEnterLiveReq extends $pb.GeneratedMessage {
  factory AudienceEnterLiveReq() => create();
  AudienceEnterLiveReq._() : super();
  factory AudienceEnterLiveReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AudienceEnterLiveReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AudienceEnterLiveReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AudienceEnterLiveReq clone() => AudienceEnterLiveReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AudienceEnterLiveReq copyWith(void Function(AudienceEnterLiveReq) updates) => super.copyWith((message) => updates(message as AudienceEnterLiveReq)) as AudienceEnterLiveReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AudienceEnterLiveReq create() => AudienceEnterLiveReq._();
  AudienceEnterLiveReq createEmptyInstance() => create();
  static $pb.PbList<AudienceEnterLiveReq> createRepeated() => $pb.PbList<AudienceEnterLiveReq>();
  @$core.pragma('dart2js:noInline')
  static AudienceEnterLiveReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AudienceEnterLiveReq>(create);
  static AudienceEnterLiveReq? _defaultInstance;
}

/// 主播开播应答，鉴权返回码放到PBMessage的errcode
/// 如果失败则 map["result"] 里面取错误描述
class UserEnterLiveRsp extends $pb.GeneratedMessage {
  factory UserEnterLiveRsp({
    $core.int? streamType,
    $core.String? wordUpdateTime,
  }) {
    final $result = create();
    if (streamType != null) {
      $result.streamType = streamType;
    }
    if (wordUpdateTime != null) {
      $result.wordUpdateTime = wordUpdateTime;
    }
    return $result;
  }
  UserEnterLiveRsp._() : super();
  factory UserEnterLiveRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserEnterLiveRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserEnterLiveRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamType', $pb.PbFieldType.O3, protoName: 'streamType')
    ..aOS(2, _omitFieldNames ? '' : 'wordUpdateTime', protoName: 'wordUpdateTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserEnterLiveRsp clone() => UserEnterLiveRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserEnterLiveRsp copyWith(void Function(UserEnterLiveRsp) updates) => super.copyWith((message) => updates(message as UserEnterLiveRsp)) as UserEnterLiveRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserEnterLiveRsp create() => UserEnterLiveRsp._();
  UserEnterLiveRsp createEmptyInstance() => create();
  static $pb.PbList<UserEnterLiveRsp> createRepeated() => $pb.PbList<UserEnterLiveRsp>();
  @$core.pragma('dart2js:noInline')
  static UserEnterLiveRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserEnterLiveRsp>(create);
  static UserEnterLiveRsp? _defaultInstance;

  /// 直播sdk类型，0：未知 1：zego，:2:三体
  @$pb.TagNumber(1)
  $core.int get streamType => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStreamType() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamType() => clearField(1);

  /// 违禁词更新时间，控制客户端是否更新违禁词
  @$pb.TagNumber(2)
  $core.String get wordUpdateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set wordUpdateTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWordUpdateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearWordUpdateTime() => clearField(2);
}

/// 用户道具
class LiveUserPropsNotify extends $pb.GeneratedMessage {
  factory LiveUserPropsNotify({
    $core.String? mountInfo,
    $core.String? fansInfo,
  }) {
    final $result = create();
    if (mountInfo != null) {
      $result.mountInfo = mountInfo;
    }
    if (fansInfo != null) {
      $result.fansInfo = fansInfo;
    }
    return $result;
  }
  LiveUserPropsNotify._() : super();
  factory LiveUserPropsNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveUserPropsNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveUserPropsNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'MountInfo', protoName: 'MountInfo')
    ..aOS(2, _omitFieldNames ? '' : 'FansInfo', protoName: 'FansInfo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveUserPropsNotify clone() => LiveUserPropsNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveUserPropsNotify copyWith(void Function(LiveUserPropsNotify) updates) => super.copyWith((message) => updates(message as LiveUserPropsNotify)) as LiveUserPropsNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveUserPropsNotify create() => LiveUserPropsNotify._();
  LiveUserPropsNotify createEmptyInstance() => create();
  static $pb.PbList<LiveUserPropsNotify> createRepeated() => $pb.PbList<LiveUserPropsNotify>();
  @$core.pragma('dart2js:noInline')
  static LiveUserPropsNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveUserPropsNotify>(create);
  static LiveUserPropsNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mountInfo => $_getSZ(0);
  @$pb.TagNumber(1)
  set mountInfo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMountInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearMountInfo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fansInfo => $_getSZ(1);
  @$pb.TagNumber(2)
  set fansInfo($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFansInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearFansInfo() => clearField(2);
}

/// 房间状态推送
class RoomStatusNotify extends $pb.GeneratedMessage {
  factory RoomStatusNotify({
    $fixnum.Int64? groupId,
    RoomStatus? roomStatus,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (roomStatus != null) {
      $result.roomStatus = roomStatus;
    }
    return $result;
  }
  RoomStatusNotify._() : super();
  factory RoomStatusNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomStatusNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomStatusNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..e<RoomStatus>(2, _omitFieldNames ? '' : 'roomStatus', $pb.PbFieldType.OE, protoName: 'roomStatus', defaultOrMaker: RoomStatus.NORMAL, valueOf: RoomStatus.valueOf, enumValues: RoomStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomStatusNotify clone() => RoomStatusNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomStatusNotify copyWith(void Function(RoomStatusNotify) updates) => super.copyWith((message) => updates(message as RoomStatusNotify)) as RoomStatusNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomStatusNotify create() => RoomStatusNotify._();
  RoomStatusNotify createEmptyInstance() => create();
  static $pb.PbList<RoomStatusNotify> createRepeated() => $pb.PbList<RoomStatusNotify>();
  @$core.pragma('dart2js:noInline')
  static RoomStatusNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomStatusNotify>(create);
  static RoomStatusNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  RoomStatus get roomStatus => $_getN(1);
  @$pb.TagNumber(2)
  set roomStatus(RoomStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomStatus() => clearField(2);
}

class YXCommMsgNode extends $pb.GeneratedMessage {
  factory YXCommMsgNode({
    $0.YXCommMsg? yxMsg,
    $fixnum.Int64? time,
    $fixnum.Int64? sn,
    $fixnum.Int64? srcUserId,
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (yxMsg != null) {
      $result.yxMsg = yxMsg;
    }
    if (time != null) {
      $result.time = time;
    }
    if (sn != null) {
      $result.sn = sn;
    }
    if (srcUserId != null) {
      $result.srcUserId = srcUserId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  YXCommMsgNode._() : super();
  factory YXCommMsgNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory YXCommMsgNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'YXCommMsgNode', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<$0.YXCommMsg>(1, _omitFieldNames ? '' : 'yxMsg', protoName: 'yxMsg', subBuilder: $0.YXCommMsg.create)
    ..aInt64(2, _omitFieldNames ? '' : 'time')
    ..aInt64(4, _omitFieldNames ? '' : 'sn')
    ..aInt64(5, _omitFieldNames ? '' : 'srcUserId', protoName: 'srcUserId')
    ..aInt64(6, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  YXCommMsgNode clone() => YXCommMsgNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  YXCommMsgNode copyWith(void Function(YXCommMsgNode) updates) => super.copyWith((message) => updates(message as YXCommMsgNode)) as YXCommMsgNode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static YXCommMsgNode create() => YXCommMsgNode._();
  YXCommMsgNode createEmptyInstance() => create();
  static $pb.PbList<YXCommMsgNode> createRepeated() => $pb.PbList<YXCommMsgNode>();
  @$core.pragma('dart2js:noInline')
  static YXCommMsgNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YXCommMsgNode>(create);
  static YXCommMsgNode? _defaultInstance;

  @$pb.TagNumber(1)
  $0.YXCommMsg get yxMsg => $_getN(0);
  @$pb.TagNumber(1)
  set yxMsg($0.YXCommMsg v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasYxMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearYxMsg() => clearField(1);
  @$pb.TagNumber(1)
  $0.YXCommMsg ensureYxMsg() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get time => $_getI64(1);
  @$pb.TagNumber(2)
  set time($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sn => $_getI64(2);
  @$pb.TagNumber(4)
  set sn($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasSn() => $_has(2);
  @$pb.TagNumber(4)
  void clearSn() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get srcUserId => $_getI64(3);
  @$pb.TagNumber(5)
  set srcUserId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSrcUserId() => $_has(3);
  @$pb.TagNumber(5)
  void clearSrcUserId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get groupId => $_getI64(4);
  @$pb.TagNumber(6)
  set groupId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupId() => $_has(4);
  @$pb.TagNumber(6)
  void clearGroupId() => clearField(6);
}

/// ALPHA 历史消息
class HistoryMsg extends $pb.GeneratedMessage {
  factory HistoryMsg({
    $core.List<$core.int>? pbData,
    $core.String? pbName,
    $fixnum.Int64? time,
    $fixnum.Int64? msgSn,
    $fixnum.Int64? srcId,
    $fixnum.Int64? groupId,
    $3.MessageType? msgType,
  }) {
    final $result = create();
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (time != null) {
      $result.time = time;
    }
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (srcId != null) {
      $result.srcId = srcId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (msgType != null) {
      $result.msgType = msgType;
    }
    return $result;
  }
  HistoryMsg._() : super();
  factory HistoryMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..aOS(2, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..aInt64(4, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..aInt64(5, _omitFieldNames ? '' : 'srcId', protoName: 'srcId')
    ..aInt64(6, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..e<$3.MessageType>(7, _omitFieldNames ? '' : 'msgType', $pb.PbFieldType.OE, protoName: 'msgType', defaultOrMaker: $3.MessageType.MessageTypeUnknown, valueOf: $3.MessageType.valueOf, enumValues: $3.MessageType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryMsg clone() => HistoryMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryMsg copyWith(void Function(HistoryMsg) updates) => super.copyWith((message) => updates(message as HistoryMsg)) as HistoryMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryMsg create() => HistoryMsg._();
  HistoryMsg createEmptyInstance() => create();
  static $pb.PbList<HistoryMsg> createRepeated() => $pb.PbList<HistoryMsg>();
  @$core.pragma('dart2js:noInline')
  static HistoryMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryMsg>(create);
  static HistoryMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pbData => $_getN(0);
  @$pb.TagNumber(1)
  set pbData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbData() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pbName => $_getSZ(1);
  @$pb.TagNumber(2)
  set pbName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPbName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPbName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get msgSn => $_getI64(3);
  @$pb.TagNumber(4)
  set msgSn($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMsgSn() => $_has(3);
  @$pb.TagNumber(4)
  void clearMsgSn() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get srcId => $_getI64(4);
  @$pb.TagNumber(5)
  set srcId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSrcId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSrcId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get groupId => $_getI64(5);
  @$pb.TagNumber(6)
  set groupId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupId() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupId() => clearField(6);

  @$pb.TagNumber(7)
  $3.MessageType get msgType => $_getN(6);
  @$pb.TagNumber(7)
  set msgType($3.MessageType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMsgType() => $_has(6);
  @$pb.TagNumber(7)
  void clearMsgType() => clearField(7);
}

/// 获取直播间历史消息（10条文字）
class HistoryYXCommMsgReq extends $pb.GeneratedMessage {
  factory HistoryYXCommMsgReq() => create();
  HistoryYXCommMsgReq._() : super();
  factory HistoryYXCommMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryYXCommMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryYXCommMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryYXCommMsgReq clone() => HistoryYXCommMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryYXCommMsgReq copyWith(void Function(HistoryYXCommMsgReq) updates) => super.copyWith((message) => updates(message as HistoryYXCommMsgReq)) as HistoryYXCommMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryYXCommMsgReq create() => HistoryYXCommMsgReq._();
  HistoryYXCommMsgReq createEmptyInstance() => create();
  static $pb.PbList<HistoryYXCommMsgReq> createRepeated() => $pb.PbList<HistoryYXCommMsgReq>();
  @$core.pragma('dart2js:noInline')
  static HistoryYXCommMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryYXCommMsgReq>(create);
  static HistoryYXCommMsgReq? _defaultInstance;
}

class HistoryYXCommMsgRsp extends $pb.GeneratedMessage {
  factory HistoryYXCommMsgRsp({
    $fixnum.Int64? msgNum,
    $core.Iterable<YXCommMsgNode>? msgList,
    $fixnum.Int64? latestSn,
    $core.Iterable<HistoryMsg>? historyMsgs,
    $fixnum.Int64? latestMsgSn,
  }) {
    final $result = create();
    if (msgNum != null) {
      $result.msgNum = msgNum;
    }
    if (msgList != null) {
      $result.msgList.addAll(msgList);
    }
    if (latestSn != null) {
      $result.latestSn = latestSn;
    }
    if (historyMsgs != null) {
      $result.historyMsgs.addAll(historyMsgs);
    }
    if (latestMsgSn != null) {
      $result.latestMsgSn = latestMsgSn;
    }
    return $result;
  }
  HistoryYXCommMsgRsp._() : super();
  factory HistoryYXCommMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryYXCommMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryYXCommMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgNum', protoName: 'msgNum')
    ..pc<YXCommMsgNode>(2, _omitFieldNames ? '' : 'msgList', $pb.PbFieldType.PM, protoName: 'msgList', subBuilder: YXCommMsgNode.create)
    ..aInt64(3, _omitFieldNames ? '' : 'latestSn', protoName: 'latestSn')
    ..pc<HistoryMsg>(4, _omitFieldNames ? '' : 'historyMsgs', $pb.PbFieldType.PM, protoName: 'historyMsgs', subBuilder: HistoryMsg.create)
    ..aInt64(5, _omitFieldNames ? '' : 'latestMsgSn', protoName: 'latestMsgSn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryYXCommMsgRsp clone() => HistoryYXCommMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryYXCommMsgRsp copyWith(void Function(HistoryYXCommMsgRsp) updates) => super.copyWith((message) => updates(message as HistoryYXCommMsgRsp)) as HistoryYXCommMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryYXCommMsgRsp create() => HistoryYXCommMsgRsp._();
  HistoryYXCommMsgRsp createEmptyInstance() => create();
  static $pb.PbList<HistoryYXCommMsgRsp> createRepeated() => $pb.PbList<HistoryYXCommMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static HistoryYXCommMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryYXCommMsgRsp>(create);
  static HistoryYXCommMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgNum => $_getI64(0);
  @$pb.TagNumber(1)
  set msgNum($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<YXCommMsgNode> get msgList => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get latestSn => $_getI64(2);
  @$pb.TagNumber(3)
  set latestSn($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLatestSn() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatestSn() => clearField(3);

  /// ALPHA 新的历史消息字段
  @$pb.TagNumber(4)
  $core.List<HistoryMsg> get historyMsgs => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get latestMsgSn => $_getI64(4);
  @$pb.TagNumber(5)
  set latestMsgSn($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatestMsgSn() => $_has(4);
  @$pb.TagNumber(5)
  void clearLatestMsgSn() => clearField(5);
}

/// 断线重连获取直播间历史消息（100条全部类型消息）
class ReloadYXCommMsgReq extends $pb.GeneratedMessage {
  factory ReloadYXCommMsgReq({
    $fixnum.Int64? sn,
  }) {
    final $result = create();
    if (sn != null) {
      $result.sn = sn;
    }
    return $result;
  }
  ReloadYXCommMsgReq._() : super();
  factory ReloadYXCommMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReloadYXCommMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReloadYXCommMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReloadYXCommMsgReq clone() => ReloadYXCommMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReloadYXCommMsgReq copyWith(void Function(ReloadYXCommMsgReq) updates) => super.copyWith((message) => updates(message as ReloadYXCommMsgReq)) as ReloadYXCommMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReloadYXCommMsgReq create() => ReloadYXCommMsgReq._();
  ReloadYXCommMsgReq createEmptyInstance() => create();
  static $pb.PbList<ReloadYXCommMsgReq> createRepeated() => $pb.PbList<ReloadYXCommMsgReq>();
  @$core.pragma('dart2js:noInline')
  static ReloadYXCommMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReloadYXCommMsgReq>(create);
  static ReloadYXCommMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sn => $_getI64(0);
  @$pb.TagNumber(1)
  set sn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearSn() => clearField(1);
}

class ReloadYXCommMsgRsp extends $pb.GeneratedMessage {
  factory ReloadYXCommMsgRsp({
    $fixnum.Int64? msgNum,
    $core.Iterable<YXCommMsgNode>? msgList,
    $fixnum.Int64? latestSn,
    $core.Iterable<HistoryMsg>? historyMsgs,
    $fixnum.Int64? latestMsgSn,
  }) {
    final $result = create();
    if (msgNum != null) {
      $result.msgNum = msgNum;
    }
    if (msgList != null) {
      $result.msgList.addAll(msgList);
    }
    if (latestSn != null) {
      $result.latestSn = latestSn;
    }
    if (historyMsgs != null) {
      $result.historyMsgs.addAll(historyMsgs);
    }
    if (latestMsgSn != null) {
      $result.latestMsgSn = latestMsgSn;
    }
    return $result;
  }
  ReloadYXCommMsgRsp._() : super();
  factory ReloadYXCommMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReloadYXCommMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReloadYXCommMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgNum', protoName: 'msgNum')
    ..pc<YXCommMsgNode>(2, _omitFieldNames ? '' : 'msgList', $pb.PbFieldType.PM, protoName: 'msgList', subBuilder: YXCommMsgNode.create)
    ..aInt64(3, _omitFieldNames ? '' : 'latestSn', protoName: 'latestSn')
    ..pc<HistoryMsg>(4, _omitFieldNames ? '' : 'historyMsgs', $pb.PbFieldType.PM, protoName: 'historyMsgs', subBuilder: HistoryMsg.create)
    ..aInt64(5, _omitFieldNames ? '' : 'latestMsgSn', protoName: 'latestMsgSn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReloadYXCommMsgRsp clone() => ReloadYXCommMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReloadYXCommMsgRsp copyWith(void Function(ReloadYXCommMsgRsp) updates) => super.copyWith((message) => updates(message as ReloadYXCommMsgRsp)) as ReloadYXCommMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReloadYXCommMsgRsp create() => ReloadYXCommMsgRsp._();
  ReloadYXCommMsgRsp createEmptyInstance() => create();
  static $pb.PbList<ReloadYXCommMsgRsp> createRepeated() => $pb.PbList<ReloadYXCommMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static ReloadYXCommMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReloadYXCommMsgRsp>(create);
  static ReloadYXCommMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgNum => $_getI64(0);
  @$pb.TagNumber(1)
  set msgNum($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<YXCommMsgNode> get msgList => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get latestSn => $_getI64(2);
  @$pb.TagNumber(3)
  set latestSn($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLatestSn() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatestSn() => clearField(3);

  /// ALPHA 新的历史消息字段
  @$pb.TagNumber(4)
  $core.List<HistoryMsg> get historyMsgs => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get latestMsgSn => $_getI64(4);
  @$pb.TagNumber(5)
  set latestMsgSn($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatestMsgSn() => $_has(4);
  @$pb.TagNumber(5)
  void clearLatestMsgSn() => clearField(5);
}

/// PK数值更新
class PKScoreNotify extends $pb.GeneratedMessage {
  factory PKScoreNotify({
    $core.Map<$fixnum.Int64, $fixnum.Int64>? pkScore,
  }) {
    final $result = create();
    if (pkScore != null) {
      $result.pkScore.addAll(pkScore);
    }
    return $result;
  }
  PKScoreNotify._() : super();
  factory PKScoreNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKScoreNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKScoreNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..m<$fixnum.Int64, $fixnum.Int64>(1, _omitFieldNames ? '' : 'pkScore', protoName: 'pkScore', entryClassName: 'PKScoreNotify.PkScoreEntry', keyFieldType: $pb.PbFieldType.O6, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('pb_msg_live_room'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKScoreNotify clone() => PKScoreNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKScoreNotify copyWith(void Function(PKScoreNotify) updates) => super.copyWith((message) => updates(message as PKScoreNotify)) as PKScoreNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKScoreNotify create() => PKScoreNotify._();
  PKScoreNotify createEmptyInstance() => create();
  static $pb.PbList<PKScoreNotify> createRepeated() => $pb.PbList<PKScoreNotify>();
  @$core.pragma('dart2js:noInline')
  static PKScoreNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKScoreNotify>(create);
  static PKScoreNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$fixnum.Int64, $fixnum.Int64> get pkScore => $_getMap(0);
}

/// PK礼物属性
class PKPROPNotify extends $pb.GeneratedMessage {
  factory PKPROPNotify({
    $fixnum.Int64? giftId,
    $core.String? giftImage,
    $core.String? giftName,
    $fixnum.Int64? actorId,
    $core.String? targetName,
    $fixnum.Int64? userId,
    $core.String? headImg,
    $core.String? senderName,
    $core.bool? levelPrivilegeOpen,
    $fixnum.Int64? startTime,
    $fixnum.Int64? endTime,
    $fixnum.Int64? curTime,
    $fixnum.Int64? giftNumber,
  }) {
    final $result = create();
    if (giftId != null) {
      $result.giftId = giftId;
    }
    if (giftImage != null) {
      $result.giftImage = giftImage;
    }
    if (giftName != null) {
      $result.giftName = giftName;
    }
    if (actorId != null) {
      $result.actorId = actorId;
    }
    if (targetName != null) {
      $result.targetName = targetName;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (headImg != null) {
      $result.headImg = headImg;
    }
    if (senderName != null) {
      $result.senderName = senderName;
    }
    if (levelPrivilegeOpen != null) {
      $result.levelPrivilegeOpen = levelPrivilegeOpen;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (curTime != null) {
      $result.curTime = curTime;
    }
    if (giftNumber != null) {
      $result.giftNumber = giftNumber;
    }
    return $result;
  }
  PKPROPNotify._() : super();
  factory PKPROPNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKPROPNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKPROPNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'giftId', protoName: 'giftId')
    ..aOS(2, _omitFieldNames ? '' : 'giftImage', protoName: 'giftImage')
    ..aOS(3, _omitFieldNames ? '' : 'giftName', protoName: 'giftName')
    ..aInt64(4, _omitFieldNames ? '' : 'actorId', protoName: 'actorId')
    ..aOS(5, _omitFieldNames ? '' : 'targetName', protoName: 'targetName')
    ..aInt64(6, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(7, _omitFieldNames ? '' : 'headImg', protoName: 'headImg')
    ..aOS(8, _omitFieldNames ? '' : 'senderName', protoName: 'senderName')
    ..aOB(9, _omitFieldNames ? '' : 'levelPrivilegeOpen', protoName: 'levelPrivilegeOpen')
    ..aInt64(10, _omitFieldNames ? '' : 'startTime', protoName: 'startTime')
    ..aInt64(11, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..aInt64(12, _omitFieldNames ? '' : 'curTime', protoName: 'curTime')
    ..aInt64(13, _omitFieldNames ? '' : 'giftNumber', protoName: 'giftNumber')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKPROPNotify clone() => PKPROPNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKPROPNotify copyWith(void Function(PKPROPNotify) updates) => super.copyWith((message) => updates(message as PKPROPNotify)) as PKPROPNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKPROPNotify create() => PKPROPNotify._();
  PKPROPNotify createEmptyInstance() => create();
  static $pb.PbList<PKPROPNotify> createRepeated() => $pb.PbList<PKPROPNotify>();
  @$core.pragma('dart2js:noInline')
  static PKPROPNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKPROPNotify>(create);
  static PKPROPNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get giftId => $_getI64(0);
  @$pb.TagNumber(1)
  set giftId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGiftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGiftId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get giftImage => $_getSZ(1);
  @$pb.TagNumber(2)
  set giftImage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGiftImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearGiftImage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get giftName => $_getSZ(2);
  @$pb.TagNumber(3)
  set giftName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGiftName() => $_has(2);
  @$pb.TagNumber(3)
  void clearGiftName() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get actorId => $_getI64(3);
  @$pb.TagNumber(4)
  set actorId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasActorId() => $_has(3);
  @$pb.TagNumber(4)
  void clearActorId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get targetName => $_getSZ(4);
  @$pb.TagNumber(5)
  set targetName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTargetName() => $_has(4);
  @$pb.TagNumber(5)
  void clearTargetName() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get userId => $_getI64(5);
  @$pb.TagNumber(6)
  set userId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get headImg => $_getSZ(6);
  @$pb.TagNumber(7)
  set headImg($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHeadImg() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeadImg() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get senderName => $_getSZ(7);
  @$pb.TagNumber(8)
  set senderName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSenderName() => $_has(7);
  @$pb.TagNumber(8)
  void clearSenderName() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get levelPrivilegeOpen => $_getBF(8);
  @$pb.TagNumber(9)
  set levelPrivilegeOpen($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLevelPrivilegeOpen() => $_has(8);
  @$pb.TagNumber(9)
  void clearLevelPrivilegeOpen() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get startTime => $_getI64(9);
  @$pb.TagNumber(10)
  set startTime($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStartTime() => $_has(9);
  @$pb.TagNumber(10)
  void clearStartTime() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get endTime => $_getI64(10);
  @$pb.TagNumber(11)
  set endTime($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasEndTime() => $_has(10);
  @$pb.TagNumber(11)
  void clearEndTime() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get curTime => $_getI64(11);
  @$pb.TagNumber(12)
  set curTime($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCurTime() => $_has(11);
  @$pb.TagNumber(12)
  void clearCurTime() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get giftNumber => $_getI64(12);
  @$pb.TagNumber(13)
  set giftNumber($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasGiftNumber() => $_has(12);
  @$pb.TagNumber(13)
  void clearGiftNumber() => clearField(13);
}

/// 房间消息: 礼物消息
class LiveRoomGift extends $pb.GeneratedMessage {
  factory LiveRoomGift({
    $1.Gift? gift,
  }) {
    final $result = create();
    if (gift != null) {
      $result.gift = gift;
    }
    return $result;
  }
  LiveRoomGift._() : super();
  factory LiveRoomGift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveRoomGift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveRoomGift', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<$1.Gift>(1, _omitFieldNames ? '' : 'gift', subBuilder: $1.Gift.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveRoomGift clone() => LiveRoomGift()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveRoomGift copyWith(void Function(LiveRoomGift) updates) => super.copyWith((message) => updates(message as LiveRoomGift)) as LiveRoomGift;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveRoomGift create() => LiveRoomGift._();
  LiveRoomGift createEmptyInstance() => create();
  static $pb.PbList<LiveRoomGift> createRepeated() => $pb.PbList<LiveRoomGift>();
  @$core.pragma('dart2js:noInline')
  static LiveRoomGift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveRoomGift>(create);
  static LiveRoomGift? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Gift get gift => $_getN(0);
  @$pb.TagNumber(1)
  set gift($1.Gift v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGift() => $_has(0);
  @$pb.TagNumber(1)
  void clearGift() => clearField(1);
  @$pb.TagNumber(1)
  $1.Gift ensureGift() => $_ensure(0);
}

/// 房间消息: 主持模式消息
class HostMode extends $pb.GeneratedMessage {
  factory HostMode({
    $core.bool? isHostMode,
    $core.bool? isCurrentHostMode,
  }) {
    final $result = create();
    if (isHostMode != null) {
      $result.isHostMode = isHostMode;
    }
    if (isCurrentHostMode != null) {
      $result.isCurrentHostMode = isCurrentHostMode;
    }
    return $result;
  }
  HostMode._() : super();
  factory HostMode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HostMode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HostMode', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isHostMode', protoName: 'isHostMode')
    ..aOB(2, _omitFieldNames ? '' : 'isCurrentHostMode', protoName: 'isCurrentHostMode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HostMode clone() => HostMode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HostMode copyWith(void Function(HostMode) updates) => super.copyWith((message) => updates(message as HostMode)) as HostMode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HostMode create() => HostMode._();
  HostMode createEmptyInstance() => create();
  static $pb.PbList<HostMode> createRepeated() => $pb.PbList<HostMode>();
  @$core.pragma('dart2js:noInline')
  static HostMode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HostMode>(create);
  static HostMode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isHostMode => $_getBF(0);
  @$pb.TagNumber(1)
  set isHostMode($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsHostMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsHostMode() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isCurrentHostMode => $_getBF(1);
  @$pb.TagNumber(2)
  set isCurrentHostMode($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsCurrentHostMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsCurrentHostMode() => clearField(2);
}

/// ALPHA 用户进房间改造
/// 用户进房间通知
class RoomInfo extends $pb.GeneratedMessage {
  factory RoomInfo({
    $fixnum.Int64? roomId,
    $fixnum.Int64? onLineNum,
    $core.int? roomStatus,
    $fixnum.Int64? actorId,
    $core.String? imId,
    $core.String? roomNotice,
    $core.String? actorLevel,
    $core.int? actorGrade,
    $fixnum.Int64? actorCurrentExperience,
    $core.String? headerImageOriginal,
    $core.String? headPendantUrl,
    $core.String? bigImageOriginal,
    $fixnum.Int64? recentReceiveCoins,
    $core.String? nickName,
    $core.String? fansCardName,
    $fixnum.Int64? broadcastLimitCoins,
    $fixnum.Int64? updateTime,
    $core.bool? switchToBack,
    RoomType? roomType,
    $core.Map<$core.String, $core.List<$core.int>>? exp,
    $core.String? pullStreamAddress,
    $core.String? roomName,
    $core.String? backgroundImageUrl,
    $fixnum.Int64? rank,
    $fixnum.Int64? victoryTimes,
    $core.String? dynamicBackgroundImage,
    $core.bool? isQualifiedPkTournament,
    $core.String? pkTournamentBeginTime,
    $core.String? pkTounamentTip,
    PartyType? partyType,
    RoomTheme? roomTheme,
    $core.bool? fansTop1Status,
  }) {
    final $result = create();
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (onLineNum != null) {
      $result.onLineNum = onLineNum;
    }
    if (roomStatus != null) {
      $result.roomStatus = roomStatus;
    }
    if (actorId != null) {
      $result.actorId = actorId;
    }
    if (imId != null) {
      $result.imId = imId;
    }
    if (roomNotice != null) {
      $result.roomNotice = roomNotice;
    }
    if (actorLevel != null) {
      $result.actorLevel = actorLevel;
    }
    if (actorGrade != null) {
      $result.actorGrade = actorGrade;
    }
    if (actorCurrentExperience != null) {
      $result.actorCurrentExperience = actorCurrentExperience;
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    if (headPendantUrl != null) {
      $result.headPendantUrl = headPendantUrl;
    }
    if (bigImageOriginal != null) {
      $result.bigImageOriginal = bigImageOriginal;
    }
    if (recentReceiveCoins != null) {
      $result.recentReceiveCoins = recentReceiveCoins;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (fansCardName != null) {
      $result.fansCardName = fansCardName;
    }
    if (broadcastLimitCoins != null) {
      $result.broadcastLimitCoins = broadcastLimitCoins;
    }
    if (updateTime != null) {
      $result.updateTime = updateTime;
    }
    if (switchToBack != null) {
      $result.switchToBack = switchToBack;
    }
    if (roomType != null) {
      $result.roomType = roomType;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (pullStreamAddress != null) {
      $result.pullStreamAddress = pullStreamAddress;
    }
    if (roomName != null) {
      $result.roomName = roomName;
    }
    if (backgroundImageUrl != null) {
      $result.backgroundImageUrl = backgroundImageUrl;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    if (victoryTimes != null) {
      $result.victoryTimes = victoryTimes;
    }
    if (dynamicBackgroundImage != null) {
      $result.dynamicBackgroundImage = dynamicBackgroundImage;
    }
    if (isQualifiedPkTournament != null) {
      $result.isQualifiedPkTournament = isQualifiedPkTournament;
    }
    if (pkTournamentBeginTime != null) {
      $result.pkTournamentBeginTime = pkTournamentBeginTime;
    }
    if (pkTounamentTip != null) {
      $result.pkTounamentTip = pkTounamentTip;
    }
    if (partyType != null) {
      $result.partyType = partyType;
    }
    if (roomTheme != null) {
      $result.roomTheme = roomTheme;
    }
    if (fansTop1Status != null) {
      $result.fansTop1Status = fansTop1Status;
    }
    return $result;
  }
  RoomInfo._() : super();
  factory RoomInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..aInt64(2, _omitFieldNames ? '' : 'onLineNum', protoName: 'onLineNum')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'roomStatus', $pb.PbFieldType.O3, protoName: 'roomStatus')
    ..aInt64(4, _omitFieldNames ? '' : 'actorId', protoName: 'actorId')
    ..aOS(5, _omitFieldNames ? '' : 'imId', protoName: 'imId')
    ..aOS(6, _omitFieldNames ? '' : 'roomNotice', protoName: 'roomNotice')
    ..aOS(7, _omitFieldNames ? '' : 'actorLevel', protoName: 'actorLevel')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'actorGrade', $pb.PbFieldType.O3, protoName: 'actorGrade')
    ..aInt64(9, _omitFieldNames ? '' : 'actorCurrentExperience', protoName: 'actorCurrentExperience')
    ..aOS(10, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..aOS(11, _omitFieldNames ? '' : 'headPendantUrl', protoName: 'headPendantUrl')
    ..aOS(12, _omitFieldNames ? '' : 'bigImageOriginal', protoName: 'bigImageOriginal')
    ..aInt64(13, _omitFieldNames ? '' : 'recentReceiveCoins', protoName: 'recentReceiveCoins')
    ..aOS(14, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aOS(15, _omitFieldNames ? '' : 'fansCardName', protoName: 'fansCardName')
    ..aInt64(20, _omitFieldNames ? '' : 'broadcastLimitCoins', protoName: 'broadcastLimitCoins')
    ..aInt64(21, _omitFieldNames ? '' : 'updateTime', protoName: 'updateTime')
    ..aOB(22, _omitFieldNames ? '' : 'switchToBack', protoName: 'switchToBack')
    ..e<RoomType>(23, _omitFieldNames ? '' : 'roomType', $pb.PbFieldType.OE, protoName: 'roomType', defaultOrMaker: RoomType.Unknow, valueOf: RoomType.valueOf, enumValues: RoomType.values)
    ..m<$core.String, $core.List<$core.int>>(24, _omitFieldNames ? '' : 'exp', entryClassName: 'RoomInfo.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('pb_msg_live_room'))
    ..aOS(25, _omitFieldNames ? '' : 'pullStreamAddress', protoName: 'pullStreamAddress')
    ..aOS(26, _omitFieldNames ? '' : 'roomName', protoName: 'roomName')
    ..aOS(27, _omitFieldNames ? '' : 'backgroundImageUrl', protoName: 'backgroundImageUrl')
    ..aInt64(41, _omitFieldNames ? '' : 'rank')
    ..aInt64(42, _omitFieldNames ? '' : 'victoryTimes', protoName: 'victoryTimes')
    ..aOS(43, _omitFieldNames ? '' : 'dynamicBackgroundImage', protoName: 'dynamicBackgroundImage')
    ..aOB(45, _omitFieldNames ? '' : 'isQualifiedPkTournament', protoName: 'isQualifiedPkTournament')
    ..aOS(46, _omitFieldNames ? '' : 'pkTournamentBeginTime', protoName: 'pkTournamentBeginTime')
    ..aOS(47, _omitFieldNames ? '' : 'pkTounamentTip', protoName: 'pkTounamentTip')
    ..e<PartyType>(48, _omitFieldNames ? '' : 'partyType', $pb.PbFieldType.OE, protoName: 'partyType', defaultOrMaker: PartyType.Six, valueOf: PartyType.valueOf, enumValues: PartyType.values)
    ..e<RoomTheme>(49, _omitFieldNames ? '' : 'roomTheme', $pb.PbFieldType.OE, protoName: 'roomTheme', defaultOrMaker: RoomTheme.UNKNOWN_THEME, valueOf: RoomTheme.valueOf, enumValues: RoomTheme.values)
    ..aOB(50, _omitFieldNames ? '' : 'FansTop1Status', protoName: 'FansTop1Status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomInfo clone() => RoomInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomInfo copyWith(void Function(RoomInfo) updates) => super.copyWith((message) => updates(message as RoomInfo)) as RoomInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomInfo create() => RoomInfo._();
  RoomInfo createEmptyInstance() => create();
  static $pb.PbList<RoomInfo> createRepeated() => $pb.PbList<RoomInfo>();
  @$core.pragma('dart2js:noInline')
  static RoomInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomInfo>(create);
  static RoomInfo? _defaultInstance;

  /// 房间相关
  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get onLineNum => $_getI64(1);
  @$pb.TagNumber(2)
  set onLineNum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOnLineNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnLineNum() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get roomStatus => $_getIZ(2);
  @$pb.TagNumber(3)
  set roomStatus($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomStatus() => clearField(3);

  /// 主播相关
  @$pb.TagNumber(4)
  $fixnum.Int64 get actorId => $_getI64(3);
  @$pb.TagNumber(4)
  set actorId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasActorId() => $_has(3);
  @$pb.TagNumber(4)
  void clearActorId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get imId => $_getSZ(4);
  @$pb.TagNumber(5)
  set imId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImId() => $_has(4);
  @$pb.TagNumber(5)
  void clearImId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get roomNotice => $_getSZ(5);
  @$pb.TagNumber(6)
  set roomNotice($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRoomNotice() => $_has(5);
  @$pb.TagNumber(6)
  void clearRoomNotice() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get actorLevel => $_getSZ(6);
  @$pb.TagNumber(7)
  set actorLevel($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasActorLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearActorLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get actorGrade => $_getIZ(7);
  @$pb.TagNumber(8)
  set actorGrade($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasActorGrade() => $_has(7);
  @$pb.TagNumber(8)
  void clearActorGrade() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get actorCurrentExperience => $_getI64(8);
  @$pb.TagNumber(9)
  set actorCurrentExperience($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasActorCurrentExperience() => $_has(8);
  @$pb.TagNumber(9)
  void clearActorCurrentExperience() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get headerImageOriginal => $_getSZ(9);
  @$pb.TagNumber(10)
  set headerImageOriginal($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasHeaderImageOriginal() => $_has(9);
  @$pb.TagNumber(10)
  void clearHeaderImageOriginal() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get headPendantUrl => $_getSZ(10);
  @$pb.TagNumber(11)
  set headPendantUrl($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasHeadPendantUrl() => $_has(10);
  @$pb.TagNumber(11)
  void clearHeadPendantUrl() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get bigImageOriginal => $_getSZ(11);
  @$pb.TagNumber(12)
  set bigImageOriginal($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBigImageOriginal() => $_has(11);
  @$pb.TagNumber(12)
  void clearBigImageOriginal() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get recentReceiveCoins => $_getI64(12);
  @$pb.TagNumber(13)
  set recentReceiveCoins($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasRecentReceiveCoins() => $_has(12);
  @$pb.TagNumber(13)
  void clearRecentReceiveCoins() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get nickName => $_getSZ(13);
  @$pb.TagNumber(14)
  set nickName($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNickName() => $_has(13);
  @$pb.TagNumber(14)
  void clearNickName() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get fansCardName => $_getSZ(14);
  @$pb.TagNumber(15)
  set fansCardName($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasFansCardName() => $_has(14);
  @$pb.TagNumber(15)
  void clearFansCardName() => clearField(15);

  /// 其他
  @$pb.TagNumber(20)
  $fixnum.Int64 get broadcastLimitCoins => $_getI64(15);
  @$pb.TagNumber(20)
  set broadcastLimitCoins($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(20)
  $core.bool hasBroadcastLimitCoins() => $_has(15);
  @$pb.TagNumber(20)
  void clearBroadcastLimitCoins() => clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get updateTime => $_getI64(16);
  @$pb.TagNumber(21)
  set updateTime($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(21)
  $core.bool hasUpdateTime() => $_has(16);
  @$pb.TagNumber(21)
  void clearUpdateTime() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get switchToBack => $_getBF(17);
  @$pb.TagNumber(22)
  set switchToBack($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(22)
  $core.bool hasSwitchToBack() => $_has(17);
  @$pb.TagNumber(22)
  void clearSwitchToBack() => clearField(22);

  /// 多人房新增
  @$pb.TagNumber(23)
  RoomType get roomType => $_getN(18);
  @$pb.TagNumber(23)
  set roomType(RoomType v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasRoomType() => $_has(18);
  @$pb.TagNumber(23)
  void clearRoomType() => clearField(23);

  @$pb.TagNumber(24)
  $core.Map<$core.String, $core.List<$core.int>> get exp => $_getMap(19);

  @$pb.TagNumber(25)
  $core.String get pullStreamAddress => $_getSZ(20);
  @$pb.TagNumber(25)
  set pullStreamAddress($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(25)
  $core.bool hasPullStreamAddress() => $_has(20);
  @$pb.TagNumber(25)
  void clearPullStreamAddress() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get roomName => $_getSZ(21);
  @$pb.TagNumber(26)
  set roomName($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(26)
  $core.bool hasRoomName() => $_has(21);
  @$pb.TagNumber(26)
  void clearRoomName() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get backgroundImageUrl => $_getSZ(22);
  @$pb.TagNumber(27)
  set backgroundImageUrl($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(27)
  $core.bool hasBackgroundImageUrl() => $_has(22);
  @$pb.TagNumber(27)
  void clearBackgroundImageUrl() => clearField(27);

  @$pb.TagNumber(41)
  $fixnum.Int64 get rank => $_getI64(23);
  @$pb.TagNumber(41)
  set rank($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(41)
  $core.bool hasRank() => $_has(23);
  @$pb.TagNumber(41)
  void clearRank() => clearField(41);

  @$pb.TagNumber(42)
  $fixnum.Int64 get victoryTimes => $_getI64(24);
  @$pb.TagNumber(42)
  set victoryTimes($fixnum.Int64 v) { $_setInt64(24, v); }
  @$pb.TagNumber(42)
  $core.bool hasVictoryTimes() => $_has(24);
  @$pb.TagNumber(42)
  void clearVictoryTimes() => clearField(42);

  @$pb.TagNumber(43)
  $core.String get dynamicBackgroundImage => $_getSZ(25);
  @$pb.TagNumber(43)
  set dynamicBackgroundImage($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(43)
  $core.bool hasDynamicBackgroundImage() => $_has(25);
  @$pb.TagNumber(43)
  void clearDynamicBackgroundImage() => clearField(43);

  @$pb.TagNumber(45)
  $core.bool get isQualifiedPkTournament => $_getBF(26);
  @$pb.TagNumber(45)
  set isQualifiedPkTournament($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(45)
  $core.bool hasIsQualifiedPkTournament() => $_has(26);
  @$pb.TagNumber(45)
  void clearIsQualifiedPkTournament() => clearField(45);

  @$pb.TagNumber(46)
  $core.String get pkTournamentBeginTime => $_getSZ(27);
  @$pb.TagNumber(46)
  set pkTournamentBeginTime($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(46)
  $core.bool hasPkTournamentBeginTime() => $_has(27);
  @$pb.TagNumber(46)
  void clearPkTournamentBeginTime() => clearField(46);

  @$pb.TagNumber(47)
  $core.String get pkTounamentTip => $_getSZ(28);
  @$pb.TagNumber(47)
  set pkTounamentTip($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(47)
  $core.bool hasPkTounamentTip() => $_has(28);
  @$pb.TagNumber(47)
  void clearPkTounamentTip() => clearField(47);

  @$pb.TagNumber(48)
  PartyType get partyType => $_getN(29);
  @$pb.TagNumber(48)
  set partyType(PartyType v) { setField(48, v); }
  @$pb.TagNumber(48)
  $core.bool hasPartyType() => $_has(29);
  @$pb.TagNumber(48)
  void clearPartyType() => clearField(48);

  @$pb.TagNumber(49)
  RoomTheme get roomTheme => $_getN(30);
  @$pb.TagNumber(49)
  set roomTheme(RoomTheme v) { setField(49, v); }
  @$pb.TagNumber(49)
  $core.bool hasRoomTheme() => $_has(30);
  @$pb.TagNumber(49)
  void clearRoomTheme() => clearField(49);

  @$pb.TagNumber(50)
  $core.bool get fansTop1Status => $_getBF(31);
  @$pb.TagNumber(50)
  set fansTop1Status($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(50)
  $core.bool hasFansTop1Status() => $_has(31);
  @$pb.TagNumber(50)
  void clearFansTop1Status() => clearField(50);
}

/// ALPHA 用户进房间改造
/// 用户属性,其他群发消息需要挂载或替换,历史消息会记录
class UserProp extends $pb.GeneratedMessage {
  factory UserProp({
    $core.bool? levelPrivilege,
    $core.int? nobleGrade,
    $core.String? username,
    $fixnum.Int64? userId,
    $core.int? userLevel,
    $core.String? medalUrl,
    $core.int? guardType,
    $core.String? userDefineEquipName,
    $core.int? role,
    $core.int? managerSubType,
    $core.int? fansCardStatus,
    $core.int? fansCardLevel,
    $core.int? corpType,
    $core.String? headImg,
    $core.String? nobilityMedalUrl,
    $core.int? guardMedalType,
    $core.int? vipGrade,
    $core.String? vipMedalUrl,
  }) {
    final $result = create();
    if (levelPrivilege != null) {
      $result.levelPrivilege = levelPrivilege;
    }
    if (nobleGrade != null) {
      $result.nobleGrade = nobleGrade;
    }
    if (username != null) {
      $result.username = username;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (userLevel != null) {
      $result.userLevel = userLevel;
    }
    if (medalUrl != null) {
      $result.medalUrl = medalUrl;
    }
    if (guardType != null) {
      $result.guardType = guardType;
    }
    if (userDefineEquipName != null) {
      $result.userDefineEquipName = userDefineEquipName;
    }
    if (role != null) {
      $result.role = role;
    }
    if (managerSubType != null) {
      $result.managerSubType = managerSubType;
    }
    if (fansCardStatus != null) {
      $result.fansCardStatus = fansCardStatus;
    }
    if (fansCardLevel != null) {
      $result.fansCardLevel = fansCardLevel;
    }
    if (corpType != null) {
      $result.corpType = corpType;
    }
    if (headImg != null) {
      $result.headImg = headImg;
    }
    if (nobilityMedalUrl != null) {
      $result.nobilityMedalUrl = nobilityMedalUrl;
    }
    if (guardMedalType != null) {
      $result.guardMedalType = guardMedalType;
    }
    if (vipGrade != null) {
      $result.vipGrade = vipGrade;
    }
    if (vipMedalUrl != null) {
      $result.vipMedalUrl = vipMedalUrl;
    }
    return $result;
  }
  UserProp._() : super();
  factory UserProp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserProp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserProp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'levelPrivilege', protoName: 'levelPrivilege')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'nobleGrade', $pb.PbFieldType.O3, protoName: 'nobleGrade')
    ..aOS(3, _omitFieldNames ? '' : 'username')
    ..aInt64(4, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'userLevel', $pb.PbFieldType.O3, protoName: 'userLevel')
    ..aOS(6, _omitFieldNames ? '' : 'medalUrl', protoName: 'medalUrl')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'guardType', $pb.PbFieldType.O3, protoName: 'guardType')
    ..aOS(8, _omitFieldNames ? '' : 'userDefineEquipName', protoName: 'userDefineEquipName')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'role', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'managerSubType', $pb.PbFieldType.O3, protoName: 'managerSubType')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'fansCardStatus', $pb.PbFieldType.O3, protoName: 'fansCardStatus')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'fansCardLevel', $pb.PbFieldType.O3, protoName: 'fansCardLevel')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'corpType', $pb.PbFieldType.O3, protoName: 'corpType')
    ..aOS(14, _omitFieldNames ? '' : 'headImg', protoName: 'headImg')
    ..aOS(15, _omitFieldNames ? '' : 'nobilityMedalUrl', protoName: 'nobilityMedalUrl')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'guardMedalType', $pb.PbFieldType.O3, protoName: 'guardMedalType')
    ..a<$core.int>(17, _omitFieldNames ? '' : 'vipGrade', $pb.PbFieldType.O3, protoName: 'vipGrade')
    ..aOS(18, _omitFieldNames ? '' : 'vipMedalUrl', protoName: 'vipMedalUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserProp clone() => UserProp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserProp copyWith(void Function(UserProp) updates) => super.copyWith((message) => updates(message as UserProp)) as UserProp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserProp create() => UserProp._();
  UserProp createEmptyInstance() => create();
  static $pb.PbList<UserProp> createRepeated() => $pb.PbList<UserProp>();
  @$core.pragma('dart2js:noInline')
  static UserProp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserProp>(create);
  static UserProp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get levelPrivilege => $_getBF(0);
  @$pb.TagNumber(1)
  set levelPrivilege($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLevelPrivilege() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevelPrivilege() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get nobleGrade => $_getIZ(1);
  @$pb.TagNumber(2)
  set nobleGrade($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNobleGrade() => $_has(1);
  @$pb.TagNumber(2)
  void clearNobleGrade() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(3)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsername() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get userId => $_getI64(3);
  @$pb.TagNumber(4)
  set userId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get userLevel => $_getIZ(4);
  @$pb.TagNumber(5)
  set userLevel($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserLevel() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get medalUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set medalUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMedalUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearMedalUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get guardType => $_getIZ(6);
  @$pb.TagNumber(7)
  set guardType($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGuardType() => $_has(6);
  @$pb.TagNumber(7)
  void clearGuardType() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get userDefineEquipName => $_getSZ(7);
  @$pb.TagNumber(8)
  set userDefineEquipName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserDefineEquipName() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserDefineEquipName() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get role => $_getIZ(8);
  @$pb.TagNumber(9)
  set role($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRole() => $_has(8);
  @$pb.TagNumber(9)
  void clearRole() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get managerSubType => $_getIZ(9);
  @$pb.TagNumber(10)
  set managerSubType($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasManagerSubType() => $_has(9);
  @$pb.TagNumber(10)
  void clearManagerSubType() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get fansCardStatus => $_getIZ(10);
  @$pb.TagNumber(11)
  set fansCardStatus($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFansCardStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearFansCardStatus() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get fansCardLevel => $_getIZ(11);
  @$pb.TagNumber(12)
  set fansCardLevel($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFansCardLevel() => $_has(11);
  @$pb.TagNumber(12)
  void clearFansCardLevel() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get corpType => $_getIZ(12);
  @$pb.TagNumber(13)
  set corpType($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCorpType() => $_has(12);
  @$pb.TagNumber(13)
  void clearCorpType() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get headImg => $_getSZ(13);
  @$pb.TagNumber(14)
  set headImg($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasHeadImg() => $_has(13);
  @$pb.TagNumber(14)
  void clearHeadImg() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get nobilityMedalUrl => $_getSZ(14);
  @$pb.TagNumber(15)
  set nobilityMedalUrl($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasNobilityMedalUrl() => $_has(14);
  @$pb.TagNumber(15)
  void clearNobilityMedalUrl() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get guardMedalType => $_getIZ(15);
  @$pb.TagNumber(16)
  set guardMedalType($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasGuardMedalType() => $_has(15);
  @$pb.TagNumber(16)
  void clearGuardMedalType() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get vipGrade => $_getIZ(16);
  @$pb.TagNumber(17)
  set vipGrade($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasVipGrade() => $_has(16);
  @$pb.TagNumber(17)
  void clearVipGrade() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get vipMedalUrl => $_getSZ(17);
  @$pb.TagNumber(18)
  set vipMedalUrl($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasVipMedalUrl() => $_has(17);
  @$pb.TagNumber(18)
  void clearVipMedalUrl() => clearField(18);
}

/// ALPHA 用户进房间改造
/// 进房间成功触发请求
class EnterRoomReadyReq extends $pb.GeneratedMessage {
  factory EnterRoomReadyReq() => create();
  EnterRoomReadyReq._() : super();
  factory EnterRoomReadyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnterRoomReadyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnterRoomReadyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnterRoomReadyReq clone() => EnterRoomReadyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnterRoomReadyReq copyWith(void Function(EnterRoomReadyReq) updates) => super.copyWith((message) => updates(message as EnterRoomReadyReq)) as EnterRoomReadyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnterRoomReadyReq create() => EnterRoomReadyReq._();
  EnterRoomReadyReq createEmptyInstance() => create();
  static $pb.PbList<EnterRoomReadyReq> createRepeated() => $pb.PbList<EnterRoomReadyReq>();
  @$core.pragma('dart2js:noInline')
  static EnterRoomReadyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnterRoomReadyReq>(create);
  static EnterRoomReadyReq? _defaultInstance;
}

/// ALPHA 用户进房间改造
/// 进房间成功触发应答
class EnterRoomReadyRsp extends $pb.GeneratedMessage {
  factory EnterRoomReadyRsp({
    UserProp? userProp,
    $fixnum.Int64? userStatus,
    $core.String? horseEffectUrl,
    $core.bool? concrenRealtion,
    $fixnum.Int64? userCurrentExperience,
    $core.String? horseEffectName,
    MAnchorRole? mAnchorRole,
    $core.String? horseEffectMp4Android,
    $core.String? horseEffectMp4Ios,
  }) {
    final $result = create();
    if (userProp != null) {
      $result.userProp = userProp;
    }
    if (userStatus != null) {
      $result.userStatus = userStatus;
    }
    if (horseEffectUrl != null) {
      $result.horseEffectUrl = horseEffectUrl;
    }
    if (concrenRealtion != null) {
      $result.concrenRealtion = concrenRealtion;
    }
    if (userCurrentExperience != null) {
      $result.userCurrentExperience = userCurrentExperience;
    }
    if (horseEffectName != null) {
      $result.horseEffectName = horseEffectName;
    }
    if (mAnchorRole != null) {
      $result.mAnchorRole = mAnchorRole;
    }
    if (horseEffectMp4Android != null) {
      $result.horseEffectMp4Android = horseEffectMp4Android;
    }
    if (horseEffectMp4Ios != null) {
      $result.horseEffectMp4Ios = horseEffectMp4Ios;
    }
    return $result;
  }
  EnterRoomReadyRsp._() : super();
  factory EnterRoomReadyRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnterRoomReadyRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnterRoomReadyRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UserProp>(1, _omitFieldNames ? '' : 'userProp', protoName: 'userProp', subBuilder: UserProp.create)
    ..aInt64(2, _omitFieldNames ? '' : 'userStatus', protoName: 'userStatus')
    ..aOS(3, _omitFieldNames ? '' : 'horseEffectUrl', protoName: 'horseEffectUrl')
    ..aOB(4, _omitFieldNames ? '' : 'concrenRealtion', protoName: 'concrenRealtion')
    ..aInt64(5, _omitFieldNames ? '' : 'userCurrentExperience', protoName: 'userCurrentExperience')
    ..aOS(6, _omitFieldNames ? '' : 'horseEffectName', protoName: 'horseEffectName')
    ..e<MAnchorRole>(7, _omitFieldNames ? '' : 'mAnchorRole', $pb.PbFieldType.OE, protoName: 'mAnchorRole', defaultOrMaker: MAnchorRole.Audience, valueOf: MAnchorRole.valueOf, enumValues: MAnchorRole.values)
    ..aOS(8, _omitFieldNames ? '' : 'horseEffectMp4Android', protoName: 'horseEffectMp4Android')
    ..aOS(9, _omitFieldNames ? '' : 'horseEffectMp4Ios', protoName: 'horseEffectMp4Ios')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnterRoomReadyRsp clone() => EnterRoomReadyRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnterRoomReadyRsp copyWith(void Function(EnterRoomReadyRsp) updates) => super.copyWith((message) => updates(message as EnterRoomReadyRsp)) as EnterRoomReadyRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnterRoomReadyRsp create() => EnterRoomReadyRsp._();
  EnterRoomReadyRsp createEmptyInstance() => create();
  static $pb.PbList<EnterRoomReadyRsp> createRepeated() => $pb.PbList<EnterRoomReadyRsp>();
  @$core.pragma('dart2js:noInline')
  static EnterRoomReadyRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnterRoomReadyRsp>(create);
  static EnterRoomReadyRsp? _defaultInstance;

  @$pb.TagNumber(1)
  UserProp get userProp => $_getN(0);
  @$pb.TagNumber(1)
  set userProp(UserProp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserProp() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserProp() => clearField(1);
  @$pb.TagNumber(1)
  UserProp ensureUserProp() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userStatus => $_getI64(1);
  @$pb.TagNumber(2)
  set userStatus($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get horseEffectUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set horseEffectUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHorseEffectUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearHorseEffectUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get concrenRealtion => $_getBF(3);
  @$pb.TagNumber(4)
  set concrenRealtion($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasConcrenRealtion() => $_has(3);
  @$pb.TagNumber(4)
  void clearConcrenRealtion() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get userCurrentExperience => $_getI64(4);
  @$pb.TagNumber(5)
  set userCurrentExperience($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserCurrentExperience() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserCurrentExperience() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get horseEffectName => $_getSZ(5);
  @$pb.TagNumber(6)
  set horseEffectName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHorseEffectName() => $_has(5);
  @$pb.TagNumber(6)
  void clearHorseEffectName() => clearField(6);

  @$pb.TagNumber(7)
  MAnchorRole get mAnchorRole => $_getN(6);
  @$pb.TagNumber(7)
  set mAnchorRole(MAnchorRole v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMAnchorRole() => $_has(6);
  @$pb.TagNumber(7)
  void clearMAnchorRole() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get horseEffectMp4Android => $_getSZ(7);
  @$pb.TagNumber(8)
  set horseEffectMp4Android($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHorseEffectMp4Android() => $_has(7);
  @$pb.TagNumber(8)
  void clearHorseEffectMp4Android() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get horseEffectMp4Ios => $_getSZ(8);
  @$pb.TagNumber(9)
  set horseEffectMp4Ios($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHorseEffectMp4Ios() => $_has(8);
  @$pb.TagNumber(9)
  void clearHorseEffectMp4Ios() => clearField(9);
}

/// ALPHA 用户进房间改造
/// 房间消息: 观众进房间
class AudienceEnterRoom extends $pb.GeneratedMessage {
  factory AudienceEnterRoom({
    UserProp? userProp,
    $core.String? horseEffectUrl,
    $core.String? headerImageOriginal,
    $core.String? horseEffectName,
    $core.String? horseEffectMp4Android,
    $core.String? horseEffectMp4Ios,
  }) {
    final $result = create();
    if (userProp != null) {
      $result.userProp = userProp;
    }
    if (horseEffectUrl != null) {
      $result.horseEffectUrl = horseEffectUrl;
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    if (horseEffectName != null) {
      $result.horseEffectName = horseEffectName;
    }
    if (horseEffectMp4Android != null) {
      $result.horseEffectMp4Android = horseEffectMp4Android;
    }
    if (horseEffectMp4Ios != null) {
      $result.horseEffectMp4Ios = horseEffectMp4Ios;
    }
    return $result;
  }
  AudienceEnterRoom._() : super();
  factory AudienceEnterRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AudienceEnterRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AudienceEnterRoom', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UserProp>(1, _omitFieldNames ? '' : 'userProp', protoName: 'userProp', subBuilder: UserProp.create)
    ..aOS(2, _omitFieldNames ? '' : 'horseEffectUrl', protoName: 'horseEffectUrl')
    ..aOS(3, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..aOS(4, _omitFieldNames ? '' : 'horseEffectName', protoName: 'horseEffectName')
    ..aOS(5, _omitFieldNames ? '' : 'horseEffectMp4Android', protoName: 'horseEffectMp4Android')
    ..aOS(6, _omitFieldNames ? '' : 'horseEffectMp4Ios', protoName: 'horseEffectMp4Ios')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AudienceEnterRoom clone() => AudienceEnterRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AudienceEnterRoom copyWith(void Function(AudienceEnterRoom) updates) => super.copyWith((message) => updates(message as AudienceEnterRoom)) as AudienceEnterRoom;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AudienceEnterRoom create() => AudienceEnterRoom._();
  AudienceEnterRoom createEmptyInstance() => create();
  static $pb.PbList<AudienceEnterRoom> createRepeated() => $pb.PbList<AudienceEnterRoom>();
  @$core.pragma('dart2js:noInline')
  static AudienceEnterRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AudienceEnterRoom>(create);
  static AudienceEnterRoom? _defaultInstance;

  @$pb.TagNumber(1)
  UserProp get userProp => $_getN(0);
  @$pb.TagNumber(1)
  set userProp(UserProp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserProp() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserProp() => clearField(1);
  @$pb.TagNumber(1)
  UserProp ensureUserProp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get horseEffectUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set horseEffectUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHorseEffectUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearHorseEffectUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get headerImageOriginal => $_getSZ(2);
  @$pb.TagNumber(3)
  set headerImageOriginal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeaderImageOriginal() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeaderImageOriginal() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get horseEffectName => $_getSZ(3);
  @$pb.TagNumber(4)
  set horseEffectName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHorseEffectName() => $_has(3);
  @$pb.TagNumber(4)
  void clearHorseEffectName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get horseEffectMp4Android => $_getSZ(4);
  @$pb.TagNumber(5)
  set horseEffectMp4Android($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHorseEffectMp4Android() => $_has(4);
  @$pb.TagNumber(5)
  void clearHorseEffectMp4Android() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get horseEffectMp4Ios => $_getSZ(5);
  @$pb.TagNumber(6)
  set horseEffectMp4Ios($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHorseEffectMp4Ios() => $_has(5);
  @$pb.TagNumber(6)
  void clearHorseEffectMp4Ios() => clearField(6);
}

/// ALPHA 发房间消息改造
/// 房间消息: 弹幕消息
class RoomBarrage extends $pb.GeneratedMessage {
  factory RoomBarrage({
    UserProp? userProp,
    $core.String? msg,
    $core.int? type,
    $core.String? headerImageOriginal,
    $core.Map<$core.String, $core.String>? exp,
    $core.bool? jumpEnabled,
    $fixnum.Int64? jumpRoomId,
  }) {
    final $result = create();
    if (userProp != null) {
      $result.userProp = userProp;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    if (type != null) {
      $result.type = type;
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (jumpEnabled != null) {
      $result.jumpEnabled = jumpEnabled;
    }
    if (jumpRoomId != null) {
      $result.jumpRoomId = jumpRoomId;
    }
    return $result;
  }
  RoomBarrage._() : super();
  factory RoomBarrage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomBarrage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomBarrage', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UserProp>(1, _omitFieldNames ? '' : 'userProp', protoName: 'userProp', subBuilder: UserProp.create)
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'exp', entryClassName: 'RoomBarrage.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_live_room'))
    ..aOB(6, _omitFieldNames ? '' : 'jumpEnabled', protoName: 'jumpEnabled')
    ..aInt64(7, _omitFieldNames ? '' : 'jumpRoomId', protoName: 'jumpRoomId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomBarrage clone() => RoomBarrage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomBarrage copyWith(void Function(RoomBarrage) updates) => super.copyWith((message) => updates(message as RoomBarrage)) as RoomBarrage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomBarrage create() => RoomBarrage._();
  RoomBarrage createEmptyInstance() => create();
  static $pb.PbList<RoomBarrage> createRepeated() => $pb.PbList<RoomBarrage>();
  @$core.pragma('dart2js:noInline')
  static RoomBarrage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomBarrage>(create);
  static RoomBarrage? _defaultInstance;

  @$pb.TagNumber(1)
  UserProp get userProp => $_getN(0);
  @$pb.TagNumber(1)
  set userProp(UserProp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserProp() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserProp() => clearField(1);
  @$pb.TagNumber(1)
  UserProp ensureUserProp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get headerImageOriginal => $_getSZ(3);
  @$pb.TagNumber(4)
  set headerImageOriginal($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeaderImageOriginal() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeaderImageOriginal() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get exp => $_getMap(4);

  @$pb.TagNumber(6)
  $core.bool get jumpEnabled => $_getBF(5);
  @$pb.TagNumber(6)
  set jumpEnabled($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasJumpEnabled() => $_has(5);
  @$pb.TagNumber(6)
  void clearJumpEnabled() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get jumpRoomId => $_getI64(6);
  @$pb.TagNumber(7)
  set jumpRoomId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasJumpRoomId() => $_has(6);
  @$pb.TagNumber(7)
  void clearJumpRoomId() => clearField(7);
}

/// 房间消息: 普通消息
class RoomNormal extends $pb.GeneratedMessage {
  factory RoomNormal({
    UserProp? userProp,
    $core.String? msg,
    $core.Iterable<$core.String>? targetUserName,
    $core.Iterable<$fixnum.Int64>? targetUserId,
  }) {
    final $result = create();
    if (userProp != null) {
      $result.userProp = userProp;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    if (targetUserName != null) {
      $result.targetUserName.addAll(targetUserName);
    }
    if (targetUserId != null) {
      $result.targetUserId.addAll(targetUserId);
    }
    return $result;
  }
  RoomNormal._() : super();
  factory RoomNormal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomNormal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomNormal', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UserProp>(1, _omitFieldNames ? '' : 'userProp', protoName: 'userProp', subBuilder: UserProp.create)
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..pPS(3, _omitFieldNames ? '' : 'targetUserName', protoName: 'targetUserName')
    ..p<$fixnum.Int64>(4, _omitFieldNames ? '' : 'targetUserId', $pb.PbFieldType.K6, protoName: 'targetUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomNormal clone() => RoomNormal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomNormal copyWith(void Function(RoomNormal) updates) => super.copyWith((message) => updates(message as RoomNormal)) as RoomNormal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomNormal create() => RoomNormal._();
  RoomNormal createEmptyInstance() => create();
  static $pb.PbList<RoomNormal> createRepeated() => $pb.PbList<RoomNormal>();
  @$core.pragma('dart2js:noInline')
  static RoomNormal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomNormal>(create);
  static RoomNormal? _defaultInstance;

  @$pb.TagNumber(1)
  UserProp get userProp => $_getN(0);
  @$pb.TagNumber(1)
  set userProp(UserProp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserProp() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserProp() => clearField(1);
  @$pb.TagNumber(1)
  UserProp ensureUserProp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get targetUserName => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get targetUserId => $_getList(3);
}

/// 房间消息
class RoomAction extends $pb.GeneratedMessage {
  factory RoomAction({
    UserProp? userProp,
    ACTION_TYPE? type,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (userProp != null) {
      $result.userProp = userProp;
    }
    if (type != null) {
      $result.type = type;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  RoomAction._() : super();
  factory RoomAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomAction', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UserProp>(1, _omitFieldNames ? '' : 'userProp', protoName: 'userProp', subBuilder: UserProp.create)
    ..e<ACTION_TYPE>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ACTION_TYPE.UNKNOWN, valueOf: ACTION_TYPE.valueOf, enumValues: ACTION_TYPE.values)
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'exp', entryClassName: 'RoomAction.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_live_room'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomAction clone() => RoomAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomAction copyWith(void Function(RoomAction) updates) => super.copyWith((message) => updates(message as RoomAction)) as RoomAction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomAction create() => RoomAction._();
  RoomAction createEmptyInstance() => create();
  static $pb.PbList<RoomAction> createRepeated() => $pb.PbList<RoomAction>();
  @$core.pragma('dart2js:noInline')
  static RoomAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomAction>(create);
  static RoomAction? _defaultInstance;

  @$pb.TagNumber(1)
  UserProp get userProp => $_getN(0);
  @$pb.TagNumber(1)
  set userProp(UserProp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserProp() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserProp() => clearField(1);
  @$pb.TagNumber(1)
  UserProp ensureUserProp() => $_ensure(0);

  @$pb.TagNumber(2)
  ACTION_TYPE get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(ACTION_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get exp => $_getMap(2);
}

class UpdatedUserInfo extends $pb.GeneratedMessage {
  factory UpdatedUserInfo({
    $core.int? nobleGrade,
    $core.String? username,
    $core.int? userLevel,
    $core.String? medalUrl,
    $core.int? guardType,
    $core.String? userDefineEquipName,
    $core.int? role,
    $core.int? fansCardStatus,
    $core.int? fansCardLevel,
    $core.int? corpType,
    $core.int? guardMedalType,
    $core.int? vipGrade,
    $core.String? vipMedalUrl,
  }) {
    final $result = create();
    if (nobleGrade != null) {
      $result.nobleGrade = nobleGrade;
    }
    if (username != null) {
      $result.username = username;
    }
    if (userLevel != null) {
      $result.userLevel = userLevel;
    }
    if (medalUrl != null) {
      $result.medalUrl = medalUrl;
    }
    if (guardType != null) {
      $result.guardType = guardType;
    }
    if (userDefineEquipName != null) {
      $result.userDefineEquipName = userDefineEquipName;
    }
    if (role != null) {
      $result.role = role;
    }
    if (fansCardStatus != null) {
      $result.fansCardStatus = fansCardStatus;
    }
    if (fansCardLevel != null) {
      $result.fansCardLevel = fansCardLevel;
    }
    if (corpType != null) {
      $result.corpType = corpType;
    }
    if (guardMedalType != null) {
      $result.guardMedalType = guardMedalType;
    }
    if (vipGrade != null) {
      $result.vipGrade = vipGrade;
    }
    if (vipMedalUrl != null) {
      $result.vipMedalUrl = vipMedalUrl;
    }
    return $result;
  }
  UpdatedUserInfo._() : super();
  factory UpdatedUserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatedUserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatedUserInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'nobleGrade', $pb.PbFieldType.O3, protoName: 'nobleGrade')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'userLevel', $pb.PbFieldType.O3, protoName: 'userLevel')
    ..aOS(4, _omitFieldNames ? '' : 'medalUrl', protoName: 'medalUrl')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'guardType', $pb.PbFieldType.O3, protoName: 'guardType')
    ..aOS(6, _omitFieldNames ? '' : 'userDefineEquipName', protoName: 'userDefineEquipName')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'role', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'fansCardStatus', $pb.PbFieldType.O3, protoName: 'fansCardStatus')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'fansCardLevel', $pb.PbFieldType.O3, protoName: 'fansCardLevel')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'corpType', $pb.PbFieldType.O3, protoName: 'corpType')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'guardMedalType', $pb.PbFieldType.O3, protoName: 'guardMedalType')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'vipGrade', $pb.PbFieldType.O3, protoName: 'vipGrade')
    ..aOS(13, _omitFieldNames ? '' : 'vipMedalUrl', protoName: 'vipMedalUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatedUserInfo clone() => UpdatedUserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatedUserInfo copyWith(void Function(UpdatedUserInfo) updates) => super.copyWith((message) => updates(message as UpdatedUserInfo)) as UpdatedUserInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatedUserInfo create() => UpdatedUserInfo._();
  UpdatedUserInfo createEmptyInstance() => create();
  static $pb.PbList<UpdatedUserInfo> createRepeated() => $pb.PbList<UpdatedUserInfo>();
  @$core.pragma('dart2js:noInline')
  static UpdatedUserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatedUserInfo>(create);
  static UpdatedUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nobleGrade => $_getIZ(0);
  @$pb.TagNumber(1)
  set nobleGrade($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNobleGrade() => $_has(0);
  @$pb.TagNumber(1)
  void clearNobleGrade() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userLevel => $_getIZ(2);
  @$pb.TagNumber(3)
  set userLevel($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserLevel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get medalUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set medalUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMedalUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearMedalUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get guardType => $_getIZ(4);
  @$pb.TagNumber(5)
  set guardType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGuardType() => $_has(4);
  @$pb.TagNumber(5)
  void clearGuardType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userDefineEquipName => $_getSZ(5);
  @$pb.TagNumber(6)
  set userDefineEquipName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserDefineEquipName() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserDefineEquipName() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get role => $_getIZ(6);
  @$pb.TagNumber(7)
  set role($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRole() => $_has(6);
  @$pb.TagNumber(7)
  void clearRole() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get fansCardStatus => $_getIZ(7);
  @$pb.TagNumber(8)
  set fansCardStatus($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFansCardStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearFansCardStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get fansCardLevel => $_getIZ(8);
  @$pb.TagNumber(9)
  set fansCardLevel($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFansCardLevel() => $_has(8);
  @$pb.TagNumber(9)
  void clearFansCardLevel() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get corpType => $_getIZ(9);
  @$pb.TagNumber(10)
  set corpType($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCorpType() => $_has(9);
  @$pb.TagNumber(10)
  void clearCorpType() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get guardMedalType => $_getIZ(10);
  @$pb.TagNumber(11)
  set guardMedalType($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasGuardMedalType() => $_has(10);
  @$pb.TagNumber(11)
  void clearGuardMedalType() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get vipGrade => $_getIZ(11);
  @$pb.TagNumber(12)
  set vipGrade($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasVipGrade() => $_has(11);
  @$pb.TagNumber(12)
  void clearVipGrade() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get vipMedalUrl => $_getSZ(12);
  @$pb.TagNumber(13)
  set vipMedalUrl($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasVipMedalUrl() => $_has(12);
  @$pb.TagNumber(13)
  void clearVipMedalUrl() => clearField(13);
}

class UpdatedRoomInfo extends $pb.GeneratedMessage {
  factory UpdatedRoomInfo({
    $core.bool? switchToBack,
  }) {
    final $result = create();
    if (switchToBack != null) {
      $result.switchToBack = switchToBack;
    }
    return $result;
  }
  UpdatedRoomInfo._() : super();
  factory UpdatedRoomInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatedRoomInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatedRoomInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'switchToBack', protoName: 'switchToBack')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatedRoomInfo clone() => UpdatedRoomInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatedRoomInfo copyWith(void Function(UpdatedRoomInfo) updates) => super.copyWith((message) => updates(message as UpdatedRoomInfo)) as UpdatedRoomInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatedRoomInfo create() => UpdatedRoomInfo._();
  UpdatedRoomInfo createEmptyInstance() => create();
  static $pb.PbList<UpdatedRoomInfo> createRepeated() => $pb.PbList<UpdatedRoomInfo>();
  @$core.pragma('dart2js:noInline')
  static UpdatedRoomInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatedRoomInfo>(create);
  static UpdatedRoomInfo? _defaultInstance;

  /// 房间相关
  /// int64   roomId                  = 1;
  /// int64   onLineNum               = 2;
  /// int32   roomStatus              = 1; // 房间状态更新
  @$pb.TagNumber(1)
  $core.bool get switchToBack => $_getBF(0);
  @$pb.TagNumber(1)
  set switchToBack($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchToBack() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchToBack() => clearField(1);
}

/// JAVA告诉im当前top1团id
class Top1ChangeNotify extends $pb.GeneratedMessage {
  factory Top1ChangeNotify({
    RoomType? roomType,
    $fixnum.Int64? roomId,
  }) {
    final $result = create();
    if (roomType != null) {
      $result.roomType = roomType;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    return $result;
  }
  Top1ChangeNotify._() : super();
  factory Top1ChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Top1ChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Top1ChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<RoomType>(1, _omitFieldNames ? '' : 'roomType', $pb.PbFieldType.OE, protoName: 'roomType', defaultOrMaker: RoomType.Unknow, valueOf: RoomType.valueOf, enumValues: RoomType.values)
    ..aInt64(2, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Top1ChangeNotify clone() => Top1ChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Top1ChangeNotify copyWith(void Function(Top1ChangeNotify) updates) => super.copyWith((message) => updates(message as Top1ChangeNotify)) as Top1ChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Top1ChangeNotify create() => Top1ChangeNotify._();
  Top1ChangeNotify createEmptyInstance() => create();
  static $pb.PbList<Top1ChangeNotify> createRepeated() => $pb.PbList<Top1ChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static Top1ChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Top1ChangeNotify>(create);
  static Top1ChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  RoomType get roomType => $_getN(0);
  @$pb.TagNumber(1)
  set roomType(RoomType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roomId => $_getI64(1);
  @$pb.TagNumber(2)
  set roomId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);
}

class SetRoomFansTop1StatusNotify extends $pb.GeneratedMessage {
  factory SetRoomFansTop1StatusNotify({
    $core.bool? top1Status,
  }) {
    final $result = create();
    if (top1Status != null) {
      $result.top1Status = top1Status;
    }
    return $result;
  }
  SetRoomFansTop1StatusNotify._() : super();
  factory SetRoomFansTop1StatusNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRoomFansTop1StatusNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRoomFansTop1StatusNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'top1Status', protoName: 'top1Status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRoomFansTop1StatusNotify clone() => SetRoomFansTop1StatusNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRoomFansTop1StatusNotify copyWith(void Function(SetRoomFansTop1StatusNotify) updates) => super.copyWith((message) => updates(message as SetRoomFansTop1StatusNotify)) as SetRoomFansTop1StatusNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRoomFansTop1StatusNotify create() => SetRoomFansTop1StatusNotify._();
  SetRoomFansTop1StatusNotify createEmptyInstance() => create();
  static $pb.PbList<SetRoomFansTop1StatusNotify> createRepeated() => $pb.PbList<SetRoomFansTop1StatusNotify>();
  @$core.pragma('dart2js:noInline')
  static SetRoomFansTop1StatusNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRoomFansTop1StatusNotify>(create);
  static SetRoomFansTop1StatusNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get top1Status => $_getBF(0);
  @$pb.TagNumber(1)
  set top1Status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTop1Status() => $_has(0);
  @$pb.TagNumber(1)
  void clearTop1Status() => clearField(1);
}

/// ////////////////////////////////////////////////
///  交友房消息定义 开始
class MAnchorData extends $pb.GeneratedMessage {
  factory MAnchorData({
    $fixnum.Int64? userId,
    $core.int? videoState,
    $core.int? audioState,
    $core.String? nickName,
    $core.String? avatar,
    $fixnum.Int64? score,
    MAnchorRole? mAnchorRole,
    $core.String? pullStreamUrl,
    $core.int? forbidState,
    $core.String? gender,
    $core.String? authAccess,
    $fixnum.Int64? timestamp,
    $core.String? streamId,
    STREAM_STATE? streamState,
    $fixnum.Int64? pkScore,
    $core.String? userOnAnchorPendantUrl,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (videoState != null) {
      $result.videoState = videoState;
    }
    if (audioState != null) {
      $result.audioState = audioState;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (score != null) {
      $result.score = score;
    }
    if (mAnchorRole != null) {
      $result.mAnchorRole = mAnchorRole;
    }
    if (pullStreamUrl != null) {
      $result.pullStreamUrl = pullStreamUrl;
    }
    if (forbidState != null) {
      $result.forbidState = forbidState;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (authAccess != null) {
      $result.authAccess = authAccess;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (streamState != null) {
      $result.streamState = streamState;
    }
    if (pkScore != null) {
      $result.pkScore = pkScore;
    }
    if (userOnAnchorPendantUrl != null) {
      $result.userOnAnchorPendantUrl = userOnAnchorPendantUrl;
    }
    return $result;
  }
  MAnchorData._() : super();
  factory MAnchorData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MAnchorData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MAnchorData', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'videoState', $pb.PbFieldType.O3, protoName: 'videoState')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'audioState', $pb.PbFieldType.O3, protoName: 'audioState')
    ..aOS(4, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aOS(5, _omitFieldNames ? '' : 'avatar')
    ..aInt64(6, _omitFieldNames ? '' : 'score')
    ..e<MAnchorRole>(7, _omitFieldNames ? '' : 'mAnchorRole', $pb.PbFieldType.OE, protoName: 'mAnchorRole', defaultOrMaker: MAnchorRole.Audience, valueOf: MAnchorRole.valueOf, enumValues: MAnchorRole.values)
    ..aOS(8, _omitFieldNames ? '' : 'pullStreamUrl', protoName: 'pullStreamUrl')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'forbidState', $pb.PbFieldType.O3, protoName: 'forbidState')
    ..aOS(10, _omitFieldNames ? '' : 'gender')
    ..aOS(11, _omitFieldNames ? '' : 'authAccess', protoName: 'authAccess')
    ..aInt64(12, _omitFieldNames ? '' : 'timestamp')
    ..aOS(13, _omitFieldNames ? '' : 'streamId', protoName: 'streamId')
    ..e<STREAM_STATE>(14, _omitFieldNames ? '' : 'streamState', $pb.PbFieldType.OE, protoName: 'streamState', defaultOrMaker: STREAM_STATE.CLOSED, valueOf: STREAM_STATE.valueOf, enumValues: STREAM_STATE.values)
    ..aInt64(15, _omitFieldNames ? '' : 'pkScore', protoName: 'pkScore')
    ..aOS(16, _omitFieldNames ? '' : 'userOnAnchorPendantUrl', protoName: 'userOnAnchorPendantUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MAnchorData clone() => MAnchorData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MAnchorData copyWith(void Function(MAnchorData) updates) => super.copyWith((message) => updates(message as MAnchorData)) as MAnchorData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MAnchorData create() => MAnchorData._();
  MAnchorData createEmptyInstance() => create();
  static $pb.PbList<MAnchorData> createRepeated() => $pb.PbList<MAnchorData>();
  @$core.pragma('dart2js:noInline')
  static MAnchorData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MAnchorData>(create);
  static MAnchorData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get videoState => $_getIZ(1);
  @$pb.TagNumber(2)
  set videoState($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVideoState() => $_has(1);
  @$pb.TagNumber(2)
  void clearVideoState() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get audioState => $_getIZ(2);
  @$pb.TagNumber(3)
  set audioState($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAudioState() => $_has(2);
  @$pb.TagNumber(3)
  void clearAudioState() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nickName => $_getSZ(3);
  @$pb.TagNumber(4)
  set nickName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNickName() => $_has(3);
  @$pb.TagNumber(4)
  void clearNickName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get score => $_getI64(5);
  @$pb.TagNumber(6)
  set score($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasScore() => $_has(5);
  @$pb.TagNumber(6)
  void clearScore() => clearField(6);

  @$pb.TagNumber(7)
  MAnchorRole get mAnchorRole => $_getN(6);
  @$pb.TagNumber(7)
  set mAnchorRole(MAnchorRole v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMAnchorRole() => $_has(6);
  @$pb.TagNumber(7)
  void clearMAnchorRole() => clearField(7);

  /// int32 level = 8;
  @$pb.TagNumber(8)
  $core.String get pullStreamUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set pullStreamUrl($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPullStreamUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearPullStreamUrl() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get forbidState => $_getIZ(8);
  @$pb.TagNumber(9)
  set forbidState($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasForbidState() => $_has(8);
  @$pb.TagNumber(9)
  void clearForbidState() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get gender => $_getSZ(9);
  @$pb.TagNumber(10)
  set gender($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasGender() => $_has(9);
  @$pb.TagNumber(10)
  void clearGender() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get authAccess => $_getSZ(10);
  @$pb.TagNumber(11)
  set authAccess($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAuthAccess() => $_has(10);
  @$pb.TagNumber(11)
  void clearAuthAccess() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get timestamp => $_getI64(11);
  @$pb.TagNumber(12)
  set timestamp($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTimestamp() => $_has(11);
  @$pb.TagNumber(12)
  void clearTimestamp() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get streamId => $_getSZ(12);
  @$pb.TagNumber(13)
  set streamId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasStreamId() => $_has(12);
  @$pb.TagNumber(13)
  void clearStreamId() => clearField(13);

  @$pb.TagNumber(14)
  STREAM_STATE get streamState => $_getN(13);
  @$pb.TagNumber(14)
  set streamState(STREAM_STATE v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasStreamState() => $_has(13);
  @$pb.TagNumber(14)
  void clearStreamState() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get pkScore => $_getI64(14);
  @$pb.TagNumber(15)
  set pkScore($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPkScore() => $_has(14);
  @$pb.TagNumber(15)
  void clearPkScore() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get userOnAnchorPendantUrl => $_getSZ(15);
  @$pb.TagNumber(16)
  set userOnAnchorPendantUrl($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasUserOnAnchorPendantUrl() => $_has(15);
  @$pb.TagNumber(16)
  void clearUserOnAnchorPendantUrl() => clearField(16);
}

class MWaitUser extends $pb.GeneratedMessage {
  factory MWaitUser({
    $fixnum.Int64? userId,
    $core.String? nickName,
    $core.String? avatar,
    $core.int? level,
    $core.int? loc,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (level != null) {
      $result.level = level;
    }
    if (loc != null) {
      $result.loc = loc;
    }
    return $result;
  }
  MWaitUser._() : super();
  factory MWaitUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MWaitUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MWaitUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'level', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'loc', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MWaitUser clone() => MWaitUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MWaitUser copyWith(void Function(MWaitUser) updates) => super.copyWith((message) => updates(message as MWaitUser)) as MWaitUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MWaitUser create() => MWaitUser._();
  MWaitUser createEmptyInstance() => create();
  static $pb.PbList<MWaitUser> createRepeated() => $pb.PbList<MWaitUser>();
  @$core.pragma('dart2js:noInline')
  static MWaitUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MWaitUser>(create);
  static MWaitUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nickName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNickName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNickName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get level => $_getIZ(3);
  @$pb.TagNumber(4)
  set level($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearLevel() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get loc => $_getIZ(4);
  @$pb.TagNumber(5)
  set loc($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLoc() => $_has(4);
  @$pb.TagNumber(5)
  void clearLoc() => clearField(5);
}

class MAnchorScoreChangeNotify extends $pb.GeneratedMessage {
  factory MAnchorScoreChangeNotify({
    $fixnum.Int64? score,
    $fixnum.Int64? actorId,
    $fixnum.Int64? timestamp,
  }) {
    final $result = create();
    if (score != null) {
      $result.score = score;
    }
    if (actorId != null) {
      $result.actorId = actorId;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    return $result;
  }
  MAnchorScoreChangeNotify._() : super();
  factory MAnchorScoreChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MAnchorScoreChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MAnchorScoreChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'score')
    ..aInt64(2, _omitFieldNames ? '' : 'actorId', protoName: 'actorId')
    ..aInt64(3, _omitFieldNames ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MAnchorScoreChangeNotify clone() => MAnchorScoreChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MAnchorScoreChangeNotify copyWith(void Function(MAnchorScoreChangeNotify) updates) => super.copyWith((message) => updates(message as MAnchorScoreChangeNotify)) as MAnchorScoreChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MAnchorScoreChangeNotify create() => MAnchorScoreChangeNotify._();
  MAnchorScoreChangeNotify createEmptyInstance() => create();
  static $pb.PbList<MAnchorScoreChangeNotify> createRepeated() => $pb.PbList<MAnchorScoreChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static MAnchorScoreChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MAnchorScoreChangeNotify>(create);
  static MAnchorScoreChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get score => $_getI64(0);
  @$pb.TagNumber(1)
  set score($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearScore() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get actorId => $_getI64(1);
  @$pb.TagNumber(2)
  set actorId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
}

/// 贡献榜变化通知
class BillboardChangeNotify extends $pb.GeneratedMessage {
  factory BillboardChangeNotify({
    $core.Iterable<Billboard>? users,
  }) {
    final $result = create();
    if (users != null) {
      $result.users.addAll(users);
    }
    return $result;
  }
  BillboardChangeNotify._() : super();
  factory BillboardChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BillboardChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BillboardChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..pc<Billboard>(1, _omitFieldNames ? '' : 'users', $pb.PbFieldType.PM, subBuilder: Billboard.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BillboardChangeNotify clone() => BillboardChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BillboardChangeNotify copyWith(void Function(BillboardChangeNotify) updates) => super.copyWith((message) => updates(message as BillboardChangeNotify)) as BillboardChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BillboardChangeNotify create() => BillboardChangeNotify._();
  BillboardChangeNotify createEmptyInstance() => create();
  static $pb.PbList<BillboardChangeNotify> createRepeated() => $pb.PbList<BillboardChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static BillboardChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BillboardChangeNotify>(create);
  static BillboardChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Billboard> get users => $_getList(0);
}

class Billboard extends $pb.GeneratedMessage {
  factory Billboard({
    $core.int? actorGrade,
    $core.String? bigImageOriginal,
    $core.String? headerImageOriginal,
    $core.bool? isLiving,
    $core.bool? levelPrivilegeOpen,
    $core.String? nickName,
    $fixnum.Int64? score,
    $fixnum.Int64? userId,
    $core.String? userLevel,
  }) {
    final $result = create();
    if (actorGrade != null) {
      $result.actorGrade = actorGrade;
    }
    if (bigImageOriginal != null) {
      $result.bigImageOriginal = bigImageOriginal;
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    if (isLiving != null) {
      $result.isLiving = isLiving;
    }
    if (levelPrivilegeOpen != null) {
      $result.levelPrivilegeOpen = levelPrivilegeOpen;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (score != null) {
      $result.score = score;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (userLevel != null) {
      $result.userLevel = userLevel;
    }
    return $result;
  }
  Billboard._() : super();
  factory Billboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Billboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Billboard', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'actorGrade', $pb.PbFieldType.O3, protoName: 'actorGrade')
    ..aOS(2, _omitFieldNames ? '' : 'bigImageOriginal', protoName: 'bigImageOriginal')
    ..aOS(3, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..aOB(4, _omitFieldNames ? '' : 'isLiving', protoName: 'isLiving')
    ..aOB(5, _omitFieldNames ? '' : 'levelPrivilegeOpen', protoName: 'levelPrivilegeOpen')
    ..aOS(6, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aInt64(7, _omitFieldNames ? '' : 'score')
    ..aInt64(8, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(9, _omitFieldNames ? '' : 'userLevel', protoName: 'userLevel')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Billboard clone() => Billboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Billboard copyWith(void Function(Billboard) updates) => super.copyWith((message) => updates(message as Billboard)) as Billboard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Billboard create() => Billboard._();
  Billboard createEmptyInstance() => create();
  static $pb.PbList<Billboard> createRepeated() => $pb.PbList<Billboard>();
  @$core.pragma('dart2js:noInline')
  static Billboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Billboard>(create);
  static Billboard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get actorGrade => $_getIZ(0);
  @$pb.TagNumber(1)
  set actorGrade($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActorGrade() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorGrade() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bigImageOriginal => $_getSZ(1);
  @$pb.TagNumber(2)
  set bigImageOriginal($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBigImageOriginal() => $_has(1);
  @$pb.TagNumber(2)
  void clearBigImageOriginal() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get headerImageOriginal => $_getSZ(2);
  @$pb.TagNumber(3)
  set headerImageOriginal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeaderImageOriginal() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeaderImageOriginal() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isLiving => $_getBF(3);
  @$pb.TagNumber(4)
  set isLiving($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsLiving() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsLiving() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get levelPrivilegeOpen => $_getBF(4);
  @$pb.TagNumber(5)
  set levelPrivilegeOpen($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevelPrivilegeOpen() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevelPrivilegeOpen() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get nickName => $_getSZ(5);
  @$pb.TagNumber(6)
  set nickName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNickName() => $_has(5);
  @$pb.TagNumber(6)
  void clearNickName() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get score => $_getI64(6);
  @$pb.TagNumber(7)
  set score($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasScore() => $_has(6);
  @$pb.TagNumber(7)
  void clearScore() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get userId => $_getI64(7);
  @$pb.TagNumber(8)
  set userId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserId() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get userLevel => $_getSZ(8);
  @$pb.TagNumber(9)
  set userLevel($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUserLevel() => $_has(8);
  @$pb.TagNumber(9)
  void clearUserLevel() => clearField(9);
}

/// 位置变化通知
class MAnchorLocChangeNotify extends $pb.GeneratedMessage {
  factory MAnchorLocChangeNotify({
    MAnchorData? chair,
    $core.Map<$core.int, MAnchorData>? bentch,
  }) {
    final $result = create();
    if (chair != null) {
      $result.chair = chair;
    }
    if (bentch != null) {
      $result.bentch.addAll(bentch);
    }
    return $result;
  }
  MAnchorLocChangeNotify._() : super();
  factory MAnchorLocChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MAnchorLocChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MAnchorLocChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<MAnchorData>(1, _omitFieldNames ? '' : 'chair', subBuilder: MAnchorData.create)
    ..m<$core.int, MAnchorData>(2, _omitFieldNames ? '' : 'bentch', entryClassName: 'MAnchorLocChangeNotify.BentchEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: MAnchorData.create, valueDefaultOrMaker: MAnchorData.getDefault, packageName: const $pb.PackageName('pb_msg_live_room'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MAnchorLocChangeNotify clone() => MAnchorLocChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MAnchorLocChangeNotify copyWith(void Function(MAnchorLocChangeNotify) updates) => super.copyWith((message) => updates(message as MAnchorLocChangeNotify)) as MAnchorLocChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MAnchorLocChangeNotify create() => MAnchorLocChangeNotify._();
  MAnchorLocChangeNotify createEmptyInstance() => create();
  static $pb.PbList<MAnchorLocChangeNotify> createRepeated() => $pb.PbList<MAnchorLocChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static MAnchorLocChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MAnchorLocChangeNotify>(create);
  static MAnchorLocChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  MAnchorData get chair => $_getN(0);
  @$pb.TagNumber(1)
  set chair(MAnchorData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChair() => $_has(0);
  @$pb.TagNumber(1)
  void clearChair() => clearField(1);
  @$pb.TagNumber(1)
  MAnchorData ensureChair() => $_ensure(0);

  /// repeated MAnchorData Bentch = 2;
  @$pb.TagNumber(2)
  $core.Map<$core.int, MAnchorData> get bentch => $_getMap(1);
}

/// 排队上麦列表变化通知
/// 位置变化通知
class WaitBenchListChangeNotify extends $pb.GeneratedMessage {
  factory WaitBenchListChangeNotify({
    $core.Iterable<MWaitUser>? waitQue,
  }) {
    final $result = create();
    if (waitQue != null) {
      $result.waitQue.addAll(waitQue);
    }
    return $result;
  }
  WaitBenchListChangeNotify._() : super();
  factory WaitBenchListChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WaitBenchListChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WaitBenchListChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..pc<MWaitUser>(1, _omitFieldNames ? '' : 'waitQue', $pb.PbFieldType.PM, protoName: 'waitQue', subBuilder: MWaitUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WaitBenchListChangeNotify clone() => WaitBenchListChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WaitBenchListChangeNotify copyWith(void Function(WaitBenchListChangeNotify) updates) => super.copyWith((message) => updates(message as WaitBenchListChangeNotify)) as WaitBenchListChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WaitBenchListChangeNotify create() => WaitBenchListChangeNotify._();
  WaitBenchListChangeNotify createEmptyInstance() => create();
  static $pb.PbList<WaitBenchListChangeNotify> createRepeated() => $pb.PbList<WaitBenchListChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static WaitBenchListChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WaitBenchListChangeNotify>(create);
  static WaitBenchListChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MWaitUser> get waitQue => $_getList(0);
}

/// 自己下麦
class OffAnchorReq extends $pb.GeneratedMessage {
  factory OffAnchorReq() => create();
  OffAnchorReq._() : super();
  factory OffAnchorReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OffAnchorReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OffAnchorReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OffAnchorReq clone() => OffAnchorReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OffAnchorReq copyWith(void Function(OffAnchorReq) updates) => super.copyWith((message) => updates(message as OffAnchorReq)) as OffAnchorReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OffAnchorReq create() => OffAnchorReq._();
  OffAnchorReq createEmptyInstance() => create();
  static $pb.PbList<OffAnchorReq> createRepeated() => $pb.PbList<OffAnchorReq>();
  @$core.pragma('dart2js:noInline')
  static OffAnchorReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OffAnchorReq>(create);
  static OffAnchorReq? _defaultInstance;
}

class OffAnchorRsp extends $pb.GeneratedMessage {
  factory OffAnchorRsp({
    $2.ErrCode? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  OffAnchorRsp._() : super();
  factory OffAnchorRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OffAnchorRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OffAnchorRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OffAnchorRsp clone() => OffAnchorRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OffAnchorRsp copyWith(void Function(OffAnchorRsp) updates) => super.copyWith((message) => updates(message as OffAnchorRsp)) as OffAnchorRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OffAnchorRsp create() => OffAnchorRsp._();
  OffAnchorRsp createEmptyInstance() => create();
  static $pb.PbList<OffAnchorRsp> createRepeated() => $pb.PbList<OffAnchorRsp>();
  @$core.pragma('dart2js:noInline')
  static OffAnchorRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OffAnchorRsp>(create);
  static OffAnchorRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 请求主持
class OnChairReq extends $pb.GeneratedMessage {
  factory OnChairReq() => create();
  OnChairReq._() : super();
  factory OnChairReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OnChairReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OnChairReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OnChairReq clone() => OnChairReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OnChairReq copyWith(void Function(OnChairReq) updates) => super.copyWith((message) => updates(message as OnChairReq)) as OnChairReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnChairReq create() => OnChairReq._();
  OnChairReq createEmptyInstance() => create();
  static $pb.PbList<OnChairReq> createRepeated() => $pb.PbList<OnChairReq>();
  @$core.pragma('dart2js:noInline')
  static OnChairReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OnChairReq>(create);
  static OnChairReq? _defaultInstance;
}

class OnChairRsp extends $pb.GeneratedMessage {
  factory OnChairRsp({
    $2.ErrCode? result,
    $core.String? errDesc,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (errDesc != null) {
      $result.errDesc = errDesc;
    }
    return $result;
  }
  OnChairRsp._() : super();
  factory OnChairRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OnChairRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OnChairRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'errDesc', protoName: 'errDesc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OnChairRsp clone() => OnChairRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OnChairRsp copyWith(void Function(OnChairRsp) updates) => super.copyWith((message) => updates(message as OnChairRsp)) as OnChairRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnChairRsp create() => OnChairRsp._();
  OnChairRsp createEmptyInstance() => create();
  static $pb.PbList<OnChairRsp> createRepeated() => $pb.PbList<OnChairRsp>();
  @$core.pragma('dart2js:noInline')
  static OnChairRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OnChairRsp>(create);
  static OnChairRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errDesc => $_getSZ(1);
  @$pb.TagNumber(2)
  set errDesc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrDesc() => clearField(2);
}

/// 申请连麦
class OnAnchorReq extends $pb.GeneratedMessage {
  factory OnAnchorReq({
    $core.int? loc,
  }) {
    final $result = create();
    if (loc != null) {
      $result.loc = loc;
    }
    return $result;
  }
  OnAnchorReq._() : super();
  factory OnAnchorReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OnAnchorReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OnAnchorReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'loc', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OnAnchorReq clone() => OnAnchorReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OnAnchorReq copyWith(void Function(OnAnchorReq) updates) => super.copyWith((message) => updates(message as OnAnchorReq)) as OnAnchorReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnAnchorReq create() => OnAnchorReq._();
  OnAnchorReq createEmptyInstance() => create();
  static $pb.PbList<OnAnchorReq> createRepeated() => $pb.PbList<OnAnchorReq>();
  @$core.pragma('dart2js:noInline')
  static OnAnchorReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OnAnchorReq>(create);
  static OnAnchorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get loc => $_getIZ(0);
  @$pb.TagNumber(1)
  set loc($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoc() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoc() => clearField(1);
}

class OnAnchorRsp extends $pb.GeneratedMessage {
  factory OnAnchorRsp({
    $2.ErrCode? result,
    $core.String? errDesc,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (errDesc != null) {
      $result.errDesc = errDesc;
    }
    return $result;
  }
  OnAnchorRsp._() : super();
  factory OnAnchorRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OnAnchorRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OnAnchorRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'errDesc', protoName: 'errDesc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OnAnchorRsp clone() => OnAnchorRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OnAnchorRsp copyWith(void Function(OnAnchorRsp) updates) => super.copyWith((message) => updates(message as OnAnchorRsp)) as OnAnchorRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnAnchorRsp create() => OnAnchorRsp._();
  OnAnchorRsp createEmptyInstance() => create();
  static $pb.PbList<OnAnchorRsp> createRepeated() => $pb.PbList<OnAnchorRsp>();
  @$core.pragma('dart2js:noInline')
  static OnAnchorRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OnAnchorRsp>(create);
  static OnAnchorRsp? _defaultInstance;

  /// int32 AnchorLoc = 1; // 上播位置 0~5 为位置， -1 为在等待列表中
  @$pb.TagNumber(1)
  $2.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errDesc => $_getSZ(1);
  @$pb.TagNumber(2)
  set errDesc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrDesc() => clearField(2);
}

/// 主持人上麦请求者
class ChairManPutOnAnchorReq extends $pb.GeneratedMessage {
  factory ChairManPutOnAnchorReq({
    $fixnum.Int64? aimId,
  }) {
    final $result = create();
    if (aimId != null) {
      $result.aimId = aimId;
    }
    return $result;
  }
  ChairManPutOnAnchorReq._() : super();
  factory ChairManPutOnAnchorReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManPutOnAnchorReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManPutOnAnchorReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManPutOnAnchorReq clone() => ChairManPutOnAnchorReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManPutOnAnchorReq copyWith(void Function(ChairManPutOnAnchorReq) updates) => super.copyWith((message) => updates(message as ChairManPutOnAnchorReq)) as ChairManPutOnAnchorReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManPutOnAnchorReq create() => ChairManPutOnAnchorReq._();
  ChairManPutOnAnchorReq createEmptyInstance() => create();
  static $pb.PbList<ChairManPutOnAnchorReq> createRepeated() => $pb.PbList<ChairManPutOnAnchorReq>();
  @$core.pragma('dart2js:noInline')
  static ChairManPutOnAnchorReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManPutOnAnchorReq>(create);
  static ChairManPutOnAnchorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aimId => $_getI64(0);
  @$pb.TagNumber(1)
  set aimId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAimId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAimId() => clearField(1);
}

class ChairManPutOnAnchorRsp extends $pb.GeneratedMessage {
  factory ChairManPutOnAnchorRsp({
    $fixnum.Int64? aimId,
    $2.ErrCode? result,
  }) {
    final $result = create();
    if (aimId != null) {
      $result.aimId = aimId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  ChairManPutOnAnchorRsp._() : super();
  factory ChairManPutOnAnchorRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManPutOnAnchorRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManPutOnAnchorRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..e<$2.ErrCode>(2, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManPutOnAnchorRsp clone() => ChairManPutOnAnchorRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManPutOnAnchorRsp copyWith(void Function(ChairManPutOnAnchorRsp) updates) => super.copyWith((message) => updates(message as ChairManPutOnAnchorRsp)) as ChairManPutOnAnchorRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManPutOnAnchorRsp create() => ChairManPutOnAnchorRsp._();
  ChairManPutOnAnchorRsp createEmptyInstance() => create();
  static $pb.PbList<ChairManPutOnAnchorRsp> createRepeated() => $pb.PbList<ChairManPutOnAnchorRsp>();
  @$core.pragma('dart2js:noInline')
  static ChairManPutOnAnchorRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManPutOnAnchorRsp>(create);
  static ChairManPutOnAnchorRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aimId => $_getI64(0);
  @$pb.TagNumber(1)
  set aimId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAimId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAimId() => clearField(1);

  @$pb.TagNumber(2)
  $2.ErrCode get result => $_getN(1);
  @$pb.TagNumber(2)
  set result($2.ErrCode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
}

/// 上播通知到客户端
class ChairManPutOnAnchorNotify extends $pb.GeneratedMessage {
  factory ChairManPutOnAnchorNotify({
    $core.int? anchorLoc,
    $fixnum.Int64? optId,
    $fixnum.Int64? aimId,
  }) {
    final $result = create();
    if (anchorLoc != null) {
      $result.anchorLoc = anchorLoc;
    }
    if (optId != null) {
      $result.optId = optId;
    }
    if (aimId != null) {
      $result.aimId = aimId;
    }
    return $result;
  }
  ChairManPutOnAnchorNotify._() : super();
  factory ChairManPutOnAnchorNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManPutOnAnchorNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManPutOnAnchorNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'anchorLoc', $pb.PbFieldType.O3, protoName: 'anchorLoc')
    ..aInt64(2, _omitFieldNames ? '' : 'optId', protoName: 'optId')
    ..aInt64(3, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManPutOnAnchorNotify clone() => ChairManPutOnAnchorNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManPutOnAnchorNotify copyWith(void Function(ChairManPutOnAnchorNotify) updates) => super.copyWith((message) => updates(message as ChairManPutOnAnchorNotify)) as ChairManPutOnAnchorNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManPutOnAnchorNotify create() => ChairManPutOnAnchorNotify._();
  ChairManPutOnAnchorNotify createEmptyInstance() => create();
  static $pb.PbList<ChairManPutOnAnchorNotify> createRepeated() => $pb.PbList<ChairManPutOnAnchorNotify>();
  @$core.pragma('dart2js:noInline')
  static ChairManPutOnAnchorNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManPutOnAnchorNotify>(create);
  static ChairManPutOnAnchorNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get anchorLoc => $_getIZ(0);
  @$pb.TagNumber(1)
  set anchorLoc($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnchorLoc() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnchorLoc() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get optId => $_getI64(1);
  @$pb.TagNumber(2)
  set optId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get aimId => $_getI64(2);
  @$pb.TagNumber(3)
  set aimId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAimId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAimId() => clearField(3);
}

/// 邀请上麦
class ChairManInviteAudienceReq extends $pb.GeneratedMessage {
  factory ChairManInviteAudienceReq({
    $fixnum.Int64? inviteeId,
    $fixnum.Int64? inviterId,
    $fixnum.Int64? roomId,
  }) {
    final $result = create();
    if (inviteeId != null) {
      $result.inviteeId = inviteeId;
    }
    if (inviterId != null) {
      $result.inviterId = inviterId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    return $result;
  }
  ChairManInviteAudienceReq._() : super();
  factory ChairManInviteAudienceReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManInviteAudienceReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManInviteAudienceReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'inviteeId', protoName: 'inviteeId')
    ..aInt64(2, _omitFieldNames ? '' : 'inviterId', protoName: 'inviterId')
    ..aInt64(3, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManInviteAudienceReq clone() => ChairManInviteAudienceReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManInviteAudienceReq copyWith(void Function(ChairManInviteAudienceReq) updates) => super.copyWith((message) => updates(message as ChairManInviteAudienceReq)) as ChairManInviteAudienceReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManInviteAudienceReq create() => ChairManInviteAudienceReq._();
  ChairManInviteAudienceReq createEmptyInstance() => create();
  static $pb.PbList<ChairManInviteAudienceReq> createRepeated() => $pb.PbList<ChairManInviteAudienceReq>();
  @$core.pragma('dart2js:noInline')
  static ChairManInviteAudienceReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManInviteAudienceReq>(create);
  static ChairManInviteAudienceReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviteeId => $_getI64(0);
  @$pb.TagNumber(1)
  set inviteeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviteeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteeId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get inviterId => $_getI64(1);
  @$pb.TagNumber(2)
  set inviterId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviterId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviterId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get roomId => $_getI64(2);
  @$pb.TagNumber(3)
  set roomId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);
}

class ChairManInviteAudienceRsp extends $pb.GeneratedMessage {
  factory ChairManInviteAudienceRsp({
    $2.ErrCode? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  ChairManInviteAudienceRsp._() : super();
  factory ChairManInviteAudienceRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManInviteAudienceRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManInviteAudienceRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManInviteAudienceRsp clone() => ChairManInviteAudienceRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManInviteAudienceRsp copyWith(void Function(ChairManInviteAudienceRsp) updates) => super.copyWith((message) => updates(message as ChairManInviteAudienceRsp)) as ChairManInviteAudienceRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManInviteAudienceRsp create() => ChairManInviteAudienceRsp._();
  ChairManInviteAudienceRsp createEmptyInstance() => create();
  static $pb.PbList<ChairManInviteAudienceRsp> createRepeated() => $pb.PbList<ChairManInviteAudienceRsp>();
  @$core.pragma('dart2js:noInline')
  static ChairManInviteAudienceRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManInviteAudienceRsp>(create);
  static ChairManInviteAudienceRsp? _defaultInstance;

  /// int64 inviteeId = 1;
  @$pb.TagNumber(1)
  $2.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 客户端加入3T房间成功后发通知到服务端
/// Result = ErrCode_SUCCESS 则同步sei到三T， 否则为推流失败，下麦该用户
class Enter3TChannelResultNotifyToServer extends $pb.GeneratedMessage {
  factory Enter3TChannelResultNotifyToServer({
    $2.ErrCode? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  Enter3TChannelResultNotifyToServer._() : super();
  factory Enter3TChannelResultNotifyToServer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Enter3TChannelResultNotifyToServer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Enter3TChannelResultNotifyToServer', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'Result', $pb.PbFieldType.OE, protoName: 'Result', defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Enter3TChannelResultNotifyToServer clone() => Enter3TChannelResultNotifyToServer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Enter3TChannelResultNotifyToServer copyWith(void Function(Enter3TChannelResultNotifyToServer) updates) => super.copyWith((message) => updates(message as Enter3TChannelResultNotifyToServer)) as Enter3TChannelResultNotifyToServer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Enter3TChannelResultNotifyToServer create() => Enter3TChannelResultNotifyToServer._();
  Enter3TChannelResultNotifyToServer createEmptyInstance() => create();
  static $pb.PbList<Enter3TChannelResultNotifyToServer> createRepeated() => $pb.PbList<Enter3TChannelResultNotifyToServer>();
  @$core.pragma('dart2js:noInline')
  static Enter3TChannelResultNotifyToServer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Enter3TChannelResultNotifyToServer>(create);
  static Enter3TChannelResultNotifyToServer? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 邀请应答
class ChairManInviteAudienceAnswerReq extends $pb.GeneratedMessage {
  factory ChairManInviteAudienceAnswerReq({
    $fixnum.Int64? inviteeId,
    $fixnum.Int64? inviterId,
    AnswerType? answerType,
  }) {
    final $result = create();
    if (inviteeId != null) {
      $result.inviteeId = inviteeId;
    }
    if (inviterId != null) {
      $result.inviterId = inviterId;
    }
    if (answerType != null) {
      $result.answerType = answerType;
    }
    return $result;
  }
  ChairManInviteAudienceAnswerReq._() : super();
  factory ChairManInviteAudienceAnswerReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManInviteAudienceAnswerReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManInviteAudienceAnswerReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'inviteeId', protoName: 'inviteeId')
    ..aInt64(2, _omitFieldNames ? '' : 'inviterId', protoName: 'inviterId')
    ..e<AnswerType>(3, _omitFieldNames ? '' : 'answerType', $pb.PbFieldType.OE, protoName: 'answerType', defaultOrMaker: AnswerType.Agree, valueOf: AnswerType.valueOf, enumValues: AnswerType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManInviteAudienceAnswerReq clone() => ChairManInviteAudienceAnswerReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManInviteAudienceAnswerReq copyWith(void Function(ChairManInviteAudienceAnswerReq) updates) => super.copyWith((message) => updates(message as ChairManInviteAudienceAnswerReq)) as ChairManInviteAudienceAnswerReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManInviteAudienceAnswerReq create() => ChairManInviteAudienceAnswerReq._();
  ChairManInviteAudienceAnswerReq createEmptyInstance() => create();
  static $pb.PbList<ChairManInviteAudienceAnswerReq> createRepeated() => $pb.PbList<ChairManInviteAudienceAnswerReq>();
  @$core.pragma('dart2js:noInline')
  static ChairManInviteAudienceAnswerReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManInviteAudienceAnswerReq>(create);
  static ChairManInviteAudienceAnswerReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviteeId => $_getI64(0);
  @$pb.TagNumber(1)
  set inviteeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviteeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteeId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get inviterId => $_getI64(1);
  @$pb.TagNumber(2)
  set inviterId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviterId() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviterId() => clearField(2);

  @$pb.TagNumber(3)
  AnswerType get answerType => $_getN(2);
  @$pb.TagNumber(3)
  set answerType(AnswerType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAnswerType() => $_has(2);
  @$pb.TagNumber(3)
  void clearAnswerType() => clearField(3);
}

class ChairManInviteAudienceAnswerRsp extends $pb.GeneratedMessage {
  factory ChairManInviteAudienceAnswerRsp({
    $core.int? anchorLoc,
    $2.ErrCode? result,
  }) {
    final $result = create();
    if (anchorLoc != null) {
      $result.anchorLoc = anchorLoc;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  ChairManInviteAudienceAnswerRsp._() : super();
  factory ChairManInviteAudienceAnswerRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManInviteAudienceAnswerRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManInviteAudienceAnswerRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'anchorLoc', $pb.PbFieldType.O3, protoName: 'anchorLoc')
    ..e<$2.ErrCode>(2, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManInviteAudienceAnswerRsp clone() => ChairManInviteAudienceAnswerRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManInviteAudienceAnswerRsp copyWith(void Function(ChairManInviteAudienceAnswerRsp) updates) => super.copyWith((message) => updates(message as ChairManInviteAudienceAnswerRsp)) as ChairManInviteAudienceAnswerRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManInviteAudienceAnswerRsp create() => ChairManInviteAudienceAnswerRsp._();
  ChairManInviteAudienceAnswerRsp createEmptyInstance() => create();
  static $pb.PbList<ChairManInviteAudienceAnswerRsp> createRepeated() => $pb.PbList<ChairManInviteAudienceAnswerRsp>();
  @$core.pragma('dart2js:noInline')
  static ChairManInviteAudienceAnswerRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManInviteAudienceAnswerRsp>(create);
  static ChairManInviteAudienceAnswerRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get anchorLoc => $_getIZ(0);
  @$pb.TagNumber(1)
  set anchorLoc($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnchorLoc() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnchorLoc() => clearField(1);

  @$pb.TagNumber(2)
  $2.ErrCode get result => $_getN(1);
  @$pb.TagNumber(2)
  set result($2.ErrCode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
}

/// 主持人下麦副播
class ChairManOffAnchorReq extends $pb.GeneratedMessage {
  factory ChairManOffAnchorReq({
    $fixnum.Int64? aimId,
  }) {
    final $result = create();
    if (aimId != null) {
      $result.aimId = aimId;
    }
    return $result;
  }
  ChairManOffAnchorReq._() : super();
  factory ChairManOffAnchorReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManOffAnchorReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManOffAnchorReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManOffAnchorReq clone() => ChairManOffAnchorReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManOffAnchorReq copyWith(void Function(ChairManOffAnchorReq) updates) => super.copyWith((message) => updates(message as ChairManOffAnchorReq)) as ChairManOffAnchorReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManOffAnchorReq create() => ChairManOffAnchorReq._();
  ChairManOffAnchorReq createEmptyInstance() => create();
  static $pb.PbList<ChairManOffAnchorReq> createRepeated() => $pb.PbList<ChairManOffAnchorReq>();
  @$core.pragma('dart2js:noInline')
  static ChairManOffAnchorReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManOffAnchorReq>(create);
  static ChairManOffAnchorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aimId => $_getI64(0);
  @$pb.TagNumber(1)
  set aimId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAimId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAimId() => clearField(1);
}

class ChairManOffAnchorRsp extends $pb.GeneratedMessage {
  factory ChairManOffAnchorRsp({
    $2.ErrCode? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  ChairManOffAnchorRsp._() : super();
  factory ChairManOffAnchorRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManOffAnchorRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManOffAnchorRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManOffAnchorRsp clone() => ChairManOffAnchorRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManOffAnchorRsp copyWith(void Function(ChairManOffAnchorRsp) updates) => super.copyWith((message) => updates(message as ChairManOffAnchorRsp)) as ChairManOffAnchorRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManOffAnchorRsp create() => ChairManOffAnchorRsp._();
  ChairManOffAnchorRsp createEmptyInstance() => create();
  static $pb.PbList<ChairManOffAnchorRsp> createRepeated() => $pb.PbList<ChairManOffAnchorRsp>();
  @$core.pragma('dart2js:noInline')
  static ChairManOffAnchorRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManOffAnchorRsp>(create);
  static ChairManOffAnchorRsp? _defaultInstance;

  /// int64 aimId = 1;
  @$pb.TagNumber(1)
  $2.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// 下播通知到客户端
class ChairManOffAnchorNotify extends $pb.GeneratedMessage {
  factory ChairManOffAnchorNotify({
    $fixnum.Int64? aimId,
  }) {
    final $result = create();
    if (aimId != null) {
      $result.aimId = aimId;
    }
    return $result;
  }
  ChairManOffAnchorNotify._() : super();
  factory ChairManOffAnchorNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChairManOffAnchorNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChairManOffAnchorNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChairManOffAnchorNotify clone() => ChairManOffAnchorNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChairManOffAnchorNotify copyWith(void Function(ChairManOffAnchorNotify) updates) => super.copyWith((message) => updates(message as ChairManOffAnchorNotify)) as ChairManOffAnchorNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChairManOffAnchorNotify create() => ChairManOffAnchorNotify._();
  ChairManOffAnchorNotify createEmptyInstance() => create();
  static $pb.PbList<ChairManOffAnchorNotify> createRepeated() => $pb.PbList<ChairManOffAnchorNotify>();
  @$core.pragma('dart2js:noInline')
  static ChairManOffAnchorNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChairManOffAnchorNotify>(create);
  static ChairManOffAnchorNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aimId => $_getI64(0);
  @$pb.TagNumber(1)
  set aimId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAimId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAimId() => clearField(1);
}

/// 场景恢复
class RecoverLiveRoomReq extends $pb.GeneratedMessage {
  factory RecoverLiveRoomReq() => create();
  RecoverLiveRoomReq._() : super();
  factory RecoverLiveRoomReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecoverLiveRoomReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecoverLiveRoomReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecoverLiveRoomReq clone() => RecoverLiveRoomReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecoverLiveRoomReq copyWith(void Function(RecoverLiveRoomReq) updates) => super.copyWith((message) => updates(message as RecoverLiveRoomReq)) as RecoverLiveRoomReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoverLiveRoomReq create() => RecoverLiveRoomReq._();
  RecoverLiveRoomReq createEmptyInstance() => create();
  static $pb.PbList<RecoverLiveRoomReq> createRepeated() => $pb.PbList<RecoverLiveRoomReq>();
  @$core.pragma('dart2js:noInline')
  static RecoverLiveRoomReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecoverLiveRoomReq>(create);
  static RecoverLiveRoomReq? _defaultInstance;
}

class RecoverLiveRoomRsp extends $pb.GeneratedMessage {
  factory RecoverLiveRoomRsp({
    $2.ErrCode? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  RecoverLiveRoomRsp._() : super();
  factory RecoverLiveRoomRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecoverLiveRoomRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecoverLiveRoomRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecoverLiveRoomRsp clone() => RecoverLiveRoomRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecoverLiveRoomRsp copyWith(void Function(RecoverLiveRoomRsp) updates) => super.copyWith((message) => updates(message as RecoverLiveRoomRsp)) as RecoverLiveRoomRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoverLiveRoomRsp create() => RecoverLiveRoomRsp._();
  RecoverLiveRoomRsp createEmptyInstance() => create();
  static $pb.PbList<RecoverLiveRoomRsp> createRepeated() => $pb.PbList<RecoverLiveRoomRsp>();
  @$core.pragma('dart2js:noInline')
  static RecoverLiveRoomRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecoverLiveRoomRsp>(create);
  static RecoverLiveRoomRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class VideoStateChangeNotify extends $pb.GeneratedMessage {
  factory VideoStateChangeNotify({
    $core.int? state,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  VideoStateChangeNotify._() : super();
  factory VideoStateChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoStateChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VideoStateChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoStateChangeNotify clone() => VideoStateChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoStateChangeNotify copyWith(void Function(VideoStateChangeNotify) updates) => super.copyWith((message) => updates(message as VideoStateChangeNotify)) as VideoStateChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoStateChangeNotify create() => VideoStateChangeNotify._();
  VideoStateChangeNotify createEmptyInstance() => create();
  static $pb.PbList<VideoStateChangeNotify> createRepeated() => $pb.PbList<VideoStateChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static VideoStateChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoStateChangeNotify>(create);
  static VideoStateChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get state => $_getIZ(0);
  @$pb.TagNumber(1)
  set state($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

class AudioStateChangeNotify extends $pb.GeneratedMessage {
  factory AudioStateChangeNotify({
    $core.int? state,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  AudioStateChangeNotify._() : super();
  factory AudioStateChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AudioStateChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AudioStateChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AudioStateChangeNotify clone() => AudioStateChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AudioStateChangeNotify copyWith(void Function(AudioStateChangeNotify) updates) => super.copyWith((message) => updates(message as AudioStateChangeNotify)) as AudioStateChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AudioStateChangeNotify create() => AudioStateChangeNotify._();
  AudioStateChangeNotify createEmptyInstance() => create();
  static $pb.PbList<AudioStateChangeNotify> createRepeated() => $pb.PbList<AudioStateChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static AudioStateChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AudioStateChangeNotify>(create);
  static AudioStateChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get state => $_getIZ(0);
  @$pb.TagNumber(1)
  set state($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

/// 发表情
class RoomMsgExpression extends $pb.GeneratedMessage {
  factory RoomMsgExpression({
    $core.int? expressionId,
    $core.int? loc,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (expressionId != null) {
      $result.expressionId = expressionId;
    }
    if (loc != null) {
      $result.loc = loc;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  RoomMsgExpression._() : super();
  factory RoomMsgExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomMsgExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomMsgExpression', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'expressionId', $pb.PbFieldType.O3, protoName: 'expressionId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'loc', $pb.PbFieldType.O3)
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'exp', entryClassName: 'RoomMsgExpression.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_live_room'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomMsgExpression clone() => RoomMsgExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomMsgExpression copyWith(void Function(RoomMsgExpression) updates) => super.copyWith((message) => updates(message as RoomMsgExpression)) as RoomMsgExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomMsgExpression create() => RoomMsgExpression._();
  RoomMsgExpression createEmptyInstance() => create();
  static $pb.PbList<RoomMsgExpression> createRepeated() => $pb.PbList<RoomMsgExpression>();
  @$core.pragma('dart2js:noInline')
  static RoomMsgExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomMsgExpression>(create);
  static RoomMsgExpression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get expressionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set expressionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpressionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpressionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get loc => $_getIZ(1);
  @$pb.TagNumber(2)
  set loc($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLoc() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoc() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get exp => $_getMap(2);
}

class KickUserOutNotify extends $pb.GeneratedMessage {
  factory KickUserOutNotify({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  KickUserOutNotify._() : super();
  factory KickUserOutNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickUserOutNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KickUserOutNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickUserOutNotify clone() => KickUserOutNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickUserOutNotify copyWith(void Function(KickUserOutNotify) updates) => super.copyWith((message) => updates(message as KickUserOutNotify)) as KickUserOutNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KickUserOutNotify create() => KickUserOutNotify._();
  KickUserOutNotify createEmptyInstance() => create();
  static $pb.PbList<KickUserOutNotify> createRepeated() => $pb.PbList<KickUserOutNotify>();
  @$core.pragma('dart2js:noInline')
  static KickUserOutNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickUserOutNotify>(create);
  static KickUserOutNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

/// 禁麦
class ForbidStateChangeNotify extends $pb.GeneratedMessage {
  factory ForbidStateChangeNotify({
    $fixnum.Int64? aimId,
    $core.int? state,
  }) {
    final $result = create();
    if (aimId != null) {
      $result.aimId = aimId;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  ForbidStateChangeNotify._() : super();
  factory ForbidStateChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForbidStateChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForbidStateChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForbidStateChangeNotify clone() => ForbidStateChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForbidStateChangeNotify copyWith(void Function(ForbidStateChangeNotify) updates) => super.copyWith((message) => updates(message as ForbidStateChangeNotify)) as ForbidStateChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForbidStateChangeNotify create() => ForbidStateChangeNotify._();
  ForbidStateChangeNotify createEmptyInstance() => create();
  static $pb.PbList<ForbidStateChangeNotify> createRepeated() => $pb.PbList<ForbidStateChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static ForbidStateChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForbidStateChangeNotify>(create);
  static ForbidStateChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aimId => $_getI64(0);
  @$pb.TagNumber(1)
  set aimId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAimId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAimId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get state => $_getIZ(1);
  @$pb.TagNumber(2)
  set state($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
}

/// 多主播礼物消息
class LiveGiftNotify extends $pb.GeneratedMessage {
  factory LiveGiftNotify({
    UserProp? sender,
    RoomType? roomType,
    LiveGiftNotify_SendType? sendType,
    $core.Iterable<Receiver>? receivers,
    LiveGift? gift,
  }) {
    final $result = create();
    if (sender != null) {
      $result.sender = sender;
    }
    if (roomType != null) {
      $result.roomType = roomType;
    }
    if (sendType != null) {
      $result.sendType = sendType;
    }
    if (receivers != null) {
      $result.receivers.addAll(receivers);
    }
    if (gift != null) {
      $result.gift = gift;
    }
    return $result;
  }
  LiveGiftNotify._() : super();
  factory LiveGiftNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveGiftNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveGiftNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UserProp>(1, _omitFieldNames ? '' : 'sender', subBuilder: UserProp.create)
    ..e<RoomType>(2, _omitFieldNames ? '' : 'roomType', $pb.PbFieldType.OE, protoName: 'roomType', defaultOrMaker: RoomType.Unknow, valueOf: RoomType.valueOf, enumValues: RoomType.values)
    ..e<LiveGiftNotify_SendType>(3, _omitFieldNames ? '' : 'sendType', $pb.PbFieldType.OE, protoName: 'sendType', defaultOrMaker: LiveGiftNotify_SendType.SINGLE, valueOf: LiveGiftNotify_SendType.valueOf, enumValues: LiveGiftNotify_SendType.values)
    ..pc<Receiver>(4, _omitFieldNames ? '' : 'receivers', $pb.PbFieldType.PM, subBuilder: Receiver.create)
    ..aOM<LiveGift>(5, _omitFieldNames ? '' : 'gift', subBuilder: LiveGift.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveGiftNotify clone() => LiveGiftNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveGiftNotify copyWith(void Function(LiveGiftNotify) updates) => super.copyWith((message) => updates(message as LiveGiftNotify)) as LiveGiftNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveGiftNotify create() => LiveGiftNotify._();
  LiveGiftNotify createEmptyInstance() => create();
  static $pb.PbList<LiveGiftNotify> createRepeated() => $pb.PbList<LiveGiftNotify>();
  @$core.pragma('dart2js:noInline')
  static LiveGiftNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveGiftNotify>(create);
  static LiveGiftNotify? _defaultInstance;

  @$pb.TagNumber(1)
  UserProp get sender => $_getN(0);
  @$pb.TagNumber(1)
  set sender(UserProp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);
  @$pb.TagNumber(1)
  UserProp ensureSender() => $_ensure(0);

  @$pb.TagNumber(2)
  RoomType get roomType => $_getN(1);
  @$pb.TagNumber(2)
  set roomType(RoomType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomType() => clearField(2);

  @$pb.TagNumber(3)
  LiveGiftNotify_SendType get sendType => $_getN(2);
  @$pb.TagNumber(3)
  set sendType(LiveGiftNotify_SendType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSendType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSendType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Receiver> get receivers => $_getList(3);

  @$pb.TagNumber(5)
  LiveGift get gift => $_getN(4);
  @$pb.TagNumber(5)
  set gift(LiveGift v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGift() => $_has(4);
  @$pb.TagNumber(5)
  void clearGift() => clearField(5);
  @$pb.TagNumber(5)
  LiveGift ensureGift() => $_ensure(4);
}

class Receiver extends $pb.GeneratedMessage {
  factory Receiver({
    $fixnum.Int64? actorId,
    $core.String? actorName,
    $core.Map<$core.String, $core.String>? exp,
    $core.String? headerImageOriginal,
  }) {
    final $result = create();
    if (actorId != null) {
      $result.actorId = actorId;
    }
    if (actorName != null) {
      $result.actorName = actorName;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    return $result;
  }
  Receiver._() : super();
  factory Receiver.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Receiver.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Receiver', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'actorId', protoName: 'actorId')
    ..aOS(2, _omitFieldNames ? '' : 'actorName', protoName: 'actorName')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'exp', entryClassName: 'Receiver.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_live_room'))
    ..aOS(4, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Receiver clone() => Receiver()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Receiver copyWith(void Function(Receiver) updates) => super.copyWith((message) => updates(message as Receiver)) as Receiver;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Receiver create() => Receiver._();
  Receiver createEmptyInstance() => create();
  static $pb.PbList<Receiver> createRepeated() => $pb.PbList<Receiver>();
  @$core.pragma('dart2js:noInline')
  static Receiver getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Receiver>(create);
  static Receiver? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get actorId => $_getI64(0);
  @$pb.TagNumber(1)
  set actorId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorName() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get exp => $_getMap(2);

  @$pb.TagNumber(4)
  $core.String get headerImageOriginal => $_getSZ(3);
  @$pb.TagNumber(4)
  set headerImageOriginal($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeaderImageOriginal() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeaderImageOriginal() => clearField(4);
}

class LiveGift extends $pb.GeneratedMessage {
  factory LiveGift({
    $fixnum.Int64? giftId,
    $fixnum.Int64? giftNumber,
    $core.int? giftType,
    $fixnum.Int64? giftConfLastUpdateTime,
    $core.int? batteryType,
    $core.Iterable<$fixnum.Int64>? batteryTypeList,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (giftId != null) {
      $result.giftId = giftId;
    }
    if (giftNumber != null) {
      $result.giftNumber = giftNumber;
    }
    if (giftType != null) {
      $result.giftType = giftType;
    }
    if (giftConfLastUpdateTime != null) {
      $result.giftConfLastUpdateTime = giftConfLastUpdateTime;
    }
    if (batteryType != null) {
      $result.batteryType = batteryType;
    }
    if (batteryTypeList != null) {
      $result.batteryTypeList.addAll(batteryTypeList);
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  LiveGift._() : super();
  factory LiveGift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveGift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveGift', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'giftId', protoName: 'giftId')
    ..aInt64(2, _omitFieldNames ? '' : 'giftNumber', protoName: 'giftNumber')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'giftType', $pb.PbFieldType.O3, protoName: 'giftType')
    ..aInt64(4, _omitFieldNames ? '' : 'giftConfLastUpdateTime', protoName: 'giftConfLastUpdateTime')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'batteryType', $pb.PbFieldType.O3, protoName: 'batteryType')
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'batteryTypeList', $pb.PbFieldType.K6, protoName: 'batteryTypeList')
    ..m<$core.String, $core.String>(7, _omitFieldNames ? '' : 'exp', entryClassName: 'LiveGift.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_live_room'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveGift clone() => LiveGift()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveGift copyWith(void Function(LiveGift) updates) => super.copyWith((message) => updates(message as LiveGift)) as LiveGift;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveGift create() => LiveGift._();
  LiveGift createEmptyInstance() => create();
  static $pb.PbList<LiveGift> createRepeated() => $pb.PbList<LiveGift>();
  @$core.pragma('dart2js:noInline')
  static LiveGift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveGift>(create);
  static LiveGift? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get giftId => $_getI64(0);
  @$pb.TagNumber(1)
  set giftId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGiftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGiftId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get giftNumber => $_getI64(1);
  @$pb.TagNumber(2)
  set giftNumber($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGiftNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearGiftNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get giftType => $_getIZ(2);
  @$pb.TagNumber(3)
  set giftType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGiftType() => $_has(2);
  @$pb.TagNumber(3)
  void clearGiftType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get giftConfLastUpdateTime => $_getI64(3);
  @$pb.TagNumber(4)
  set giftConfLastUpdateTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGiftConfLastUpdateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearGiftConfLastUpdateTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get batteryType => $_getIZ(4);
  @$pb.TagNumber(5)
  set batteryType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBatteryType() => $_has(4);
  @$pb.TagNumber(5)
  void clearBatteryType() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get batteryTypeList => $_getList(5);

  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.String> get exp => $_getMap(6);
}

class MultiAnchorScoreChangeNotify_Anchor extends $pb.GeneratedMessage {
  factory MultiAnchorScoreChangeNotify_Anchor({
    $fixnum.Int64? score,
    $fixnum.Int64? actorId,
    $fixnum.Int64? timestamp,
  }) {
    final $result = create();
    if (score != null) {
      $result.score = score;
    }
    if (actorId != null) {
      $result.actorId = actorId;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    return $result;
  }
  MultiAnchorScoreChangeNotify_Anchor._() : super();
  factory MultiAnchorScoreChangeNotify_Anchor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiAnchorScoreChangeNotify_Anchor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiAnchorScoreChangeNotify.Anchor', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'score')
    ..aInt64(2, _omitFieldNames ? '' : 'actorId', protoName: 'actorId')
    ..aInt64(3, _omitFieldNames ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiAnchorScoreChangeNotify_Anchor clone() => MultiAnchorScoreChangeNotify_Anchor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiAnchorScoreChangeNotify_Anchor copyWith(void Function(MultiAnchorScoreChangeNotify_Anchor) updates) => super.copyWith((message) => updates(message as MultiAnchorScoreChangeNotify_Anchor)) as MultiAnchorScoreChangeNotify_Anchor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiAnchorScoreChangeNotify_Anchor create() => MultiAnchorScoreChangeNotify_Anchor._();
  MultiAnchorScoreChangeNotify_Anchor createEmptyInstance() => create();
  static $pb.PbList<MultiAnchorScoreChangeNotify_Anchor> createRepeated() => $pb.PbList<MultiAnchorScoreChangeNotify_Anchor>();
  @$core.pragma('dart2js:noInline')
  static MultiAnchorScoreChangeNotify_Anchor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiAnchorScoreChangeNotify_Anchor>(create);
  static MultiAnchorScoreChangeNotify_Anchor? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get score => $_getI64(0);
  @$pb.TagNumber(1)
  set score($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearScore() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get actorId => $_getI64(1);
  @$pb.TagNumber(2)
  set actorId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
}

/// 多主播魅力值更新
class MultiAnchorScoreChangeNotify extends $pb.GeneratedMessage {
  factory MultiAnchorScoreChangeNotify({
    $core.Iterable<MultiAnchorScoreChangeNotify_Anchor>? anchors,
  }) {
    final $result = create();
    if (anchors != null) {
      $result.anchors.addAll(anchors);
    }
    return $result;
  }
  MultiAnchorScoreChangeNotify._() : super();
  factory MultiAnchorScoreChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiAnchorScoreChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiAnchorScoreChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..pc<MultiAnchorScoreChangeNotify_Anchor>(1, _omitFieldNames ? '' : 'anchors', $pb.PbFieldType.PM, subBuilder: MultiAnchorScoreChangeNotify_Anchor.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiAnchorScoreChangeNotify clone() => MultiAnchorScoreChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiAnchorScoreChangeNotify copyWith(void Function(MultiAnchorScoreChangeNotify) updates) => super.copyWith((message) => updates(message as MultiAnchorScoreChangeNotify)) as MultiAnchorScoreChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiAnchorScoreChangeNotify create() => MultiAnchorScoreChangeNotify._();
  MultiAnchorScoreChangeNotify createEmptyInstance() => create();
  static $pb.PbList<MultiAnchorScoreChangeNotify> createRepeated() => $pb.PbList<MultiAnchorScoreChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static MultiAnchorScoreChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiAnchorScoreChangeNotify>(create);
  static MultiAnchorScoreChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MultiAnchorScoreChangeNotify_Anchor> get anchors => $_getList(0);
}

/// 金主变更通知
class InvestorChangeNotify extends $pb.GeneratedMessage {
  factory InvestorChangeNotify({
    $fixnum.Int64? userId,
    $core.String? nickName,
    $core.String? headerImageOriginal,
    $core.bool? levelPrivilegeOpen,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (headerImageOriginal != null) {
      $result.headerImageOriginal = headerImageOriginal;
    }
    if (levelPrivilegeOpen != null) {
      $result.levelPrivilegeOpen = levelPrivilegeOpen;
    }
    return $result;
  }
  InvestorChangeNotify._() : super();
  factory InvestorChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvestorChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InvestorChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'nickName', protoName: 'nickName')
    ..aOS(3, _omitFieldNames ? '' : 'headerImageOriginal', protoName: 'headerImageOriginal')
    ..aOB(4, _omitFieldNames ? '' : 'levelPrivilegeOpen', protoName: 'levelPrivilegeOpen')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvestorChangeNotify clone() => InvestorChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvestorChangeNotify copyWith(void Function(InvestorChangeNotify) updates) => super.copyWith((message) => updates(message as InvestorChangeNotify)) as InvestorChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvestorChangeNotify create() => InvestorChangeNotify._();
  InvestorChangeNotify createEmptyInstance() => create();
  static $pb.PbList<InvestorChangeNotify> createRepeated() => $pb.PbList<InvestorChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static InvestorChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvestorChangeNotify>(create);
  static InvestorChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nickName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNickName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNickName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get headerImageOriginal => $_getSZ(2);
  @$pb.TagNumber(3)
  set headerImageOriginal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeaderImageOriginal() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeaderImageOriginal() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get levelPrivilegeOpen => $_getBF(3);
  @$pb.TagNumber(4)
  set levelPrivilegeOpen($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLevelPrivilegeOpen() => $_has(3);
  @$pb.TagNumber(4)
  void clearLevelPrivilegeOpen() => clearField(4);
}

class BackgroundChangeNotify extends $pb.GeneratedMessage {
  factory BackgroundChangeNotify({
    $core.String? dynamicBackgroundImage,
  }) {
    final $result = create();
    if (dynamicBackgroundImage != null) {
      $result.dynamicBackgroundImage = dynamicBackgroundImage;
    }
    return $result;
  }
  BackgroundChangeNotify._() : super();
  factory BackgroundChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BackgroundChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BackgroundChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dynamicBackgroundImage', protoName: 'dynamicBackgroundImage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BackgroundChangeNotify clone() => BackgroundChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BackgroundChangeNotify copyWith(void Function(BackgroundChangeNotify) updates) => super.copyWith((message) => updates(message as BackgroundChangeNotify)) as BackgroundChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackgroundChangeNotify create() => BackgroundChangeNotify._();
  BackgroundChangeNotify createEmptyInstance() => create();
  static $pb.PbList<BackgroundChangeNotify> createRepeated() => $pb.PbList<BackgroundChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static BackgroundChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BackgroundChangeNotify>(create);
  static BackgroundChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dynamicBackgroundImage => $_getSZ(0);
  @$pb.TagNumber(1)
  set dynamicBackgroundImage($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDynamicBackgroundImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearDynamicBackgroundImage() => clearField(1);
}

class HandDrawnGiftNotify_HandDrawnGift extends $pb.GeneratedMessage {
  factory HandDrawnGiftNotify_HandDrawnGift({
    $core.int? giftId,
    $core.Iterable<$core.double>? path,
    $fixnum.Int64? giftConfLastUpdateTime,
  }) {
    final $result = create();
    if (giftId != null) {
      $result.giftId = giftId;
    }
    if (path != null) {
      $result.path.addAll(path);
    }
    if (giftConfLastUpdateTime != null) {
      $result.giftConfLastUpdateTime = giftConfLastUpdateTime;
    }
    return $result;
  }
  HandDrawnGiftNotify_HandDrawnGift._() : super();
  factory HandDrawnGiftNotify_HandDrawnGift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HandDrawnGiftNotify_HandDrawnGift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HandDrawnGiftNotify.HandDrawnGift', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'giftId', $pb.PbFieldType.O3, protoName: 'giftId')
    ..p<$core.double>(2, _omitFieldNames ? '' : 'path', $pb.PbFieldType.KF)
    ..aInt64(3, _omitFieldNames ? '' : 'giftConfLastUpdateTime', protoName: 'giftConfLastUpdateTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HandDrawnGiftNotify_HandDrawnGift clone() => HandDrawnGiftNotify_HandDrawnGift()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HandDrawnGiftNotify_HandDrawnGift copyWith(void Function(HandDrawnGiftNotify_HandDrawnGift) updates) => super.copyWith((message) => updates(message as HandDrawnGiftNotify_HandDrawnGift)) as HandDrawnGiftNotify_HandDrawnGift;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HandDrawnGiftNotify_HandDrawnGift create() => HandDrawnGiftNotify_HandDrawnGift._();
  HandDrawnGiftNotify_HandDrawnGift createEmptyInstance() => create();
  static $pb.PbList<HandDrawnGiftNotify_HandDrawnGift> createRepeated() => $pb.PbList<HandDrawnGiftNotify_HandDrawnGift>();
  @$core.pragma('dart2js:noInline')
  static HandDrawnGiftNotify_HandDrawnGift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HandDrawnGiftNotify_HandDrawnGift>(create);
  static HandDrawnGiftNotify_HandDrawnGift? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get giftId => $_getIZ(0);
  @$pb.TagNumber(1)
  set giftId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGiftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGiftId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.double> get path => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get giftConfLastUpdateTime => $_getI64(2);
  @$pb.TagNumber(3)
  set giftConfLastUpdateTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGiftConfLastUpdateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearGiftConfLastUpdateTime() => clearField(3);
}

class HandDrawnGiftNotify extends $pb.GeneratedMessage {
  factory HandDrawnGiftNotify({
    UserProp? sender,
    RoomType? roomType,
    HandDrawnGiftNotify_SendType? sendType,
    $core.Iterable<Receiver>? receivers,
    $fixnum.Int64? screenWidth,
    $fixnum.Int64? screenHeight,
    $core.Iterable<HandDrawnGiftNotify_HandDrawnGift>? gifts,
  }) {
    final $result = create();
    if (sender != null) {
      $result.sender = sender;
    }
    if (roomType != null) {
      $result.roomType = roomType;
    }
    if (sendType != null) {
      $result.sendType = sendType;
    }
    if (receivers != null) {
      $result.receivers.addAll(receivers);
    }
    if (screenWidth != null) {
      $result.screenWidth = screenWidth;
    }
    if (screenHeight != null) {
      $result.screenHeight = screenHeight;
    }
    if (gifts != null) {
      $result.gifts.addAll(gifts);
    }
    return $result;
  }
  HandDrawnGiftNotify._() : super();
  factory HandDrawnGiftNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HandDrawnGiftNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HandDrawnGiftNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<UserProp>(1, _omitFieldNames ? '' : 'sender', subBuilder: UserProp.create)
    ..e<RoomType>(2, _omitFieldNames ? '' : 'roomType', $pb.PbFieldType.OE, protoName: 'roomType', defaultOrMaker: RoomType.Unknow, valueOf: RoomType.valueOf, enumValues: RoomType.values)
    ..e<HandDrawnGiftNotify_SendType>(3, _omitFieldNames ? '' : 'sendType', $pb.PbFieldType.OE, protoName: 'sendType', defaultOrMaker: HandDrawnGiftNotify_SendType.SINGLE, valueOf: HandDrawnGiftNotify_SendType.valueOf, enumValues: HandDrawnGiftNotify_SendType.values)
    ..pc<Receiver>(4, _omitFieldNames ? '' : 'receivers', $pb.PbFieldType.PM, subBuilder: Receiver.create)
    ..aInt64(5, _omitFieldNames ? '' : 'screenWidth', protoName: 'screenWidth')
    ..aInt64(6, _omitFieldNames ? '' : 'screenHeight', protoName: 'screenHeight')
    ..pc<HandDrawnGiftNotify_HandDrawnGift>(7, _omitFieldNames ? '' : 'gifts', $pb.PbFieldType.PM, subBuilder: HandDrawnGiftNotify_HandDrawnGift.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HandDrawnGiftNotify clone() => HandDrawnGiftNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HandDrawnGiftNotify copyWith(void Function(HandDrawnGiftNotify) updates) => super.copyWith((message) => updates(message as HandDrawnGiftNotify)) as HandDrawnGiftNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HandDrawnGiftNotify create() => HandDrawnGiftNotify._();
  HandDrawnGiftNotify createEmptyInstance() => create();
  static $pb.PbList<HandDrawnGiftNotify> createRepeated() => $pb.PbList<HandDrawnGiftNotify>();
  @$core.pragma('dart2js:noInline')
  static HandDrawnGiftNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HandDrawnGiftNotify>(create);
  static HandDrawnGiftNotify? _defaultInstance;

  @$pb.TagNumber(1)
  UserProp get sender => $_getN(0);
  @$pb.TagNumber(1)
  set sender(UserProp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);
  @$pb.TagNumber(1)
  UserProp ensureSender() => $_ensure(0);

  @$pb.TagNumber(2)
  RoomType get roomType => $_getN(1);
  @$pb.TagNumber(2)
  set roomType(RoomType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomType() => clearField(2);

  @$pb.TagNumber(3)
  HandDrawnGiftNotify_SendType get sendType => $_getN(2);
  @$pb.TagNumber(3)
  set sendType(HandDrawnGiftNotify_SendType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSendType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSendType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Receiver> get receivers => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get screenWidth => $_getI64(4);
  @$pb.TagNumber(5)
  set screenWidth($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasScreenWidth() => $_has(4);
  @$pb.TagNumber(5)
  void clearScreenWidth() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get screenHeight => $_getI64(5);
  @$pb.TagNumber(6)
  set screenHeight($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasScreenHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearScreenHeight() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<HandDrawnGiftNotify_HandDrawnGift> get gifts => $_getList(6);
}

/// 流状态通知
class StreamStateChangeNotify extends $pb.GeneratedMessage {
  factory StreamStateChangeNotify({
    STREAM_STATE? state,
    $core.String? streamId,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    if (streamId != null) {
      $result.streamId = streamId;
    }
    return $result;
  }
  StreamStateChangeNotify._() : super();
  factory StreamStateChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamStateChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamStateChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<STREAM_STATE>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: STREAM_STATE.CLOSED, valueOf: STREAM_STATE.valueOf, enumValues: STREAM_STATE.values)
    ..aOS(2, _omitFieldNames ? '' : 'streamId', protoName: 'streamId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamStateChangeNotify clone() => StreamStateChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamStateChangeNotify copyWith(void Function(StreamStateChangeNotify) updates) => super.copyWith((message) => updates(message as StreamStateChangeNotify)) as StreamStateChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamStateChangeNotify create() => StreamStateChangeNotify._();
  StreamStateChangeNotify createEmptyInstance() => create();
  static $pb.PbList<StreamStateChangeNotify> createRepeated() => $pb.PbList<StreamStateChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static StreamStateChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamStateChangeNotify>(create);
  static StreamStateChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  STREAM_STATE get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(STREAM_STATE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get streamId => $_getSZ(1);
  @$pb.TagNumber(2)
  set streamId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStreamId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStreamId() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
