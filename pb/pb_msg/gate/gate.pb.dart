//
//  Generated code. Do not modify.
//  source: pb_msg/gate/gate.proto
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
import 'gate.pbenum.dart';

export 'gate.pbenum.dart';

/// 客户端登录请求
class LoginReq extends $pb.GeneratedMessage {
  factory LoginReq({
    $core.String? token,
    LOGIN_TOCKEN_TYPE? tokenType,
    $core.String? gateAddrNew,
    ClientInfo? clientInfo,
    $core.int? version,
    $core.String? deviceToken,
    $core.bool? forceLogin,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (tokenType != null) {
      $result.tokenType = tokenType;
    }
    if (gateAddrNew != null) {
      $result.gateAddrNew = gateAddrNew;
    }
    if (clientInfo != null) {
      $result.clientInfo = clientInfo;
    }
    if (version != null) {
      $result.version = version;
    }
    if (deviceToken != null) {
      $result.deviceToken = deviceToken;
    }
    if (forceLogin != null) {
      $result.forceLogin = forceLogin;
    }
    return $result;
  }
  LoginReq._() : super();
  factory LoginReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_gate'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..e<LOGIN_TOCKEN_TYPE>(3, _omitFieldNames ? '' : 'tokenType', $pb.PbFieldType.OE, defaultOrMaker: LOGIN_TOCKEN_TYPE.LOGIN_TOCKEN_TYPE_JAVA, valueOf: LOGIN_TOCKEN_TYPE.valueOf, enumValues: LOGIN_TOCKEN_TYPE.values)
    ..aOS(4, _omitFieldNames ? '' : 'gateAddrNew')
    ..aOM<ClientInfo>(6, _omitFieldNames ? '' : 'clientInfo', protoName: 'clientInfo', subBuilder: ClientInfo.create)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(8, _omitFieldNames ? '' : 'deviceToken', protoName: 'deviceToken')
    ..aOB(9, _omitFieldNames ? '' : 'forceLogin', protoName: 'forceLogin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginReq clone() => LoginReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginReq copyWith(void Function(LoginReq) updates) => super.copyWith((message) => updates(message as LoginReq)) as LoginReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginReq create() => LoginReq._();
  LoginReq createEmptyInstance() => create();
  static $pb.PbList<LoginReq> createRepeated() => $pb.PbList<LoginReq>();
  @$core.pragma('dart2js:noInline')
  static LoginReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginReq>(create);
  static LoginReq? _defaultInstance;

  /// pb_pub.CHead msg_head = 1;
  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  LOGIN_TOCKEN_TYPE get tokenType => $_getN(1);
  @$pb.TagNumber(3)
  set tokenType(LOGIN_TOCKEN_TYPE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTokenType() => $_has(1);
  @$pb.TagNumber(3)
  void clearTokenType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get gateAddrNew => $_getSZ(2);
  @$pb.TagNumber(4)
  set gateAddrNew($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasGateAddrNew() => $_has(2);
  @$pb.TagNumber(4)
  void clearGateAddrNew() => clearField(4);

  @$pb.TagNumber(6)
  ClientInfo get clientInfo => $_getN(3);
  @$pb.TagNumber(6)
  set clientInfo(ClientInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasClientInfo() => $_has(3);
  @$pb.TagNumber(6)
  void clearClientInfo() => clearField(6);
  @$pb.TagNumber(6)
  ClientInfo ensureClientInfo() => $_ensure(3);

  @$pb.TagNumber(7)
  $core.int get version => $_getIZ(4);
  @$pb.TagNumber(7)
  set version($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(7)
  void clearVersion() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get deviceToken => $_getSZ(5);
  @$pb.TagNumber(8)
  set deviceToken($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeviceToken() => $_has(5);
  @$pb.TagNumber(8)
  void clearDeviceToken() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get forceLogin => $_getBF(6);
  @$pb.TagNumber(9)
  set forceLogin($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasForceLogin() => $_has(6);
  @$pb.TagNumber(9)
  void clearForceLogin() => clearField(9);
}

/// 第三方app登录
class ThirdLoginReq extends $pb.GeneratedMessage {
  factory ThirdLoginReq({
    $core.String? appId,
    $core.String? appSecret,
    $fixnum.Int64? appUserId,
    $core.String? token,
    LOGIN_TOCKEN_TYPE? tokenType,
    $core.String? gateAddrNew,
    $core.int? iMSdkVersion,
    ClientInfo? clientInfo,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (appSecret != null) {
      $result.appSecret = appSecret;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    if (token != null) {
      $result.token = token;
    }
    if (tokenType != null) {
      $result.tokenType = tokenType;
    }
    if (gateAddrNew != null) {
      $result.gateAddrNew = gateAddrNew;
    }
    if (iMSdkVersion != null) {
      $result.iMSdkVersion = iMSdkVersion;
    }
    if (clientInfo != null) {
      $result.clientInfo = clientInfo;
    }
    return $result;
  }
  ThirdLoginReq._() : super();
  factory ThirdLoginReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThirdLoginReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThirdLoginReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_gate'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'AppId', protoName: 'AppId')
    ..aOS(2, _omitFieldNames ? '' : 'AppSecret', protoName: 'AppSecret')
    ..aInt64(3, _omitFieldNames ? '' : 'AppUserId', protoName: 'AppUserId')
    ..aOS(4, _omitFieldNames ? '' : 'token')
    ..e<LOGIN_TOCKEN_TYPE>(5, _omitFieldNames ? '' : 'tokenType', $pb.PbFieldType.OE, defaultOrMaker: LOGIN_TOCKEN_TYPE.LOGIN_TOCKEN_TYPE_JAVA, valueOf: LOGIN_TOCKEN_TYPE.valueOf, enumValues: LOGIN_TOCKEN_TYPE.values)
    ..aOS(6, _omitFieldNames ? '' : 'gateAddrNew')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'IMSdkVersion', $pb.PbFieldType.O3, protoName: 'IMSdkVersion')
    ..aOM<ClientInfo>(8, _omitFieldNames ? '' : 'clientInfo', protoName: 'clientInfo', subBuilder: ClientInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThirdLoginReq clone() => ThirdLoginReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThirdLoginReq copyWith(void Function(ThirdLoginReq) updates) => super.copyWith((message) => updates(message as ThirdLoginReq)) as ThirdLoginReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThirdLoginReq create() => ThirdLoginReq._();
  ThirdLoginReq createEmptyInstance() => create();
  static $pb.PbList<ThirdLoginReq> createRepeated() => $pb.PbList<ThirdLoginReq>();
  @$core.pragma('dart2js:noInline')
  static ThirdLoginReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThirdLoginReq>(create);
  static ThirdLoginReq? _defaultInstance;

  /// 多app登录，如果这两项设置了则使用统一登录认证
  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appSecret => $_getSZ(1);
  @$pb.TagNumber(2)
  set appSecret($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppSecret() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get appUserId => $_getI64(2);
  @$pb.TagNumber(3)
  set appUserId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);

  @$pb.TagNumber(5)
  LOGIN_TOCKEN_TYPE get tokenType => $_getN(4);
  @$pb.TagNumber(5)
  set tokenType(LOGIN_TOCKEN_TYPE v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTokenType() => $_has(4);
  @$pb.TagNumber(5)
  void clearTokenType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get gateAddrNew => $_getSZ(5);
  @$pb.TagNumber(6)
  set gateAddrNew($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGateAddrNew() => $_has(5);
  @$pb.TagNumber(6)
  void clearGateAddrNew() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get iMSdkVersion => $_getIZ(6);
  @$pb.TagNumber(7)
  set iMSdkVersion($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIMSdkVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearIMSdkVersion() => clearField(7);

  @$pb.TagNumber(8)
  ClientInfo get clientInfo => $_getN(7);
  @$pb.TagNumber(8)
  set clientInfo(ClientInfo v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasClientInfo() => $_has(7);
  @$pb.TagNumber(8)
  void clearClientInfo() => clearField(8);
  @$pb.TagNumber(8)
  ClientInfo ensureClientInfo() => $_ensure(7);
}

class ClientInfo extends $pb.GeneratedMessage {
  factory ClientInfo({
    $0.MODEL_TYPE? modelType,
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
  ClientInfo._() : super();
  factory ClientInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_gate'), createEmptyInstance: create)
    ..e<$0.MODEL_TYPE>(1, _omitFieldNames ? '' : 'modelType', $pb.PbFieldType.OE, protoName: 'modelType', defaultOrMaker: $0.MODEL_TYPE.NIL, valueOf: $0.MODEL_TYPE.valueOf, enumValues: $0.MODEL_TYPE.values)
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
  ClientInfo clone() => ClientInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientInfo copyWith(void Function(ClientInfo) updates) => super.copyWith((message) => updates(message as ClientInfo)) as ClientInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientInfo create() => ClientInfo._();
  ClientInfo createEmptyInstance() => create();
  static $pb.PbList<ClientInfo> createRepeated() => $pb.PbList<ClientInfo>();
  @$core.pragma('dart2js:noInline')
  static ClientInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientInfo>(create);
  static ClientInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $0.MODEL_TYPE get modelType => $_getN(0);
  @$pb.TagNumber(1)
  set modelType($0.MODEL_TYPE v) { setField(1, v); }
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

/// 登录结果返回
class LoginRsp extends $pb.GeneratedMessage {
  factory LoginRsp({
    $core.int? result,
    $core.String? reconnectToken,
    $core.String? gateAddrOld,
    $fixnum.Int64? msgSn,
    $fixnum.Int64? appUserIdOld,
    $fixnum.Int64? appId,
    $core.String? appUserId,
    $core.String? deviceToken,
    ClientInfo? otherClientInfo,
    $core.String? reason,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (reconnectToken != null) {
      $result.reconnectToken = reconnectToken;
    }
    if (gateAddrOld != null) {
      $result.gateAddrOld = gateAddrOld;
    }
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (appUserIdOld != null) {
      $result.appUserIdOld = appUserIdOld;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (appUserId != null) {
      $result.appUserId = appUserId;
    }
    if (deviceToken != null) {
      $result.deviceToken = deviceToken;
    }
    if (otherClientInfo != null) {
      $result.otherClientInfo = otherClientInfo;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  LoginRsp._() : super();
  factory LoginRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_gate'), createEmptyInstance: create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'result', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'reconnectToken', protoName: 'reconnectToken')
    ..aOS(4, _omitFieldNames ? '' : 'gateAddrOld')
    ..aInt64(5, _omitFieldNames ? '' : 'msgSn')
    ..aInt64(6, _omitFieldNames ? '' : 'appUserIdOld')
    ..aInt64(7, _omitFieldNames ? '' : 'appId')
    ..aOS(8, _omitFieldNames ? '' : 'appUserId')
    ..aOS(9, _omitFieldNames ? '' : 'deviceToken', protoName: 'deviceToken')
    ..aOM<ClientInfo>(10, _omitFieldNames ? '' : 'otherClientInfo', protoName: 'otherClientInfo', subBuilder: ClientInfo.create)
    ..aOS(11, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRsp clone() => LoginRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRsp copyWith(void Function(LoginRsp) updates) => super.copyWith((message) => updates(message as LoginRsp)) as LoginRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRsp create() => LoginRsp._();
  LoginRsp createEmptyInstance() => create();
  static $pb.PbList<LoginRsp> createRepeated() => $pb.PbList<LoginRsp>();
  @$core.pragma('dart2js:noInline')
  static LoginRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRsp>(create);
  static LoginRsp? _defaultInstance;

  /// pb_pub.CHead msg_head = 1;
  @$pb.TagNumber(2)
  $core.int get result => $_getIZ(0);
  @$pb.TagNumber(2)
  set result($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get reconnectToken => $_getSZ(1);
  @$pb.TagNumber(3)
  set reconnectToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasReconnectToken() => $_has(1);
  @$pb.TagNumber(3)
  void clearReconnectToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get gateAddrOld => $_getSZ(2);
  @$pb.TagNumber(4)
  set gateAddrOld($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasGateAddrOld() => $_has(2);
  @$pb.TagNumber(4)
  void clearGateAddrOld() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get msgSn => $_getI64(3);
  @$pb.TagNumber(5)
  set msgSn($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsgSn() => $_has(3);
  @$pb.TagNumber(5)
  void clearMsgSn() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get appUserIdOld => $_getI64(4);
  @$pb.TagNumber(6)
  set appUserIdOld($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppUserIdOld() => $_has(4);
  @$pb.TagNumber(6)
  void clearAppUserIdOld() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get appId => $_getI64(5);
  @$pb.TagNumber(7)
  set appId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppId() => $_has(5);
  @$pb.TagNumber(7)
  void clearAppId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get appUserId => $_getSZ(6);
  @$pb.TagNumber(8)
  set appUserId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasAppUserId() => $_has(6);
  @$pb.TagNumber(8)
  void clearAppUserId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get deviceToken => $_getSZ(7);
  @$pb.TagNumber(9)
  set deviceToken($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasDeviceToken() => $_has(7);
  @$pb.TagNumber(9)
  void clearDeviceToken() => clearField(9);

  @$pb.TagNumber(10)
  ClientInfo get otherClientInfo => $_getN(8);
  @$pb.TagNumber(10)
  set otherClientInfo(ClientInfo v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasOtherClientInfo() => $_has(8);
  @$pb.TagNumber(10)
  void clearOtherClientInfo() => clearField(10);
  @$pb.TagNumber(10)
  ClientInfo ensureOtherClientInfo() => $_ensure(8);

  @$pb.TagNumber(11)
  $core.String get reason => $_getSZ(9);
  @$pb.TagNumber(11)
  set reason($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasReason() => $_has(9);
  @$pb.TagNumber(11)
  void clearReason() => clearField(11);
}

/// 发送单聊文字
class ChatText extends $pb.GeneratedMessage {
  factory ChatText({
    $fixnum.Int64? aimUserId,
    $0.TextChatType? chatType,
    $core.String? data,
    $core.String? text,
    $core.Map<$core.String, $core.String>? exp,
    $fixnum.Int64? aimUserAppId,
    $core.String? aimUserAppUserId,
  }) {
    final $result = create();
    if (aimUserId != null) {
      $result.aimUserId = aimUserId;
    }
    if (chatType != null) {
      $result.chatType = chatType;
    }
    if (data != null) {
      $result.data = data;
    }
    if (text != null) {
      $result.text = text;
    }
    if (exp != null) {
      $result.exp.addAll(exp);
    }
    if (aimUserAppId != null) {
      $result.aimUserAppId = aimUserAppId;
    }
    if (aimUserAppUserId != null) {
      $result.aimUserAppUserId = aimUserAppUserId;
    }
    return $result;
  }
  ChatText._() : super();
  factory ChatText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatText', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_gate'), createEmptyInstance: create)
    ..aInt64(2, _omitFieldNames ? '' : 'aimUserId')
    ..e<$0.TextChatType>(3, _omitFieldNames ? '' : 'chatType', $pb.PbFieldType.OE, defaultOrMaker: $0.TextChatType.TEXT, valueOf: $0.TextChatType.valueOf, enumValues: $0.TextChatType.values)
    ..aOS(4, _omitFieldNames ? '' : 'data')
    ..aOS(5, _omitFieldNames ? '' : 'text')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'exp', entryClassName: 'ChatText.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_gate'))
    ..aInt64(7, _omitFieldNames ? '' : 'aimUserAppId', protoName: 'aimUserAppId')
    ..aOS(8, _omitFieldNames ? '' : 'aimUserAppUserId', protoName: 'aimUserAppUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatText clone() => ChatText()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatText copyWith(void Function(ChatText) updates) => super.copyWith((message) => updates(message as ChatText)) as ChatText;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatText create() => ChatText._();
  ChatText createEmptyInstance() => create();
  static $pb.PbList<ChatText> createRepeated() => $pb.PbList<ChatText>();
  @$core.pragma('dart2js:noInline')
  static ChatText getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatText>(create);
  static ChatText? _defaultInstance;

  /// pb_pub.CHead msg_head = 1;
  @$pb.TagNumber(2)
  $fixnum.Int64 get aimUserId => $_getI64(0);
  @$pb.TagNumber(2)
  set aimUserId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasAimUserId() => $_has(0);
  @$pb.TagNumber(2)
  void clearAimUserId() => clearField(2);

  @$pb.TagNumber(3)
  $0.TextChatType get chatType => $_getN(1);
  @$pb.TagNumber(3)
  set chatType($0.TextChatType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChatType() => $_has(1);
  @$pb.TagNumber(3)
  void clearChatType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get data => $_getSZ(2);
  @$pb.TagNumber(4)
  set data($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(4)
  void clearData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get text => $_getSZ(3);
  @$pb.TagNumber(5)
  set text($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasText() => $_has(3);
  @$pb.TagNumber(5)
  void clearText() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get exp => $_getMap(4);

  @$pb.TagNumber(7)
  $fixnum.Int64 get aimUserAppId => $_getI64(5);
  @$pb.TagNumber(7)
  set aimUserAppId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasAimUserAppId() => $_has(5);
  @$pb.TagNumber(7)
  void clearAimUserAppId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get aimUserAppUserId => $_getSZ(6);
  @$pb.TagNumber(8)
  set aimUserAppUserId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasAimUserAppUserId() => $_has(6);
  @$pb.TagNumber(8)
  void clearAimUserAppUserId() => clearField(8);
}

/// 新的私信类型,更通用
class ChatMessage extends $pb.GeneratedMessage {
  factory ChatMessage({
    BUSINESS_TYPE? businessType,
    ChatText? text,
  }) {
    final $result = create();
    if (businessType != null) {
      $result.businessType = businessType;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  ChatMessage._() : super();
  factory ChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_gate'), createEmptyInstance: create)
    ..e<BUSINESS_TYPE>(1, _omitFieldNames ? '' : 'businessType', $pb.PbFieldType.OE, protoName: 'businessType', defaultOrMaker: BUSINESS_TYPE.UNKNOWN, valueOf: BUSINESS_TYPE.valueOf, enumValues: BUSINESS_TYPE.values)
    ..aOM<ChatText>(2, _omitFieldNames ? '' : 'text', subBuilder: ChatText.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatMessage clone() => ChatMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatMessage copyWith(void Function(ChatMessage) updates) => super.copyWith((message) => updates(message as ChatMessage)) as ChatMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessage create() => ChatMessage._();
  ChatMessage createEmptyInstance() => create();
  static $pb.PbList<ChatMessage> createRepeated() => $pb.PbList<ChatMessage>();
  @$core.pragma('dart2js:noInline')
  static ChatMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatMessage>(create);
  static ChatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  BUSINESS_TYPE get businessType => $_getN(0);
  @$pb.TagNumber(1)
  set businessType(BUSINESS_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusinessType() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusinessType() => clearField(1);

  @$pb.TagNumber(2)
  ChatText get text => $_getN(1);
  @$pb.TagNumber(2)
  set text(ChatText v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
  @$pb.TagNumber(2)
  ChatText ensureText() => $_ensure(1);
}

class KickOffUser extends $pb.GeneratedMessage {
  factory KickOffUser({
    $fixnum.Int64? optUId,
    $fixnum.Int64? aimUId,
    $core.int? reason,
    $core.String? desc,
    ClientInfo? otherClientInfo,
  }) {
    final $result = create();
    if (optUId != null) {
      $result.optUId = optUId;
    }
    if (aimUId != null) {
      $result.aimUId = aimUId;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (otherClientInfo != null) {
      $result.otherClientInfo = otherClientInfo;
    }
    return $result;
  }
  KickOffUser._() : super();
  factory KickOffUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickOffUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KickOffUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_gate'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'optUId', protoName: 'optUId')
    ..aInt64(2, _omitFieldNames ? '' : 'aimUId', protoName: 'aimUId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'reason', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'desc')
    ..aOM<ClientInfo>(10, _omitFieldNames ? '' : 'otherClientInfo', protoName: 'otherClientInfo', subBuilder: ClientInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickOffUser clone() => KickOffUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickOffUser copyWith(void Function(KickOffUser) updates) => super.copyWith((message) => updates(message as KickOffUser)) as KickOffUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KickOffUser create() => KickOffUser._();
  KickOffUser createEmptyInstance() => create();
  static $pb.PbList<KickOffUser> createRepeated() => $pb.PbList<KickOffUser>();
  @$core.pragma('dart2js:noInline')
  static KickOffUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickOffUser>(create);
  static KickOffUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get optUId => $_getI64(0);
  @$pb.TagNumber(1)
  set optUId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptUId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptUId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get aimUId => $_getI64(1);
  @$pb.TagNumber(2)
  set aimUId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAimUId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAimUId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get reason => $_getIZ(2);
  @$pb.TagNumber(3)
  set reason($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReason() => $_has(2);
  @$pb.TagNumber(3)
  void clearReason() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get desc => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc() => clearField(4);

  @$pb.TagNumber(10)
  ClientInfo get otherClientInfo => $_getN(4);
  @$pb.TagNumber(10)
  set otherClientInfo(ClientInfo v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasOtherClientInfo() => $_has(4);
  @$pb.TagNumber(10)
  void clearOtherClientInfo() => clearField(10);
  @$pb.TagNumber(10)
  ClientInfo ensureOtherClientInfo() => $_ensure(4);
}

/// 通知gate该用户不在群中，gate从群中剔除该用户的转发
/// 只能从服务端发送，客户端来的不处理
class RemoveUserFromGateRoomReq extends $pb.GeneratedMessage {
  factory RemoveUserFromGateRoomReq({
    $fixnum.Int64? userId,
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  RemoveUserFromGateRoomReq._() : super();
  factory RemoveUserFromGateRoomReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveUserFromGateRoomReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveUserFromGateRoomReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_gate'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveUserFromGateRoomReq clone() => RemoveUserFromGateRoomReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveUserFromGateRoomReq copyWith(void Function(RemoveUserFromGateRoomReq) updates) => super.copyWith((message) => updates(message as RemoveUserFromGateRoomReq)) as RemoveUserFromGateRoomReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveUserFromGateRoomReq create() => RemoveUserFromGateRoomReq._();
  RemoveUserFromGateRoomReq createEmptyInstance() => create();
  static $pb.PbList<RemoveUserFromGateRoomReq> createRepeated() => $pb.PbList<RemoveUserFromGateRoomReq>();
  @$core.pragma('dart2js:noInline')
  static RemoveUserFromGateRoomReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveUserFromGateRoomReq>(create);
  static RemoveUserFromGateRoomReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get groupId => $_getI64(1);
  @$pb.TagNumber(2)
  set groupId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
