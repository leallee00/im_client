//
//  Generated code. Do not modify.
//  source: pb_msg/customer_service/customer_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/comm.pb.dart' as $0;
import 'customer_service.pbenum.dart';

export 'customer_service.pbenum.dart';

class KefuMessage extends $pb.GeneratedMessage {
  factory KefuMessage({
    USER_TYPE? userType,
    $fixnum.Int64? groupId,
    $core.int? messageType,
    $core.String? text,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (userType != null) {
      $result.userType = userType;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (messageType != null) {
      $result.messageType = messageType;
    }
    if (text != null) {
      $result.text = text;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  KefuMessage._() : super();
  factory KefuMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KefuMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KefuMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..e<USER_TYPE>(1, _omitFieldNames ? '' : 'userType', $pb.PbFieldType.OE, protoName: 'userType', defaultOrMaker: USER_TYPE.KEHU, valueOf: USER_TYPE.valueOf, enumValues: USER_TYPE.values)
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.O3, protoName: 'messageType')
    ..aOS(4, _omitFieldNames ? '' : 'text')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'exp', entryClassName: 'KefuMessage.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_customer_service'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KefuMessage clone() => KefuMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KefuMessage copyWith(void Function(KefuMessage) updates) => super.copyWith((message) => updates(message as KefuMessage)) as KefuMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KefuMessage create() => KefuMessage._();
  KefuMessage createEmptyInstance() => create();
  static $pb.PbList<KefuMessage> createRepeated() => $pb.PbList<KefuMessage>();
  @$core.pragma('dart2js:noInline')
  static KefuMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KefuMessage>(create);
  static KefuMessage? _defaultInstance;

  @$pb.TagNumber(1)
  USER_TYPE get userType => $_getN(0);
  @$pb.TagNumber(1)
  set userType(USER_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserType() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get messageType => $_getIZ(2);
  @$pb.TagNumber(3)
  set messageType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get text => $_getSZ(3);
  @$pb.TagNumber(4)
  set text($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasText() => $_has(3);
  @$pb.TagNumber(4)
  void clearText() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get exp => $_getMap(4);
}

/// 有时间字段就更新时间字段以前的全部数据,没有时间字段就更新对应sn的数据
class KefuReceipt extends $pb.GeneratedMessage {
  factory KefuReceipt({
    USER_TYPE? userType,
    $fixnum.Int64? groupId,
    $fixnum.Int64? sn,
    STATE? state,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (userType != null) {
      $result.userType = userType;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (sn != null) {
      $result.sn = sn;
    }
    if (state != null) {
      $result.state = state;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  KefuReceipt._() : super();
  factory KefuReceipt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KefuReceipt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KefuReceipt', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..e<USER_TYPE>(1, _omitFieldNames ? '' : 'userType', $pb.PbFieldType.OE, protoName: 'userType', defaultOrMaker: USER_TYPE.KEHU, valueOf: USER_TYPE.valueOf, enumValues: USER_TYPE.values)
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(3, _omitFieldNames ? '' : 'sn')
    ..e<STATE>(4, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: STATE.INIT, valueOf: STATE.valueOf, enumValues: STATE.values)
    ..aInt64(5, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KefuReceipt clone() => KefuReceipt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KefuReceipt copyWith(void Function(KefuReceipt) updates) => super.copyWith((message) => updates(message as KefuReceipt)) as KefuReceipt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KefuReceipt create() => KefuReceipt._();
  KefuReceipt createEmptyInstance() => create();
  static $pb.PbList<KefuReceipt> createRepeated() => $pb.PbList<KefuReceipt>();
  @$core.pragma('dart2js:noInline')
  static KefuReceipt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KefuReceipt>(create);
  static KefuReceipt? _defaultInstance;

  @$pb.TagNumber(1)
  USER_TYPE get userType => $_getN(0);
  @$pb.TagNumber(1)
  set userType(USER_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserType() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sn => $_getI64(2);
  @$pb.TagNumber(3)
  set sn($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSn() => $_has(2);
  @$pb.TagNumber(3)
  void clearSn() => clearField(3);

  @$pb.TagNumber(4)
  STATE get state => $_getN(3);
  @$pb.TagNumber(4)
  set state(STATE v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get time => $_getI64(4);
  @$pb.TagNumber(5)
  set time($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearTime() => clearField(5);
}

/// 接入
/// srcId=kefuId
class AnswerReq extends $pb.GeneratedMessage {
  factory AnswerReq({
    $fixnum.Int64? kehuId,
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (kehuId != null) {
      $result.kehuId = kehuId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  AnswerReq._() : super();
  factory AnswerReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'kehuId', protoName: 'kehuId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerReq clone() => AnswerReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerReq copyWith(void Function(AnswerReq) updates) => super.copyWith((message) => updates(message as AnswerReq)) as AnswerReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerReq create() => AnswerReq._();
  AnswerReq createEmptyInstance() => create();
  static $pb.PbList<AnswerReq> createRepeated() => $pb.PbList<AnswerReq>();
  @$core.pragma('dart2js:noInline')
  static AnswerReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerReq>(create);
  static AnswerReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get kehuId => $_getI64(0);
  @$pb.TagNumber(1)
  set kehuId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKehuId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKehuId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);
}

class AnswerRsp extends $pb.GeneratedMessage {
  factory AnswerRsp() => create();
  AnswerRsp._() : super();
  factory AnswerRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerRsp clone() => AnswerRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerRsp copyWith(void Function(AnswerRsp) updates) => super.copyWith((message) => updates(message as AnswerRsp)) as AnswerRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerRsp create() => AnswerRsp._();
  AnswerRsp createEmptyInstance() => create();
  static $pb.PbList<AnswerRsp> createRepeated() => $pb.PbList<AnswerRsp>();
  @$core.pragma('dart2js:noInline')
  static AnswerRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerRsp>(create);
  static AnswerRsp? _defaultInstance;
}

/// 获取待接入客户列表
/// 客户端周期触发
class FetchWaitCustomers extends $pb.GeneratedMessage {
  factory FetchWaitCustomers({
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  FetchWaitCustomers._() : super();
  factory FetchWaitCustomers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchWaitCustomers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchWaitCustomers', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchWaitCustomers clone() => FetchWaitCustomers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchWaitCustomers copyWith(void Function(FetchWaitCustomers) updates) => super.copyWith((message) => updates(message as FetchWaitCustomers)) as FetchWaitCustomers;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchWaitCustomers create() => FetchWaitCustomers._();
  FetchWaitCustomers createEmptyInstance() => create();
  static $pb.PbList<FetchWaitCustomers> createRepeated() => $pb.PbList<FetchWaitCustomers>();
  @$core.pragma('dart2js:noInline')
  static FetchWaitCustomers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchWaitCustomers>(create);
  static FetchWaitCustomers? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class WaitCustomer extends $pb.GeneratedMessage {
  factory WaitCustomer({
    $fixnum.Int64? kehuId,
    $fixnum.Int64? joinAt,
    $fixnum.Int64? kefuId,
    $0.PBCommData? pbCommData,
    KefuMessage? message,
  }) {
    final $result = create();
    if (kehuId != null) {
      $result.kehuId = kehuId;
    }
    if (joinAt != null) {
      $result.joinAt = joinAt;
    }
    if (kefuId != null) {
      $result.kefuId = kefuId;
    }
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  WaitCustomer._() : super();
  factory WaitCustomer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WaitCustomer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WaitCustomer', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'kehuId', protoName: 'kehuId')
    ..aInt64(2, _omitFieldNames ? '' : 'joinAt', protoName: 'joinAt')
    ..aInt64(3, _omitFieldNames ? '' : 'kefuId', protoName: 'kefuId')
    ..aOM<$0.PBCommData>(4, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $0.PBCommData.create)
    ..aOM<KefuMessage>(5, _omitFieldNames ? '' : 'message', subBuilder: KefuMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WaitCustomer clone() => WaitCustomer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WaitCustomer copyWith(void Function(WaitCustomer) updates) => super.copyWith((message) => updates(message as WaitCustomer)) as WaitCustomer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WaitCustomer create() => WaitCustomer._();
  WaitCustomer createEmptyInstance() => create();
  static $pb.PbList<WaitCustomer> createRepeated() => $pb.PbList<WaitCustomer>();
  @$core.pragma('dart2js:noInline')
  static WaitCustomer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WaitCustomer>(create);
  static WaitCustomer? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get kehuId => $_getI64(0);
  @$pb.TagNumber(1)
  set kehuId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKehuId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKehuId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get joinAt => $_getI64(1);
  @$pb.TagNumber(2)
  set joinAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJoinAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearJoinAt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get kefuId => $_getI64(2);
  @$pb.TagNumber(3)
  set kefuId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKefuId() => $_has(2);
  @$pb.TagNumber(3)
  void clearKefuId() => clearField(3);

  @$pb.TagNumber(4)
  $0.PBCommData get pbCommData => $_getN(3);
  @$pb.TagNumber(4)
  set pbCommData($0.PBCommData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPbCommData() => $_has(3);
  @$pb.TagNumber(4)
  void clearPbCommData() => clearField(4);
  @$pb.TagNumber(4)
  $0.PBCommData ensurePbCommData() => $_ensure(3);

  @$pb.TagNumber(5)
  KefuMessage get message => $_getN(4);
  @$pb.TagNumber(5)
  set message(KefuMessage v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
  @$pb.TagNumber(5)
  KefuMessage ensureMessage() => $_ensure(4);
}

/// 有更新是服务端返回
class WaitCustomers extends $pb.GeneratedMessage {
  factory WaitCustomers({
    $core.Iterable<WaitCustomer>? customers,
  }) {
    final $result = create();
    if (customers != null) {
      $result.customers.addAll(customers);
    }
    return $result;
  }
  WaitCustomers._() : super();
  factory WaitCustomers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WaitCustomers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WaitCustomers', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..pc<WaitCustomer>(2, _omitFieldNames ? '' : 'customers', $pb.PbFieldType.PM, subBuilder: WaitCustomer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WaitCustomers clone() => WaitCustomers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WaitCustomers copyWith(void Function(WaitCustomers) updates) => super.copyWith((message) => updates(message as WaitCustomers)) as WaitCustomers;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WaitCustomers create() => WaitCustomers._();
  WaitCustomers createEmptyInstance() => create();
  static $pb.PbList<WaitCustomers> createRepeated() => $pb.PbList<WaitCustomers>();
  @$core.pragma('dart2js:noInline')
  static WaitCustomers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WaitCustomers>(create);
  static WaitCustomers? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<WaitCustomer> get customers => $_getList(0);
}

/// 历史消息
class HistoriesReq extends $pb.GeneratedMessage {
  factory HistoriesReq({
    $fixnum.Int64? kehuId,
    $fixnum.Int64? groupId,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (kehuId != null) {
      $result.kehuId = kehuId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  HistoriesReq._() : super();
  factory HistoriesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoriesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoriesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'kehuId', protoName: 'kehuId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoriesReq clone() => HistoriesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoriesReq copyWith(void Function(HistoriesReq) updates) => super.copyWith((message) => updates(message as HistoriesReq)) as HistoriesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoriesReq create() => HistoriesReq._();
  HistoriesReq createEmptyInstance() => create();
  static $pb.PbList<HistoriesReq> createRepeated() => $pb.PbList<HistoriesReq>();
  @$core.pragma('dart2js:noInline')
  static HistoriesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoriesReq>(create);
  static HistoriesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get kehuId => $_getI64(0);
  @$pb.TagNumber(1)
  set kehuId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKehuId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKehuId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
}

class History extends $pb.GeneratedMessage {
  factory History({
    $0.PBCommData? pbCommData,
    KefuMessage? message,
    STATE? state,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (message != null) {
      $result.message = message;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  History._() : super();
  factory History.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory History.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'History', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aOM<$0.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $0.PBCommData.create)
    ..aOM<KefuMessage>(2, _omitFieldNames ? '' : 'message', subBuilder: KefuMessage.create)
    ..e<STATE>(3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: STATE.INIT, valueOf: STATE.valueOf, enumValues: STATE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  History clone() => History()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  History copyWith(void Function(History) updates) => super.copyWith((message) => updates(message as History)) as History;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static History create() => History._();
  History createEmptyInstance() => create();
  static $pb.PbList<History> createRepeated() => $pb.PbList<History>();
  @$core.pragma('dart2js:noInline')
  static History getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<History>(create);
  static History? _defaultInstance;

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
  KefuMessage get message => $_getN(1);
  @$pb.TagNumber(2)
  set message(KefuMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  KefuMessage ensureMessage() => $_ensure(1);

  @$pb.TagNumber(3)
  STATE get state => $_getN(2);
  @$pb.TagNumber(3)
  set state(STATE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}

class HistoriesRsp extends $pb.GeneratedMessage {
  factory HistoriesRsp({
    $core.Iterable<History>? histories,
  }) {
    final $result = create();
    if (histories != null) {
      $result.histories.addAll(histories);
    }
    return $result;
  }
  HistoriesRsp._() : super();
  factory HistoriesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoriesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoriesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..pc<History>(1, _omitFieldNames ? '' : 'histories', $pb.PbFieldType.PM, subBuilder: History.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoriesRsp clone() => HistoriesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoriesRsp copyWith(void Function(HistoriesRsp) updates) => super.copyWith((message) => updates(message as HistoriesRsp)) as HistoriesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoriesRsp create() => HistoriesRsp._();
  HistoriesRsp createEmptyInstance() => create();
  static $pb.PbList<HistoriesRsp> createRepeated() => $pb.PbList<HistoriesRsp>();
  @$core.pragma('dart2js:noInline')
  static HistoriesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoriesRsp>(create);
  static HistoriesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<History> get histories => $_getList(0);
}

/// 会话列表, 客服调 // srcId=kefuId
class SessionsReq extends $pb.GeneratedMessage {
  factory SessionsReq({
    $fixnum.Int64? groupId,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  SessionsReq._() : super();
  factory SessionsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(2, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionsReq clone() => SessionsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionsReq copyWith(void Function(SessionsReq) updates) => super.copyWith((message) => updates(message as SessionsReq)) as SessionsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionsReq create() => SessionsReq._();
  SessionsReq createEmptyInstance() => create();
  static $pb.PbList<SessionsReq> createRepeated() => $pb.PbList<SessionsReq>();
  @$core.pragma('dart2js:noInline')
  static SessionsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionsReq>(create);
  static SessionsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get time => $_getI64(1);
  @$pb.TagNumber(2)
  set time($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);
}

class Session extends $pb.GeneratedMessage {
  factory Session({
    $0.PBCommData? pbCommData,
    KefuMessage? message,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  Session._() : super();
  factory Session.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Session.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Session', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aOM<$0.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $0.PBCommData.create)
    ..aOM<KefuMessage>(2, _omitFieldNames ? '' : 'message', subBuilder: KefuMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Session clone() => Session()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Session copyWith(void Function(Session) updates) => super.copyWith((message) => updates(message as Session)) as Session;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  Session createEmptyInstance() => create();
  static $pb.PbList<Session> createRepeated() => $pb.PbList<Session>();
  @$core.pragma('dart2js:noInline')
  static Session getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Session>(create);
  static Session? _defaultInstance;

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
  KefuMessage get message => $_getN(1);
  @$pb.TagNumber(2)
  set message(KefuMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  KefuMessage ensureMessage() => $_ensure(1);
}

class SessionsRsp extends $pb.GeneratedMessage {
  factory SessionsRsp({
    $core.Iterable<Session>? sessions,
  }) {
    final $result = create();
    if (sessions != null) {
      $result.sessions.addAll(sessions);
    }
    return $result;
  }
  SessionsRsp._() : super();
  factory SessionsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..pc<Session>(1, _omitFieldNames ? '' : 'sessions', $pb.PbFieldType.PM, subBuilder: Session.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionsRsp clone() => SessionsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionsRsp copyWith(void Function(SessionsRsp) updates) => super.copyWith((message) => updates(message as SessionsRsp)) as SessionsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionsRsp create() => SessionsRsp._();
  SessionsRsp createEmptyInstance() => create();
  static $pb.PbList<SessionsRsp> createRepeated() => $pb.PbList<SessionsRsp>();
  @$core.pragma('dart2js:noInline')
  static SessionsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionsRsp>(create);
  static SessionsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Session> get sessions => $_getList(0);
}

/// 客服删除一个会话 // srcId=kefuId
class DeleteSessionReq extends $pb.GeneratedMessage {
  factory DeleteSessionReq({
    $fixnum.Int64? groupId,
    $fixnum.Int64? kehuId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (kehuId != null) {
      $result.kehuId = kehuId;
    }
    return $result;
  }
  DeleteSessionReq._() : super();
  factory DeleteSessionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(2, _omitFieldNames ? '' : 'kehuId', protoName: 'kehuId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionReq clone() => DeleteSessionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionReq copyWith(void Function(DeleteSessionReq) updates) => super.copyWith((message) => updates(message as DeleteSessionReq)) as DeleteSessionReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionReq create() => DeleteSessionReq._();
  DeleteSessionReq createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionReq> createRepeated() => $pb.PbList<DeleteSessionReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionReq>(create);
  static DeleteSessionReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get kehuId => $_getI64(1);
  @$pb.TagNumber(2)
  set kehuId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKehuId() => $_has(1);
  @$pb.TagNumber(2)
  void clearKehuId() => clearField(2);
}

class DeleteSessionRsp extends $pb.GeneratedMessage {
  factory DeleteSessionRsp() => create();
  DeleteSessionRsp._() : super();
  factory DeleteSessionRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionRsp clone() => DeleteSessionRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionRsp copyWith(void Function(DeleteSessionRsp) updates) => super.copyWith((message) => updates(message as DeleteSessionRsp)) as DeleteSessionRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionRsp create() => DeleteSessionRsp._();
  DeleteSessionRsp createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionRsp> createRepeated() => $pb.PbList<DeleteSessionRsp>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionRsp>(create);
  static DeleteSessionRsp? _defaultInstance;
}

class Kefu extends $pb.GeneratedMessage {
  factory Kefu({
    $fixnum.Int64? kefuId,
    $fixnum.Int64? groupId,
    $core.String? kefuName,
    $core.String? phone,
    $core.bool? online,
  }) {
    final $result = create();
    if (kefuId != null) {
      $result.kefuId = kefuId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (kefuName != null) {
      $result.kefuName = kefuName;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (online != null) {
      $result.online = online;
    }
    return $result;
  }
  Kefu._() : super();
  factory Kefu.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Kefu.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Kefu', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'kefuId', protoName: 'kefuId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aOS(3, _omitFieldNames ? '' : 'kefuName', protoName: 'kefuName')
    ..aOS(4, _omitFieldNames ? '' : 'phone')
    ..aOB(5, _omitFieldNames ? '' : 'online')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Kefu clone() => Kefu()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Kefu copyWith(void Function(Kefu) updates) => super.copyWith((message) => updates(message as Kefu)) as Kefu;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Kefu create() => Kefu._();
  Kefu createEmptyInstance() => create();
  static $pb.PbList<Kefu> createRepeated() => $pb.PbList<Kefu>();
  @$core.pragma('dart2js:noInline')
  static Kefu getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Kefu>(create);
  static Kefu? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get kefuId => $_getI64(0);
  @$pb.TagNumber(1)
  set kefuId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefuId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefuId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get kefuName => $_getSZ(2);
  @$pb.TagNumber(3)
  set kefuName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKefuName() => $_has(2);
  @$pb.TagNumber(3)
  void clearKefuName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get online => $_getBF(4);
  @$pb.TagNumber(5)
  set online($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOnline() => $_has(4);
  @$pb.TagNumber(5)
  void clearOnline() => clearField(5);
}

/// 添加一个客服
class AddKefuReq extends $pb.GeneratedMessage {
  factory AddKefuReq({
    $fixnum.Int64? kefuId,
    $fixnum.Int64? groupId,
    $core.String? kefuName,
    $core.String? phone,
    $core.bool? online,
    $fixnum.Int64? appId,
    $core.String? appUserId,
  }) {
    final $result = create();
    if (kefuId != null) {
      $result.kefuId = kefuId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (kefuName != null) {
      $result.kefuName = kefuName;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (online != null) {
      $result.online = online;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    return $result;
  }
  AddKefuReq._() : super();
  factory AddKefuReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddKefuReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddKefuReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'kefuId', protoName: 'kefuId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aOS(3, _omitFieldNames ? '' : 'kefuName', protoName: 'kefuName')
    ..aOS(4, _omitFieldNames ? '' : 'phone')
    ..aOB(5, _omitFieldNames ? '' : 'online')
    ..aInt64(6, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aOS(7, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddKefuReq clone() => AddKefuReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddKefuReq copyWith(void Function(AddKefuReq) updates) => super.copyWith((message) => updates(message as AddKefuReq)) as AddKefuReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddKefuReq create() => AddKefuReq._();
  AddKefuReq createEmptyInstance() => create();
  static $pb.PbList<AddKefuReq> createRepeated() => $pb.PbList<AddKefuReq>();
  @$core.pragma('dart2js:noInline')
  static AddKefuReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddKefuReq>(create);
  static AddKefuReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get kefuId => $_getI64(0);
  @$pb.TagNumber(1)
  set kefuId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefuId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefuId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get kefuName => $_getSZ(2);
  @$pb.TagNumber(3)
  set kefuName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKefuName() => $_has(2);
  @$pb.TagNumber(3)
  void clearKefuName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get online => $_getBF(4);
  @$pb.TagNumber(5)
  set online($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOnline() => $_has(4);
  @$pb.TagNumber(5)
  void clearOnline() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get appId => $_getI64(5);
  @$pb.TagNumber(6)
  set appId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get appUserId => $_getSZ(6);
  @$pb.TagNumber(7)
  set appUserId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppUserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppUserId() => clearField(7);
}

class AddKefuRsp extends $pb.GeneratedMessage {
  factory AddKefuRsp() => create();
  AddKefuRsp._() : super();
  factory AddKefuRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddKefuRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddKefuRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddKefuRsp clone() => AddKefuRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddKefuRsp copyWith(void Function(AddKefuRsp) updates) => super.copyWith((message) => updates(message as AddKefuRsp)) as AddKefuRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddKefuRsp create() => AddKefuRsp._();
  AddKefuRsp createEmptyInstance() => create();
  static $pb.PbList<AddKefuRsp> createRepeated() => $pb.PbList<AddKefuRsp>();
  @$core.pragma('dart2js:noInline')
  static AddKefuRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddKefuRsp>(create);
  static AddKefuRsp? _defaultInstance;
}

/// 更新一个客服
class UpdateKefuReq extends $pb.GeneratedMessage {
  factory UpdateKefuReq({
    Kefu? kefu,
    $core.Iterable<$core.String>? keys,
  }) {
    final $result = create();
    if (kefu != null) {
      $result.kefu = kefu;
    }
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  UpdateKefuReq._() : super();
  factory UpdateKefuReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateKefuReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateKefuReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aOM<Kefu>(1, _omitFieldNames ? '' : 'kefu', subBuilder: Kefu.create)
    ..pPS(2, _omitFieldNames ? '' : 'keys')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateKefuReq clone() => UpdateKefuReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateKefuReq copyWith(void Function(UpdateKefuReq) updates) => super.copyWith((message) => updates(message as UpdateKefuReq)) as UpdateKefuReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateKefuReq create() => UpdateKefuReq._();
  UpdateKefuReq createEmptyInstance() => create();
  static $pb.PbList<UpdateKefuReq> createRepeated() => $pb.PbList<UpdateKefuReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateKefuReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateKefuReq>(create);
  static UpdateKefuReq? _defaultInstance;

  @$pb.TagNumber(1)
  Kefu get kefu => $_getN(0);
  @$pb.TagNumber(1)
  set kefu(Kefu v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefu() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefu() => clearField(1);
  @$pb.TagNumber(1)
  Kefu ensureKefu() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get keys => $_getList(1);
}

class UpdateKefuRsp extends $pb.GeneratedMessage {
  factory UpdateKefuRsp({
    Kefu? kefu,
  }) {
    final $result = create();
    if (kefu != null) {
      $result.kefu = kefu;
    }
    return $result;
  }
  UpdateKefuRsp._() : super();
  factory UpdateKefuRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateKefuRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateKefuRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aOM<Kefu>(1, _omitFieldNames ? '' : 'kefu', subBuilder: Kefu.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateKefuRsp clone() => UpdateKefuRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateKefuRsp copyWith(void Function(UpdateKefuRsp) updates) => super.copyWith((message) => updates(message as UpdateKefuRsp)) as UpdateKefuRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateKefuRsp create() => UpdateKefuRsp._();
  UpdateKefuRsp createEmptyInstance() => create();
  static $pb.PbList<UpdateKefuRsp> createRepeated() => $pb.PbList<UpdateKefuRsp>();
  @$core.pragma('dart2js:noInline')
  static UpdateKefuRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateKefuRsp>(create);
  static UpdateKefuRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Kefu get kefu => $_getN(0);
  @$pb.TagNumber(1)
  set kefu(Kefu v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefu() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefu() => clearField(1);
  @$pb.TagNumber(1)
  Kefu ensureKefu() => $_ensure(0);
}

/// 删除一个客服
class DeleteKefuReq extends $pb.GeneratedMessage {
  factory DeleteKefuReq({
    $fixnum.Int64? kefuId,
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (kefuId != null) {
      $result.kefuId = kefuId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  DeleteKefuReq._() : super();
  factory DeleteKefuReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteKefuReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteKefuReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'kefuId', protoName: 'kefuId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteKefuReq clone() => DeleteKefuReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteKefuReq copyWith(void Function(DeleteKefuReq) updates) => super.copyWith((message) => updates(message as DeleteKefuReq)) as DeleteKefuReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteKefuReq create() => DeleteKefuReq._();
  DeleteKefuReq createEmptyInstance() => create();
  static $pb.PbList<DeleteKefuReq> createRepeated() => $pb.PbList<DeleteKefuReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteKefuReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteKefuReq>(create);
  static DeleteKefuReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get kefuId => $_getI64(0);
  @$pb.TagNumber(1)
  set kefuId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefuId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefuId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);
}

class DeleteKefuRsp extends $pb.GeneratedMessage {
  factory DeleteKefuRsp() => create();
  DeleteKefuRsp._() : super();
  factory DeleteKefuRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteKefuRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteKefuRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteKefuRsp clone() => DeleteKefuRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteKefuRsp copyWith(void Function(DeleteKefuRsp) updates) => super.copyWith((message) => updates(message as DeleteKefuRsp)) as DeleteKefuRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteKefuRsp create() => DeleteKefuRsp._();
  DeleteKefuRsp createEmptyInstance() => create();
  static $pb.PbList<DeleteKefuRsp> createRepeated() => $pb.PbList<DeleteKefuRsp>();
  @$core.pragma('dart2js:noInline')
  static DeleteKefuRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteKefuRsp>(create);
  static DeleteKefuRsp? _defaultInstance;
}

/// 查看一个客服
class GetKefuReq extends $pb.GeneratedMessage {
  factory GetKefuReq({
    $fixnum.Int64? kefuId,
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (kefuId != null) {
      $result.kefuId = kefuId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  GetKefuReq._() : super();
  factory GetKefuReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefuReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefuReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'kefuId', protoName: 'kefuId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefuReq clone() => GetKefuReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefuReq copyWith(void Function(GetKefuReq) updates) => super.copyWith((message) => updates(message as GetKefuReq)) as GetKefuReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefuReq create() => GetKefuReq._();
  GetKefuReq createEmptyInstance() => create();
  static $pb.PbList<GetKefuReq> createRepeated() => $pb.PbList<GetKefuReq>();
  @$core.pragma('dart2js:noInline')
  static GetKefuReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefuReq>(create);
  static GetKefuReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get kefuId => $_getI64(0);
  @$pb.TagNumber(1)
  set kefuId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefuId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefuId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);
}

class GetKefuRsp extends $pb.GeneratedMessage {
  factory GetKefuRsp({
    Kefu? kefu,
  }) {
    final $result = create();
    if (kefu != null) {
      $result.kefu = kefu;
    }
    return $result;
  }
  GetKefuRsp._() : super();
  factory GetKefuRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefuRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefuRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aOM<Kefu>(1, _omitFieldNames ? '' : 'kefu', subBuilder: Kefu.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefuRsp clone() => GetKefuRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefuRsp copyWith(void Function(GetKefuRsp) updates) => super.copyWith((message) => updates(message as GetKefuRsp)) as GetKefuRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefuRsp create() => GetKefuRsp._();
  GetKefuRsp createEmptyInstance() => create();
  static $pb.PbList<GetKefuRsp> createRepeated() => $pb.PbList<GetKefuRsp>();
  @$core.pragma('dart2js:noInline')
  static GetKefuRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefuRsp>(create);
  static GetKefuRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Kefu get kefu => $_getN(0);
  @$pb.TagNumber(1)
  set kefu(Kefu v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefu() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefu() => clearField(1);
  @$pb.TagNumber(1)
  Kefu ensureKefu() => $_ensure(0);
}

/// 获取指定客服群的全部客服
class GetKefusReq extends $pb.GeneratedMessage {
  factory GetKefusReq({
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  GetKefusReq._() : super();
  factory GetKefusReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefusReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefusReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefusReq clone() => GetKefusReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefusReq copyWith(void Function(GetKefusReq) updates) => super.copyWith((message) => updates(message as GetKefusReq)) as GetKefusReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefusReq create() => GetKefusReq._();
  GetKefusReq createEmptyInstance() => create();
  static $pb.PbList<GetKefusReq> createRepeated() => $pb.PbList<GetKefusReq>();
  @$core.pragma('dart2js:noInline')
  static GetKefusReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefusReq>(create);
  static GetKefusReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class GetKefusRsp extends $pb.GeneratedMessage {
  factory GetKefusRsp({
    $core.Iterable<Kefu>? kefus,
  }) {
    final $result = create();
    if (kefus != null) {
      $result.kefus.addAll(kefus);
    }
    return $result;
  }
  GetKefusRsp._() : super();
  factory GetKefusRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefusRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefusRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..pc<Kefu>(1, _omitFieldNames ? '' : 'kefus', $pb.PbFieldType.PM, subBuilder: Kefu.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefusRsp clone() => GetKefusRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefusRsp copyWith(void Function(GetKefusRsp) updates) => super.copyWith((message) => updates(message as GetKefusRsp)) as GetKefusRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefusRsp create() => GetKefusRsp._();
  GetKefusRsp createEmptyInstance() => create();
  static $pb.PbList<GetKefusRsp> createRepeated() => $pb.PbList<GetKefusRsp>();
  @$core.pragma('dart2js:noInline')
  static GetKefusRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefusRsp>(create);
  static GetKefusRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Kefu> get kefus => $_getList(0);
}

/// 查看一个用户的全部客服身份
class GetKefuRolesReq extends $pb.GeneratedMessage {
  factory GetKefuRolesReq({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  GetKefuRolesReq._() : super();
  factory GetKefuRolesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefuRolesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefuRolesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefuRolesReq clone() => GetKefuRolesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefuRolesReq copyWith(void Function(GetKefuRolesReq) updates) => super.copyWith((message) => updates(message as GetKefuRolesReq)) as GetKefuRolesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefuRolesReq create() => GetKefuRolesReq._();
  GetKefuRolesReq createEmptyInstance() => create();
  static $pb.PbList<GetKefuRolesReq> createRepeated() => $pb.PbList<GetKefuRolesReq>();
  @$core.pragma('dart2js:noInline')
  static GetKefuRolesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefuRolesReq>(create);
  static GetKefuRolesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetKefuRolesRsp extends $pb.GeneratedMessage {
  factory GetKefuRolesRsp({
    $core.Iterable<Kefu>? roles,
  }) {
    final $result = create();
    if (roles != null) {
      $result.roles.addAll(roles);
    }
    return $result;
  }
  GetKefuRolesRsp._() : super();
  factory GetKefuRolesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefuRolesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefuRolesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..pc<Kefu>(1, _omitFieldNames ? '' : 'roles', $pb.PbFieldType.PM, subBuilder: Kefu.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefuRolesRsp clone() => GetKefuRolesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefuRolesRsp copyWith(void Function(GetKefuRolesRsp) updates) => super.copyWith((message) => updates(message as GetKefuRolesRsp)) as GetKefuRolesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefuRolesRsp create() => GetKefuRolesRsp._();
  GetKefuRolesRsp createEmptyInstance() => create();
  static $pb.PbList<GetKefuRolesRsp> createRepeated() => $pb.PbList<GetKefuRolesRsp>();
  @$core.pragma('dart2js:noInline')
  static GetKefuRolesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefuRolesRsp>(create);
  static GetKefuRolesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Kefu> get roles => $_getList(0);
}

/// 客服群
class KefuGroup extends $pb.GeneratedMessage {
  factory KefuGroup({
    $fixnum.Int64? appId,
    $fixnum.Int64? groupId,
    $core.String? name,
    $core.String? avatar,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  KefuGroup._() : super();
  factory KefuGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KefuGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KefuGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KefuGroup clone() => KefuGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KefuGroup copyWith(void Function(KefuGroup) updates) => super.copyWith((message) => updates(message as KefuGroup)) as KefuGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KefuGroup create() => KefuGroup._();
  KefuGroup createEmptyInstance() => create();
  static $pb.PbList<KefuGroup> createRepeated() => $pb.PbList<KefuGroup>();
  @$core.pragma('dart2js:noInline')
  static KefuGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KefuGroup>(create);
  static KefuGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get appId => $_getI64(0);
  @$pb.TagNumber(1)
  set appId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatar => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatar($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatar() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatar() => clearField(4);
}

/// 添加一个客服群
class AddKefuGroupReq extends $pb.GeneratedMessage {
  factory AddKefuGroupReq({
    $fixnum.Int64? appId,
    $core.String? name,
    $core.String? avatar,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  AddKefuGroupReq._() : super();
  factory AddKefuGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddKefuGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddKefuGroupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddKefuGroupReq clone() => AddKefuGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddKefuGroupReq copyWith(void Function(AddKefuGroupReq) updates) => super.copyWith((message) => updates(message as AddKefuGroupReq)) as AddKefuGroupReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddKefuGroupReq create() => AddKefuGroupReq._();
  AddKefuGroupReq createEmptyInstance() => create();
  static $pb.PbList<AddKefuGroupReq> createRepeated() => $pb.PbList<AddKefuGroupReq>();
  @$core.pragma('dart2js:noInline')
  static AddKefuGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddKefuGroupReq>(create);
  static AddKefuGroupReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get appId => $_getI64(0);
  @$pb.TagNumber(1)
  set appId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);
}

class AddKefuGroupRsp extends $pb.GeneratedMessage {
  factory AddKefuGroupRsp({
    KefuGroup? kefuGroup,
  }) {
    final $result = create();
    if (kefuGroup != null) {
      $result.kefuGroup = kefuGroup;
    }
    return $result;
  }
  AddKefuGroupRsp._() : super();
  factory AddKefuGroupRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddKefuGroupRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddKefuGroupRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aOM<KefuGroup>(1, _omitFieldNames ? '' : 'kefuGroup', protoName: 'kefuGroup', subBuilder: KefuGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddKefuGroupRsp clone() => AddKefuGroupRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddKefuGroupRsp copyWith(void Function(AddKefuGroupRsp) updates) => super.copyWith((message) => updates(message as AddKefuGroupRsp)) as AddKefuGroupRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddKefuGroupRsp create() => AddKefuGroupRsp._();
  AddKefuGroupRsp createEmptyInstance() => create();
  static $pb.PbList<AddKefuGroupRsp> createRepeated() => $pb.PbList<AddKefuGroupRsp>();
  @$core.pragma('dart2js:noInline')
  static AddKefuGroupRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddKefuGroupRsp>(create);
  static AddKefuGroupRsp? _defaultInstance;

  @$pb.TagNumber(1)
  KefuGroup get kefuGroup => $_getN(0);
  @$pb.TagNumber(1)
  set kefuGroup(KefuGroup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefuGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefuGroup() => clearField(1);
  @$pb.TagNumber(1)
  KefuGroup ensureKefuGroup() => $_ensure(0);
}

/// 更新一个客服群
class UpdateKefuGroupReq extends $pb.GeneratedMessage {
  factory UpdateKefuGroupReq({
    KefuGroup? kefuGroup,
    $core.Iterable<$core.String>? keys,
  }) {
    final $result = create();
    if (kefuGroup != null) {
      $result.kefuGroup = kefuGroup;
    }
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  UpdateKefuGroupReq._() : super();
  factory UpdateKefuGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateKefuGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateKefuGroupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aOM<KefuGroup>(1, _omitFieldNames ? '' : 'kefuGroup', protoName: 'kefuGroup', subBuilder: KefuGroup.create)
    ..pPS(2, _omitFieldNames ? '' : 'keys')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateKefuGroupReq clone() => UpdateKefuGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateKefuGroupReq copyWith(void Function(UpdateKefuGroupReq) updates) => super.copyWith((message) => updates(message as UpdateKefuGroupReq)) as UpdateKefuGroupReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateKefuGroupReq create() => UpdateKefuGroupReq._();
  UpdateKefuGroupReq createEmptyInstance() => create();
  static $pb.PbList<UpdateKefuGroupReq> createRepeated() => $pb.PbList<UpdateKefuGroupReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateKefuGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateKefuGroupReq>(create);
  static UpdateKefuGroupReq? _defaultInstance;

  @$pb.TagNumber(1)
  KefuGroup get kefuGroup => $_getN(0);
  @$pb.TagNumber(1)
  set kefuGroup(KefuGroup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefuGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefuGroup() => clearField(1);
  @$pb.TagNumber(1)
  KefuGroup ensureKefuGroup() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get keys => $_getList(1);
}

class UpdateKefuGroupRsp extends $pb.GeneratedMessage {
  factory UpdateKefuGroupRsp({
    KefuGroup? kefuGroup,
  }) {
    final $result = create();
    if (kefuGroup != null) {
      $result.kefuGroup = kefuGroup;
    }
    return $result;
  }
  UpdateKefuGroupRsp._() : super();
  factory UpdateKefuGroupRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateKefuGroupRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateKefuGroupRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aOM<KefuGroup>(1, _omitFieldNames ? '' : 'kefuGroup', protoName: 'kefuGroup', subBuilder: KefuGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateKefuGroupRsp clone() => UpdateKefuGroupRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateKefuGroupRsp copyWith(void Function(UpdateKefuGroupRsp) updates) => super.copyWith((message) => updates(message as UpdateKefuGroupRsp)) as UpdateKefuGroupRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateKefuGroupRsp create() => UpdateKefuGroupRsp._();
  UpdateKefuGroupRsp createEmptyInstance() => create();
  static $pb.PbList<UpdateKefuGroupRsp> createRepeated() => $pb.PbList<UpdateKefuGroupRsp>();
  @$core.pragma('dart2js:noInline')
  static UpdateKefuGroupRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateKefuGroupRsp>(create);
  static UpdateKefuGroupRsp? _defaultInstance;

  @$pb.TagNumber(1)
  KefuGroup get kefuGroup => $_getN(0);
  @$pb.TagNumber(1)
  set kefuGroup(KefuGroup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefuGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefuGroup() => clearField(1);
  @$pb.TagNumber(1)
  KefuGroup ensureKefuGroup() => $_ensure(0);
}

/// 删除一个客服群
class DeleteKefuGroupReq extends $pb.GeneratedMessage {
  factory DeleteKefuGroupReq({
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  DeleteKefuGroupReq._() : super();
  factory DeleteKefuGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteKefuGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteKefuGroupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteKefuGroupReq clone() => DeleteKefuGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteKefuGroupReq copyWith(void Function(DeleteKefuGroupReq) updates) => super.copyWith((message) => updates(message as DeleteKefuGroupReq)) as DeleteKefuGroupReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteKefuGroupReq create() => DeleteKefuGroupReq._();
  DeleteKefuGroupReq createEmptyInstance() => create();
  static $pb.PbList<DeleteKefuGroupReq> createRepeated() => $pb.PbList<DeleteKefuGroupReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteKefuGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteKefuGroupReq>(create);
  static DeleteKefuGroupReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class DeleteKefuGroupRsp extends $pb.GeneratedMessage {
  factory DeleteKefuGroupRsp() => create();
  DeleteKefuGroupRsp._() : super();
  factory DeleteKefuGroupRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteKefuGroupRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteKefuGroupRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteKefuGroupRsp clone() => DeleteKefuGroupRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteKefuGroupRsp copyWith(void Function(DeleteKefuGroupRsp) updates) => super.copyWith((message) => updates(message as DeleteKefuGroupRsp)) as DeleteKefuGroupRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteKefuGroupRsp create() => DeleteKefuGroupRsp._();
  DeleteKefuGroupRsp createEmptyInstance() => create();
  static $pb.PbList<DeleteKefuGroupRsp> createRepeated() => $pb.PbList<DeleteKefuGroupRsp>();
  @$core.pragma('dart2js:noInline')
  static DeleteKefuGroupRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteKefuGroupRsp>(create);
  static DeleteKefuGroupRsp? _defaultInstance;
}

/// 查看一个客服群
class GetKefuGroupReq extends $pb.GeneratedMessage {
  factory GetKefuGroupReq({
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  GetKefuGroupReq._() : super();
  factory GetKefuGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefuGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefuGroupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefuGroupReq clone() => GetKefuGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefuGroupReq copyWith(void Function(GetKefuGroupReq) updates) => super.copyWith((message) => updates(message as GetKefuGroupReq)) as GetKefuGroupReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefuGroupReq create() => GetKefuGroupReq._();
  GetKefuGroupReq createEmptyInstance() => create();
  static $pb.PbList<GetKefuGroupReq> createRepeated() => $pb.PbList<GetKefuGroupReq>();
  @$core.pragma('dart2js:noInline')
  static GetKefuGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefuGroupReq>(create);
  static GetKefuGroupReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class GetKefuGroupRsp extends $pb.GeneratedMessage {
  factory GetKefuGroupRsp({
    KefuGroup? kefuGroup,
  }) {
    final $result = create();
    if (kefuGroup != null) {
      $result.kefuGroup = kefuGroup;
    }
    return $result;
  }
  GetKefuGroupRsp._() : super();
  factory GetKefuGroupRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefuGroupRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefuGroupRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aOM<KefuGroup>(1, _omitFieldNames ? '' : 'kefuGroup', protoName: 'kefuGroup', subBuilder: KefuGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefuGroupRsp clone() => GetKefuGroupRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefuGroupRsp copyWith(void Function(GetKefuGroupRsp) updates) => super.copyWith((message) => updates(message as GetKefuGroupRsp)) as GetKefuGroupRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefuGroupRsp create() => GetKefuGroupRsp._();
  GetKefuGroupRsp createEmptyInstance() => create();
  static $pb.PbList<GetKefuGroupRsp> createRepeated() => $pb.PbList<GetKefuGroupRsp>();
  @$core.pragma('dart2js:noInline')
  static GetKefuGroupRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefuGroupRsp>(create);
  static GetKefuGroupRsp? _defaultInstance;

  @$pb.TagNumber(1)
  KefuGroup get kefuGroup => $_getN(0);
  @$pb.TagNumber(1)
  set kefuGroup(KefuGroup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKefuGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearKefuGroup() => clearField(1);
  @$pb.TagNumber(1)
  KefuGroup ensureKefuGroup() => $_ensure(0);
}

/// 使用appid获取客服组
class GetKefuGroupsReq extends $pb.GeneratedMessage {
  factory GetKefuGroupsReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? length,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (length != null) {
      $result.length = length;
    }
    return $result;
  }
  GetKefuGroupsReq._() : super();
  factory GetKefuGroupsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefuGroupsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefuGroupsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'length')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefuGroupsReq clone() => GetKefuGroupsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefuGroupsReq copyWith(void Function(GetKefuGroupsReq) updates) => super.copyWith((message) => updates(message as GetKefuGroupsReq)) as GetKefuGroupsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefuGroupsReq create() => GetKefuGroupsReq._();
  GetKefuGroupsReq createEmptyInstance() => create();
  static $pb.PbList<GetKefuGroupsReq> createRepeated() => $pb.PbList<GetKefuGroupsReq>();
  @$core.pragma('dart2js:noInline')
  static GetKefuGroupsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefuGroupsReq>(create);
  static GetKefuGroupsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get length => $_getI64(1);
  @$pb.TagNumber(2)
  set length($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLength() => $_has(1);
  @$pb.TagNumber(2)
  void clearLength() => clearField(2);
}

class GetKefuGroupsRsp extends $pb.GeneratedMessage {
  factory GetKefuGroupsRsp({
    $core.Iterable<KefuGroup>? groups,
  }) {
    final $result = create();
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  GetKefuGroupsRsp._() : super();
  factory GetKefuGroupsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKefuGroupsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKefuGroupsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_customer_service'), createEmptyInstance: create)
    ..pc<KefuGroup>(1, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: KefuGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKefuGroupsRsp clone() => GetKefuGroupsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKefuGroupsRsp copyWith(void Function(GetKefuGroupsRsp) updates) => super.copyWith((message) => updates(message as GetKefuGroupsRsp)) as GetKefuGroupsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKefuGroupsRsp create() => GetKefuGroupsRsp._();
  GetKefuGroupsRsp createEmptyInstance() => create();
  static $pb.PbList<GetKefuGroupsRsp> createRepeated() => $pb.PbList<GetKefuGroupsRsp>();
  @$core.pragma('dart2js:noInline')
  static GetKefuGroupsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKefuGroupsRsp>(create);
  static GetKefuGroupsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<KefuGroup> get groups => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
