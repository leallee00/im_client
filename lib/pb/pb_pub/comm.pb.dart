//
//  Generated code. Do not modify.
//  source: pb_pub/comm.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/struct.pb.dart' as $1;
import '../google/rpc/status.pb.dart' as $0;
import 'comm.pbenum.dart';
import 'error_code.pbenum.dart' as $3;
import 'service.pbenum.dart' as $2;

export 'comm.pbenum.dart';

/// 一些通用数据，每个消息都会携带，在整个服务系统中透传
class PBCommData extends $pb.GeneratedMessage {
  factory PBCommData({
    $core.bool? needReadReceipt,
    $fixnum.Int64? msgSn,
    $fixnum.Int64? srcId,
    $fixnum.Int64? aimId,
    $fixnum.Int64? time,
    $core.Map<$core.String, $core.String>? exp,
    $core.bool? needPushMsg,
    $2.Service? serviceType,
    $fixnum.Int64? appId,
    $core.String? appUserId,
    $core.String? traceId,
    CLIENT_TYPE? srcClientType,
    CLIENT_TYPE? aimClientType,
    $fixnum.Int64? groupId,
    $core.Iterable<$fixnum.Int64>? atList,
    $core.bool? syncToSrc,
    $core.int? businessId,
    $fixnum.Int64? serial,
    $core.String? deriveTree,
    $core.int? userSourceVersion,
    $fixnum.Int64? groupMsgSn,
    $fixnum.Int64? periodOfValidity,
  }) {
    final $result = create();
    if (needReadReceipt != null) {
      $result.needReadReceipt = needReadReceipt;
    }
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (srcId != null) {
      $result.srcId = srcId;
    }
    if (aimId != null) {
      $result.aimId = aimId;
    }
    if (time != null) {
      $result.time = time;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (needPushMsg != null) {
      $result.needPushMsg = needPushMsg;
    }
    if (serviceType != null) {
      $result.serviceType = serviceType;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    if (traceId != null) {
      $result.traceId = traceId;
    }
    if (srcClientType != null) {
      $result.srcClientType = srcClientType;
    }
    if (aimClientType != null) {
      $result.aimClientType = aimClientType;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (atList != null) {
      $result.atList.addAll(atList);
    }
    if (syncToSrc != null) {
      $result.syncToSrc = syncToSrc;
    }
    if (businessId != null) {
      $result.businessId = businessId;
    }
    if (serial != null) {
      $result.serial = serial;
    }
    if (deriveTree != null) {
      $result.deriveTree = deriveTree;
    }
    if (userSourceVersion != null) {
      $result.userSourceVersion = userSourceVersion;
    }
    if (groupMsgSn != null) {
      $result.groupMsgSn = groupMsgSn;
    }
    if (periodOfValidity != null) {
      $result.periodOfValidity = periodOfValidity;
    }
    return $result;
  }
  PBCommData._() : super();
  factory PBCommData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PBCommData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PBCommData', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'needReadReceipt', protoName: 'needReadReceipt')
    ..aInt64(2, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..aInt64(3, _omitFieldNames ? '' : 'srcId', protoName: 'srcId')
    ..aInt64(4, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..aInt64(5, _omitFieldNames ? '' : 'time')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'exp', entryClassName: 'PBCommData.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..aOB(7, _omitFieldNames ? '' : 'needPushMsg', protoName: 'needPushMsg')
    ..e<$2.Service>(8, _omitFieldNames ? '' : 'serviceType', $pb.PbFieldType.OE, protoName: 'serviceType', defaultOrMaker: $2.Service.gate, valueOf: $2.Service.valueOf, enumValues: $2.Service.values)
    ..aInt64(9, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..aOS(10, _omitFieldNames ? '' : 'appUserId', protoName: 'appUserId')
    ..aOS(11, _omitFieldNames ? '' : 'traceId', protoName: 'traceId')
    ..e<CLIENT_TYPE>(12, _omitFieldNames ? '' : 'srcClientType', $pb.PbFieldType.OE, protoName: 'srcClientType', defaultOrMaker: CLIENT_TYPE.NONE, valueOf: CLIENT_TYPE.valueOf, enumValues: CLIENT_TYPE.values)
    ..e<CLIENT_TYPE>(13, _omitFieldNames ? '' : 'aimClientType', $pb.PbFieldType.OE, protoName: 'aimClientType', defaultOrMaker: CLIENT_TYPE.NONE, valueOf: CLIENT_TYPE.valueOf, enumValues: CLIENT_TYPE.values)
    ..aInt64(14, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..p<$fixnum.Int64>(15, _omitFieldNames ? '' : 'atList', $pb.PbFieldType.K6, protoName: 'atList')
    ..aOB(16, _omitFieldNames ? '' : 'syncToSrc', protoName: 'syncToSrc')
    ..a<$core.int>(17, _omitFieldNames ? '' : 'businessId', $pb.PbFieldType.O3, protoName: 'businessId')
    ..aInt64(18, _omitFieldNames ? '' : 'serial')
    ..aOS(19, _omitFieldNames ? '' : 'deriveTree', protoName: 'deriveTree')
    ..a<$core.int>(20, _omitFieldNames ? '' : 'userSourceVersion', $pb.PbFieldType.O3, protoName: 'userSourceVersion')
    ..aInt64(21, _omitFieldNames ? '' : 'groupMsgSn', protoName: 'groupMsgSn')
    ..aInt64(22, _omitFieldNames ? '' : 'periodOfValidity', protoName: 'periodOfValidity')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PBCommData clone() => PBCommData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PBCommData copyWith(void Function(PBCommData) updates) => super.copyWith((message) => updates(message as PBCommData)) as PBCommData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBCommData create() => PBCommData._();
  PBCommData createEmptyInstance() => create();
  static $pb.PbList<PBCommData> createRepeated() => $pb.PbList<PBCommData>();
  @$core.pragma('dart2js:noInline')
  static PBCommData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PBCommData>(create);
  static PBCommData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get needReadReceipt => $_getBF(0);
  @$pb.TagNumber(1)
  set needReadReceipt($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeedReadReceipt() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeedReadReceipt() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgSn => $_getI64(1);
  @$pb.TagNumber(2)
  set msgSn($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgSn() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgSn() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get srcId => $_getI64(2);
  @$pb.TagNumber(3)
  set srcId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSrcId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSrcId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get aimId => $_getI64(3);
  @$pb.TagNumber(4)
  set aimId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAimId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAimId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get time => $_getI64(4);
  @$pb.TagNumber(5)
  set time($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get exp => $_getMap(5);

  /// v2.7.3
  @$pb.TagNumber(7)
  $core.bool get needPushMsg => $_getBF(6);
  @$pb.TagNumber(7)
  set needPushMsg($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNeedPushMsg() => $_has(6);
  @$pb.TagNumber(7)
  void clearNeedPushMsg() => clearField(7);

  @$pb.TagNumber(8)
  $2.Service get serviceType => $_getN(7);
  @$pb.TagNumber(8)
  set serviceType($2.Service v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasServiceType() => $_has(7);
  @$pb.TagNumber(8)
  void clearServiceType() => clearField(8);

  /// im_as_plat 新增
  @$pb.TagNumber(9)
  $fixnum.Int64 get appId => $_getI64(8);
  @$pb.TagNumber(9)
  set appId($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAppId() => $_has(8);
  @$pb.TagNumber(9)
  void clearAppId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get appUserId => $_getSZ(9);
  @$pb.TagNumber(10)
  set appUserId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAppUserId() => $_has(9);
  @$pb.TagNumber(10)
  void clearAppUserId() => clearField(10);

  /// tracing 新增
  @$pb.TagNumber(11)
  $core.String get traceId => $_getSZ(10);
  @$pb.TagNumber(11)
  set traceId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTraceId() => $_has(10);
  @$pb.TagNumber(11)
  void clearTraceId() => clearField(11);

  /// 客户端类型
  @$pb.TagNumber(12)
  CLIENT_TYPE get srcClientType => $_getN(11);
  @$pb.TagNumber(12)
  set srcClientType(CLIENT_TYPE v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasSrcClientType() => $_has(11);
  @$pb.TagNumber(12)
  void clearSrcClientType() => clearField(12);

  @$pb.TagNumber(13)
  CLIENT_TYPE get aimClientType => $_getN(12);
  @$pb.TagNumber(13)
  set aimClientType(CLIENT_TYPE v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasAimClientType() => $_has(12);
  @$pb.TagNumber(13)
  void clearAimClientType() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get groupId => $_getI64(13);
  @$pb.TagNumber(14)
  set groupId($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGroupId() => $_has(13);
  @$pb.TagNumber(14)
  void clearGroupId() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$fixnum.Int64> get atList => $_getList(14);

  @$pb.TagNumber(16)
  $core.bool get syncToSrc => $_getBF(15);
  @$pb.TagNumber(16)
  set syncToSrc($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSyncToSrc() => $_has(15);
  @$pb.TagNumber(16)
  void clearSyncToSrc() => clearField(16);

  /// 业务id,椰果需求新增, 范围比appId大: 各业务自行约定
  @$pb.TagNumber(17)
  $core.int get businessId => $_getIZ(16);
  @$pb.TagNumber(17)
  set businessId($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasBusinessId() => $_has(16);
  @$pb.TagNumber(17)
  void clearBusinessId() => clearField(17);

  /// 日志输出序列，每输出一次加一
  @$pb.TagNumber(18)
  $fixnum.Int64 get serial => $_getI64(17);
  @$pb.TagNumber(18)
  set serial($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasSerial() => $_has(17);
  @$pb.TagNumber(18)
  void clearSerial() => clearField(18);

  /// 派生树，值=值+serial
  @$pb.TagNumber(19)
  $core.String get deriveTree => $_getSZ(18);
  @$pb.TagNumber(19)
  set deriveTree($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasDeriveTree() => $_has(18);
  @$pb.TagNumber(19)
  void clearDeriveTree() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get userSourceVersion => $_getIZ(19);
  @$pb.TagNumber(20)
  set userSourceVersion($core.int v) { $_setSignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasUserSourceVersion() => $_has(19);
  @$pb.TagNumber(20)
  void clearUserSourceVersion() => clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get groupMsgSn => $_getI64(20);
  @$pb.TagNumber(21)
  set groupMsgSn($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasGroupMsgSn() => $_has(20);
  @$pb.TagNumber(21)
  void clearGroupMsgSn() => clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get periodOfValidity => $_getI64(21);
  @$pb.TagNumber(22)
  set periodOfValidity($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasPeriodOfValidity() => $_has(21);
  @$pb.TagNumber(22)
  void clearPeriodOfValidity() => clearField(22);
}

/// 非rpc调用的消息传递使用此消息头封装
class PBMessage extends $pb.GeneratedMessage {
  factory PBMessage({
    $core.int? version,
    $core.int? checkCode,
    $core.int? errCode,
    $core.String? service,
    $core.String? hashKey,
    PBCommData? pbCommData,
    $core.Map<$core.String, $core.String>? opts,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $core.String? errDesc,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (checkCode != null) {
      $result.checkCode = checkCode;
    }
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (service != null) {
      $result.service = service;
    }
    if (hashKey != null) {
      $result.hashKey = hashKey;
    }
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (opts != null) {
      $result.opts.addAll(opts);
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (errDesc != null) {
      $result.errDesc = errDesc;
    }
    return $result;
  }
  PBMessage._() : super();
  factory PBMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PBMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PBMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'checkCode', $pb.PbFieldType.OU3, protoName: 'checkCode')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.OU3, protoName: 'errCode')
    ..aOS(4, _omitFieldNames ? '' : 'service')
    ..aOS(5, _omitFieldNames ? '' : 'hashKey', protoName: 'hashKey')
    ..aOM<PBCommData>(6, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: PBCommData.create)
    ..m<$core.String, $core.String>(7, _omitFieldNames ? '' : 'opts', entryClassName: 'PBMessage.OptsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..aOS(8, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..aOS(10, _omitFieldNames ? '' : 'errDesc', protoName: 'errDesc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PBMessage clone() => PBMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PBMessage copyWith(void Function(PBMessage) updates) => super.copyWith((message) => updates(message as PBMessage)) as PBMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PBMessage create() => PBMessage._();
  PBMessage createEmptyInstance() => create();
  static $pb.PbList<PBMessage> createRepeated() => $pb.PbList<PBMessage>();
  @$core.pragma('dart2js:noInline')
  static PBMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PBMessage>(create);
  static PBMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get checkCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set checkCode($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCheckCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCheckCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get errCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set errCode($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get service => $_getSZ(3);
  @$pb.TagNumber(4)
  set service($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasService() => $_has(3);
  @$pb.TagNumber(4)
  void clearService() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get hashKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set hashKey($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHashKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearHashKey() => clearField(5);

  @$pb.TagNumber(6)
  PBCommData get pbCommData => $_getN(5);
  @$pb.TagNumber(6)
  set pbCommData(PBCommData v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPbCommData() => $_has(5);
  @$pb.TagNumber(6)
  void clearPbCommData() => clearField(6);
  @$pb.TagNumber(6)
  PBCommData ensurePbCommData() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.String> get opts => $_getMap(6);

  /// 具体消息内容
  @$pb.TagNumber(8)
  $core.String get pbName => $_getSZ(7);
  @$pb.TagNumber(8)
  set pbName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPbName() => $_has(7);
  @$pb.TagNumber(8)
  void clearPbName() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get pbData => $_getN(8);
  @$pb.TagNumber(9)
  set pbData($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPbData() => $_has(8);
  @$pb.TagNumber(9)
  void clearPbData() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get errDesc => $_getSZ(9);
  @$pb.TagNumber(10)
  set errDesc($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasErrDesc() => $_has(9);
  @$pb.TagNumber(10)
  void clearErrDesc() => clearField(10);
}

/// 定义
///  key: action
///  value:sendto_user 单发到用户;  [key:uid, value:uid_value]
///  value:sendto_all:广播到所有在线用户;
///  value:sendto_service:发送到特定服务 [key:service_name;value:name][key:room, value:roomid]
///  action = "sendto_group" 发送到在使用特定服务的用户 service="servicename" group=roomid,可以代表房间id
///  key:data value:data
class CommCallReq extends $pb.GeneratedMessage {
  factory CommCallReq({
    $core.Map<$core.String, $core.String>? params,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (params != null) {
      $result.params.addAll(params);
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  CommCallReq._() : super();
  factory CommCallReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommCallReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommCallReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'params', entryClassName: 'CommCallReq.ParamsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..aOS(2, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommCallReq clone() => CommCallReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommCallReq copyWith(void Function(CommCallReq) updates) => super.copyWith((message) => updates(message as CommCallReq)) as CommCallReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommCallReq create() => CommCallReq._();
  CommCallReq createEmptyInstance() => create();
  static $pb.PbList<CommCallReq> createRepeated() => $pb.PbList<CommCallReq>();
  @$core.pragma('dart2js:noInline')
  static CommCallReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommCallReq>(create);
  static CommCallReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get params => $_getMap(0);

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

class CommCallRsp extends $pb.GeneratedMessage {
  factory CommCallRsp({
    $core.int? errCode,
    $core.Map<$core.String, $core.String>? params,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $core.String? errDesc,
    $0.Status? status,
  }) {
    final $result = create();
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (params != null) {
      $result.params.addAll(params);
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (errDesc != null) {
      $result.errDesc = errDesc;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  CommCallRsp._() : super();
  factory CommCallRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommCallRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommCallRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.O3, protoName: 'errCode')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'params', entryClassName: 'CommCallRsp.ParamsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..aOS(3, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..aOS(5, _omitFieldNames ? '' : 'errDesc', protoName: 'errDesc')
    ..aOM<$0.Status>(6, _omitFieldNames ? '' : 'status', subBuilder: $0.Status.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommCallRsp clone() => CommCallRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommCallRsp copyWith(void Function(CommCallRsp) updates) => super.copyWith((message) => updates(message as CommCallRsp)) as CommCallRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommCallRsp create() => CommCallRsp._();
  CommCallRsp createEmptyInstance() => create();
  static $pb.PbList<CommCallRsp> createRepeated() => $pb.PbList<CommCallRsp>();
  @$core.pragma('dart2js:noInline')
  static CommCallRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommCallRsp>(create);
  static CommCallRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get params => $_getMap(1);

  @$pb.TagNumber(3)
  $core.String get pbName => $_getSZ(2);
  @$pb.TagNumber(3)
  set pbName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPbName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPbName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pbData => $_getN(3);
  @$pb.TagNumber(4)
  set pbData($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPbData() => $_has(3);
  @$pb.TagNumber(4)
  void clearPbData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get errDesc => $_getSZ(4);
  @$pb.TagNumber(5)
  set errDesc($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasErrDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearErrDesc() => clearField(5);

  @$pb.TagNumber(6)
  $0.Status get status => $_getN(5);
  @$pb.TagNumber(6)
  set status($0.Status v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);
  @$pb.TagNumber(6)
  $0.Status ensureStatus() => $_ensure(5);
}

class CommNatsMsg extends $pb.GeneratedMessage {
  factory CommNatsMsg({
    PBCommData? pbCommData,
    $fixnum.Int64? groupMsgSn,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (groupMsgSn != null) {
      $result.groupMsgSn = groupMsgSn;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  CommNatsMsg._() : super();
  factory CommNatsMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommNatsMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommNatsMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: PBCommData.create)
    ..aInt64(2, _omitFieldNames ? '' : 'groupMsgSn', protoName: 'groupMsgSn')
    ..aOS(3, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommNatsMsg clone() => CommNatsMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommNatsMsg copyWith(void Function(CommNatsMsg) updates) => super.copyWith((message) => updates(message as CommNatsMsg)) as CommNatsMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommNatsMsg create() => CommNatsMsg._();
  CommNatsMsg createEmptyInstance() => create();
  static $pb.PbList<CommNatsMsg> createRepeated() => $pb.PbList<CommNatsMsg>();
  @$core.pragma('dart2js:noInline')
  static CommNatsMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommNatsMsg>(create);
  static CommNatsMsg? _defaultInstance;

  @$pb.TagNumber(1)
  PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData(PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupMsgSn => $_getI64(1);
  @$pb.TagNumber(2)
  set groupMsgSn($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupMsgSn() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupMsgSn() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pbName => $_getSZ(2);
  @$pb.TagNumber(3)
  set pbName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPbName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPbName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pbData => $_getN(3);
  @$pb.TagNumber(4)
  set pbData($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPbData() => $_has(3);
  @$pb.TagNumber(4)
  void clearPbData() => clearField(4);
}

/// 当一次删除多条时，输入最后一条的time，将time之前所有的消息全部删除
/// 当只进行单条删除，time设为0，通过sn进行单条消息的删除
///  消息状态反馈
class MsgReceipt extends $pb.GeneratedMessage {
  factory MsgReceipt({
    $core.bool? isAtMe,
    MSG_STATE? state,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (isAtMe != null) {
      $result.isAtMe = isAtMe;
    }
    if (state != null) {
      $result.state = state;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  MsgReceipt._() : super();
  factory MsgReceipt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgReceipt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgReceipt', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isAtMe', protoName: 'isAtMe')
    ..e<MSG_STATE>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: MSG_STATE.INIT, valueOf: MSG_STATE.valueOf, enumValues: MSG_STATE.values)
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgReceipt clone() => MsgReceipt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgReceipt copyWith(void Function(MsgReceipt) updates) => super.copyWith((message) => updates(message as MsgReceipt)) as MsgReceipt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgReceipt create() => MsgReceipt._();
  MsgReceipt createEmptyInstance() => create();
  static $pb.PbList<MsgReceipt> createRepeated() => $pb.PbList<MsgReceipt>();
  @$core.pragma('dart2js:noInline')
  static MsgReceipt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgReceipt>(create);
  static MsgReceipt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isAtMe => $_getBF(0);
  @$pb.TagNumber(1)
  set isAtMe($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsAtMe() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsAtMe() => clearField(1);

  @$pb.TagNumber(2)
  MSG_STATE get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(MSG_STATE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
}

/// 默认返回消息
class CommRsp extends $pb.GeneratedMessage {
  factory CommRsp({
    $3.ErrCode? result,
    $0.Status? status,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  CommRsp._() : super();
  factory CommRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..e<$3.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $3.ErrCode.SUCCESS, valueOf: $3.ErrCode.valueOf, enumValues: $3.ErrCode.values)
    ..aOM<$0.Status>(2, _omitFieldNames ? '' : 'status', subBuilder: $0.Status.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommRsp clone() => CommRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommRsp copyWith(void Function(CommRsp) updates) => super.copyWith((message) => updates(message as CommRsp)) as CommRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommRsp create() => CommRsp._();
  CommRsp createEmptyInstance() => create();
  static $pb.PbList<CommRsp> createRepeated() => $pb.PbList<CommRsp>();
  @$core.pragma('dart2js:noInline')
  static CommRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommRsp>(create);
  static CommRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $3.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($3.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $0.Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($0.Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
  @$pb.TagNumber(2)
  $0.Status ensureStatus() => $_ensure(1);
}

class UserInfo extends $pb.GeneratedMessage {
  factory UserInfo({
    $fixnum.Int64? userId,
    $core.String? nickName,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    return $result;
  }
  UserInfo._() : super();
  factory UserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'nickName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfo copyWith(void Function(UserInfo) updates) => super.copyWith((message) => updates(message as UserInfo)) as UserInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

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
}

/// 心跳消息
class HeartBeat extends $pb.GeneratedMessage {
  factory HeartBeat({
    HEART_BEAT_TYPE? type,
    HEART_BEAT_MSG_STATE? state,
    $core.String? gateAddr,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (state != null) {
      $result.state = state;
    }
    if (gateAddr != null) {
      $result.gateAddr = gateAddr;
    }
    return $result;
  }
  HeartBeat._() : super();
  factory HeartBeat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeartBeat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HeartBeat', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..e<HEART_BEAT_TYPE>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: HEART_BEAT_TYPE.COMM, valueOf: HEART_BEAT_TYPE.valueOf, enumValues: HEART_BEAT_TYPE.values)
    ..e<HEART_BEAT_MSG_STATE>(3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: HEART_BEAT_MSG_STATE.PING, valueOf: HEART_BEAT_MSG_STATE.valueOf, enumValues: HEART_BEAT_MSG_STATE.values)
    ..aOS(4, _omitFieldNames ? '' : 'gateAddr', protoName: 'gateAddr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HeartBeat clone() => HeartBeat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HeartBeat copyWith(void Function(HeartBeat) updates) => super.copyWith((message) => updates(message as HeartBeat)) as HeartBeat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeartBeat create() => HeartBeat._();
  HeartBeat createEmptyInstance() => create();
  static $pb.PbList<HeartBeat> createRepeated() => $pb.PbList<HeartBeat>();
  @$core.pragma('dart2js:noInline')
  static HeartBeat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeartBeat>(create);
  static HeartBeat? _defaultInstance;

  /// int64 user_id = 1;
  @$pb.TagNumber(2)
  HEART_BEAT_TYPE get type => $_getN(0);
  @$pb.TagNumber(2)
  set type(HEART_BEAT_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  HEART_BEAT_MSG_STATE get state => $_getN(1);
  @$pb.TagNumber(3)
  set state(HEART_BEAT_MSG_STATE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get gateAddr => $_getSZ(2);
  @$pb.TagNumber(4)
  set gateAddr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasGateAddr() => $_has(2);
  @$pb.TagNumber(4)
  void clearGateAddr() => clearField(4);
}

/// ============进入房间通用协议，任何类型的房间都可以使用此协议======================
/// 进入房间请求
class EnterRoomReq extends $pb.GeneratedMessage {
  factory EnterRoomReq({
    EnterRoomReq_UserType? userType,
  }) {
    final $result = create();
    if (userType != null) {
      $result.userType = userType;
    }
    return $result;
  }
  EnterRoomReq._() : super();
  factory EnterRoomReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnterRoomReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnterRoomReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..e<EnterRoomReq_UserType>(1, _omitFieldNames ? '' : 'userType', $pb.PbFieldType.OE, protoName: 'userType', defaultOrMaker: EnterRoomReq_UserType.UNKNOWN, valueOf: EnterRoomReq_UserType.valueOf, enumValues: EnterRoomReq_UserType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnterRoomReq clone() => EnterRoomReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnterRoomReq copyWith(void Function(EnterRoomReq) updates) => super.copyWith((message) => updates(message as EnterRoomReq)) as EnterRoomReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnterRoomReq create() => EnterRoomReq._();
  EnterRoomReq createEmptyInstance() => create();
  static $pb.PbList<EnterRoomReq> createRepeated() => $pb.PbList<EnterRoomReq>();
  @$core.pragma('dart2js:noInline')
  static EnterRoomReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnterRoomReq>(create);
  static EnterRoomReq? _defaultInstance;

  @$pb.TagNumber(1)
  EnterRoomReq_UserType get userType => $_getN(0);
  @$pb.TagNumber(1)
  set userType(EnterRoomReq_UserType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserType() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserType() => clearField(1);
}

/// 观众进入房间应答 返回加入结果
class EnterRoomRsp extends $pb.GeneratedMessage {
  factory EnterRoomRsp() => create();
  EnterRoomRsp._() : super();
  factory EnterRoomRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnterRoomRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnterRoomRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnterRoomRsp clone() => EnterRoomRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnterRoomRsp copyWith(void Function(EnterRoomRsp) updates) => super.copyWith((message) => updates(message as EnterRoomRsp)) as EnterRoomRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnterRoomRsp create() => EnterRoomRsp._();
  EnterRoomRsp createEmptyInstance() => create();
  static $pb.PbList<EnterRoomRsp> createRepeated() => $pb.PbList<EnterRoomRsp>();
  @$core.pragma('dart2js:noInline')
  static EnterRoomRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnterRoomRsp>(create);
  static EnterRoomRsp? _defaultInstance;
}

/// 退出房间请求
class ExitRoomReq extends $pb.GeneratedMessage {
  factory ExitRoomReq() => create();
  ExitRoomReq._() : super();
  factory ExitRoomReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExitRoomReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExitRoomReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExitRoomReq clone() => ExitRoomReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExitRoomReq copyWith(void Function(ExitRoomReq) updates) => super.copyWith((message) => updates(message as ExitRoomReq)) as ExitRoomReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExitRoomReq create() => ExitRoomReq._();
  ExitRoomReq createEmptyInstance() => create();
  static $pb.PbList<ExitRoomReq> createRepeated() => $pb.PbList<ExitRoomReq>();
  @$core.pragma('dart2js:noInline')
  static ExitRoomReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExitRoomReq>(create);
  static ExitRoomReq? _defaultInstance;
}

/// 退出房间应答
class ExitRoomRsp extends $pb.GeneratedMessage {
  factory ExitRoomRsp() => create();
  ExitRoomRsp._() : super();
  factory ExitRoomRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExitRoomRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExitRoomRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExitRoomRsp clone() => ExitRoomRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExitRoomRsp copyWith(void Function(ExitRoomRsp) updates) => super.copyWith((message) => updates(message as ExitRoomRsp)) as ExitRoomRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExitRoomRsp create() => ExitRoomRsp._();
  ExitRoomRsp createEmptyInstance() => create();
  static $pb.PbList<ExitRoomRsp> createRepeated() => $pb.PbList<ExitRoomRsp>();
  @$core.pragma('dart2js:noInline')
  static ExitRoomRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExitRoomRsp>(create);
  static ExitRoomRsp? _defaultInstance;
}

/// 客户端前后台切换请求,消息发送时服务类型设置为 user_center
class ClientBFSwitchReq extends $pb.GeneratedMessage {
  factory ClientBFSwitchReq({
    $core.bool? switchToBack,
  }) {
    final $result = create();
    if (switchToBack != null) {
      $result.switchToBack = switchToBack;
    }
    return $result;
  }
  ClientBFSwitchReq._() : super();
  factory ClientBFSwitchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientBFSwitchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientBFSwitchReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'switchToBack', protoName: 'switchToBack')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientBFSwitchReq clone() => ClientBFSwitchReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientBFSwitchReq copyWith(void Function(ClientBFSwitchReq) updates) => super.copyWith((message) => updates(message as ClientBFSwitchReq)) as ClientBFSwitchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientBFSwitchReq create() => ClientBFSwitchReq._();
  ClientBFSwitchReq createEmptyInstance() => create();
  static $pb.PbList<ClientBFSwitchReq> createRepeated() => $pb.PbList<ClientBFSwitchReq>();
  @$core.pragma('dart2js:noInline')
  static ClientBFSwitchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientBFSwitchReq>(create);
  static ClientBFSwitchReq? _defaultInstance;

  /// true:切换到后台， false 切换到前台
  /// 切换前台需要等返回，如果没有成功或超时则继续切换
  @$pb.TagNumber(1)
  $core.bool get switchToBack => $_getBF(0);
  @$pb.TagNumber(1)
  set switchToBack($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchToBack() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchToBack() => clearField(1);
}

/// 切换回复，返回当前状态
class ClientBFSwitchRsp extends $pb.GeneratedMessage {
  factory ClientBFSwitchRsp({
    $core.bool? switchToBack,
  }) {
    final $result = create();
    if (switchToBack != null) {
      $result.switchToBack = switchToBack;
    }
    return $result;
  }
  ClientBFSwitchRsp._() : super();
  factory ClientBFSwitchRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientBFSwitchRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientBFSwitchRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'switchToBack', protoName: 'switchToBack')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientBFSwitchRsp clone() => ClientBFSwitchRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientBFSwitchRsp copyWith(void Function(ClientBFSwitchRsp) updates) => super.copyWith((message) => updates(message as ClientBFSwitchRsp)) as ClientBFSwitchRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientBFSwitchRsp create() => ClientBFSwitchRsp._();
  ClientBFSwitchRsp createEmptyInstance() => create();
  static $pb.PbList<ClientBFSwitchRsp> createRepeated() => $pb.PbList<ClientBFSwitchRsp>();
  @$core.pragma('dart2js:noInline')
  static ClientBFSwitchRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientBFSwitchRsp>(create);
  static ClientBFSwitchRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchToBack => $_getBF(0);
  @$pb.TagNumber(1)
  set switchToBack($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchToBack() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchToBack() => clearField(1);
}

/// 用户进出直播间
class userOperationRoom extends $pb.GeneratedMessage {
  factory userOperationRoom({
    $fixnum.Int64? userId,
    $fixnum.Int64? roomId,
    $fixnum.Int64? time,
    OPERATION? operation,
    $fixnum.Int64? timeLen,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (time != null) {
      $result.time = time;
    }
    if (operation != null) {
      $result.operation = operation;
    }
    if (timeLen != null) {
      $result.timeLen = timeLen;
    }
    return $result;
  }
  userOperationRoom._() : super();
  factory userOperationRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory userOperationRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'userOperationRoom', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..e<OPERATION>(4, _omitFieldNames ? '' : 'operation', $pb.PbFieldType.OE, defaultOrMaker: OPERATION.UNKNOWN, valueOf: OPERATION.valueOf, enumValues: OPERATION.values)
    ..aInt64(5, _omitFieldNames ? '' : 'timeLen', protoName: 'timeLen')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  userOperationRoom clone() => userOperationRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  userOperationRoom copyWith(void Function(userOperationRoom) updates) => super.copyWith((message) => updates(message as userOperationRoom)) as userOperationRoom;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static userOperationRoom create() => userOperationRoom._();
  userOperationRoom createEmptyInstance() => create();
  static $pb.PbList<userOperationRoom> createRepeated() => $pb.PbList<userOperationRoom>();
  @$core.pragma('dart2js:noInline')
  static userOperationRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<userOperationRoom>(create);
  static userOperationRoom? _defaultInstance;

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
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  OPERATION get operation => $_getN(3);
  @$pb.TagNumber(4)
  set operation(OPERATION v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOperation() => $_has(3);
  @$pb.TagNumber(4)
  void clearOperation() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timeLen => $_getI64(4);
  @$pb.TagNumber(5)
  set timeLen($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeLen() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeLen() => clearField(5);
}

/// 礼物消息 消息的AimId即为为房间ID
class Gift extends $pb.GeneratedMessage {
  factory Gift({
    $fixnum.Int64? userId,
    $fixnum.Int64? giftId,
    $fixnum.Int64? actorId,
    $fixnum.Int64? giftNumber,
    $core.String? senderName,
    $core.String? targetName,
    $core.String? headImg,
    $core.int? level,
    $core.int? batteryType,
    $core.Iterable<$fixnum.Int64>? batteryTypeList,
    $core.bool? levelPrivilegeOpen,
    $fixnum.Int64? giftConfLastUpdateTime,
    $core.Map<$core.String, $core.String>? exp,
    $core.int? giftType,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (giftId != null) {
      $result.giftId = giftId;
    }
    if (actorId != null) {
      $result.actorId = actorId;
    }
    if (giftNumber != null) {
      $result.giftNumber = giftNumber;
    }
    if (senderName != null) {
      $result.senderName = senderName;
    }
    if (targetName != null) {
      $result.targetName = targetName;
    }
    if (headImg != null) {
      $result.headImg = headImg;
    }
    if (level != null) {
      $result.level = level;
    }
    if (batteryType != null) {
      $result.batteryType = batteryType;
    }
    if (batteryTypeList != null) {
      $result.batteryTypeList.addAll(batteryTypeList);
    }
    if (levelPrivilegeOpen != null) {
      $result.levelPrivilegeOpen = levelPrivilegeOpen;
    }
    if (giftConfLastUpdateTime != null) {
      $result.giftConfLastUpdateTime = giftConfLastUpdateTime;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (giftType != null) {
      $result.giftType = giftType;
    }
    return $result;
  }
  Gift._() : super();
  factory Gift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Gift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Gift', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'giftId', protoName: 'giftId')
    ..aInt64(3, _omitFieldNames ? '' : 'actorId', protoName: 'actorId')
    ..aInt64(4, _omitFieldNames ? '' : 'giftNumber', protoName: 'giftNumber')
    ..aOS(6, _omitFieldNames ? '' : 'senderName', protoName: 'senderName')
    ..aOS(7, _omitFieldNames ? '' : 'targetName', protoName: 'targetName')
    ..aOS(8, _omitFieldNames ? '' : 'headImg', protoName: 'headImg')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'level', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'batteryType', $pb.PbFieldType.O3, protoName: 'batteryType')
    ..p<$fixnum.Int64>(11, _omitFieldNames ? '' : 'batteryTypeList', $pb.PbFieldType.K6, protoName: 'batteryTypeList')
    ..aOB(12, _omitFieldNames ? '' : 'levelPrivilegeOpen', protoName: 'levelPrivilegeOpen')
    ..aInt64(13, _omitFieldNames ? '' : 'giftConfLastUpdateTime', protoName: 'giftConfLastUpdateTime')
    ..m<$core.String, $core.String>(14, _omitFieldNames ? '' : 'exp', entryClassName: 'Gift.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..a<$core.int>(15, _omitFieldNames ? '' : 'giftType', $pb.PbFieldType.O3, protoName: 'giftType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Gift clone() => Gift()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Gift copyWith(void Function(Gift) updates) => super.copyWith((message) => updates(message as Gift)) as Gift;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Gift create() => Gift._();
  Gift createEmptyInstance() => create();
  static $pb.PbList<Gift> createRepeated() => $pb.PbList<Gift>();
  @$core.pragma('dart2js:noInline')
  static Gift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gift>(create);
  static Gift? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get giftId => $_getI64(1);
  @$pb.TagNumber(2)
  set giftId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGiftId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGiftId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get actorId => $_getI64(2);
  @$pb.TagNumber(3)
  set actorId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActorId() => $_has(2);
  @$pb.TagNumber(3)
  void clearActorId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get giftNumber => $_getI64(3);
  @$pb.TagNumber(4)
  set giftNumber($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGiftNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearGiftNumber() => clearField(4);

  /// int32 luckyGift = 5; // 礼物类型 int 【普通礼物，夺宝礼物，福袋】 是否为幸运礼物
  @$pb.TagNumber(6)
  $core.String get senderName => $_getSZ(4);
  @$pb.TagNumber(6)
  set senderName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasSenderName() => $_has(4);
  @$pb.TagNumber(6)
  void clearSenderName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get targetName => $_getSZ(5);
  @$pb.TagNumber(7)
  set targetName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasTargetName() => $_has(5);
  @$pb.TagNumber(7)
  void clearTargetName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get headImg => $_getSZ(6);
  @$pb.TagNumber(8)
  set headImg($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasHeadImg() => $_has(6);
  @$pb.TagNumber(8)
  void clearHeadImg() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get level => $_getIZ(7);
  @$pb.TagNumber(9)
  set level($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasLevel() => $_has(7);
  @$pb.TagNumber(9)
  void clearLevel() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get batteryType => $_getIZ(8);
  @$pb.TagNumber(10)
  set batteryType($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasBatteryType() => $_has(8);
  @$pb.TagNumber(10)
  void clearBatteryType() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$fixnum.Int64> get batteryTypeList => $_getList(9);

  @$pb.TagNumber(12)
  $core.bool get levelPrivilegeOpen => $_getBF(10);
  @$pb.TagNumber(12)
  set levelPrivilegeOpen($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasLevelPrivilegeOpen() => $_has(10);
  @$pb.TagNumber(12)
  void clearLevelPrivilegeOpen() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get giftConfLastUpdateTime => $_getI64(11);
  @$pb.TagNumber(13)
  set giftConfLastUpdateTime($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasGiftConfLastUpdateTime() => $_has(11);
  @$pb.TagNumber(13)
  void clearGiftConfLastUpdateTime() => clearField(13);

  @$pb.TagNumber(14)
  $core.Map<$core.String, $core.String> get exp => $_getMap(12);

  @$pb.TagNumber(15)
  $core.int get giftType => $_getIZ(13);
  @$pb.TagNumber(15)
  set giftType($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasGiftType() => $_has(13);
  @$pb.TagNumber(15)
  void clearGiftType() => clearField(15);
}

/// 登录成功通知到nsq
class LogonSuccessNotifyNsq extends $pb.GeneratedMessage {
  factory LogonSuccessNotifyNsq({
    $fixnum.Int64? msgSn,
    $fixnum.Int64? userId,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  LogonSuccessNotifyNsq._() : super();
  factory LogonSuccessNotifyNsq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogonSuccessNotifyNsq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LogonSuccessNotifyNsq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'MsgSn', protoName: 'MsgSn')
    ..aInt64(2, _omitFieldNames ? '' : 'UserId', protoName: 'UserId')
    ..aInt64(3, _omitFieldNames ? '' : 'Time', protoName: 'Time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogonSuccessNotifyNsq clone() => LogonSuccessNotifyNsq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogonSuccessNotifyNsq copyWith(void Function(LogonSuccessNotifyNsq) updates) => super.copyWith((message) => updates(message as LogonSuccessNotifyNsq)) as LogonSuccessNotifyNsq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogonSuccessNotifyNsq create() => LogonSuccessNotifyNsq._();
  LogonSuccessNotifyNsq createEmptyInstance() => create();
  static $pb.PbList<LogonSuccessNotifyNsq> createRepeated() => $pb.PbList<LogonSuccessNotifyNsq>();
  @$core.pragma('dart2js:noInline')
  static LogonSuccessNotifyNsq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogonSuccessNotifyNsq>(create);
  static LogonSuccessNotifyNsq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
}

/// 场景需要恢复，通知到前端
class NeedSceneRecoverNotify extends $pb.GeneratedMessage {
  factory NeedSceneRecoverNotify({
    $2.Service? serviceType,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (serviceType != null) {
      $result.serviceType = serviceType;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  NeedSceneRecoverNotify._() : super();
  factory NeedSceneRecoverNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NeedSceneRecoverNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NeedSceneRecoverNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..e<$2.Service>(1, _omitFieldNames ? '' : 'ServiceType', $pb.PbFieldType.OE, protoName: 'ServiceType', defaultOrMaker: $2.Service.gate, valueOf: $2.Service.valueOf, enumValues: $2.Service.values)
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'Exp', protoName: 'Exp', entryClassName: 'NeedSceneRecoverNotify.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NeedSceneRecoverNotify clone() => NeedSceneRecoverNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NeedSceneRecoverNotify copyWith(void Function(NeedSceneRecoverNotify) updates) => super.copyWith((message) => updates(message as NeedSceneRecoverNotify)) as NeedSceneRecoverNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NeedSceneRecoverNotify create() => NeedSceneRecoverNotify._();
  NeedSceneRecoverNotify createEmptyInstance() => create();
  static $pb.PbList<NeedSceneRecoverNotify> createRepeated() => $pb.PbList<NeedSceneRecoverNotify>();
  @$core.pragma('dart2js:noInline')
  static NeedSceneRecoverNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NeedSceneRecoverNotify>(create);
  static NeedSceneRecoverNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Service get serviceType => $_getN(0);
  @$pb.TagNumber(1)
  set serviceType($2.Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceType() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceType() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get exp => $_getMap(1);
}

/// 用户场景
class UserScene extends $pb.GeneratedMessage {
  factory UserScene({
    $fixnum.Int64? userId,
    $fixnum.Int64? sceneId,
    SCENE_TYPE? sceneType,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (sceneId != null) {
      $result.sceneId = sceneId;
    }
    if (sceneType != null) {
      $result.sceneType = sceneType;
    }
    return $result;
  }
  UserScene._() : super();
  factory UserScene.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserScene.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserScene', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'UserId', protoName: 'UserId')
    ..aInt64(2, _omitFieldNames ? '' : 'SceneId', protoName: 'SceneId')
    ..e<SCENE_TYPE>(3, _omitFieldNames ? '' : 'SceneType', $pb.PbFieldType.OE, protoName: 'SceneType', defaultOrMaker: SCENE_TYPE.SCENE_TYPE_UNKNOWN, valueOf: SCENE_TYPE.valueOf, enumValues: SCENE_TYPE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserScene clone() => UserScene()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserScene copyWith(void Function(UserScene) updates) => super.copyWith((message) => updates(message as UserScene)) as UserScene;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserScene create() => UserScene._();
  UserScene createEmptyInstance() => create();
  static $pb.PbList<UserScene> createRepeated() => $pb.PbList<UserScene>();
  @$core.pragma('dart2js:noInline')
  static UserScene getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserScene>(create);
  static UserScene? _defaultInstance;

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

  @$pb.TagNumber(3)
  SCENE_TYPE get sceneType => $_getN(2);
  @$pb.TagNumber(3)
  set sceneType(SCENE_TYPE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSceneType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSceneType() => clearField(3);
}

/// HTTP API 调用的消息使用此消息头封装
class JSONMessage extends $pb.GeneratedMessage {
  factory JSONMessage({
    $core.String? hashKey,
    $core.String? secret,
    PBCommData? pbCommData,
    $core.String? messageName,
    $core.String? messageData,
    SendType? sendType,
  }) {
    final $result = create();
    if (hashKey != null) {
      $result.hashKey = hashKey;
    }
    if (secret != null) {
      $result.secret = secret;
    }
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (messageName != null) {
      $result.messageName = messageName;
    }
    if (messageData != null) {
      $result.messageData = messageData;
    }
    if (sendType != null) {
      $result.sendType = sendType;
    }
    return $result;
  }
  JSONMessage._() : super();
  factory JSONMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JSONMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JSONMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hashKey', protoName: 'hashKey')
    ..aOS(2, _omitFieldNames ? '' : 'secret')
    ..aOM<PBCommData>(3, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: PBCommData.create)
    ..aOS(4, _omitFieldNames ? '' : 'messageName', protoName: 'messageName')
    ..aOS(5, _omitFieldNames ? '' : 'messageData', protoName: 'messageData')
    ..e<SendType>(6, _omitFieldNames ? '' : 'sendType', $pb.PbFieldType.OE, protoName: 'sendType', defaultOrMaker: SendType.TO_SERVICE, valueOf: SendType.valueOf, enumValues: SendType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JSONMessage clone() => JSONMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JSONMessage copyWith(void Function(JSONMessage) updates) => super.copyWith((message) => updates(message as JSONMessage)) as JSONMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JSONMessage create() => JSONMessage._();
  JSONMessage createEmptyInstance() => create();
  static $pb.PbList<JSONMessage> createRepeated() => $pb.PbList<JSONMessage>();
  @$core.pragma('dart2js:noInline')
  static JSONMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSONMessage>(create);
  static JSONMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hashKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set hashKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHashKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearHashKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secret => $_getSZ(1);
  @$pb.TagNumber(2)
  set secret($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecret() => clearField(2);

  @$pb.TagNumber(3)
  PBCommData get pbCommData => $_getN(2);
  @$pb.TagNumber(3)
  set pbCommData(PBCommData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPbCommData() => $_has(2);
  @$pb.TagNumber(3)
  void clearPbCommData() => clearField(3);
  @$pb.TagNumber(3)
  PBCommData ensurePbCommData() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get messageName => $_getSZ(3);
  @$pb.TagNumber(4)
  set messageName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageName() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get messageData => $_getSZ(4);
  @$pb.TagNumber(5)
  set messageData($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessageData() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessageData() => clearField(5);

  @$pb.TagNumber(6)
  SendType get sendType => $_getN(5);
  @$pb.TagNumber(6)
  set sendType(SendType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSendType() => $_has(5);
  @$pb.TagNumber(6)
  void clearSendType() => clearField(6);
}

class JSONCallReq extends $pb.GeneratedMessage {
  factory JSONCallReq({
    $core.String? messageName,
    $core.List<$core.int>? messageData,
  }) {
    final $result = create();
    if (messageName != null) {
      $result.messageName = messageName;
    }
    if (messageData != null) {
      $result.messageData = messageData;
    }
    return $result;
  }
  JSONCallReq._() : super();
  factory JSONCallReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JSONCallReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JSONCallReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOS(3, _omitFieldNames ? '' : 'messageName', protoName: 'messageName')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'messageData', $pb.PbFieldType.OY, protoName: 'messageData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JSONCallReq clone() => JSONCallReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JSONCallReq copyWith(void Function(JSONCallReq) updates) => super.copyWith((message) => updates(message as JSONCallReq)) as JSONCallReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JSONCallReq create() => JSONCallReq._();
  JSONCallReq createEmptyInstance() => create();
  static $pb.PbList<JSONCallReq> createRepeated() => $pb.PbList<JSONCallReq>();
  @$core.pragma('dart2js:noInline')
  static JSONCallReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSONCallReq>(create);
  static JSONCallReq? _defaultInstance;

  @$pb.TagNumber(3)
  $core.String get messageName => $_getSZ(0);
  @$pb.TagNumber(3)
  set messageName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageName() => $_has(0);
  @$pb.TagNumber(3)
  void clearMessageName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get messageData => $_getN(1);
  @$pb.TagNumber(4)
  set messageData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageData() => $_has(1);
  @$pb.TagNumber(4)
  void clearMessageData() => clearField(4);
}

class JSONCallRsp extends $pb.GeneratedMessage {
  factory JSONCallRsp({
    $3.ErrCode? errCode,
    $core.String? errDesc,
    $core.List<$core.int>? messageData,
  }) {
    final $result = create();
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (errDesc != null) {
      $result.errDesc = errDesc;
    }
    if (messageData != null) {
      $result.messageData = messageData;
    }
    return $result;
  }
  JSONCallRsp._() : super();
  factory JSONCallRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JSONCallRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JSONCallRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..e<$3.ErrCode>(1, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.OE, protoName: 'errCode', defaultOrMaker: $3.ErrCode.SUCCESS, valueOf: $3.ErrCode.valueOf, enumValues: $3.ErrCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'errDesc', protoName: 'errDesc')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'messageData', $pb.PbFieldType.OY, protoName: 'messageData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JSONCallRsp clone() => JSONCallRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JSONCallRsp copyWith(void Function(JSONCallRsp) updates) => super.copyWith((message) => updates(message as JSONCallRsp)) as JSONCallRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JSONCallRsp create() => JSONCallRsp._();
  JSONCallRsp createEmptyInstance() => create();
  static $pb.PbList<JSONCallRsp> createRepeated() => $pb.PbList<JSONCallRsp>();
  @$core.pragma('dart2js:noInline')
  static JSONCallRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSONCallRsp>(create);
  static JSONCallRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $3.ErrCode get errCode => $_getN(0);
  @$pb.TagNumber(1)
  set errCode($3.ErrCode v) { setField(1, v); }
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
  $core.List<$core.int> get messageData => $_getN(2);
  @$pb.TagNumber(3)
  set messageData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageData() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageData() => clearField(3);
}

/// 服务端触发
class ServerNotify extends $pb.GeneratedMessage {
  factory ServerNotify({
    ServerNotify_From? from,
    $2.Service? service,
    $3.ErrCode? errCode,
    $core.String? errDesc,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (from != null) {
      $result.from = from;
    }
    if (service != null) {
      $result.service = service;
    }
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (errDesc != null) {
      $result.errDesc = errDesc;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  ServerNotify._() : super();
  factory ServerNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..e<ServerNotify_From>(1, _omitFieldNames ? '' : 'from', $pb.PbFieldType.OE, defaultOrMaker: ServerNotify_From.IM, valueOf: ServerNotify_From.valueOf, enumValues: ServerNotify_From.values)
    ..e<$2.Service>(2, _omitFieldNames ? '' : 'service', $pb.PbFieldType.OE, defaultOrMaker: $2.Service.gate, valueOf: $2.Service.valueOf, enumValues: $2.Service.values)
    ..e<$3.ErrCode>(3, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.OE, protoName: 'errCode', defaultOrMaker: $3.ErrCode.SUCCESS, valueOf: $3.ErrCode.valueOf, enumValues: $3.ErrCode.values)
    ..aOS(4, _omitFieldNames ? '' : 'errDesc', protoName: 'errDesc')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'Exp', protoName: 'Exp', entryClassName: 'ServerNotify.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerNotify clone() => ServerNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerNotify copyWith(void Function(ServerNotify) updates) => super.copyWith((message) => updates(message as ServerNotify)) as ServerNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerNotify create() => ServerNotify._();
  ServerNotify createEmptyInstance() => create();
  static $pb.PbList<ServerNotify> createRepeated() => $pb.PbList<ServerNotify>();
  @$core.pragma('dart2js:noInline')
  static ServerNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerNotify>(create);
  static ServerNotify? _defaultInstance;

  @$pb.TagNumber(1)
  ServerNotify_From get from => $_getN(0);
  @$pb.TagNumber(1)
  set from(ServerNotify_From v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $2.Service get service => $_getN(1);
  @$pb.TagNumber(2)
  set service($2.Service v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasService() => $_has(1);
  @$pb.TagNumber(2)
  void clearService() => clearField(2);

  @$pb.TagNumber(3)
  $3.ErrCode get errCode => $_getN(2);
  @$pb.TagNumber(3)
  set errCode($3.ErrCode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get errDesc => $_getSZ(3);
  @$pb.TagNumber(4)
  set errDesc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasErrDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearErrDesc() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get exp => $_getMap(4);
}

/// 撤回消息
class MsgRecallReq extends $pb.GeneratedMessage {
  factory MsgRecallReq({
    $fixnum.Int64? msgSn,
    $fixnum.Int64? msgOwnerId,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (msgOwnerId != null) {
      $result.msgOwnerId = msgOwnerId;
    }
    return $result;
  }
  MsgRecallReq._() : super();
  factory MsgRecallReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRecallReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRecallReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..aInt64(2, _omitFieldNames ? '' : 'msgOwnerId', protoName: 'msgOwnerId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRecallReq clone() => MsgRecallReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRecallReq copyWith(void Function(MsgRecallReq) updates) => super.copyWith((message) => updates(message as MsgRecallReq)) as MsgRecallReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRecallReq create() => MsgRecallReq._();
  MsgRecallReq createEmptyInstance() => create();
  static $pb.PbList<MsgRecallReq> createRepeated() => $pb.PbList<MsgRecallReq>();
  @$core.pragma('dart2js:noInline')
  static MsgRecallReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRecallReq>(create);
  static MsgRecallReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgOwnerId => $_getI64(1);
  @$pb.TagNumber(2)
  set msgOwnerId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgOwnerId() => clearField(2);
}

class MsgRecallRsp extends $pb.GeneratedMessage {
  factory MsgRecallRsp({
    $fixnum.Int64? msgSn,
    $fixnum.Int64? msgOwnerId,
    $3.ErrCode? result,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (msgOwnerId != null) {
      $result.msgOwnerId = msgOwnerId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  MsgRecallRsp._() : super();
  factory MsgRecallRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRecallRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRecallRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..aInt64(2, _omitFieldNames ? '' : 'msgOwnerId', protoName: 'msgOwnerId')
    ..e<$3.ErrCode>(3, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $3.ErrCode.SUCCESS, valueOf: $3.ErrCode.valueOf, enumValues: $3.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRecallRsp clone() => MsgRecallRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRecallRsp copyWith(void Function(MsgRecallRsp) updates) => super.copyWith((message) => updates(message as MsgRecallRsp)) as MsgRecallRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRecallRsp create() => MsgRecallRsp._();
  MsgRecallRsp createEmptyInstance() => create();
  static $pb.PbList<MsgRecallRsp> createRepeated() => $pb.PbList<MsgRecallRsp>();
  @$core.pragma('dart2js:noInline')
  static MsgRecallRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRecallRsp>(create);
  static MsgRecallRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgOwnerId => $_getI64(1);
  @$pb.TagNumber(2)
  set msgOwnerId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgOwnerId() => clearField(2);

  @$pb.TagNumber(3)
  $3.ErrCode get result => $_getN(2);
  @$pb.TagNumber(3)
  set result($3.ErrCode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => clearField(3);
}

/// 更改消息
class MsgChangeReq extends $pb.GeneratedMessage {
  factory MsgChangeReq({
    $fixnum.Int64? msgSn,
    $core.Map<$core.String, $core.String>? changeData,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (changeData != null) {
      $result.changeData.addAll(changeData);
    }
    return $result;
  }
  MsgChangeReq._() : super();
  factory MsgChangeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgChangeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgChangeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'changeData', protoName: 'changeData', entryClassName: 'MsgChangeReq.ChangeDataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgChangeReq clone() => MsgChangeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgChangeReq copyWith(void Function(MsgChangeReq) updates) => super.copyWith((message) => updates(message as MsgChangeReq)) as MsgChangeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgChangeReq create() => MsgChangeReq._();
  MsgChangeReq createEmptyInstance() => create();
  static $pb.PbList<MsgChangeReq> createRepeated() => $pb.PbList<MsgChangeReq>();
  @$core.pragma('dart2js:noInline')
  static MsgChangeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgChangeReq>(create);
  static MsgChangeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get changeData => $_getMap(1);
}

/// 更改消息
class MsgChangeRsp extends $pb.GeneratedMessage {
  factory MsgChangeRsp({
    $fixnum.Int64? msgSn,
    $core.Map<$core.String, $core.String>? changeData,
    $3.ErrCode? result,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (changeData != null) {
      $result.changeData.addAll(changeData);
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  MsgChangeRsp._() : super();
  factory MsgChangeRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgChangeRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgChangeRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'changeData', protoName: 'changeData', entryClassName: 'MsgChangeRsp.ChangeDataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..e<$3.ErrCode>(3, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $3.ErrCode.SUCCESS, valueOf: $3.ErrCode.valueOf, enumValues: $3.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgChangeRsp clone() => MsgChangeRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgChangeRsp copyWith(void Function(MsgChangeRsp) updates) => super.copyWith((message) => updates(message as MsgChangeRsp)) as MsgChangeRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgChangeRsp create() => MsgChangeRsp._();
  MsgChangeRsp createEmptyInstance() => create();
  static $pb.PbList<MsgChangeRsp> createRepeated() => $pb.PbList<MsgChangeRsp>();
  @$core.pragma('dart2js:noInline')
  static MsgChangeRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgChangeRsp>(create);
  static MsgChangeRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get changeData => $_getMap(1);

  @$pb.TagNumber(3)
  $3.ErrCode get result => $_getN(2);
  @$pb.TagNumber(3)
  set result($3.ErrCode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => clearField(3);
}

/// 客户端触发的截屏通知，私聊截屏发送到私聊，群聊截屏发送到当前群
class TakeScreenShotNotify extends $pb.GeneratedMessage {
  factory TakeScreenShotNotify() => create();
  TakeScreenShotNotify._() : super();
  factory TakeScreenShotNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TakeScreenShotNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TakeScreenShotNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TakeScreenShotNotify clone() => TakeScreenShotNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TakeScreenShotNotify copyWith(void Function(TakeScreenShotNotify) updates) => super.copyWith((message) => updates(message as TakeScreenShotNotify)) as TakeScreenShotNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TakeScreenShotNotify create() => TakeScreenShotNotify._();
  TakeScreenShotNotify createEmptyInstance() => create();
  static $pb.PbList<TakeScreenShotNotify> createRepeated() => $pb.PbList<TakeScreenShotNotify>();
  @$core.pragma('dart2js:noInline')
  static TakeScreenShotNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TakeScreenShotNotify>(create);
  static TakeScreenShotNotify? _defaultInstance;
}

class AppClientInfo extends $pb.GeneratedMessage {
  factory AppClientInfo({
    MODEL_TYPE? modelType,
    $core.String? packageName,
    $core.String? systemVersion,
    $core.String? phoneModels,
    $core.String? appVersion,
    $core.String? systemName,
    $core.String? identifier,
    $core.String? xChannel,
    $core.String? pushPlatformAppId,
    $core.String? odid,
    $core.String? aaid,
    $core.String? token,
    $fixnum.Int64? expired,
  }) {
    final $result = create();
    if (modelType != null) {
      $result.modelType = modelType;
    }
    if (packageName != null) {
      $result.packageName = packageName;
    }
    if (systemVersion != null) {
      $result.systemVersion = systemVersion;
    }
    if (phoneModels != null) {
      $result.phoneModels = phoneModels;
    }
    if (appVersion != null) {
      $result.appVersion = appVersion;
    }
    if (systemName != null) {
      $result.systemName = systemName;
    }
    if (identifier != null) {
      $result.identifier = identifier;
    }
    if (xChannel != null) {
      $result.xChannel = xChannel;
    }
    if (pushPlatformAppId != null) {
      $result.pushPlatformAppId = pushPlatformAppId;
    }
    if (odid != null) {
      $result.odid = odid;
    }
    if (aaid != null) {
      $result.aaid = aaid;
    }
    if (token != null) {
      $result.token = token;
    }
    if (expired != null) {
      $result.expired = expired;
    }
    return $result;
  }
  AppClientInfo._() : super();
  factory AppClientInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppClientInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppClientInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..e<MODEL_TYPE>(1, _omitFieldNames ? '' : 'modelType', $pb.PbFieldType.OE, protoName: 'modelType', defaultOrMaker: MODEL_TYPE.NIL, valueOf: MODEL_TYPE.valueOf, enumValues: MODEL_TYPE.values)
    ..aOS(2, _omitFieldNames ? '' : 'packageName', protoName: 'packageName')
    ..aOS(3, _omitFieldNames ? '' : 'systemVersion', protoName: 'systemVersion')
    ..aOS(4, _omitFieldNames ? '' : 'phoneModels', protoName: 'phoneModels')
    ..aOS(5, _omitFieldNames ? '' : 'appVersion', protoName: 'appVersion')
    ..aOS(6, _omitFieldNames ? '' : 'systemName', protoName: 'systemName')
    ..aOS(7, _omitFieldNames ? '' : 'identifier')
    ..aOS(8, _omitFieldNames ? '' : 'xChannel', protoName: 'xChannel')
    ..aOS(9, _omitFieldNames ? '' : 'pushPlatformAppId', protoName: 'pushPlatformAppId')
    ..aOS(10, _omitFieldNames ? '' : 'odid')
    ..aOS(11, _omitFieldNames ? '' : 'aaid')
    ..aOS(12, _omitFieldNames ? '' : 'token')
    ..aInt64(13, _omitFieldNames ? '' : 'expired')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppClientInfo clone() => AppClientInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppClientInfo copyWith(void Function(AppClientInfo) updates) => super.copyWith((message) => updates(message as AppClientInfo)) as AppClientInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppClientInfo create() => AppClientInfo._();
  AppClientInfo createEmptyInstance() => create();
  static $pb.PbList<AppClientInfo> createRepeated() => $pb.PbList<AppClientInfo>();
  @$core.pragma('dart2js:noInline')
  static AppClientInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppClientInfo>(create);
  static AppClientInfo? _defaultInstance;

  @$pb.TagNumber(1)
  MODEL_TYPE get modelType => $_getN(0);
  @$pb.TagNumber(1)
  set modelType(MODEL_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModelType() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get packageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set packageName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPackageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackageName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get systemVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set systemVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSystemVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearSystemVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneModels => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneModels($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoneModels() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneModels() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get appVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set appVersion($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get systemName => $_getSZ(5);
  @$pb.TagNumber(6)
  set systemName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSystemName() => $_has(5);
  @$pb.TagNumber(6)
  void clearSystemName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get identifier => $_getSZ(6);
  @$pb.TagNumber(7)
  set identifier($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIdentifier() => $_has(6);
  @$pb.TagNumber(7)
  void clearIdentifier() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get xChannel => $_getSZ(7);
  @$pb.TagNumber(8)
  set xChannel($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasXChannel() => $_has(7);
  @$pb.TagNumber(8)
  void clearXChannel() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get pushPlatformAppId => $_getSZ(8);
  @$pb.TagNumber(9)
  set pushPlatformAppId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPushPlatformAppId() => $_has(8);
  @$pb.TagNumber(9)
  void clearPushPlatformAppId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get odid => $_getSZ(9);
  @$pb.TagNumber(10)
  set odid($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOdid() => $_has(9);
  @$pb.TagNumber(10)
  void clearOdid() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get aaid => $_getSZ(10);
  @$pb.TagNumber(11)
  set aaid($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAaid() => $_has(10);
  @$pb.TagNumber(11)
  void clearAaid() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get token => $_getSZ(11);
  @$pb.TagNumber(12)
  set token($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasToken() => $_has(11);
  @$pb.TagNumber(12)
  void clearToken() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get expired => $_getI64(12);
  @$pb.TagNumber(13)
  set expired($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasExpired() => $_has(12);
  @$pb.TagNumber(13)
  void clearExpired() => clearField(13);
}

class AppLogData extends $pb.GeneratedMessage {
  factory AppLogData({
    PBCommData? pcd,
    AppClientInfo? appClientInfo,
    $core.Map<$core.String, $1.Value>? kvValues,
  }) {
    final $result = create();
    if (pcd != null) {
      $result.pcd = pcd;
    }
    if (appClientInfo != null) {
      $result.appClientInfo = appClientInfo;
    }
    if (kvValues != null) {
      $result.kvValues.addAll(kvValues);
    }
    return $result;
  }
  AppLogData._() : super();
  factory AppLogData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppLogData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppLogData', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<PBCommData>(1, _omitFieldNames ? '' : 'pcd', subBuilder: PBCommData.create)
    ..aOM<AppClientInfo>(2, _omitFieldNames ? '' : 'appClientInfo', protoName: 'appClientInfo', subBuilder: AppClientInfo.create)
    ..m<$core.String, $1.Value>(3, _omitFieldNames ? '' : 'kvValues', protoName: 'kvValues', entryClassName: 'AppLogData.KvValuesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $1.Value.create, valueDefaultOrMaker: $1.Value.getDefault, packageName: const $pb.PackageName('pb_pub'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppLogData clone() => AppLogData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppLogData copyWith(void Function(AppLogData) updates) => super.copyWith((message) => updates(message as AppLogData)) as AppLogData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppLogData create() => AppLogData._();
  AppLogData createEmptyInstance() => create();
  static $pb.PbList<AppLogData> createRepeated() => $pb.PbList<AppLogData>();
  @$core.pragma('dart2js:noInline')
  static AppLogData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppLogData>(create);
  static AppLogData? _defaultInstance;

  @$pb.TagNumber(1)
  PBCommData get pcd => $_getN(0);
  @$pb.TagNumber(1)
  set pcd(PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPcd() => $_has(0);
  @$pb.TagNumber(1)
  void clearPcd() => clearField(1);
  @$pb.TagNumber(1)
  PBCommData ensurePcd() => $_ensure(0);

  @$pb.TagNumber(2)
  AppClientInfo get appClientInfo => $_getN(1);
  @$pb.TagNumber(2)
  set appClientInfo(AppClientInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppClientInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppClientInfo() => clearField(2);
  @$pb.TagNumber(2)
  AppClientInfo ensureAppClientInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $1.Value> get kvValues => $_getMap(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
