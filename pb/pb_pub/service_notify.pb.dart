//
//  Generated code. Do not modify.
//  source: pb_pub/service_notify.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'comm.pb.dart' as $4;
import 'service_notify.pbenum.dart';

export 'service_notify.pbenum.dart';

/// 客户端获取方法
/// 开机获取系统通知，通过app接口获取
class RedServiceNoticeReq extends $pb.GeneratedMessage {
  factory RedServiceNoticeReq({
    $fixnum.Int64? notifyIdBegin,
    $fixnum.Int64? notifyIdEnd,
    $fixnum.Int64? appId,
    $core.int? wantCount,
  }) {
    final $result = create();
    if (notifyIdBegin != null) {
      $result.notifyIdBegin = notifyIdBegin;
    }
    if (notifyIdEnd != null) {
      $result.notifyIdEnd = notifyIdEnd;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (wantCount != null) {
      $result.wantCount = wantCount;
    }
    return $result;
  }
  RedServiceNoticeReq._() : super();
  factory RedServiceNoticeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedServiceNoticeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedServiceNoticeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'notifyIdBegin', protoName: 'notifyIdBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'notifyIdEnd', protoName: 'notifyIdEnd')
    ..aInt64(3, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'wantCount', $pb.PbFieldType.O3, protoName: 'wantCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedServiceNoticeReq clone() => RedServiceNoticeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedServiceNoticeReq copyWith(void Function(RedServiceNoticeReq) updates) => super.copyWith((message) => updates(message as RedServiceNoticeReq)) as RedServiceNoticeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedServiceNoticeReq create() => RedServiceNoticeReq._();
  RedServiceNoticeReq createEmptyInstance() => create();
  static $pb.PbList<RedServiceNoticeReq> createRepeated() => $pb.PbList<RedServiceNoticeReq>();
  @$core.pragma('dart2js:noInline')
  static RedServiceNoticeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedServiceNoticeReq>(create);
  static RedServiceNoticeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get notifyIdBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set notifyIdBegin($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotifyIdBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotifyIdBegin() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get notifyIdEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set notifyIdEnd($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotifyIdEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotifyIdEnd() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get appId => $_getI64(2);
  @$pb.TagNumber(3)
  set appId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get wantCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set wantCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWantCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearWantCount() => clearField(4);
}

class RedServiceNoticeRsp extends $pb.GeneratedMessage {
  factory RedServiceNoticeRsp({
    $fixnum.Int64? notifyIdBegin,
    $fixnum.Int64? notifyIdEnd,
    $fixnum.Int64? appId,
    $core.int? wantCount,
    $core.int? leaveCount,
    $core.Iterable<ServiceNotice>? serviceNotice,
  }) {
    final $result = create();
    if (notifyIdBegin != null) {
      $result.notifyIdBegin = notifyIdBegin;
    }
    if (notifyIdEnd != null) {
      $result.notifyIdEnd = notifyIdEnd;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (wantCount != null) {
      $result.wantCount = wantCount;
    }
    if (leaveCount != null) {
      $result.leaveCount = leaveCount;
    }
    if (serviceNotice != null) {
      $result.serviceNotice.addAll(serviceNotice);
    }
    return $result;
  }
  RedServiceNoticeRsp._() : super();
  factory RedServiceNoticeRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RedServiceNoticeRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RedServiceNoticeRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'notifyIdBegin', protoName: 'notifyIdBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'notifyIdEnd', protoName: 'notifyIdEnd')
    ..aInt64(3, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'wantCount', $pb.PbFieldType.O3, protoName: 'wantCount')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'leaveCount', $pb.PbFieldType.O3, protoName: 'leaveCount')
    ..pc<ServiceNotice>(6, _omitFieldNames ? '' : 'serviceNotice', $pb.PbFieldType.PM, protoName: 'serviceNotice', subBuilder: ServiceNotice.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RedServiceNoticeRsp clone() => RedServiceNoticeRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RedServiceNoticeRsp copyWith(void Function(RedServiceNoticeRsp) updates) => super.copyWith((message) => updates(message as RedServiceNoticeRsp)) as RedServiceNoticeRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedServiceNoticeRsp create() => RedServiceNoticeRsp._();
  RedServiceNoticeRsp createEmptyInstance() => create();
  static $pb.PbList<RedServiceNoticeRsp> createRepeated() => $pb.PbList<RedServiceNoticeRsp>();
  @$core.pragma('dart2js:noInline')
  static RedServiceNoticeRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedServiceNoticeRsp>(create);
  static RedServiceNoticeRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get notifyIdBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set notifyIdBegin($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotifyIdBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotifyIdBegin() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get notifyIdEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set notifyIdEnd($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotifyIdEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotifyIdEnd() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get appId => $_getI64(2);
  @$pb.TagNumber(3)
  set appId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get wantCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set wantCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWantCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearWantCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get leaveCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set leaveCount($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLeaveCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearLeaveCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<ServiceNotice> get serviceNotice => $_getList(5);
}

/// 服务器通知，服务端收到此消息后先存盘，在根据appId确定通知范围，发送ServiceNotify进行通知
class ServiceNotice extends $pb.GeneratedMessage {
  factory ServiceNotice({
    $fixnum.Int64? id,
    $fixnum.Int64? appId,
    $core.int? messageType,
    $core.String? messageBody,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (messageType != null) {
      $result.messageType = messageType;
    }
    if (messageBody != null) {
      $result.messageBody = messageBody;
    }
    return $result;
  }
  ServiceNotice._() : super();
  factory ServiceNotice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceNotice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceNotice', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.O3, protoName: 'messageType')
    ..aOS(4, _omitFieldNames ? '' : 'messageBody', protoName: 'messageBody')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceNotice clone() => ServiceNotice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceNotice copyWith(void Function(ServiceNotice) updates) => super.copyWith((message) => updates(message as ServiceNotice)) as ServiceNotice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceNotice create() => ServiceNotice._();
  ServiceNotice createEmptyInstance() => create();
  static $pb.PbList<ServiceNotice> createRepeated() => $pb.PbList<ServiceNotice>();
  @$core.pragma('dart2js:noInline')
  static ServiceNotice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceNotice>(create);
  static ServiceNotice? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get appId => $_getI64(1);
  @$pb.TagNumber(2)
  set appId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get messageType => $_getIZ(2);
  @$pb.TagNumber(3)
  set messageType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get messageBody => $_getSZ(3);
  @$pb.TagNumber(4)
  set messageBody($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageBody() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageBody() => clearField(4);
}

/// 服务触发的消息 messageType = 2000
class ServiceNotify extends $pb.GeneratedMessage {
  factory ServiceNotify({
    $core.int? messageType,
    $core.String? messageBody,
  }) {
    final $result = create();
    if (messageType != null) {
      $result.messageType = messageType;
    }
    if (messageBody != null) {
      $result.messageBody = messageBody;
    }
    return $result;
  }
  ServiceNotify._() : super();
  factory ServiceNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.O3, protoName: 'messageType')
    ..aOS(2, _omitFieldNames ? '' : 'messageBody', protoName: 'messageBody')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceNotify clone() => ServiceNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceNotify copyWith(void Function(ServiceNotify) updates) => super.copyWith((message) => updates(message as ServiceNotify)) as ServiceNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceNotify create() => ServiceNotify._();
  ServiceNotify createEmptyInstance() => create();
  static $pb.PbList<ServiceNotify> createRepeated() => $pb.PbList<ServiceNotify>();
  @$core.pragma('dart2js:noInline')
  static ServiceNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceNotify>(create);
  static ServiceNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageType => $_getIZ(0);
  @$pb.TagNumber(1)
  set messageType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get messageBody => $_getSZ(1);
  @$pb.TagNumber(2)
  set messageBody($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageBody() => clearField(2);
}

///  服务全站通知频道
/// topic:"t_service_notify", channel: "c_gate_%ip_%port"
///  每个gate一个channel，接收全量消息 如: c_gate_120.27.213.73_8101,
///  jsStr={"pbCommData":{"msgSn":1000100010001,"srcId":10001,"aimId":10002,"time":1572664086,"exp":{"key1":"value1","key2":"value2"},"serviceType":6},"messageType":12,"exp":{"nkey1":"value1","nkey2":"value2"},"messageBody":"jsonStr"}
/// curl -d jsStr http://127.0.0.1:4151/pub?topic=t_service_notify
///  全局通知消息结构
class ServiceNotifyToAllUser extends $pb.GeneratedMessage {
  factory ServiceNotifyToAllUser({
    $4.PBCommData? pbCommData,
    $core.int? messageType,
    $core.Map<$core.String, $core.String>? exp,
    $core.String? messageBody,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (messageType != null) {
      $result.messageType = messageType;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (messageBody != null) {
      $result.messageBody = messageBody;
    }
    return $result;
  }
  ServiceNotifyToAllUser._() : super();
  factory ServiceNotifyToAllUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceNotifyToAllUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceNotifyToAllUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.O3, protoName: 'messageType')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'exp', entryClassName: 'ServiceNotifyToAllUser.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..aOS(4, _omitFieldNames ? '' : 'messageBody', protoName: 'messageBody')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceNotifyToAllUser clone() => ServiceNotifyToAllUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceNotifyToAllUser copyWith(void Function(ServiceNotifyToAllUser) updates) => super.copyWith((message) => updates(message as ServiceNotifyToAllUser)) as ServiceNotifyToAllUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceNotifyToAllUser create() => ServiceNotifyToAllUser._();
  ServiceNotifyToAllUser createEmptyInstance() => create();
  static $pb.PbList<ServiceNotifyToAllUser> createRepeated() => $pb.PbList<ServiceNotifyToAllUser>();
  @$core.pragma('dart2js:noInline')
  static ServiceNotifyToAllUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceNotifyToAllUser>(create);
  static ServiceNotifyToAllUser? _defaultInstance;

  @$pb.TagNumber(1)
  $4.PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData($4.PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  $4.PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get messageType => $_getIZ(1);
  @$pb.TagNumber(2)
  set messageType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageType() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get exp => $_getMap(2);

  @$pb.TagNumber(4)
  $core.String get messageBody => $_getSZ(3);
  @$pb.TagNumber(4)
  set messageBody($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageBody() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageBody() => clearField(4);
}

/// topic:"t_service_to_aim_user", channel: "c_service_to_aim_user"
///  服务发送消息到特定用户
///  jsStr={"pbCommData":{"msgSn":1000100010001,"srcId":10001,"aimId":10002,"time":1572664086,"exp":{"key1":"value1","key2":"value2"},"serviceType":6},"aimUsers":[10001,10002], "messageType":12,"exp":{"nkey1":"value1","nkey2":"value2"},"messageBody":"jsonStr"}
/// curl -d '{"pbCommData":{"msgSn":1000100010001,"srcId":10001,"aimId":10002,"time":1572664086,"exp":{"key1":"value1","key2":"value2"},"serviceType":6},"aimUsers":[10001,10002], "messageType":12,"exp":{"nkey1":"value1","nkey2":"value2"},"messageBody":"jsonStr"}' http://127.0.0.1:4151/pub?topic=t_service_to_aim_user
class ServiceNotifyToAimUser extends $pb.GeneratedMessage {
  factory ServiceNotifyToAimUser({
    $4.PBCommData? pbCommData,
    $core.Iterable<$fixnum.Int64>? aimUsers,
    $core.int? messageType,
    $core.Map<$core.String, $core.String>? exp,
    $core.String? messageBody,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (aimUsers != null) {
      $result.aimUsers.addAll(aimUsers);
    }
    if (messageType != null) {
      $result.messageType = messageType;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (messageBody != null) {
      $result.messageBody = messageBody;
    }
    return $result;
  }
  ServiceNotifyToAimUser._() : super();
  factory ServiceNotifyToAimUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceNotifyToAimUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceNotifyToAimUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'aimUsers', $pb.PbFieldType.K6, protoName: 'aimUsers')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.O3, protoName: 'messageType')
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'exp', entryClassName: 'ServiceNotifyToAimUser.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..aOS(5, _omitFieldNames ? '' : 'messageBody', protoName: 'messageBody')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceNotifyToAimUser clone() => ServiceNotifyToAimUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceNotifyToAimUser copyWith(void Function(ServiceNotifyToAimUser) updates) => super.copyWith((message) => updates(message as ServiceNotifyToAimUser)) as ServiceNotifyToAimUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceNotifyToAimUser create() => ServiceNotifyToAimUser._();
  ServiceNotifyToAimUser createEmptyInstance() => create();
  static $pb.PbList<ServiceNotifyToAimUser> createRepeated() => $pb.PbList<ServiceNotifyToAimUser>();
  @$core.pragma('dart2js:noInline')
  static ServiceNotifyToAimUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceNotifyToAimUser>(create);
  static ServiceNotifyToAimUser? _defaultInstance;

  @$pb.TagNumber(1)
  $4.PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData($4.PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  $4.PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get aimUsers => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get messageType => $_getIZ(2);
  @$pb.TagNumber(3)
  set messageType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageType() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get exp => $_getMap(3);

  @$pb.TagNumber(5)
  $core.String get messageBody => $_getSZ(4);
  @$pb.TagNumber(5)
  set messageBody($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessageBody() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessageBody() => clearField(5);
}

/// topic:"t_service_to_all_group", channel: "c_gate_%ip_%port"
///  每个gate一个channel，接收全量消息 如: c_gate_120.27.213.73_8101,
///  服务发送消息到所有群
///  jsStr={"pbCommData":{"msgSn":1000100010001,"srcId":10001,"aimId":10002,"time":1572664086,"exp":{"key1":"value1","key2":"value2"},"serviceType":6},
///       "messageType":12,"exp":{"nkey1":"value1","nkey2":"value2"},"messageBody":"jsonStr"}
/// curl -d '{"pbCommData":{"msgSn":1000100010001,"srcId":10001,"aimId":10002,"time":1572664086,"exp":{"key1":"value1","key2":"value2"},"serviceType":6},"messageType":12,"exp":{"nkey1":"value1","nkey2":"value2"},"messageBody":"jsonStr"}' http://127.0.0.1:4151/pub?topic=t_service_to_all_group
class ServiceNotifyToAllGroup extends $pb.GeneratedMessage {
  factory ServiceNotifyToAllGroup({
    $4.PBCommData? pbCommData,
    $core.int? messageType,
    $core.Map<$core.String, $core.String>? exp,
    $core.String? messageBody,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (messageType != null) {
      $result.messageType = messageType;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (messageBody != null) {
      $result.messageBody = messageBody;
    }
    return $result;
  }
  ServiceNotifyToAllGroup._() : super();
  factory ServiceNotifyToAllGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceNotifyToAllGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceNotifyToAllGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.O3, protoName: 'messageType')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'exp', entryClassName: 'ServiceNotifyToAllGroup.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..aOS(4, _omitFieldNames ? '' : 'messageBody', protoName: 'messageBody')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceNotifyToAllGroup clone() => ServiceNotifyToAllGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceNotifyToAllGroup copyWith(void Function(ServiceNotifyToAllGroup) updates) => super.copyWith((message) => updates(message as ServiceNotifyToAllGroup)) as ServiceNotifyToAllGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceNotifyToAllGroup create() => ServiceNotifyToAllGroup._();
  ServiceNotifyToAllGroup createEmptyInstance() => create();
  static $pb.PbList<ServiceNotifyToAllGroup> createRepeated() => $pb.PbList<ServiceNotifyToAllGroup>();
  @$core.pragma('dart2js:noInline')
  static ServiceNotifyToAllGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceNotifyToAllGroup>(create);
  static ServiceNotifyToAllGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $4.PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData($4.PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  $4.PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get messageType => $_getIZ(1);
  @$pb.TagNumber(2)
  set messageType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageType() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get exp => $_getMap(2);

  @$pb.TagNumber(4)
  $core.String get messageBody => $_getSZ(3);
  @$pb.TagNumber(4)
  set messageBody($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageBody() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageBody() => clearField(4);
}

/// topic:"t_service_to_aim_group", channel: "c_service_to_aim_group"
///  服务发送消息到特定群
///  jsStr={"pbCommData":{"msgSn":1000100010001,"srcId":10001,"aimId":10002,"time":1572664086,"exp":{"key1":"value1","key2":"value2"},"serviceType":6},
///       "messageType":12,"exp":{"nkey1":"value1","nkey2":"value2"},"messageBody":"jsonStr"}
/// curl -d '{"pbCommData":{"msgSn":1000100010001,"srcId":10001,"aimId":10002,"time":1572664086,"exp":{"key1":"value1","key2":"value2"},"serviceType":6},"messageType":12,"exp":{"nkey1":"value1","nkey2":"value2"},"messageBody":"jsonStr"}' http://127.0.0.1:4151/pub?topic=t_service_to_aim_group
class ServiceNotifyToAimGroup extends $pb.GeneratedMessage {
  factory ServiceNotifyToAimGroup({
    $4.PBCommData? pbCommData,
    $core.int? messageType,
    $core.Map<$core.String, $core.String>? exp,
    $core.String? messageBody,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (messageType != null) {
      $result.messageType = messageType;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (messageBody != null) {
      $result.messageBody = messageBody;
    }
    return $result;
  }
  ServiceNotifyToAimGroup._() : super();
  factory ServiceNotifyToAimGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceNotifyToAimGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceNotifyToAimGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.O3, protoName: 'messageType')
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'exp', entryClassName: 'ServiceNotifyToAimGroup.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..aOS(5, _omitFieldNames ? '' : 'messageBody', protoName: 'messageBody')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceNotifyToAimGroup clone() => ServiceNotifyToAimGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceNotifyToAimGroup copyWith(void Function(ServiceNotifyToAimGroup) updates) => super.copyWith((message) => updates(message as ServiceNotifyToAimGroup)) as ServiceNotifyToAimGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceNotifyToAimGroup create() => ServiceNotifyToAimGroup._();
  ServiceNotifyToAimGroup createEmptyInstance() => create();
  static $pb.PbList<ServiceNotifyToAimGroup> createRepeated() => $pb.PbList<ServiceNotifyToAimGroup>();
  @$core.pragma('dart2js:noInline')
  static ServiceNotifyToAimGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceNotifyToAimGroup>(create);
  static ServiceNotifyToAimGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $4.PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData($4.PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  $4.PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get messageType => $_getIZ(1);
  @$pb.TagNumber(2)
  set messageType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageType() => clearField(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get exp => $_getMap(2);

  @$pb.TagNumber(5)
  $core.String get messageBody => $_getSZ(3);
  @$pb.TagNumber(5)
  set messageBody($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessageBody() => $_has(3);
  @$pb.TagNumber(5)
  void clearMessageBody() => clearField(5);
}

/// 老版本直播间控制消息同步到IM
/// topic:"t_yx_to_liveroom", channel: "c_yx_to_liveroom"
///  jsStr={"pbCommData":{"msgSn":1000100010001,"srcId":10001,"aimId":10002,"time":1572664086,"exp":{"key1":"value1","key2":"value2"},"serviceType":6},
///       "groupId":100,"messageType":12,"exp":{"nkey1":"value1","nkey2":"value2"},"messageBody":"jsonStr"}
/// curl -d jsStr http://127.0.0.1:4151/pub?topic=t_yx_to_liveroom
class YXLiveRoomNotify extends $pb.GeneratedMessage {
  factory YXLiveRoomNotify({
    $4.PBCommData? pbCommData,
    $fixnum.Int64? groupId,
    YXLiveRoomNotifyType? messageType,
    $core.String? messageBody,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (messageType != null) {
      $result.messageType = messageType;
    }
    if (messageBody != null) {
      $result.messageBody = messageBody;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  YXLiveRoomNotify._() : super();
  factory YXLiveRoomNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory YXLiveRoomNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'YXLiveRoomNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..e<YXLiveRoomNotifyType>(3, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.OE, protoName: 'messageType', defaultOrMaker: YXLiveRoomNotifyType.LIVE_START, valueOf: YXLiveRoomNotifyType.valueOf, enumValues: YXLiveRoomNotifyType.values)
    ..aOS(4, _omitFieldNames ? '' : 'messageBody', protoName: 'messageBody')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'exp', entryClassName: 'YXLiveRoomNotify.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  YXLiveRoomNotify clone() => YXLiveRoomNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  YXLiveRoomNotify copyWith(void Function(YXLiveRoomNotify) updates) => super.copyWith((message) => updates(message as YXLiveRoomNotify)) as YXLiveRoomNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static YXLiveRoomNotify create() => YXLiveRoomNotify._();
  YXLiveRoomNotify createEmptyInstance() => create();
  static $pb.PbList<YXLiveRoomNotify> createRepeated() => $pb.PbList<YXLiveRoomNotify>();
  @$core.pragma('dart2js:noInline')
  static YXLiveRoomNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YXLiveRoomNotify>(create);
  static YXLiveRoomNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $4.PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData($4.PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  $4.PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  YXLiveRoomNotifyType get messageType => $_getN(2);
  @$pb.TagNumber(3)
  set messageType(YXLiveRoomNotifyType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get messageBody => $_getSZ(3);
  @$pb.TagNumber(4)
  set messageBody($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageBody() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageBody() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get exp => $_getMap(4);
}

/// 大奖赛权限变更 t_pk_qualify_change
class PKQualifyChangeNotify extends $pb.GeneratedMessage {
  factory PKQualifyChangeNotify({
    $core.bool? isQualifiedPkTournament,
    $core.String? pkTournamentBeginTime,
    $core.String? pkTounamentTip,
  }) {
    final $result = create();
    if (isQualifiedPkTournament != null) {
      $result.isQualifiedPkTournament = isQualifiedPkTournament;
    }
    if (pkTournamentBeginTime != null) {
      $result.pkTournamentBeginTime = pkTournamentBeginTime;
    }
    if (pkTounamentTip != null) {
      $result.pkTounamentTip = pkTounamentTip;
    }
    return $result;
  }
  PKQualifyChangeNotify._() : super();
  factory PKQualifyChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PKQualifyChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PKQualifyChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isQualifiedPkTournament', protoName: 'isQualifiedPkTournament')
    ..aOS(2, _omitFieldNames ? '' : 'pkTournamentBeginTime', protoName: 'pkTournamentBeginTime')
    ..aOS(3, _omitFieldNames ? '' : 'pkTounamentTip', protoName: 'pkTounamentTip')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PKQualifyChangeNotify clone() => PKQualifyChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PKQualifyChangeNotify copyWith(void Function(PKQualifyChangeNotify) updates) => super.copyWith((message) => updates(message as PKQualifyChangeNotify)) as PKQualifyChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PKQualifyChangeNotify create() => PKQualifyChangeNotify._();
  PKQualifyChangeNotify createEmptyInstance() => create();
  static $pb.PbList<PKQualifyChangeNotify> createRepeated() => $pb.PbList<PKQualifyChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static PKQualifyChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PKQualifyChangeNotify>(create);
  static PKQualifyChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isQualifiedPkTournament => $_getBF(0);
  @$pb.TagNumber(1)
  set isQualifiedPkTournament($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsQualifiedPkTournament() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsQualifiedPkTournament() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pkTournamentBeginTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set pkTournamentBeginTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPkTournamentBeginTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearPkTournamentBeginTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pkTounamentTip => $_getSZ(2);
  @$pb.TagNumber(3)
  set pkTounamentTip($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPkTounamentTip() => $_has(2);
  @$pb.TagNumber(3)
  void clearPkTounamentTip() => clearField(3);
}

/// 三国游戏服务NSQ消息封装消息结构
class TTKNSQMessage extends $pb.GeneratedMessage {
  factory TTKNSQMessage({
    $4.PBCommData? pbCommData,
    $core.String? msgName,
    $core.String? msgData,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (msgName != null) {
      $result.msgName = msgName;
    }
    if (msgData != null) {
      $result.msgData = msgData;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  TTKNSQMessage._() : super();
  factory TTKNSQMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TTKNSQMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TTKNSQMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..aOS(2, _omitFieldNames ? '' : 'msgName', protoName: 'msgName')
    ..aOS(3, _omitFieldNames ? '' : 'msgData', protoName: 'msgData')
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'exp', entryClassName: 'TTKNSQMessage.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TTKNSQMessage clone() => TTKNSQMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TTKNSQMessage copyWith(void Function(TTKNSQMessage) updates) => super.copyWith((message) => updates(message as TTKNSQMessage)) as TTKNSQMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TTKNSQMessage create() => TTKNSQMessage._();
  TTKNSQMessage createEmptyInstance() => create();
  static $pb.PbList<TTKNSQMessage> createRepeated() => $pb.PbList<TTKNSQMessage>();
  @$core.pragma('dart2js:noInline')
  static TTKNSQMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TTKNSQMessage>(create);
  static TTKNSQMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $4.PBCommData get pbCommData => $_getN(0);
  @$pb.TagNumber(1)
  set pbCommData($4.PBCommData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbCommData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbCommData() => clearField(1);
  @$pb.TagNumber(1)
  $4.PBCommData ensurePbCommData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get msgName => $_getSZ(1);
  @$pb.TagNumber(2)
  set msgName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get msgData => $_getSZ(2);
  @$pb.TagNumber(3)
  set msgData($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsgData() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgData() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get exp => $_getMap(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
