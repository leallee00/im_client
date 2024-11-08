//
//  Generated code. Do not modify.
//  source: pb_msg/live_room/secret_room.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/error_code.pbenum.dart' as $2;
import 'live_room.pb.dart' as $4;
import 'secret_room.pbenum.dart';

export 'secret_room.pbenum.dart';

/// 聊天室用户
class Chatter extends $pb.GeneratedMessage {
  factory Chatter({
    $4.UserProp? userProp,
    $core.int? videoState,
    $core.int? audioState,
    $fixnum.Int64? leaveState,
  }) {
    final $result = create();
    if (userProp != null) {
      $result.userProp = userProp;
    }
    if (videoState != null) {
      $result.videoState = videoState;
    }
    if (audioState != null) {
      $result.audioState = audioState;
    }
    if (leaveState != null) {
      $result.leaveState = leaveState;
    }
    return $result;
  }
  Chatter._() : super();
  factory Chatter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Chatter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Chatter', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<$4.UserProp>(1, _omitFieldNames ? '' : 'userProp', protoName: 'userProp', subBuilder: $4.UserProp.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'videoState', $pb.PbFieldType.O3, protoName: 'videoState')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'audioState', $pb.PbFieldType.O3, protoName: 'audioState')
    ..aInt64(6, _omitFieldNames ? '' : 'leaveState', protoName: 'leaveState')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Chatter clone() => Chatter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Chatter copyWith(void Function(Chatter) updates) => super.copyWith((message) => updates(message as Chatter)) as Chatter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Chatter create() => Chatter._();
  Chatter createEmptyInstance() => create();
  static $pb.PbList<Chatter> createRepeated() => $pb.PbList<Chatter>();
  @$core.pragma('dart2js:noInline')
  static Chatter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Chatter>(create);
  static Chatter? _defaultInstance;

  @$pb.TagNumber(1)
  $4.UserProp get userProp => $_getN(0);
  @$pb.TagNumber(1)
  set userProp($4.UserProp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserProp() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserProp() => clearField(1);
  @$pb.TagNumber(1)
  $4.UserProp ensureUserProp() => $_ensure(0);

  @$pb.TagNumber(4)
  $core.int get videoState => $_getIZ(1);
  @$pb.TagNumber(4)
  set videoState($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasVideoState() => $_has(1);
  @$pb.TagNumber(4)
  void clearVideoState() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get audioState => $_getIZ(2);
  @$pb.TagNumber(5)
  set audioState($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasAudioState() => $_has(2);
  @$pb.TagNumber(5)
  void clearAudioState() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get leaveState => $_getI64(3);
  @$pb.TagNumber(6)
  set leaveState($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasLeaveState() => $_has(3);
  @$pb.TagNumber(6)
  void clearLeaveState() => clearField(6);
}

/// 聊天室结构
class ChatRoomInfo extends $pb.GeneratedMessage {
  factory ChatRoomInfo({
    Chatter? caller,
    Chatter? callee,
    $fixnum.Int64? interval,
    $fixnum.Int64? price,
    $fixnum.Int64? deadline,
    $core.bool? autoRenewal,
    $core.bool? oneMore,
    $core.String? channelId,
  }) {
    final $result = create();
    if (caller != null) {
      $result.caller = caller;
    }
    if (callee != null) {
      $result.callee = callee;
    }
    if (interval != null) {
      $result.interval = interval;
    }
    if (price != null) {
      $result.price = price;
    }
    if (deadline != null) {
      $result.deadline = deadline;
    }
    if (autoRenewal != null) {
      $result.autoRenewal = autoRenewal;
    }
    if (oneMore != null) {
      $result.oneMore = oneMore;
    }
    if (channelId != null) {
      $result.channelId = channelId;
    }
    return $result;
  }
  ChatRoomInfo._() : super();
  factory ChatRoomInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatRoomInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatRoomInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<Chatter>(1, _omitFieldNames ? '' : 'caller', subBuilder: Chatter.create)
    ..aOM<Chatter>(2, _omitFieldNames ? '' : 'callee', subBuilder: Chatter.create)
    ..aInt64(3, _omitFieldNames ? '' : 'interval')
    ..aInt64(4, _omitFieldNames ? '' : 'price')
    ..aInt64(5, _omitFieldNames ? '' : 'deadline')
    ..aOB(6, _omitFieldNames ? '' : 'autoRenewal', protoName: 'autoRenewal')
    ..aOB(7, _omitFieldNames ? '' : 'oneMore', protoName: 'oneMore')
    ..aOS(8, _omitFieldNames ? '' : 'channelId', protoName: 'channelId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatRoomInfo clone() => ChatRoomInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatRoomInfo copyWith(void Function(ChatRoomInfo) updates) => super.copyWith((message) => updates(message as ChatRoomInfo)) as ChatRoomInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatRoomInfo create() => ChatRoomInfo._();
  ChatRoomInfo createEmptyInstance() => create();
  static $pb.PbList<ChatRoomInfo> createRepeated() => $pb.PbList<ChatRoomInfo>();
  @$core.pragma('dart2js:noInline')
  static ChatRoomInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatRoomInfo>(create);
  static ChatRoomInfo? _defaultInstance;

  @$pb.TagNumber(1)
  Chatter get caller => $_getN(0);
  @$pb.TagNumber(1)
  set caller(Chatter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCaller() => $_has(0);
  @$pb.TagNumber(1)
  void clearCaller() => clearField(1);
  @$pb.TagNumber(1)
  Chatter ensureCaller() => $_ensure(0);

  @$pb.TagNumber(2)
  Chatter get callee => $_getN(1);
  @$pb.TagNumber(2)
  set callee(Chatter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallee() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallee() => clearField(2);
  @$pb.TagNumber(2)
  Chatter ensureCallee() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get interval => $_getI64(2);
  @$pb.TagNumber(3)
  set interval($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInterval() => $_has(2);
  @$pb.TagNumber(3)
  void clearInterval() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get price => $_getI64(3);
  @$pb.TagNumber(4)
  set price($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get deadline => $_getI64(4);
  @$pb.TagNumber(5)
  set deadline($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeadline() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeadline() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get autoRenewal => $_getBF(5);
  @$pb.TagNumber(6)
  set autoRenewal($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAutoRenewal() => $_has(5);
  @$pb.TagNumber(6)
  void clearAutoRenewal() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get oneMore => $_getBF(6);
  @$pb.TagNumber(7)
  set oneMore($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOneMore() => $_has(6);
  @$pb.TagNumber(7)
  void clearOneMore() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get channelId => $_getSZ(7);
  @$pb.TagNumber(8)
  set channelId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasChannelId() => $_has(7);
  @$pb.TagNumber(8)
  void clearChannelId() => clearField(8);
}

/// 设置连麦付费规则,持久化到redis, 转发到全房间
class UpdateChatPrice extends $pb.GeneratedMessage {
  factory UpdateChatPrice({
    $fixnum.Int64? interval,
    $fixnum.Int64? price,
  }) {
    final $result = create();
    if (interval != null) {
      $result.interval = interval;
    }
    if (price != null) {
      $result.price = price;
    }
    return $result;
  }
  UpdateChatPrice._() : super();
  factory UpdateChatPrice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateChatPrice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateChatPrice', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'interval')
    ..aInt64(2, _omitFieldNames ? '' : 'price')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateChatPrice clone() => UpdateChatPrice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateChatPrice copyWith(void Function(UpdateChatPrice) updates) => super.copyWith((message) => updates(message as UpdateChatPrice)) as UpdateChatPrice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateChatPrice create() => UpdateChatPrice._();
  UpdateChatPrice createEmptyInstance() => create();
  static $pb.PbList<UpdateChatPrice> createRepeated() => $pb.PbList<UpdateChatPrice>();
  @$core.pragma('dart2js:noInline')
  static UpdateChatPrice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateChatPrice>(create);
  static UpdateChatPrice? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get interval => $_getI64(0);
  @$pb.TagNumber(1)
  set interval($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInterval() => $_has(0);
  @$pb.TagNumber(1)
  void clearInterval() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get price => $_getI64(1);
  @$pb.TagNumber(2)
  set price($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);
}

/// 用户申请
class ChatApplyReq extends $pb.GeneratedMessage {
  factory ChatApplyReq({
    $fixnum.Int64? calleeId,
    $fixnum.Int64? callerId,
    $core.String? callerName,
    $core.String? callerHeaderImage,
    $fixnum.Int64? inviteTime,
  }) {
    final $result = create();
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (callerName != null) {
      $result.callerName = callerName;
    }
    if (callerHeaderImage != null) {
      $result.callerHeaderImage = callerHeaderImage;
    }
    if (inviteTime != null) {
      $result.inviteTime = inviteTime;
    }
    return $result;
  }
  ChatApplyReq._() : super();
  factory ChatApplyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatApplyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatApplyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..aInt64(2, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aOS(3, _omitFieldNames ? '' : 'callerName', protoName: 'callerName')
    ..aOS(4, _omitFieldNames ? '' : 'callerHeaderImage', protoName: 'callerHeaderImage')
    ..aInt64(5, _omitFieldNames ? '' : 'inviteTime', protoName: 'inviteTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatApplyReq clone() => ChatApplyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatApplyReq copyWith(void Function(ChatApplyReq) updates) => super.copyWith((message) => updates(message as ChatApplyReq)) as ChatApplyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatApplyReq create() => ChatApplyReq._();
  ChatApplyReq createEmptyInstance() => create();
  static $pb.PbList<ChatApplyReq> createRepeated() => $pb.PbList<ChatApplyReq>();
  @$core.pragma('dart2js:noInline')
  static ChatApplyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatApplyReq>(create);
  static ChatApplyReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get calleeId => $_getI64(0);
  @$pb.TagNumber(1)
  set calleeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCalleeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalleeId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get callerId => $_getI64(1);
  @$pb.TagNumber(2)
  set callerId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallerId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get callerName => $_getSZ(2);
  @$pb.TagNumber(3)
  set callerName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallerName() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallerName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get callerHeaderImage => $_getSZ(3);
  @$pb.TagNumber(4)
  set callerHeaderImage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCallerHeaderImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearCallerHeaderImage() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get inviteTime => $_getI64(4);
  @$pb.TagNumber(5)
  set inviteTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInviteTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearInviteTime() => clearField(5);
}

class ChatApplyRsp extends $pb.GeneratedMessage {
  factory ChatApplyRsp({
    $2.ErrCode? errCode,
    $core.String? errDesc,
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
  }) {
    final $result = create();
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (errDesc != null) {
      $result.errDesc = errDesc;
    }
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    return $result;
  }
  ChatApplyRsp._() : super();
  factory ChatApplyRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatApplyRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatApplyRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.OE, protoName: 'errCode', defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'errDesc', protoName: 'errDesc')
    ..aInt64(3, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(4, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatApplyRsp clone() => ChatApplyRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatApplyRsp copyWith(void Function(ChatApplyRsp) updates) => super.copyWith((message) => updates(message as ChatApplyRsp)) as ChatApplyRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatApplyRsp create() => ChatApplyRsp._();
  ChatApplyRsp createEmptyInstance() => create();
  static $pb.PbList<ChatApplyRsp> createRepeated() => $pb.PbList<ChatApplyRsp>();
  @$core.pragma('dart2js:noInline')
  static ChatApplyRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatApplyRsp>(create);
  static ChatApplyRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ErrCode get errCode => $_getN(0);
  @$pb.TagNumber(1)
  set errCode($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errDesc => $_getSZ(1);
  @$pb.TagNumber(2)
  set errDesc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrDesc() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get callerId => $_getI64(2);
  @$pb.TagNumber(3)
  set callerId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallerId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get calleeId => $_getI64(3);
  @$pb.TagNumber(4)
  set calleeId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCalleeId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCalleeId() => clearField(4);
}

/// 用户取消
class ChatCancelReq extends $pb.GeneratedMessage {
  factory ChatCancelReq({
    $fixnum.Int64? calleeId,
  }) {
    final $result = create();
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    return $result;
  }
  ChatCancelReq._() : super();
  factory ChatCancelReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatCancelReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatCancelReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatCancelReq clone() => ChatCancelReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatCancelReq copyWith(void Function(ChatCancelReq) updates) => super.copyWith((message) => updates(message as ChatCancelReq)) as ChatCancelReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCancelReq create() => ChatCancelReq._();
  ChatCancelReq createEmptyInstance() => create();
  static $pb.PbList<ChatCancelReq> createRepeated() => $pb.PbList<ChatCancelReq>();
  @$core.pragma('dart2js:noInline')
  static ChatCancelReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatCancelReq>(create);
  static ChatCancelReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get calleeId => $_getI64(0);
  @$pb.TagNumber(1)
  set calleeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCalleeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalleeId() => clearField(1);
}

class ChatCancelRsp extends $pb.GeneratedMessage {
  factory ChatCancelRsp({
    $2.ErrCode? errCode,
    $core.String? errDesc,
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
  }) {
    final $result = create();
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (errDesc != null) {
      $result.errDesc = errDesc;
    }
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    return $result;
  }
  ChatCancelRsp._() : super();
  factory ChatCancelRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatCancelRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatCancelRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.OE, protoName: 'errCode', defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'errDesc', protoName: 'errDesc')
    ..aInt64(3, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(4, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatCancelRsp clone() => ChatCancelRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatCancelRsp copyWith(void Function(ChatCancelRsp) updates) => super.copyWith((message) => updates(message as ChatCancelRsp)) as ChatCancelRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCancelRsp create() => ChatCancelRsp._();
  ChatCancelRsp createEmptyInstance() => create();
  static $pb.PbList<ChatCancelRsp> createRepeated() => $pb.PbList<ChatCancelRsp>();
  @$core.pragma('dart2js:noInline')
  static ChatCancelRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatCancelRsp>(create);
  static ChatCancelRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ErrCode get errCode => $_getN(0);
  @$pb.TagNumber(1)
  set errCode($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errDesc => $_getSZ(1);
  @$pb.TagNumber(2)
  set errDesc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrDesc() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get callerId => $_getI64(2);
  @$pb.TagNumber(3)
  set callerId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallerId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get calleeId => $_getI64(3);
  @$pb.TagNumber(4)
  set calleeId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCalleeId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCalleeId() => clearField(4);
}

/// 主播应答
class ChatAnswerReq extends $pb.GeneratedMessage {
  factory ChatAnswerReq({
    $fixnum.Int64? callerId,
    CHAT_ANSWER? answer,
  }) {
    final $result = create();
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (answer != null) {
      $result.answer = answer;
    }
    return $result;
  }
  ChatAnswerReq._() : super();
  factory ChatAnswerReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatAnswerReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatAnswerReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..e<CHAT_ANSWER>(2, _omitFieldNames ? '' : 'answer', $pb.PbFieldType.OE, defaultOrMaker: CHAT_ANSWER.REFUSE, valueOf: CHAT_ANSWER.valueOf, enumValues: CHAT_ANSWER.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatAnswerReq clone() => ChatAnswerReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatAnswerReq copyWith(void Function(ChatAnswerReq) updates) => super.copyWith((message) => updates(message as ChatAnswerReq)) as ChatAnswerReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatAnswerReq create() => ChatAnswerReq._();
  ChatAnswerReq createEmptyInstance() => create();
  static $pb.PbList<ChatAnswerReq> createRepeated() => $pb.PbList<ChatAnswerReq>();
  @$core.pragma('dart2js:noInline')
  static ChatAnswerReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatAnswerReq>(create);
  static ChatAnswerReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callerId => $_getI64(0);
  @$pb.TagNumber(1)
  set callerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallerId() => clearField(1);

  @$pb.TagNumber(2)
  CHAT_ANSWER get answer => $_getN(1);
  @$pb.TagNumber(2)
  set answer(CHAT_ANSWER v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnswer() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnswer() => clearField(2);
}

class ChatAnswerRsp extends $pb.GeneratedMessage {
  factory ChatAnswerRsp({
    $2.ErrCode? errCode,
    $core.String? errDesc,
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
  }) {
    final $result = create();
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (errDesc != null) {
      $result.errDesc = errDesc;
    }
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    return $result;
  }
  ChatAnswerRsp._() : super();
  factory ChatAnswerRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatAnswerRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatAnswerRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..e<$2.ErrCode>(1, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.OE, protoName: 'errCode', defaultOrMaker: $2.ErrCode.SUCCESS, valueOf: $2.ErrCode.valueOf, enumValues: $2.ErrCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'errDesc', protoName: 'errDesc')
    ..aInt64(3, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(4, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatAnswerRsp clone() => ChatAnswerRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatAnswerRsp copyWith(void Function(ChatAnswerRsp) updates) => super.copyWith((message) => updates(message as ChatAnswerRsp)) as ChatAnswerRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatAnswerRsp create() => ChatAnswerRsp._();
  ChatAnswerRsp createEmptyInstance() => create();
  static $pb.PbList<ChatAnswerRsp> createRepeated() => $pb.PbList<ChatAnswerRsp>();
  @$core.pragma('dart2js:noInline')
  static ChatAnswerRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatAnswerRsp>(create);
  static ChatAnswerRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ErrCode get errCode => $_getN(0);
  @$pb.TagNumber(1)
  set errCode($2.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errDesc => $_getSZ(1);
  @$pb.TagNumber(2)
  set errDesc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrDesc() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get callerId => $_getI64(2);
  @$pb.TagNumber(3)
  set callerId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallerId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get calleeId => $_getI64(3);
  @$pb.TagNumber(4)
  set calleeId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCalleeId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCalleeId() => clearField(4);
}

/// 用户关房
class ChatCloseReq extends $pb.GeneratedMessage {
  factory ChatCloseReq({
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
  }) {
    final $result = create();
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    return $result;
  }
  ChatCloseReq._() : super();
  factory ChatCloseReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatCloseReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatCloseReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(2, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatCloseReq clone() => ChatCloseReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatCloseReq copyWith(void Function(ChatCloseReq) updates) => super.copyWith((message) => updates(message as ChatCloseReq)) as ChatCloseReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCloseReq create() => ChatCloseReq._();
  ChatCloseReq createEmptyInstance() => create();
  static $pb.PbList<ChatCloseReq> createRepeated() => $pb.PbList<ChatCloseReq>();
  @$core.pragma('dart2js:noInline')
  static ChatCloseReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatCloseReq>(create);
  static ChatCloseReq? _defaultInstance;

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
}

class ChatCloseRsp extends $pb.GeneratedMessage {
  factory ChatCloseRsp() => create();
  ChatCloseRsp._() : super();
  factory ChatCloseRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatCloseRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatCloseRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatCloseRsp clone() => ChatCloseRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatCloseRsp copyWith(void Function(ChatCloseRsp) updates) => super.copyWith((message) => updates(message as ChatCloseRsp)) as ChatCloseRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCloseRsp create() => ChatCloseRsp._();
  ChatCloseRsp createEmptyInstance() => create();
  static $pb.PbList<ChatCloseRsp> createRepeated() => $pb.PbList<ChatCloseRsp>();
  @$core.pragma('dart2js:noInline')
  static ChatCloseRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatCloseRsp>(create);
  static ChatCloseRsp? _defaultInstance;
}

/// 用户关闭麦克风: 1. 同步到对方
class SetMicrophoneState extends $pb.GeneratedMessage {
  factory SetMicrophoneState({
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
    $core.int? state,
  }) {
    final $result = create();
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  SetMicrophoneState._() : super();
  factory SetMicrophoneState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetMicrophoneState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetMicrophoneState', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(2, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetMicrophoneState clone() => SetMicrophoneState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetMicrophoneState copyWith(void Function(SetMicrophoneState) updates) => super.copyWith((message) => updates(message as SetMicrophoneState)) as SetMicrophoneState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetMicrophoneState create() => SetMicrophoneState._();
  SetMicrophoneState createEmptyInstance() => create();
  static $pb.PbList<SetMicrophoneState> createRepeated() => $pb.PbList<SetMicrophoneState>();
  @$core.pragma('dart2js:noInline')
  static SetMicrophoneState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetMicrophoneState>(create);
  static SetMicrophoneState? _defaultInstance;

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
  $core.int get state => $_getIZ(2);
  @$pb.TagNumber(3)
  set state($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}

/// 设置暂离状态: 1. 同步给对方
class SetLeaveState extends $pb.GeneratedMessage {
  factory SetLeaveState({
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
    $core.int? state,
  }) {
    final $result = create();
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  SetLeaveState._() : super();
  factory SetLeaveState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetLeaveState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetLeaveState', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(2, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetLeaveState clone() => SetLeaveState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetLeaveState copyWith(void Function(SetLeaveState) updates) => super.copyWith((message) => updates(message as SetLeaveState)) as SetLeaveState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetLeaveState create() => SetLeaveState._();
  SetLeaveState createEmptyInstance() => create();
  static $pb.PbList<SetLeaveState> createRepeated() => $pb.PbList<SetLeaveState>();
  @$core.pragma('dart2js:noInline')
  static SetLeaveState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetLeaveState>(create);
  static SetLeaveState? _defaultInstance;

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
  $core.int get state => $_getIZ(2);
  @$pb.TagNumber(3)
  set state($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}

/// 用户是否同意继续畅聊
class SetOneMore extends $pb.GeneratedMessage {
  factory SetOneMore({
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
    $core.bool? state,
  }) {
    final $result = create();
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  SetOneMore._() : super();
  factory SetOneMore.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetOneMore.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetOneMore', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(2, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..aOB(3, _omitFieldNames ? '' : 'state')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetOneMore clone() => SetOneMore()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetOneMore copyWith(void Function(SetOneMore) updates) => super.copyWith((message) => updates(message as SetOneMore)) as SetOneMore;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetOneMore create() => SetOneMore._();
  SetOneMore createEmptyInstance() => create();
  static $pb.PbList<SetOneMore> createRepeated() => $pb.PbList<SetOneMore>();
  @$core.pragma('dart2js:noInline')
  static SetOneMore getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetOneMore>(create);
  static SetOneMore? _defaultInstance;

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
  $core.bool get state => $_getBF(2);
  @$pb.TagNumber(3)
  set state($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}

/// 用户开启或关闭自动续费
class SetAutoRenewal extends $pb.GeneratedMessage {
  factory SetAutoRenewal({
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
    $core.bool? state,
  }) {
    final $result = create();
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  SetAutoRenewal._() : super();
  factory SetAutoRenewal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetAutoRenewal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetAutoRenewal', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(2, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..aOB(3, _omitFieldNames ? '' : 'state')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetAutoRenewal clone() => SetAutoRenewal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetAutoRenewal copyWith(void Function(SetAutoRenewal) updates) => super.copyWith((message) => updates(message as SetAutoRenewal)) as SetAutoRenewal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetAutoRenewal create() => SetAutoRenewal._();
  SetAutoRenewal createEmptyInstance() => create();
  static $pb.PbList<SetAutoRenewal> createRepeated() => $pb.PbList<SetAutoRenewal>();
  @$core.pragma('dart2js:noInline')
  static SetAutoRenewal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetAutoRenewal>(create);
  static SetAutoRenewal? _defaultInstance;

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
  $core.bool get state => $_getBF(2);
  @$pb.TagNumber(3)
  set state($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}

/// 小黑屋挂件状态,当前有几个小黑屋在畅聊,用户进房就推
class ChatCountChangeNotify extends $pb.GeneratedMessage {
  factory ChatCountChangeNotify({
    $core.int? count,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  ChatCountChangeNotify._() : super();
  factory ChatCountChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatCountChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatCountChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatCountChangeNotify clone() => ChatCountChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatCountChangeNotify copyWith(void Function(ChatCountChangeNotify) updates) => super.copyWith((message) => updates(message as ChatCountChangeNotify)) as ChatCountChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCountChangeNotify create() => ChatCountChangeNotify._();
  ChatCountChangeNotify createEmptyInstance() => create();
  static $pb.PbList<ChatCountChangeNotify> createRepeated() => $pb.PbList<ChatCountChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static ChatCountChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatCountChangeNotify>(create);
  static ChatCountChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

/// 获取小黑屋列表 1. 用户调起时去IM拉, 2. 在用户调起的情况下收到ChatCountChangeNotify后客户端再拉
class FetchChatRoomsReq extends $pb.GeneratedMessage {
  factory FetchChatRoomsReq() => create();
  FetchChatRoomsReq._() : super();
  factory FetchChatRoomsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchChatRoomsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchChatRoomsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchChatRoomsReq clone() => FetchChatRoomsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchChatRoomsReq copyWith(void Function(FetchChatRoomsReq) updates) => super.copyWith((message) => updates(message as FetchChatRoomsReq)) as FetchChatRoomsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchChatRoomsReq create() => FetchChatRoomsReq._();
  FetchChatRoomsReq createEmptyInstance() => create();
  static $pb.PbList<FetchChatRoomsReq> createRepeated() => $pb.PbList<FetchChatRoomsReq>();
  @$core.pragma('dart2js:noInline')
  static FetchChatRoomsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchChatRoomsReq>(create);
  static FetchChatRoomsReq? _defaultInstance;
}

class FetchChatRoomsRsp extends $pb.GeneratedMessage {
  factory FetchChatRoomsRsp({
    $core.Iterable<ChatRoomSummery>? rooms,
  }) {
    final $result = create();
    if (rooms != null) {
      $result.rooms.addAll(rooms);
    }
    return $result;
  }
  FetchChatRoomsRsp._() : super();
  factory FetchChatRoomsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchChatRoomsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchChatRoomsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..pc<ChatRoomSummery>(1, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: ChatRoomSummery.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchChatRoomsRsp clone() => FetchChatRoomsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchChatRoomsRsp copyWith(void Function(FetchChatRoomsRsp) updates) => super.copyWith((message) => updates(message as FetchChatRoomsRsp)) as FetchChatRoomsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchChatRoomsRsp create() => FetchChatRoomsRsp._();
  FetchChatRoomsRsp createEmptyInstance() => create();
  static $pb.PbList<FetchChatRoomsRsp> createRepeated() => $pb.PbList<FetchChatRoomsRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchChatRoomsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchChatRoomsRsp>(create);
  static FetchChatRoomsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatRoomSummery> get rooms => $_getList(0);
}

class ChatRoomSummery extends $pb.GeneratedMessage {
  factory ChatRoomSummery({
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
    $core.String? callerUsername,
    $core.String? calleeUsername,
    $core.String? callerHeadimage,
    $core.String? calleeheadimage,
  }) {
    final $result = create();
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (callerUsername != null) {
      $result.callerUsername = callerUsername;
    }
    if (calleeUsername != null) {
      $result.calleeUsername = calleeUsername;
    }
    if (callerHeadimage != null) {
      $result.callerHeadimage = callerHeadimage;
    }
    if (calleeheadimage != null) {
      $result.calleeheadimage = calleeheadimage;
    }
    return $result;
  }
  ChatRoomSummery._() : super();
  factory ChatRoomSummery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatRoomSummery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatRoomSummery', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(2, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..aOS(3, _omitFieldNames ? '' : 'callerUsername', protoName: 'callerUsername')
    ..aOS(4, _omitFieldNames ? '' : 'calleeUsername', protoName: 'calleeUsername')
    ..aOS(5, _omitFieldNames ? '' : 'callerHeadimage', protoName: 'callerHeadimage')
    ..aOS(6, _omitFieldNames ? '' : 'calleeheadimage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatRoomSummery clone() => ChatRoomSummery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatRoomSummery copyWith(void Function(ChatRoomSummery) updates) => super.copyWith((message) => updates(message as ChatRoomSummery)) as ChatRoomSummery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatRoomSummery create() => ChatRoomSummery._();
  ChatRoomSummery createEmptyInstance() => create();
  static $pb.PbList<ChatRoomSummery> createRepeated() => $pb.PbList<ChatRoomSummery>();
  @$core.pragma('dart2js:noInline')
  static ChatRoomSummery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatRoomSummery>(create);
  static ChatRoomSummery? _defaultInstance;

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
  $core.String get callerUsername => $_getSZ(2);
  @$pb.TagNumber(3)
  set callerUsername($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallerUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallerUsername() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get calleeUsername => $_getSZ(3);
  @$pb.TagNumber(4)
  set calleeUsername($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCalleeUsername() => $_has(3);
  @$pb.TagNumber(4)
  void clearCalleeUsername() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get callerHeadimage => $_getSZ(4);
  @$pb.TagNumber(5)
  set callerHeadimage($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCallerHeadimage() => $_has(4);
  @$pb.TagNumber(5)
  void clearCallerHeadimage() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get calleeheadimage => $_getSZ(5);
  @$pb.TagNumber(6)
  set calleeheadimage($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCalleeheadimage() => $_has(5);
  @$pb.TagNumber(6)
  void clearCalleeheadimage() => clearField(6);
}

/// 被邀方同意,小黑屋建立
/// 客户端收到此消息要给im发自动续费设置消息SetAutoRenewal
class ChatStartNotify extends $pb.GeneratedMessage {
  factory ChatStartNotify({
    ChatRoomInfo? info,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  ChatStartNotify._() : super();
  factory ChatStartNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatStartNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatStartNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<ChatRoomInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: ChatRoomInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatStartNotify clone() => ChatStartNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatStartNotify copyWith(void Function(ChatStartNotify) updates) => super.copyWith((message) => updates(message as ChatStartNotify)) as ChatStartNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatStartNotify create() => ChatStartNotify._();
  ChatStartNotify createEmptyInstance() => create();
  static $pb.PbList<ChatStartNotify> createRepeated() => $pb.PbList<ChatStartNotify>();
  @$core.pragma('dart2js:noInline')
  static ChatStartNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatStartNotify>(create);
  static ChatStartNotify? _defaultInstance;

  @$pb.TagNumber(1)
  ChatRoomInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ChatRoomInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  ChatRoomInfo ensureInfo() => $_ensure(0);
}

/// 发送到房间内所有人,用以触发小黑屋创建动画
class ChatCreateNotify extends $pb.GeneratedMessage {
  factory ChatCreateNotify({
    ChatRoomSummery? room,
  }) {
    final $result = create();
    if (room != null) {
      $result.room = room;
    }
    return $result;
  }
  ChatCreateNotify._() : super();
  factory ChatCreateNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatCreateNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatCreateNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aOM<ChatRoomSummery>(1, _omitFieldNames ? '' : 'room', subBuilder: ChatRoomSummery.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatCreateNotify clone() => ChatCreateNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatCreateNotify copyWith(void Function(ChatCreateNotify) updates) => super.copyWith((message) => updates(message as ChatCreateNotify)) as ChatCreateNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCreateNotify create() => ChatCreateNotify._();
  ChatCreateNotify createEmptyInstance() => create();
  static $pb.PbList<ChatCreateNotify> createRepeated() => $pb.PbList<ChatCreateNotify>();
  @$core.pragma('dart2js:noInline')
  static ChatCreateNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatCreateNotify>(create);
  static ChatCreateNotify? _defaultInstance;

  @$pb.TagNumber(1)
  ChatRoomSummery get room => $_getN(0);
  @$pb.TagNumber(1)
  set room(ChatRoomSummery v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);
  @$pb.TagNumber(1)
  ChatRoomSummery ensureRoom() => $_ensure(0);
}

/// 房间自动续费或再聊一场 IM推送此消息更新房间到期时间
class DeadlineChangeNotify extends $pb.GeneratedMessage {
  factory DeadlineChangeNotify({
    $fixnum.Int64? deadline,
  }) {
    final $result = create();
    if (deadline != null) {
      $result.deadline = deadline;
    }
    return $result;
  }
  DeadlineChangeNotify._() : super();
  factory DeadlineChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeadlineChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeadlineChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'deadline')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeadlineChangeNotify clone() => DeadlineChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeadlineChangeNotify copyWith(void Function(DeadlineChangeNotify) updates) => super.copyWith((message) => updates(message as DeadlineChangeNotify)) as DeadlineChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeadlineChangeNotify create() => DeadlineChangeNotify._();
  DeadlineChangeNotify createEmptyInstance() => create();
  static $pb.PbList<DeadlineChangeNotify> createRepeated() => $pb.PbList<DeadlineChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static DeadlineChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeadlineChangeNotify>(create);
  static DeadlineChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get deadline => $_getI64(0);
  @$pb.TagNumber(1)
  set deadline($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeadline() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeadline() => clearField(1);
}

/// 小黑屋关闭
class ChatCloseNotify extends $pb.GeneratedMessage {
  factory ChatCloseNotify({
    $fixnum.Int64? callerId,
    $fixnum.Int64? calleeId,
    CHAT_CLOSE_TYPE? closeType,
  }) {
    final $result = create();
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (closeType != null) {
      $result.closeType = closeType;
    }
    return $result;
  }
  ChatCloseNotify._() : super();
  factory ChatCloseNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatCloseNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatCloseNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..aInt64(2, _omitFieldNames ? '' : 'calleeId', protoName: 'calleeId')
    ..e<CHAT_CLOSE_TYPE>(3, _omitFieldNames ? '' : 'closeType', $pb.PbFieldType.OE, protoName: 'closeType', defaultOrMaker: CHAT_CLOSE_TYPE.TIMEOUT, valueOf: CHAT_CLOSE_TYPE.valueOf, enumValues: CHAT_CLOSE_TYPE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatCloseNotify clone() => ChatCloseNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatCloseNotify copyWith(void Function(ChatCloseNotify) updates) => super.copyWith((message) => updates(message as ChatCloseNotify)) as ChatCloseNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCloseNotify create() => ChatCloseNotify._();
  ChatCloseNotify createEmptyInstance() => create();
  static $pb.PbList<ChatCloseNotify> createRepeated() => $pb.PbList<ChatCloseNotify>();
  @$core.pragma('dart2js:noInline')
  static ChatCloseNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatCloseNotify>(create);
  static ChatCloseNotify? _defaultInstance;

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
  CHAT_CLOSE_TYPE get closeType => $_getN(2);
  @$pb.TagNumber(3)
  set closeType(CHAT_CLOSE_TYPE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCloseType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCloseType() => clearField(3);
}

/// 扣费成功,更新用户余额
class BalanceChangeNotify extends $pb.GeneratedMessage {
  factory BalanceChangeNotify({
    $fixnum.Int64? coinBalance,
  }) {
    final $result = create();
    if (coinBalance != null) {
      $result.coinBalance = coinBalance;
    }
    return $result;
  }
  BalanceChangeNotify._() : super();
  factory BalanceChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalanceChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BalanceChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'coinBalance', protoName: 'coinBalance')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalanceChangeNotify clone() => BalanceChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalanceChangeNotify copyWith(void Function(BalanceChangeNotify) updates) => super.copyWith((message) => updates(message as BalanceChangeNotify)) as BalanceChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BalanceChangeNotify create() => BalanceChangeNotify._();
  BalanceChangeNotify createEmptyInstance() => create();
  static $pb.PbList<BalanceChangeNotify> createRepeated() => $pb.PbList<BalanceChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static BalanceChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalanceChangeNotify>(create);
  static BalanceChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get coinBalance => $_getI64(0);
  @$pb.TagNumber(1)
  set coinBalance($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoinBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoinBalance() => clearField(1);
}

/// 派对房主持位没人,30秒后房间关闭
class HostCloseSoonNotify extends $pb.GeneratedMessage {
  factory HostCloseSoonNotify() => create();
  HostCloseSoonNotify._() : super();
  factory HostCloseSoonNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HostCloseSoonNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HostCloseSoonNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HostCloseSoonNotify clone() => HostCloseSoonNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HostCloseSoonNotify copyWith(void Function(HostCloseSoonNotify) updates) => super.copyWith((message) => updates(message as HostCloseSoonNotify)) as HostCloseSoonNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HostCloseSoonNotify create() => HostCloseSoonNotify._();
  HostCloseSoonNotify createEmptyInstance() => create();
  static $pb.PbList<HostCloseSoonNotify> createRepeated() => $pb.PbList<HostCloseSoonNotify>();
  @$core.pragma('dart2js:noInline')
  static HostCloseSoonNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HostCloseSoonNotify>(create);
  static HostCloseSoonNotify? _defaultInstance;
}

/// 小黑屋礼物消息
class SecretGift extends $pb.GeneratedMessage {
  factory SecretGift({
    $fixnum.Int64? senderId,
    $fixnum.Int64? receiverId,
    $4.LiveGift? gift,
  }) {
    final $result = create();
    if (senderId != null) {
      $result.senderId = senderId;
    }
    if (receiverId != null) {
      $result.receiverId = receiverId;
    }
    if (gift != null) {
      $result.gift = gift;
    }
    return $result;
  }
  SecretGift._() : super();
  factory SecretGift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SecretGift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SecretGift', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_live_room'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'senderId', protoName: 'senderId')
    ..aInt64(2, _omitFieldNames ? '' : 'receiverId', protoName: 'receiverId')
    ..aOM<$4.LiveGift>(3, _omitFieldNames ? '' : 'gift', subBuilder: $4.LiveGift.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SecretGift clone() => SecretGift()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SecretGift copyWith(void Function(SecretGift) updates) => super.copyWith((message) => updates(message as SecretGift)) as SecretGift;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecretGift create() => SecretGift._();
  SecretGift createEmptyInstance() => create();
  static $pb.PbList<SecretGift> createRepeated() => $pb.PbList<SecretGift>();
  @$core.pragma('dart2js:noInline')
  static SecretGift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SecretGift>(create);
  static SecretGift? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get senderId => $_getI64(0);
  @$pb.TagNumber(1)
  set senderId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSenderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get receiverId => $_getI64(1);
  @$pb.TagNumber(2)
  set receiverId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiverId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiverId() => clearField(2);

  @$pb.TagNumber(3)
  $4.LiveGift get gift => $_getN(2);
  @$pb.TagNumber(3)
  set gift($4.LiveGift v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGift() => $_has(2);
  @$pb.TagNumber(3)
  void clearGift() => clearField(3);
  @$pb.TagNumber(3)
  $4.LiveGift ensureGift() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
