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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'call.pbenum.dart';

export 'call.pbenum.dart';

/// Call 拨打
class CallReq extends $pb.GeneratedMessage {
  factory CallReq({
    BusinessType? businessType,
    CallType? type,
    $core.String? channel,
    SDK? sdk,
    $fixnum.Int64? callId,
    $core.String? roomToken,
    $fixnum.Int64? callAt,
    $fixnum.Int64? price,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (businessType != null) {
      $result.businessType = businessType;
    }
    if (type != null) {
      $result.type = type;
    }
    if (channel != null) {
      $result.channel = channel;
    }
    if (sdk != null) {
      $result.sdk = sdk;
    }
    if (callId != null) {
      $result.callId = callId;
    }
    if (roomToken != null) {
      $result.roomToken = roomToken;
    }
    if (callAt != null) {
      $result.callAt = callAt;
    }
    if (price != null) {
      $result.price = price;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  CallReq._() : super();
  factory CallReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CallReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..e<BusinessType>(1, _omitFieldNames ? '' : 'businessType', $pb.PbFieldType.OE, protoName: 'businessType', defaultOrMaker: BusinessType.NORMAL, valueOf: BusinessType.valueOf, enumValues: BusinessType.values)
    ..e<CallType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: CallType.VOICE, valueOf: CallType.valueOf, enumValues: CallType.values)
    ..aOS(3, _omitFieldNames ? '' : 'channel')
    ..e<SDK>(4, _omitFieldNames ? '' : 'sdk', $pb.PbFieldType.OE, defaultOrMaker: SDK.ZEGO, valueOf: SDK.valueOf, enumValues: SDK.values)
    ..aInt64(5, _omitFieldNames ? '' : 'callId', protoName: 'callId')
    ..aOS(6, _omitFieldNames ? '' : 'roomToken', protoName: 'roomToken')
    ..aInt64(7, _omitFieldNames ? '' : 'callAt', protoName: 'callAt')
    ..aInt64(8, _omitFieldNames ? '' : 'price')
    ..m<$core.String, $core.String>(10, _omitFieldNames ? '' : 'exp', entryClassName: 'CallReq.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_call'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CallReq clone() => CallReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CallReq copyWith(void Function(CallReq) updates) => super.copyWith((message) => updates(message as CallReq)) as CallReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallReq create() => CallReq._();
  CallReq createEmptyInstance() => create();
  static $pb.PbList<CallReq> createRepeated() => $pb.PbList<CallReq>();
  @$core.pragma('dart2js:noInline')
  static CallReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallReq>(create);
  static CallReq? _defaultInstance;

  @$pb.TagNumber(1)
  BusinessType get businessType => $_getN(0);
  @$pb.TagNumber(1)
  set businessType(BusinessType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusinessType() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusinessType() => clearField(1);

  @$pb.TagNumber(2)
  CallType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(CallType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get channel => $_getSZ(2);
  @$pb.TagNumber(3)
  set channel($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);

  @$pb.TagNumber(4)
  SDK get sdk => $_getN(3);
  @$pb.TagNumber(4)
  set sdk(SDK v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSdk() => $_has(3);
  @$pb.TagNumber(4)
  void clearSdk() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get callId => $_getI64(4);
  @$pb.TagNumber(5)
  set callId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCallId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCallId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get roomToken => $_getSZ(5);
  @$pb.TagNumber(6)
  set roomToken($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRoomToken() => $_has(5);
  @$pb.TagNumber(6)
  void clearRoomToken() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get callAt => $_getI64(6);
  @$pb.TagNumber(7)
  set callAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCallAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCallAt() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get price => $_getI64(7);
  @$pb.TagNumber(8)
  set price($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPrice() => $_has(7);
  @$pb.TagNumber(8)
  void clearPrice() => clearField(8);

  @$pb.TagNumber(10)
  $core.Map<$core.String, $core.String> get exp => $_getMap(8);
}

class CallRsp extends $pb.GeneratedMessage {
  factory CallRsp({
    $fixnum.Int64? callId,
    $core.String? roomToken,
    $fixnum.Int64? callAt,
    $fixnum.Int64? price,
  }) {
    final $result = create();
    if (callId != null) {
      $result.callId = callId;
    }
    if (roomToken != null) {
      $result.roomToken = roomToken;
    }
    if (callAt != null) {
      $result.callAt = callAt;
    }
    if (price != null) {
      $result.price = price;
    }
    return $result;
  }
  CallRsp._() : super();
  factory CallRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CallRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callId', protoName: 'callId')
    ..aOS(2, _omitFieldNames ? '' : 'roomToken', protoName: 'roomToken')
    ..aInt64(3, _omitFieldNames ? '' : 'callAt', protoName: 'callAt')
    ..aInt64(4, _omitFieldNames ? '' : 'price')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CallRsp clone() => CallRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CallRsp copyWith(void Function(CallRsp) updates) => super.copyWith((message) => updates(message as CallRsp)) as CallRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallRsp create() => CallRsp._();
  CallRsp createEmptyInstance() => create();
  static $pb.PbList<CallRsp> createRepeated() => $pb.PbList<CallRsp>();
  @$core.pragma('dart2js:noInline')
  static CallRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallRsp>(create);
  static CallRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);
  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomToken() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get callAt => $_getI64(2);
  @$pb.TagNumber(3)
  set callAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallAt() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get price => $_getI64(3);
  @$pb.TagNumber(4)
  set price($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);
}

/// Accept 接听
class AcceptReq extends $pb.GeneratedMessage {
  factory AcceptReq({
    $fixnum.Int64? callId,
    $fixnum.Int64? acceptAt,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (callId != null) {
      $result.callId = callId;
    }
    if (acceptAt != null) {
      $result.acceptAt = acceptAt;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  AcceptReq._() : super();
  factory AcceptReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcceptReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AcceptReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callId', protoName: 'callId')
    ..aInt64(2, _omitFieldNames ? '' : 'acceptAt', protoName: 'acceptAt')
    ..m<$core.String, $core.String>(10, _omitFieldNames ? '' : 'exp', entryClassName: 'AcceptReq.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_call'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AcceptReq clone() => AcceptReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AcceptReq copyWith(void Function(AcceptReq) updates) => super.copyWith((message) => updates(message as AcceptReq)) as AcceptReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcceptReq create() => AcceptReq._();
  AcceptReq createEmptyInstance() => create();
  static $pb.PbList<AcceptReq> createRepeated() => $pb.PbList<AcceptReq>();
  @$core.pragma('dart2js:noInline')
  static AcceptReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AcceptReq>(create);
  static AcceptReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);
  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get acceptAt => $_getI64(1);
  @$pb.TagNumber(2)
  set acceptAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAcceptAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAcceptAt() => clearField(2);

  @$pb.TagNumber(10)
  $core.Map<$core.String, $core.String> get exp => $_getMap(2);
}

class AcceptRsp extends $pb.GeneratedMessage {
  factory AcceptRsp({
    $fixnum.Int64? acceptAt,
  }) {
    final $result = create();
    if (acceptAt != null) {
      $result.acceptAt = acceptAt;
    }
    return $result;
  }
  AcceptRsp._() : super();
  factory AcceptRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcceptRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AcceptRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'acceptAt', protoName: 'acceptAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AcceptRsp clone() => AcceptRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AcceptRsp copyWith(void Function(AcceptRsp) updates) => super.copyWith((message) => updates(message as AcceptRsp)) as AcceptRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcceptRsp create() => AcceptRsp._();
  AcceptRsp createEmptyInstance() => create();
  static $pb.PbList<AcceptRsp> createRepeated() => $pb.PbList<AcceptRsp>();
  @$core.pragma('dart2js:noInline')
  static AcceptRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AcceptRsp>(create);
  static AcceptRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get acceptAt => $_getI64(0);
  @$pb.TagNumber(1)
  set acceptAt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAcceptAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptAt() => clearField(1);
}

/// Decline 挂断
class DeclineReq extends $pb.GeneratedMessage {
  factory DeclineReq({
    $fixnum.Int64? callId,
    $fixnum.Int64? declineAt,
    $fixnum.Int64? callerId,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (callId != null) {
      $result.callId = callId;
    }
    if (declineAt != null) {
      $result.declineAt = declineAt;
    }
    if (callerId != null) {
      $result.callerId = callerId;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  DeclineReq._() : super();
  factory DeclineReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeclineReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeclineReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callId', protoName: 'callId')
    ..aInt64(2, _omitFieldNames ? '' : 'declineAt', protoName: 'declineAt')
    ..aInt64(3, _omitFieldNames ? '' : 'callerId', protoName: 'callerId')
    ..m<$core.String, $core.String>(10, _omitFieldNames ? '' : 'exp', entryClassName: 'DeclineReq.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_call'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeclineReq clone() => DeclineReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeclineReq copyWith(void Function(DeclineReq) updates) => super.copyWith((message) => updates(message as DeclineReq)) as DeclineReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeclineReq create() => DeclineReq._();
  DeclineReq createEmptyInstance() => create();
  static $pb.PbList<DeclineReq> createRepeated() => $pb.PbList<DeclineReq>();
  @$core.pragma('dart2js:noInline')
  static DeclineReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeclineReq>(create);
  static DeclineReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);
  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get declineAt => $_getI64(1);
  @$pb.TagNumber(2)
  set declineAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeclineAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeclineAt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get callerId => $_getI64(2);
  @$pb.TagNumber(3)
  set callerId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallerId() => clearField(3);

  @$pb.TagNumber(10)
  $core.Map<$core.String, $core.String> get exp => $_getMap(3);
}

class DeclineRsp extends $pb.GeneratedMessage {
  factory DeclineRsp({
    $fixnum.Int64? declineAt,
  }) {
    final $result = create();
    if (declineAt != null) {
      $result.declineAt = declineAt;
    }
    return $result;
  }
  DeclineRsp._() : super();
  factory DeclineRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeclineRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeclineRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'declineAt', protoName: 'declineAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeclineRsp clone() => DeclineRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeclineRsp copyWith(void Function(DeclineRsp) updates) => super.copyWith((message) => updates(message as DeclineRsp)) as DeclineRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeclineRsp create() => DeclineRsp._();
  DeclineRsp createEmptyInstance() => create();
  static $pb.PbList<DeclineRsp> createRepeated() => $pb.PbList<DeclineRsp>();
  @$core.pragma('dart2js:noInline')
  static DeclineRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeclineRsp>(create);
  static DeclineRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get declineAt => $_getI64(0);
  @$pb.TagNumber(1)
  set declineAt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeclineAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeclineAt() => clearField(1);
}

/// 已被接听通知
class AcceptedNotify extends $pb.GeneratedMessage {
  factory AcceptedNotify({
    $fixnum.Int64? callId,
  }) {
    final $result = create();
    if (callId != null) {
      $result.callId = callId;
    }
    return $result;
  }
  AcceptedNotify._() : super();
  factory AcceptedNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcceptedNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AcceptedNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callId', protoName: 'callId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AcceptedNotify clone() => AcceptedNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AcceptedNotify copyWith(void Function(AcceptedNotify) updates) => super.copyWith((message) => updates(message as AcceptedNotify)) as AcceptedNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcceptedNotify create() => AcceptedNotify._();
  AcceptedNotify createEmptyInstance() => create();
  static $pb.PbList<AcceptedNotify> createRepeated() => $pb.PbList<AcceptedNotify>();
  @$core.pragma('dart2js:noInline')
  static AcceptedNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AcceptedNotify>(create);
  static AcceptedNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);
  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);
}

/// OverNotify 由IM和服务端触发通话结束
class OverNotify extends $pb.GeneratedMessage {
  factory OverNotify({
    $fixnum.Int64? callId,
    Reason? reason,
    $fixnum.Int64? overAt,
    $fixnum.Int64? feeUserId,
  }) {
    final $result = create();
    if (callId != null) {
      $result.callId = callId;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (overAt != null) {
      $result.overAt = overAt;
    }
    if (feeUserId != null) {
      $result.feeUserId = feeUserId;
    }
    return $result;
  }
  OverNotify._() : super();
  factory OverNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OverNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OverNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callId', protoName: 'callId')
    ..e<Reason>(2, _omitFieldNames ? '' : 'reason', $pb.PbFieldType.OE, defaultOrMaker: Reason.CALLER_HEARTBEAT_TIMEOUT, valueOf: Reason.valueOf, enumValues: Reason.values)
    ..aInt64(3, _omitFieldNames ? '' : 'overAt', protoName: 'overAt')
    ..aInt64(4, _omitFieldNames ? '' : 'feeUserId', protoName: 'feeUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OverNotify clone() => OverNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OverNotify copyWith(void Function(OverNotify) updates) => super.copyWith((message) => updates(message as OverNotify)) as OverNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OverNotify create() => OverNotify._();
  OverNotify createEmptyInstance() => create();
  static $pb.PbList<OverNotify> createRepeated() => $pb.PbList<OverNotify>();
  @$core.pragma('dart2js:noInline')
  static OverNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OverNotify>(create);
  static OverNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);
  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  Reason get reason => $_getN(1);
  @$pb.TagNumber(2)
  set reason(Reason v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get overAt => $_getI64(2);
  @$pb.TagNumber(3)
  set overAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOverAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearOverAt() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get feeUserId => $_getI64(3);
  @$pb.TagNumber(4)
  set feeUserId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFeeUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFeeUserId() => clearField(4);
}

/// StatsNotify 通话统计,只有成功通话才会发
class StatsNotify extends $pb.GeneratedMessage {
  factory StatsNotify({
    $fixnum.Int64? callId,
    $fixnum.Int64? duration,
  }) {
    final $result = create();
    if (callId != null) {
      $result.callId = callId;
    }
    if (duration != null) {
      $result.duration = duration;
    }
    return $result;
  }
  StatsNotify._() : super();
  factory StatsNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatsNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatsNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callId', protoName: 'callId')
    ..aInt64(2, _omitFieldNames ? '' : 'duration')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatsNotify clone() => StatsNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatsNotify copyWith(void Function(StatsNotify) updates) => super.copyWith((message) => updates(message as StatsNotify)) as StatsNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatsNotify create() => StatsNotify._();
  StatsNotify createEmptyInstance() => create();
  static $pb.PbList<StatsNotify> createRepeated() => $pb.PbList<StatsNotify>();
  @$core.pragma('dart2js:noInline')
  static StatsNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatsNotify>(create);
  static StatsNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);
  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get duration => $_getI64(1);
  @$pb.TagNumber(2)
  set duration($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => clearField(2);
}

/// 免费时长不足20秒提示
class NoFreeTimeNotify extends $pb.GeneratedMessage {
  factory NoFreeTimeNotify({
    $fixnum.Int64? callId,
  }) {
    final $result = create();
    if (callId != null) {
      $result.callId = callId;
    }
    return $result;
  }
  NoFreeTimeNotify._() : super();
  factory NoFreeTimeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoFreeTimeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NoFreeTimeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callId', protoName: 'callId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoFreeTimeNotify clone() => NoFreeTimeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoFreeTimeNotify copyWith(void Function(NoFreeTimeNotify) updates) => super.copyWith((message) => updates(message as NoFreeTimeNotify)) as NoFreeTimeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoFreeTimeNotify create() => NoFreeTimeNotify._();
  NoFreeTimeNotify createEmptyInstance() => create();
  static $pb.PbList<NoFreeTimeNotify> createRepeated() => $pb.PbList<NoFreeTimeNotify>();
  @$core.pragma('dart2js:noInline')
  static NoFreeTimeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoFreeTimeNotify>(create);
  static NoFreeTimeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);
  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);
}

/// 余额不足通话一分钟提示
class NoMoneyNotify extends $pb.GeneratedMessage {
  factory NoMoneyNotify({
    $fixnum.Int64? callId,
  }) {
    final $result = create();
    if (callId != null) {
      $result.callId = callId;
    }
    return $result;
  }
  NoMoneyNotify._() : super();
  factory NoMoneyNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoMoneyNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NoMoneyNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'callId', protoName: 'callId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoMoneyNotify clone() => NoMoneyNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoMoneyNotify copyWith(void Function(NoMoneyNotify) updates) => super.copyWith((message) => updates(message as NoMoneyNotify)) as NoMoneyNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoMoneyNotify create() => NoMoneyNotify._();
  NoMoneyNotify createEmptyInstance() => create();
  static $pb.PbList<NoMoneyNotify> createRepeated() => $pb.PbList<NoMoneyNotify>();
  @$core.pragma('dart2js:noInline')
  static NoMoneyNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoMoneyNotify>(create);
  static NoMoneyNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);
  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);
}

class ZegoRecordOverReq extends $pb.GeneratedMessage {
  factory ZegoRecordOverReq({
    $core.String? taskId,
    $core.String? roomId,
    $core.String? replayUrl,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (replayUrl != null) {
      $result.replayUrl = replayUrl;
    }
    return $result;
  }
  ZegoRecordOverReq._() : super();
  factory ZegoRecordOverReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ZegoRecordOverReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ZegoRecordOverReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'TaskId', protoName: 'TaskId')
    ..aOS(2, _omitFieldNames ? '' : 'RoomId', protoName: 'RoomId')
    ..aOS(3, _omitFieldNames ? '' : 'ReplayUrl', protoName: 'ReplayUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ZegoRecordOverReq clone() => ZegoRecordOverReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ZegoRecordOverReq copyWith(void Function(ZegoRecordOverReq) updates) => super.copyWith((message) => updates(message as ZegoRecordOverReq)) as ZegoRecordOverReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ZegoRecordOverReq create() => ZegoRecordOverReq._();
  ZegoRecordOverReq createEmptyInstance() => create();
  static $pb.PbList<ZegoRecordOverReq> createRepeated() => $pb.PbList<ZegoRecordOverReq>();
  @$core.pragma('dart2js:noInline')
  static ZegoRecordOverReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ZegoRecordOverReq>(create);
  static ZegoRecordOverReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get replayUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set replayUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReplayUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplayUrl() => clearField(3);
}

class ZegoRecordOverRsp extends $pb.GeneratedMessage {
  factory ZegoRecordOverRsp() => create();
  ZegoRecordOverRsp._() : super();
  factory ZegoRecordOverRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ZegoRecordOverRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ZegoRecordOverRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ZegoRecordOverRsp clone() => ZegoRecordOverRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ZegoRecordOverRsp copyWith(void Function(ZegoRecordOverRsp) updates) => super.copyWith((message) => updates(message as ZegoRecordOverRsp)) as ZegoRecordOverRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ZegoRecordOverRsp create() => ZegoRecordOverRsp._();
  ZegoRecordOverRsp createEmptyInstance() => create();
  static $pb.PbList<ZegoRecordOverRsp> createRepeated() => $pb.PbList<ZegoRecordOverRsp>();
  @$core.pragma('dart2js:noInline')
  static ZegoRecordOverRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ZegoRecordOverRsp>(create);
  static ZegoRecordOverRsp? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
