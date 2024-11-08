//
//  Generated code. Do not modify.
//  source: pb_msg/msg_pusher/msgPusher.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/comm.pbenum.dart' as $0;

/// topic:"t_msg_push_to_aim_user", channel: "c_msg_push_to_aim_user"
///  推送消息到特定用户
///  jsStr={"srcUser":10001,"appList":[{"appName":"YEQU","aimUsers":[10295,16331]},{"appName":"YESE","aimUsers":[16123,15656]}],
///     "params":{"type":1,"roomId":10001,"nickname":"aaa","bigImageOriginal":"bbb"},
///     "title":"title","msg":"msg","exp":{"nkey1":"value1","nkey2":"value2"}}
/// curl -d jsStr http://127.0.0.1:4151/pub?topic=t_msg_to_aim_user
class MsgPushToAimUser extends $pb.GeneratedMessage {
  factory MsgPushToAimUser({
    $fixnum.Int64? srcUser,
    $core.Iterable<AppData>? appList,
    Params? params,
    $core.String? title,
    $core.String? msg,
    $core.Map<$core.String, $core.String>? exp,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (srcUser != null) {
      $result.srcUser = srcUser;
    }
    if (appList != null) {
      $result.appList.addAll(appList);
    }
    if (params != null) {
      $result.params = params;
    }
    if (title != null) {
      $result.title = title;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  MsgPushToAimUser._() : super();
  factory MsgPushToAimUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPushToAimUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPushToAimUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgPusher'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'srcUser', protoName: 'srcUser')
    ..pc<AppData>(2, _omitFieldNames ? '' : 'appList', $pb.PbFieldType.PM, protoName: 'appList', subBuilder: AppData.create)
    ..aOM<Params>(3, _omitFieldNames ? '' : 'params', subBuilder: Params.create)
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'msg')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'exp', entryClassName: 'MsgPushToAimUser.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_msgPusher'))
    ..aInt64(7, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPushToAimUser clone() => MsgPushToAimUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPushToAimUser copyWith(void Function(MsgPushToAimUser) updates) => super.copyWith((message) => updates(message as MsgPushToAimUser)) as MsgPushToAimUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPushToAimUser create() => MsgPushToAimUser._();
  MsgPushToAimUser createEmptyInstance() => create();
  static $pb.PbList<MsgPushToAimUser> createRepeated() => $pb.PbList<MsgPushToAimUser>();
  @$core.pragma('dart2js:noInline')
  static MsgPushToAimUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPushToAimUser>(create);
  static MsgPushToAimUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get srcUser => $_getI64(0);
  @$pb.TagNumber(1)
  set srcUser($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcUser() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<AppData> get appList => $_getList(1);

  @$pb.TagNumber(3)
  Params get params => $_getN(2);
  @$pb.TagNumber(3)
  set params(Params v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearParams() => clearField(3);
  @$pb.TagNumber(3)
  Params ensureParams() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get msg => $_getSZ(4);
  @$pb.TagNumber(5)
  set msg($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsg() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsg() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get exp => $_getMap(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get time => $_getI64(6);
  @$pb.TagNumber(7)
  set time($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearTime() => clearField(7);
}

class AppData extends $pb.GeneratedMessage {
  factory AppData({
    $core.String? appName,
    $core.Iterable<$fixnum.Int64>? userList,
  }) {
    final $result = create();
    if (appName != null) {
      $result.appName = appName;
    }
    if (userList != null) {
      $result.userList.addAll(userList);
    }
    return $result;
  }
  AppData._() : super();
  factory AppData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppData', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgPusher'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'appName', protoName: 'appName')
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'userList', $pb.PbFieldType.K6, protoName: 'userList')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppData clone() => AppData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppData copyWith(void Function(AppData) updates) => super.copyWith((message) => updates(message as AppData)) as AppData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppData create() => AppData._();
  AppData createEmptyInstance() => create();
  static $pb.PbList<AppData> createRepeated() => $pb.PbList<AppData>();
  @$core.pragma('dart2js:noInline')
  static AppData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppData>(create);
  static AppData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appName => $_getSZ(0);
  @$pb.TagNumber(1)
  set appName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get userList => $_getList(1);
}

class Params extends $pb.GeneratedMessage {
  factory Params({
    $core.int? type,
    $fixnum.Int64? roomId,
    $core.String? nickname,
    $core.String? bigImageOriginal,
    $core.String? url,
    $core.Map<$core.String, $core.String>? exp,
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (nickname != null) {
      $result.nickname = nickname;
    }
    if (bigImageOriginal != null) {
      $result.bigImageOriginal = bigImageOriginal;
    }
    if (url != null) {
      $result.url = url;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  Params._() : super();
  factory Params.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Params.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Params', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgPusher'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..aOS(3, _omitFieldNames ? '' : 'nickname')
    ..aOS(4, _omitFieldNames ? '' : 'bigImageOriginal', protoName: 'bigImageOriginal')
    ..aOS(5, _omitFieldNames ? '' : 'url')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'exp', entryClassName: 'Params.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_msgPusher'))
    ..aInt64(7, _omitFieldNames ? '' : 'GroupId', protoName: 'GroupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Params clone() => Params()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Params copyWith(void Function(Params) updates) => super.copyWith((message) => updates(message as Params)) as Params;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Params create() => Params._();
  Params createEmptyInstance() => create();
  static $pb.PbList<Params> createRepeated() => $pb.PbList<Params>();
  @$core.pragma('dart2js:noInline')
  static Params getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Params>(create);
  static Params? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roomId => $_getI64(1);
  @$pb.TagNumber(2)
  set roomId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nickname => $_getSZ(2);
  @$pb.TagNumber(3)
  set nickname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNickname() => $_has(2);
  @$pb.TagNumber(3)
  void clearNickname() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bigImageOriginal => $_getSZ(3);
  @$pb.TagNumber(4)
  set bigImageOriginal($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBigImageOriginal() => $_has(3);
  @$pb.TagNumber(4)
  void clearBigImageOriginal() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get url => $_getSZ(4);
  @$pb.TagNumber(5)
  set url($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get exp => $_getMap(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get groupId => $_getI64(6);
  @$pb.TagNumber(7)
  set groupId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGroupId() => $_has(6);
  @$pb.TagNumber(7)
  void clearGroupId() => clearField(7);
}

/// topic:"t_msg_push_to_all_user", channel: "c_msg_push_to_all_user"
///  推送消息到特定用户
///  jsStr={"srcUser":10001,"params":{"type":1,"roomId":10001,"nickname":"aaa","bigImageOriginal":"bbb"},
///     "appName":"YEQUO","title":"title","msg":"msg","exp":{"nkey1":"value1","nkey2":"value2"}}
/// curl -d jsStr http://127.0.0.1:4151/pub?topic=t_msg_to_all_user
class MsgPushToAllUser extends $pb.GeneratedMessage {
  factory MsgPushToAllUser({
    $fixnum.Int64? srcUser,
    Params? params,
    $core.String? appName,
    $core.String? title,
    $core.String? msg,
    $core.Map<$core.String, $core.String>? exp,
  }) {
    final $result = create();
    if (srcUser != null) {
      $result.srcUser = srcUser;
    }
    if (params != null) {
      $result.params = params;
    }
    if (appName != null) {
      $result.appName = appName;
    }
    if (title != null) {
      $result.title = title;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    return $result;
  }
  MsgPushToAllUser._() : super();
  factory MsgPushToAllUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPushToAllUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPushToAllUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgPusher'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'srcUser', protoName: 'srcUser')
    ..aOM<Params>(2, _omitFieldNames ? '' : 'params', subBuilder: Params.create)
    ..aOS(3, _omitFieldNames ? '' : 'appName', protoName: 'appName')
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'msg')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'exp', entryClassName: 'MsgPushToAllUser.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_msgPusher'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPushToAllUser clone() => MsgPushToAllUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPushToAllUser copyWith(void Function(MsgPushToAllUser) updates) => super.copyWith((message) => updates(message as MsgPushToAllUser)) as MsgPushToAllUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPushToAllUser create() => MsgPushToAllUser._();
  MsgPushToAllUser createEmptyInstance() => create();
  static $pb.PbList<MsgPushToAllUser> createRepeated() => $pb.PbList<MsgPushToAllUser>();
  @$core.pragma('dart2js:noInline')
  static MsgPushToAllUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPushToAllUser>(create);
  static MsgPushToAllUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get srcUser => $_getI64(0);
  @$pb.TagNumber(1)
  set srcUser($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcUser() => clearField(1);

  @$pb.TagNumber(2)
  Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params(Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  Params ensureParams() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get appName => $_getSZ(2);
  @$pb.TagNumber(3)
  set appName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get msg => $_getSZ(4);
  @$pb.TagNumber(5)
  set msg($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsg() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsg() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get exp => $_getMap(5);
}

/// 推送回执
class PushReceiptReq extends $pb.GeneratedMessage {
  factory PushReceiptReq({
    $fixnum.Int64? pushId,
    $core.String? system,
    $core.int? isReceive,
    $core.int? isOpen,
  }) {
    final $result = create();
    if (pushId != null) {
      $result.pushId = pushId;
    }
    if (system != null) {
      $result.system = system;
    }
    if (isReceive != null) {
      $result.isReceive = isReceive;
    }
    if (isOpen != null) {
      $result.isOpen = isOpen;
    }
    return $result;
  }
  PushReceiptReq._() : super();
  factory PushReceiptReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushReceiptReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PushReceiptReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgPusher'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pushId', protoName: 'pushId')
    ..aOS(2, _omitFieldNames ? '' : 'system')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'isReceive', $pb.PbFieldType.O3, protoName: 'isReceive')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'isOpen', $pb.PbFieldType.O3, protoName: 'isOpen')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushReceiptReq clone() => PushReceiptReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushReceiptReq copyWith(void Function(PushReceiptReq) updates) => super.copyWith((message) => updates(message as PushReceiptReq)) as PushReceiptReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PushReceiptReq create() => PushReceiptReq._();
  PushReceiptReq createEmptyInstance() => create();
  static $pb.PbList<PushReceiptReq> createRepeated() => $pb.PbList<PushReceiptReq>();
  @$core.pragma('dart2js:noInline')
  static PushReceiptReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushReceiptReq>(create);
  static PushReceiptReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pushId => $_getI64(0);
  @$pb.TagNumber(1)
  set pushId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPushId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPushId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get system => $_getSZ(1);
  @$pb.TagNumber(2)
  set system($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSystem() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystem() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get isReceive => $_getIZ(2);
  @$pb.TagNumber(3)
  set isReceive($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsReceive() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsReceive() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get isOpen => $_getIZ(3);
  @$pb.TagNumber(4)
  set isOpen($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsOpen() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsOpen() => clearField(4);
}

/// 客户端推送token上报
class PushTokenSyncReq extends $pb.GeneratedMessage {
  factory PushTokenSyncReq({
    $0.MODEL_TYPE? deviceCompany,
    $core.String? pushPlatformAppId,
    $core.String? odid,
    $core.String? aaid,
    $core.String? token,
    $fixnum.Int64? expiredAt,
  }) {
    final $result = create();
    if (deviceCompany != null) {
      $result.deviceCompany = deviceCompany;
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
    if (expiredAt != null) {
      $result.expiredAt = expiredAt;
    }
    return $result;
  }
  PushTokenSyncReq._() : super();
  factory PushTokenSyncReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushTokenSyncReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PushTokenSyncReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgPusher'), createEmptyInstance: create)
    ..e<$0.MODEL_TYPE>(1, _omitFieldNames ? '' : 'DeviceCompany', $pb.PbFieldType.OE, protoName: 'DeviceCompany', defaultOrMaker: $0.MODEL_TYPE.NIL, valueOf: $0.MODEL_TYPE.valueOf, enumValues: $0.MODEL_TYPE.values)
    ..aOS(2, _omitFieldNames ? '' : 'PushPlatformAppId', protoName: 'PushPlatformAppId')
    ..aOS(3, _omitFieldNames ? '' : 'Odid', protoName: 'Odid')
    ..aOS(4, _omitFieldNames ? '' : 'Aaid', protoName: 'Aaid')
    ..aOS(5, _omitFieldNames ? '' : 'Token', protoName: 'Token')
    ..aInt64(6, _omitFieldNames ? '' : 'ExpiredAt', protoName: 'ExpiredAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushTokenSyncReq clone() => PushTokenSyncReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushTokenSyncReq copyWith(void Function(PushTokenSyncReq) updates) => super.copyWith((message) => updates(message as PushTokenSyncReq)) as PushTokenSyncReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PushTokenSyncReq create() => PushTokenSyncReq._();
  PushTokenSyncReq createEmptyInstance() => create();
  static $pb.PbList<PushTokenSyncReq> createRepeated() => $pb.PbList<PushTokenSyncReq>();
  @$core.pragma('dart2js:noInline')
  static PushTokenSyncReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushTokenSyncReq>(create);
  static PushTokenSyncReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.MODEL_TYPE get deviceCompany => $_getN(0);
  @$pb.TagNumber(1)
  set deviceCompany($0.MODEL_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceCompany() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceCompany() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pushPlatformAppId => $_getSZ(1);
  @$pb.TagNumber(2)
  set pushPlatformAppId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPushPlatformAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPushPlatformAppId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get odid => $_getSZ(2);
  @$pb.TagNumber(3)
  set odid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOdid() => $_has(2);
  @$pb.TagNumber(3)
  void clearOdid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get aaid => $_getSZ(3);
  @$pb.TagNumber(4)
  set aaid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAaid() => $_has(3);
  @$pb.TagNumber(4)
  void clearAaid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get token => $_getSZ(4);
  @$pb.TagNumber(5)
  set token($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasToken() => $_has(4);
  @$pb.TagNumber(5)
  void clearToken() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get expiredAt => $_getI64(5);
  @$pb.TagNumber(6)
  set expiredAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExpiredAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearExpiredAt() => clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
