//
//  Generated code. Do not modify.
//  source: pb_msg/call_scene/call_scene.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/error_code.pbenum.dart' as $0;
import 'call_scene.pbenum.dart';

export 'call_scene.pbenum.dart';

/// 开启通话请求
class DialReq extends $pb.GeneratedMessage {
  factory DialReq({
    $fixnum.Int64? calleeId,
    CALL_TYPE? callType,
    $core.int? chatCoinType,
    $core.String? channelName,
  }) {
    final $result = create();
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (callType != null) {
      $result.callType = callType;
    }
    if (chatCoinType != null) {
      $result.chatCoinType = chatCoinType;
    }
    if (channelName != null) {
      $result.channelName = channelName;
    }
    return $result;
  }
  DialReq._() : super();
  factory DialReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DialReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DialReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'CalleeId', protoName: 'CalleeId')
    ..e<CALL_TYPE>(2, _omitFieldNames ? '' : 'CallType', $pb.PbFieldType.OE, protoName: 'CallType', defaultOrMaker: CALL_TYPE.CALL_TYPE_UNKNOWN, valueOf: CALL_TYPE.valueOf, enumValues: CALL_TYPE.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'ChatCoinType', $pb.PbFieldType.O3, protoName: 'ChatCoinType')
    ..aOS(4, _omitFieldNames ? '' : 'ChannelName', protoName: 'ChannelName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DialReq clone() => DialReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DialReq copyWith(void Function(DialReq) updates) => super.copyWith((message) => updates(message as DialReq)) as DialReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DialReq create() => DialReq._();
  DialReq createEmptyInstance() => create();
  static $pb.PbList<DialReq> createRepeated() => $pb.PbList<DialReq>();
  @$core.pragma('dart2js:noInline')
  static DialReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DialReq>(create);
  static DialReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get calleeId => $_getI64(0);
  @$pb.TagNumber(1)
  set calleeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCalleeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalleeId() => clearField(1);

  @$pb.TagNumber(2)
  CALL_TYPE get callType => $_getN(1);
  @$pb.TagNumber(2)
  set callType(CALL_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get chatCoinType => $_getIZ(2);
  @$pb.TagNumber(3)
  set chatCoinType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChatCoinType() => $_has(2);
  @$pb.TagNumber(3)
  void clearChatCoinType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get channelName => $_getSZ(3);
  @$pb.TagNumber(4)
  set channelName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChannelName() => $_has(3);
  @$pb.TagNumber(4)
  void clearChannelName() => clearField(4);
}

class DialRsp extends $pb.GeneratedMessage {
  factory DialRsp({
    $0.ErrCode? result,
    $0.ErrCode? code,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  DialRsp._() : super();
  factory DialRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DialRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DialRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..e<$0.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..e<$0.ErrCode>(2, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DialRsp clone() => DialRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DialRsp copyWith(void Function(DialRsp) updates) => super.copyWith((message) => updates(message as DialRsp)) as DialRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DialRsp create() => DialRsp._();
  DialRsp createEmptyInstance() => create();
  static $pb.PbList<DialRsp> createRepeated() => $pb.PbList<DialRsp>();
  @$core.pragma('dart2js:noInline')
  static DialRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DialRsp>(create);
  static DialRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($0.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $0.ErrCode get code => $_getN(1);
  @$pb.TagNumber(2)
  set code($0.ErrCode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
}

/// 已经通过第三方发起请求,等待对方回应，通知状态到服务器，通知一下不需返回
class WaitForCalleeAnswerNotifyToServer extends $pb.GeneratedMessage {
  factory WaitForCalleeAnswerNotifyToServer({
    $fixnum.Int64? calleeId,
    $fixnum.Int64? yXChatId,
  }) {
    final $result = create();
    if (calleeId != null) {
      $result.calleeId = calleeId;
    }
    if (yXChatId != null) {
      $result.yXChatId = yXChatId;
    }
    return $result;
  }
  WaitForCalleeAnswerNotifyToServer._() : super();
  factory WaitForCalleeAnswerNotifyToServer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WaitForCalleeAnswerNotifyToServer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WaitForCalleeAnswerNotifyToServer', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'CalleeId', protoName: 'CalleeId')
    ..aInt64(2, _omitFieldNames ? '' : 'YXChatId', protoName: 'YXChatId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WaitForCalleeAnswerNotifyToServer clone() => WaitForCalleeAnswerNotifyToServer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WaitForCalleeAnswerNotifyToServer copyWith(void Function(WaitForCalleeAnswerNotifyToServer) updates) => super.copyWith((message) => updates(message as WaitForCalleeAnswerNotifyToServer)) as WaitForCalleeAnswerNotifyToServer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WaitForCalleeAnswerNotifyToServer create() => WaitForCalleeAnswerNotifyToServer._();
  WaitForCalleeAnswerNotifyToServer createEmptyInstance() => create();
  static $pb.PbList<WaitForCalleeAnswerNotifyToServer> createRepeated() => $pb.PbList<WaitForCalleeAnswerNotifyToServer>();
  @$core.pragma('dart2js:noInline')
  static WaitForCalleeAnswerNotifyToServer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WaitForCalleeAnswerNotifyToServer>(create);
  static WaitForCalleeAnswerNotifyToServer? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get calleeId => $_getI64(0);
  @$pb.TagNumber(1)
  set calleeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCalleeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalleeId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get yXChatId => $_getI64(1);
  @$pb.TagNumber(2)
  set yXChatId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasYXChatId() => $_has(1);
  @$pb.TagNumber(2)
  void clearYXChatId() => clearField(2);
}

/// 应答请求
class AnswerCallReq extends $pb.GeneratedMessage {
  factory AnswerCallReq({
    ANSWER_OF_CALL? answer,
  }) {
    final $result = create();
    if (answer != null) {
      $result.answer = answer;
    }
    return $result;
  }
  AnswerCallReq._() : super();
  factory AnswerCallReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerCallReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerCallReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..e<ANSWER_OF_CALL>(1, _omitFieldNames ? '' : 'answer', $pb.PbFieldType.OE, defaultOrMaker: ANSWER_OF_CALL.REFUSE, valueOf: ANSWER_OF_CALL.valueOf, enumValues: ANSWER_OF_CALL.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerCallReq clone() => AnswerCallReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerCallReq copyWith(void Function(AnswerCallReq) updates) => super.copyWith((message) => updates(message as AnswerCallReq)) as AnswerCallReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerCallReq create() => AnswerCallReq._();
  AnswerCallReq createEmptyInstance() => create();
  static $pb.PbList<AnswerCallReq> createRepeated() => $pb.PbList<AnswerCallReq>();
  @$core.pragma('dart2js:noInline')
  static AnswerCallReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerCallReq>(create);
  static AnswerCallReq? _defaultInstance;

  @$pb.TagNumber(1)
  ANSWER_OF_CALL get answer => $_getN(0);
  @$pb.TagNumber(1)
  set answer(ANSWER_OF_CALL v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswer() => clearField(1);
}

class AnswerCallRsp extends $pb.GeneratedMessage {
  factory AnswerCallRsp({
    $0.ErrCode? result,
    $0.ErrCode? code,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  AnswerCallRsp._() : super();
  factory AnswerCallRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerCallRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerCallRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..e<$0.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..e<$0.ErrCode>(2, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerCallRsp clone() => AnswerCallRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerCallRsp copyWith(void Function(AnswerCallRsp) updates) => super.copyWith((message) => updates(message as AnswerCallRsp)) as AnswerCallRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerCallRsp create() => AnswerCallRsp._();
  AnswerCallRsp createEmptyInstance() => create();
  static $pb.PbList<AnswerCallRsp> createRepeated() => $pb.PbList<AnswerCallRsp>();
  @$core.pragma('dart2js:noInline')
  static AnswerCallRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerCallRsp>(create);
  static AnswerCallRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($0.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $0.ErrCode get code => $_getN(1);
  @$pb.TagNumber(2)
  set code($0.ErrCode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
}

/// 挂断请求
class HangUpReq extends $pb.GeneratedMessage {
  factory HangUpReq({
    $fixnum.Int64? userId,
    $fixnum.Int64? sceneId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (sceneId != null) {
      $result.sceneId = sceneId;
    }
    return $result;
  }
  HangUpReq._() : super();
  factory HangUpReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HangUpReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HangUpReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'sceneId', protoName: 'sceneId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HangUpReq clone() => HangUpReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HangUpReq copyWith(void Function(HangUpReq) updates) => super.copyWith((message) => updates(message as HangUpReq)) as HangUpReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HangUpReq create() => HangUpReq._();
  HangUpReq createEmptyInstance() => create();
  static $pb.PbList<HangUpReq> createRepeated() => $pb.PbList<HangUpReq>();
  @$core.pragma('dart2js:noInline')
  static HangUpReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HangUpReq>(create);
  static HangUpReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sceneId => $_getI64(1);
  @$pb.TagNumber(2)
  set sceneId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSceneId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSceneId() => clearField(2);
}

class HangUpRsp extends $pb.GeneratedMessage {
  factory HangUpRsp({
    $0.ErrCode? result,
    $0.ErrCode? code,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  HangUpRsp._() : super();
  factory HangUpRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HangUpRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HangUpRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..e<$0.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..e<$0.ErrCode>(2, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HangUpRsp clone() => HangUpRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HangUpRsp copyWith(void Function(HangUpRsp) updates) => super.copyWith((message) => updates(message as HangUpRsp)) as HangUpRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HangUpRsp create() => HangUpRsp._();
  HangUpRsp createEmptyInstance() => create();
  static $pb.PbList<HangUpRsp> createRepeated() => $pb.PbList<HangUpRsp>();
  @$core.pragma('dart2js:noInline')
  static HangUpRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HangUpRsp>(create);
  static HangUpRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($0.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $0.ErrCode get code => $_getN(1);
  @$pb.TagNumber(2)
  set code($0.ErrCode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
}

/// 通话结束通知
class CallOverNotify extends $pb.GeneratedMessage {
  factory CallOverNotify({
    $fixnum.Int64? caller,
    $fixnum.Int64? callee,
    $fixnum.Int64? callerTotalFee,
    $fixnum.Int64? calleeTotalEarn,
    $fixnum.Int64? callTime,
    CALL_OVER_RESION? callOverResion,
  }) {
    final $result = create();
    if (caller != null) {
      $result.caller = caller;
    }
    if (callee != null) {
      $result.callee = callee;
    }
    if (callerTotalFee != null) {
      $result.callerTotalFee = callerTotalFee;
    }
    if (calleeTotalEarn != null) {
      $result.calleeTotalEarn = calleeTotalEarn;
    }
    if (callTime != null) {
      $result.callTime = callTime;
    }
    if (callOverResion != null) {
      $result.callOverResion = callOverResion;
    }
    return $result;
  }
  CallOverNotify._() : super();
  factory CallOverNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CallOverNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallOverNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'Caller', protoName: 'Caller')
    ..aInt64(2, _omitFieldNames ? '' : 'Callee', protoName: 'Callee')
    ..aInt64(3, _omitFieldNames ? '' : 'CallerTotalFee', protoName: 'CallerTotalFee')
    ..aInt64(4, _omitFieldNames ? '' : 'CalleeTotalEarn', protoName: 'CalleeTotalEarn')
    ..aInt64(5, _omitFieldNames ? '' : 'CallTime', protoName: 'CallTime')
    ..e<CALL_OVER_RESION>(6, _omitFieldNames ? '' : 'CallOverResion', $pb.PbFieldType.OE, protoName: 'CallOverResion', defaultOrMaker: CALL_OVER_RESION.CALL_OVER_RESION_TIMEOUT, valueOf: CALL_OVER_RESION.valueOf, enumValues: CALL_OVER_RESION.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CallOverNotify clone() => CallOverNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CallOverNotify copyWith(void Function(CallOverNotify) updates) => super.copyWith((message) => updates(message as CallOverNotify)) as CallOverNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallOverNotify create() => CallOverNotify._();
  CallOverNotify createEmptyInstance() => create();
  static $pb.PbList<CallOverNotify> createRepeated() => $pb.PbList<CallOverNotify>();
  @$core.pragma('dart2js:noInline')
  static CallOverNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallOverNotify>(create);
  static CallOverNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get caller => $_getI64(0);
  @$pb.TagNumber(1)
  set caller($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCaller() => $_has(0);
  @$pb.TagNumber(1)
  void clearCaller() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get callee => $_getI64(1);
  @$pb.TagNumber(2)
  set callee($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallee() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallee() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get callerTotalFee => $_getI64(2);
  @$pb.TagNumber(3)
  set callerTotalFee($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallerTotalFee() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallerTotalFee() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get calleeTotalEarn => $_getI64(3);
  @$pb.TagNumber(4)
  set calleeTotalEarn($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCalleeTotalEarn() => $_has(3);
  @$pb.TagNumber(4)
  void clearCalleeTotalEarn() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get callTime => $_getI64(4);
  @$pb.TagNumber(5)
  set callTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCallTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCallTime() => clearField(5);

  @$pb.TagNumber(6)
  CALL_OVER_RESION get callOverResion => $_getN(5);
  @$pb.TagNumber(6)
  set callOverResion(CALL_OVER_RESION v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCallOverResion() => $_has(5);
  @$pb.TagNumber(6)
  void clearCallOverResion() => clearField(6);
}

/// 场景状态变化通知
class CallSceneStateChangeNotify extends $pb.GeneratedMessage {
  factory CallSceneStateChangeNotify({
    $fixnum.Int64? caller,
    $fixnum.Int64? callee,
    $fixnum.Int64? yXChatId,
    CALL_SCENE_STATE? oldState,
    CALL_SCENE_STATE? newState,
  }) {
    final $result = create();
    if (caller != null) {
      $result.caller = caller;
    }
    if (callee != null) {
      $result.callee = callee;
    }
    if (yXChatId != null) {
      $result.yXChatId = yXChatId;
    }
    if (oldState != null) {
      $result.oldState = oldState;
    }
    if (newState != null) {
      $result.newState = newState;
    }
    return $result;
  }
  CallSceneStateChangeNotify._() : super();
  factory CallSceneStateChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CallSceneStateChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallSceneStateChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'Caller', protoName: 'Caller')
    ..aInt64(2, _omitFieldNames ? '' : 'Callee', protoName: 'Callee')
    ..aInt64(3, _omitFieldNames ? '' : 'YXChatId', protoName: 'YXChatId')
    ..e<CALL_SCENE_STATE>(4, _omitFieldNames ? '' : 'OldState', $pb.PbFieldType.OE, protoName: 'OldState', defaultOrMaker: CALL_SCENE_STATE.CALL_SCENE_STATE_INIT, valueOf: CALL_SCENE_STATE.valueOf, enumValues: CALL_SCENE_STATE.values)
    ..e<CALL_SCENE_STATE>(5, _omitFieldNames ? '' : 'NewState', $pb.PbFieldType.OE, protoName: 'NewState', defaultOrMaker: CALL_SCENE_STATE.CALL_SCENE_STATE_INIT, valueOf: CALL_SCENE_STATE.valueOf, enumValues: CALL_SCENE_STATE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CallSceneStateChangeNotify clone() => CallSceneStateChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CallSceneStateChangeNotify copyWith(void Function(CallSceneStateChangeNotify) updates) => super.copyWith((message) => updates(message as CallSceneStateChangeNotify)) as CallSceneStateChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallSceneStateChangeNotify create() => CallSceneStateChangeNotify._();
  CallSceneStateChangeNotify createEmptyInstance() => create();
  static $pb.PbList<CallSceneStateChangeNotify> createRepeated() => $pb.PbList<CallSceneStateChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static CallSceneStateChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallSceneStateChangeNotify>(create);
  static CallSceneStateChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get caller => $_getI64(0);
  @$pb.TagNumber(1)
  set caller($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCaller() => $_has(0);
  @$pb.TagNumber(1)
  void clearCaller() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get callee => $_getI64(1);
  @$pb.TagNumber(2)
  set callee($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallee() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallee() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get yXChatId => $_getI64(2);
  @$pb.TagNumber(3)
  set yXChatId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasYXChatId() => $_has(2);
  @$pb.TagNumber(3)
  void clearYXChatId() => clearField(3);

  @$pb.TagNumber(4)
  CALL_SCENE_STATE get oldState => $_getN(3);
  @$pb.TagNumber(4)
  set oldState(CALL_SCENE_STATE v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOldState() => $_has(3);
  @$pb.TagNumber(4)
  void clearOldState() => clearField(4);

  @$pb.TagNumber(5)
  CALL_SCENE_STATE get newState => $_getN(4);
  @$pb.TagNumber(5)
  set newState(CALL_SCENE_STATE v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNewState() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewState() => clearField(5);
}

/// 场景恢复通知
class SceneRecoverNotify extends $pb.GeneratedMessage {
  factory SceneRecoverNotify({
    $fixnum.Int64? caller,
    $fixnum.Int64? callee,
    $fixnum.Int64? sceneBeginTime,
    $fixnum.Int64? onLineBeginTime,
    $fixnum.Int64? yXChatId,
  }) {
    final $result = create();
    if (caller != null) {
      $result.caller = caller;
    }
    if (callee != null) {
      $result.callee = callee;
    }
    if (sceneBeginTime != null) {
      $result.sceneBeginTime = sceneBeginTime;
    }
    if (onLineBeginTime != null) {
      $result.onLineBeginTime = onLineBeginTime;
    }
    if (yXChatId != null) {
      $result.yXChatId = yXChatId;
    }
    return $result;
  }
  SceneRecoverNotify._() : super();
  factory SceneRecoverNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SceneRecoverNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SceneRecoverNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'Caller', protoName: 'Caller')
    ..aInt64(2, _omitFieldNames ? '' : 'Callee', protoName: 'Callee')
    ..aInt64(3, _omitFieldNames ? '' : 'SceneBeginTime', protoName: 'SceneBeginTime')
    ..aInt64(4, _omitFieldNames ? '' : 'OnLineBeginTime', protoName: 'OnLineBeginTime')
    ..aInt64(5, _omitFieldNames ? '' : 'YXChatId', protoName: 'YXChatId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SceneRecoverNotify clone() => SceneRecoverNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SceneRecoverNotify copyWith(void Function(SceneRecoverNotify) updates) => super.copyWith((message) => updates(message as SceneRecoverNotify)) as SceneRecoverNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SceneRecoverNotify create() => SceneRecoverNotify._();
  SceneRecoverNotify createEmptyInstance() => create();
  static $pb.PbList<SceneRecoverNotify> createRepeated() => $pb.PbList<SceneRecoverNotify>();
  @$core.pragma('dart2js:noInline')
  static SceneRecoverNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SceneRecoverNotify>(create);
  static SceneRecoverNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get caller => $_getI64(0);
  @$pb.TagNumber(1)
  set caller($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCaller() => $_has(0);
  @$pb.TagNumber(1)
  void clearCaller() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get callee => $_getI64(1);
  @$pb.TagNumber(2)
  set callee($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallee() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallee() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sceneBeginTime => $_getI64(2);
  @$pb.TagNumber(3)
  set sceneBeginTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSceneBeginTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearSceneBeginTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get onLineBeginTime => $_getI64(3);
  @$pb.TagNumber(4)
  set onLineBeginTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOnLineBeginTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearOnLineBeginTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get yXChatId => $_getI64(4);
  @$pb.TagNumber(5)
  set yXChatId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasYXChatId() => $_has(4);
  @$pb.TagNumber(5)
  void clearYXChatId() => clearField(5);
}

/// // 场景创建请求
/// message CreateSceneReq{
///     int64 CalleeId= 1;
/// }
///
/// message CreateSceneRsp{
///     int32 Result = 1;  // 0  成功 其他失败码
/// }
/// ///////////////////////////////
///  财富变更通知
class WealthChangeNotify extends $pb.GeneratedMessage {
  factory WealthChangeNotify({
    WealthType? wealthType,
    $fixnum.Int64? change,
    $fixnum.Int64? leave,
    WealthChangeReason? reason,
  }) {
    final $result = create();
    if (wealthType != null) {
      $result.wealthType = wealthType;
    }
    if (change != null) {
      $result.change = change;
    }
    if (leave != null) {
      $result.leave = leave;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  WealthChangeNotify._() : super();
  factory WealthChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WealthChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WealthChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call_scene'), createEmptyInstance: create)
    ..e<WealthType>(1, _omitFieldNames ? '' : 'WealthType', $pb.PbFieldType.OE, protoName: 'WealthType', defaultOrMaker: WealthType.Unknown, valueOf: WealthType.valueOf, enumValues: WealthType.values)
    ..aInt64(2, _omitFieldNames ? '' : 'Change', protoName: 'Change')
    ..aInt64(3, _omitFieldNames ? '' : 'Leave', protoName: 'Leave')
    ..e<WealthChangeReason>(4, _omitFieldNames ? '' : 'Reason', $pb.PbFieldType.OE, protoName: 'Reason', defaultOrMaker: WealthChangeReason.CallFee, valueOf: WealthChangeReason.valueOf, enumValues: WealthChangeReason.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WealthChangeNotify clone() => WealthChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WealthChangeNotify copyWith(void Function(WealthChangeNotify) updates) => super.copyWith((message) => updates(message as WealthChangeNotify)) as WealthChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WealthChangeNotify create() => WealthChangeNotify._();
  WealthChangeNotify createEmptyInstance() => create();
  static $pb.PbList<WealthChangeNotify> createRepeated() => $pb.PbList<WealthChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static WealthChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WealthChangeNotify>(create);
  static WealthChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  WealthType get wealthType => $_getN(0);
  @$pb.TagNumber(1)
  set wealthType(WealthType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWealthType() => $_has(0);
  @$pb.TagNumber(1)
  void clearWealthType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get change => $_getI64(1);
  @$pb.TagNumber(2)
  set change($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChange() => $_has(1);
  @$pb.TagNumber(2)
  void clearChange() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get leave => $_getI64(2);
  @$pb.TagNumber(3)
  set leave($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLeave() => $_has(2);
  @$pb.TagNumber(3)
  void clearLeave() => clearField(3);

  @$pb.TagNumber(4)
  WealthChangeReason get reason => $_getN(3);
  @$pb.TagNumber(4)
  set reason(WealthChangeReason v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
