//
//  Generated code. Do not modify.
//  source: pb_grpc/user_center/userCenter.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/comm.pbenum.dart' as $2;
import '../../pb_pub/error_code.pbenum.dart' as $4;

class UserThirdInfoReq extends $pb.GeneratedMessage {
  factory UserThirdInfoReq({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserThirdInfoReq._() : super();
  factory UserThirdInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserThirdInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserThirdInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'UserId', protoName: 'UserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserThirdInfoReq clone() => UserThirdInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserThirdInfoReq copyWith(void Function(UserThirdInfoReq) updates) => super.copyWith((message) => updates(message as UserThirdInfoReq)) as UserThirdInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserThirdInfoReq create() => UserThirdInfoReq._();
  UserThirdInfoReq createEmptyInstance() => create();
  static $pb.PbList<UserThirdInfoReq> createRepeated() => $pb.PbList<UserThirdInfoReq>();
  @$core.pragma('dart2js:noInline')
  static UserThirdInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserThirdInfoReq>(create);
  static UserThirdInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class UserThirdInfoRsp extends $pb.GeneratedMessage {
  factory UserThirdInfoRsp({
    $fixnum.Int64? userId,
    $fixnum.Int64? thirdUserIdOld,
    $fixnum.Int64? thirdAppId,
    $2.USER_STATE_TYPE? state,
    $core.String? thirdUserId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (thirdUserIdOld != null) {
      $result.thirdUserIdOld = thirdUserIdOld;
    }
    if (thirdAppId != null) {
      $result.thirdAppId = thirdAppId;
    }
    if (state != null) {
      $result.state = state;
    }
    if (thirdUserId != null) {
      $result.thirdUserId = thirdUserId;
    }
    return $result;
  }
  UserThirdInfoRsp._() : super();
  factory UserThirdInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserThirdInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserThirdInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'UserId', protoName: 'UserId')
    ..aInt64(2, _omitFieldNames ? '' : 'ThirdUserIdOld', protoName: 'ThirdUserIdOld')
    ..aInt64(3, _omitFieldNames ? '' : 'ThirdAppId', protoName: 'ThirdAppId')
    ..e<$2.USER_STATE_TYPE>(4, _omitFieldNames ? '' : 'State', $pb.PbFieldType.OE, protoName: 'State', defaultOrMaker: $2.USER_STATE_TYPE.USER_STATE_INIT, valueOf: $2.USER_STATE_TYPE.valueOf, enumValues: $2.USER_STATE_TYPE.values)
    ..aOS(5, _omitFieldNames ? '' : 'ThirdUserId', protoName: 'ThirdUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserThirdInfoRsp clone() => UserThirdInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserThirdInfoRsp copyWith(void Function(UserThirdInfoRsp) updates) => super.copyWith((message) => updates(message as UserThirdInfoRsp)) as UserThirdInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserThirdInfoRsp create() => UserThirdInfoRsp._();
  UserThirdInfoRsp createEmptyInstance() => create();
  static $pb.PbList<UserThirdInfoRsp> createRepeated() => $pb.PbList<UserThirdInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static UserThirdInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserThirdInfoRsp>(create);
  static UserThirdInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get thirdUserIdOld => $_getI64(1);
  @$pb.TagNumber(2)
  set thirdUserIdOld($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThirdUserIdOld() => $_has(1);
  @$pb.TagNumber(2)
  void clearThirdUserIdOld() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get thirdAppId => $_getI64(2);
  @$pb.TagNumber(3)
  set thirdAppId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasThirdAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearThirdAppId() => clearField(3);

  @$pb.TagNumber(4)
  $2.USER_STATE_TYPE get state => $_getN(3);
  @$pb.TagNumber(4)
  set state($2.USER_STATE_TYPE v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get thirdUserId => $_getSZ(4);
  @$pb.TagNumber(5)
  set thirdUserId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasThirdUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearThirdUserId() => clearField(5);
}

class UserStateReq extends $pb.GeneratedMessage {
  factory UserStateReq({
    $fixnum.Int64? userId,
    $2.CLIENT_TYPE? clientType,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (clientType != null) {
      $result.clientType = clientType;
    }
    return $result;
  }
  UserStateReq._() : super();
  factory UserStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserStateReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'UserId', protoName: 'UserId')
    ..e<$2.CLIENT_TYPE>(2, _omitFieldNames ? '' : 'clientType', $pb.PbFieldType.OE, protoName: 'clientType', defaultOrMaker: $2.CLIENT_TYPE.NONE, valueOf: $2.CLIENT_TYPE.valueOf, enumValues: $2.CLIENT_TYPE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserStateReq clone() => UserStateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserStateReq copyWith(void Function(UserStateReq) updates) => super.copyWith((message) => updates(message as UserStateReq)) as UserStateReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStateReq create() => UserStateReq._();
  UserStateReq createEmptyInstance() => create();
  static $pb.PbList<UserStateReq> createRepeated() => $pb.PbList<UserStateReq>();
  @$core.pragma('dart2js:noInline')
  static UserStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserStateReq>(create);
  static UserStateReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $2.CLIENT_TYPE get clientType => $_getN(1);
  @$pb.TagNumber(2)
  set clientType($2.CLIENT_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientType() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientType() => clearField(2);
}

class UserStateRsp extends $pb.GeneratedMessage {
  factory UserStateRsp({
    $fixnum.Int64? userId,
    $core.String? gateAddr,
    $2.USER_STATE_TYPE? state,
    $core.bool? switchToBack,
    $core.Iterable<Client>? clients,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (gateAddr != null) {
      $result.gateAddr = gateAddr;
    }
    if (state != null) {
      $result.state = state;
    }
    if (switchToBack != null) {
      $result.switchToBack = switchToBack;
    }
    if (clients != null) {
      $result.clients.addAll(clients);
    }
    return $result;
  }
  UserStateRsp._() : super();
  factory UserStateRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserStateRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserStateRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'UserId', protoName: 'UserId')
    ..aOS(2, _omitFieldNames ? '' : 'GateAddr', protoName: 'GateAddr')
    ..e<$2.USER_STATE_TYPE>(3, _omitFieldNames ? '' : 'State', $pb.PbFieldType.OE, protoName: 'State', defaultOrMaker: $2.USER_STATE_TYPE.USER_STATE_INIT, valueOf: $2.USER_STATE_TYPE.valueOf, enumValues: $2.USER_STATE_TYPE.values)
    ..aOB(4, _omitFieldNames ? '' : 'SwitchToBack', protoName: 'SwitchToBack')
    ..pc<Client>(5, _omitFieldNames ? '' : 'clients', $pb.PbFieldType.PM, subBuilder: Client.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserStateRsp clone() => UserStateRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserStateRsp copyWith(void Function(UserStateRsp) updates) => super.copyWith((message) => updates(message as UserStateRsp)) as UserStateRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStateRsp create() => UserStateRsp._();
  UserStateRsp createEmptyInstance() => create();
  static $pb.PbList<UserStateRsp> createRepeated() => $pb.PbList<UserStateRsp>();
  @$core.pragma('dart2js:noInline')
  static UserStateRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserStateRsp>(create);
  static UserStateRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gateAddr => $_getSZ(1);
  @$pb.TagNumber(2)
  set gateAddr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGateAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearGateAddr() => clearField(2);

  @$pb.TagNumber(3)
  $2.USER_STATE_TYPE get state => $_getN(2);
  @$pb.TagNumber(3)
  set state($2.USER_STATE_TYPE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get switchToBack => $_getBF(3);
  @$pb.TagNumber(4)
  set switchToBack($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSwitchToBack() => $_has(3);
  @$pb.TagNumber(4)
  void clearSwitchToBack() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Client> get clients => $_getList(4);
}

class Client extends $pb.GeneratedMessage {
  factory Client({
    $core.String? gateAddr,
    $2.USER_STATE_TYPE? state,
    $core.bool? switchToBack,
    $2.CLIENT_TYPE? clientType,
  }) {
    final $result = create();
    if (gateAddr != null) {
      $result.gateAddr = gateAddr;
    }
    if (state != null) {
      $result.state = state;
    }
    if (switchToBack != null) {
      $result.switchToBack = switchToBack;
    }
    if (clientType != null) {
      $result.clientType = clientType;
    }
    return $result;
  }
  Client._() : super();
  factory Client.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Client.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Client', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'GateAddr', protoName: 'GateAddr')
    ..e<$2.USER_STATE_TYPE>(2, _omitFieldNames ? '' : 'State', $pb.PbFieldType.OE, protoName: 'State', defaultOrMaker: $2.USER_STATE_TYPE.USER_STATE_INIT, valueOf: $2.USER_STATE_TYPE.valueOf, enumValues: $2.USER_STATE_TYPE.values)
    ..aOB(3, _omitFieldNames ? '' : 'SwitchToBack', protoName: 'SwitchToBack')
    ..e<$2.CLIENT_TYPE>(4, _omitFieldNames ? '' : 'clientType', $pb.PbFieldType.OE, protoName: 'clientType', defaultOrMaker: $2.CLIENT_TYPE.NONE, valueOf: $2.CLIENT_TYPE.valueOf, enumValues: $2.CLIENT_TYPE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Client clone() => Client()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Client copyWith(void Function(Client) updates) => super.copyWith((message) => updates(message as Client)) as Client;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Client create() => Client._();
  Client createEmptyInstance() => create();
  static $pb.PbList<Client> createRepeated() => $pb.PbList<Client>();
  @$core.pragma('dart2js:noInline')
  static Client getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Client>(create);
  static Client? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gateAddr => $_getSZ(0);
  @$pb.TagNumber(1)
  set gateAddr($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGateAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearGateAddr() => clearField(1);

  @$pb.TagNumber(2)
  $2.USER_STATE_TYPE get state => $_getN(1);
  @$pb.TagNumber(2)
  set state($2.USER_STATE_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get switchToBack => $_getBF(2);
  @$pb.TagNumber(3)
  set switchToBack($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSwitchToBack() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwitchToBack() => clearField(3);

  @$pb.TagNumber(4)
  $2.CLIENT_TYPE get clientType => $_getN(3);
  @$pb.TagNumber(4)
  set clientType($2.CLIENT_TYPE v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasClientType() => $_has(3);
  @$pb.TagNumber(4)
  void clearClientType() => clearField(4);
}

class Userstate extends $pb.GeneratedMessage {
  factory Userstate({
    $fixnum.Int64? userId,
    $core.String? gateAddr,
    $2.USER_STATE_TYPE? state,
    $core.bool? switchToBack,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (gateAddr != null) {
      $result.gateAddr = gateAddr;
    }
    if (state != null) {
      $result.state = state;
    }
    if (switchToBack != null) {
      $result.switchToBack = switchToBack;
    }
    return $result;
  }
  Userstate._() : super();
  factory Userstate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Userstate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Userstate', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'UserId', protoName: 'UserId')
    ..aOS(2, _omitFieldNames ? '' : 'GateAddr', protoName: 'GateAddr')
    ..e<$2.USER_STATE_TYPE>(3, _omitFieldNames ? '' : 'State', $pb.PbFieldType.OE, protoName: 'State', defaultOrMaker: $2.USER_STATE_TYPE.USER_STATE_INIT, valueOf: $2.USER_STATE_TYPE.valueOf, enumValues: $2.USER_STATE_TYPE.values)
    ..aOB(4, _omitFieldNames ? '' : 'SwitchToBack', protoName: 'SwitchToBack')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Userstate clone() => Userstate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Userstate copyWith(void Function(Userstate) updates) => super.copyWith((message) => updates(message as Userstate)) as Userstate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Userstate create() => Userstate._();
  Userstate createEmptyInstance() => create();
  static $pb.PbList<Userstate> createRepeated() => $pb.PbList<Userstate>();
  @$core.pragma('dart2js:noInline')
  static Userstate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Userstate>(create);
  static Userstate? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gateAddr => $_getSZ(1);
  @$pb.TagNumber(2)
  set gateAddr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGateAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearGateAddr() => clearField(2);

  @$pb.TagNumber(3)
  $2.USER_STATE_TYPE get state => $_getN(2);
  @$pb.TagNumber(3)
  set state($2.USER_STATE_TYPE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get switchToBack => $_getBF(3);
  @$pb.TagNumber(4)
  set switchToBack($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSwitchToBack() => $_has(3);
  @$pb.TagNumber(4)
  void clearSwitchToBack() => clearField(4);
}

class UserStateChangeReq extends $pb.GeneratedMessage {
  factory UserStateChangeReq({
    $fixnum.Int64? userId,
    $2.USER_STATE_TYPE? state,
    $core.String? gateAddr,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (state != null) {
      $result.state = state;
    }
    if (gateAddr != null) {
      $result.gateAddr = gateAddr;
    }
    return $result;
  }
  UserStateChangeReq._() : super();
  factory UserStateChangeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserStateChangeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserStateChangeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'UserId', protoName: 'UserId')
    ..e<$2.USER_STATE_TYPE>(2, _omitFieldNames ? '' : 'State', $pb.PbFieldType.OE, protoName: 'State', defaultOrMaker: $2.USER_STATE_TYPE.USER_STATE_INIT, valueOf: $2.USER_STATE_TYPE.valueOf, enumValues: $2.USER_STATE_TYPE.values)
    ..aOS(3, _omitFieldNames ? '' : 'GateAddr', protoName: 'GateAddr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserStateChangeReq clone() => UserStateChangeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserStateChangeReq copyWith(void Function(UserStateChangeReq) updates) => super.copyWith((message) => updates(message as UserStateChangeReq)) as UserStateChangeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStateChangeReq create() => UserStateChangeReq._();
  UserStateChangeReq createEmptyInstance() => create();
  static $pb.PbList<UserStateChangeReq> createRepeated() => $pb.PbList<UserStateChangeReq>();
  @$core.pragma('dart2js:noInline')
  static UserStateChangeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserStateChangeReq>(create);
  static UserStateChangeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $2.USER_STATE_TYPE get state => $_getN(1);
  @$pb.TagNumber(2)
  set state($2.USER_STATE_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get gateAddr => $_getSZ(2);
  @$pb.TagNumber(3)
  set gateAddr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGateAddr() => $_has(2);
  @$pb.TagNumber(3)
  void clearGateAddr() => clearField(3);
}

class UserLoginReq extends $pb.GeneratedMessage {
  factory UserLoginReq({
    $fixnum.Int64? appId,
    $core.String? secret,
    $core.String? unionId,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (secret != null) {
      $result.secret = secret;
    }
    if (unionId != null) {
      $result.unionId = unionId;
    }
    return $result;
  }
  UserLoginReq._() : super();
  factory UserLoginReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLoginReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLoginReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'AppId', protoName: 'AppId')
    ..aOS(2, _omitFieldNames ? '' : 'Secret', protoName: 'Secret')
    ..aOS(3, _omitFieldNames ? '' : 'UnionId', protoName: 'UnionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLoginReq clone() => UserLoginReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLoginReq copyWith(void Function(UserLoginReq) updates) => super.copyWith((message) => updates(message as UserLoginReq)) as UserLoginReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLoginReq create() => UserLoginReq._();
  UserLoginReq createEmptyInstance() => create();
  static $pb.PbList<UserLoginReq> createRepeated() => $pb.PbList<UserLoginReq>();
  @$core.pragma('dart2js:noInline')
  static UserLoginReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLoginReq>(create);
  static UserLoginReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get appId => $_getI64(0);
  @$pb.TagNumber(1)
  set appId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secret => $_getSZ(1);
  @$pb.TagNumber(2)
  set secret($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecret() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get unionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set unionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnionId() => clearField(3);
}

class UserLoginRsp extends $pb.GeneratedMessage {
  factory UserLoginRsp({
    $4.ErrCode? result,
    $fixnum.Int64? userID,
    $core.String? token,
    $core.String? tokenVersion,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (userID != null) {
      $result.userID = userID;
    }
    if (token != null) {
      $result.token = token;
    }
    if (tokenVersion != null) {
      $result.tokenVersion = tokenVersion;
    }
    return $result;
  }
  UserLoginRsp._() : super();
  factory UserLoginRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLoginRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLoginRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..e<$4.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $4.ErrCode.SUCCESS, valueOf: $4.ErrCode.valueOf, enumValues: $4.ErrCode.values)
    ..aInt64(2, _omitFieldNames ? '' : 'UserID', protoName: 'UserID')
    ..aOS(3, _omitFieldNames ? '' : 'Token', protoName: 'Token')
    ..aOS(4, _omitFieldNames ? '' : 'TokenVersion', protoName: 'TokenVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLoginRsp clone() => UserLoginRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLoginRsp copyWith(void Function(UserLoginRsp) updates) => super.copyWith((message) => updates(message as UserLoginRsp)) as UserLoginRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLoginRsp create() => UserLoginRsp._();
  UserLoginRsp createEmptyInstance() => create();
  static $pb.PbList<UserLoginRsp> createRepeated() => $pb.PbList<UserLoginRsp>();
  @$core.pragma('dart2js:noInline')
  static UserLoginRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLoginRsp>(create);
  static UserLoginRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $4.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userID => $_getI64(1);
  @$pb.TagNumber(2)
  set userID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tokenVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set tokenVersion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTokenVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearTokenVersion() => clearField(4);
}

class SetProfileReq extends $pb.GeneratedMessage {
  factory SetProfileReq({
    $fixnum.Int64? userID,
    $core.String? nickName,
    $fixnum.Int64? gender,
    $core.String? language,
    $core.String? city,
    $core.String? province,
    $core.String? country,
    $core.String? avatarUrl,
  }) {
    final $result = create();
    if (userID != null) {
      $result.userID = userID;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (language != null) {
      $result.language = language;
    }
    if (city != null) {
      $result.city = city;
    }
    if (province != null) {
      $result.province = province;
    }
    if (country != null) {
      $result.country = country;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    return $result;
  }
  SetProfileReq._() : super();
  factory SetProfileReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetProfileReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetProfileReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'UserID', protoName: 'UserID')
    ..aOS(2, _omitFieldNames ? '' : 'NickName', protoName: 'NickName')
    ..aInt64(3, _omitFieldNames ? '' : 'Gender', protoName: 'Gender')
    ..aOS(4, _omitFieldNames ? '' : 'Language', protoName: 'Language')
    ..aOS(5, _omitFieldNames ? '' : 'City', protoName: 'City')
    ..aOS(6, _omitFieldNames ? '' : 'Province', protoName: 'Province')
    ..aOS(7, _omitFieldNames ? '' : 'Country', protoName: 'Country')
    ..aOS(8, _omitFieldNames ? '' : 'AvatarUrl', protoName: 'AvatarUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetProfileReq clone() => SetProfileReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetProfileReq copyWith(void Function(SetProfileReq) updates) => super.copyWith((message) => updates(message as SetProfileReq)) as SetProfileReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetProfileReq create() => SetProfileReq._();
  SetProfileReq createEmptyInstance() => create();
  static $pb.PbList<SetProfileReq> createRepeated() => $pb.PbList<SetProfileReq>();
  @$core.pragma('dart2js:noInline')
  static SetProfileReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetProfileReq>(create);
  static SetProfileReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userID => $_getI64(0);
  @$pb.TagNumber(1)
  set userID($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nickName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNickName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNickName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get gender => $_getI64(2);
  @$pb.TagNumber(3)
  set gender($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGender() => $_has(2);
  @$pb.TagNumber(3)
  void clearGender() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get language => $_getSZ(3);
  @$pb.TagNumber(4)
  set language($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLanguage() => $_has(3);
  @$pb.TagNumber(4)
  void clearLanguage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get city => $_getSZ(4);
  @$pb.TagNumber(5)
  set city($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCity() => $_has(4);
  @$pb.TagNumber(5)
  void clearCity() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get province => $_getSZ(5);
  @$pb.TagNumber(6)
  set province($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProvince() => $_has(5);
  @$pb.TagNumber(6)
  void clearProvince() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get country => $_getSZ(6);
  @$pb.TagNumber(7)
  set country($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCountry() => $_has(6);
  @$pb.TagNumber(7)
  void clearCountry() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get avatarUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set avatarUrl($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvatarUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvatarUrl() => clearField(8);
}

class SetProfileRsp extends $pb.GeneratedMessage {
  factory SetProfileRsp({
    $4.ErrCode? result,
    $fixnum.Int64? userID,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (userID != null) {
      $result.userID = userID;
    }
    return $result;
  }
  SetProfileRsp._() : super();
  factory SetProfileRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetProfileRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetProfileRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_userCenter'), createEmptyInstance: create)
    ..e<$4.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $4.ErrCode.SUCCESS, valueOf: $4.ErrCode.valueOf, enumValues: $4.ErrCode.values)
    ..aInt64(2, _omitFieldNames ? '' : 'UserID', protoName: 'UserID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetProfileRsp clone() => SetProfileRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetProfileRsp copyWith(void Function(SetProfileRsp) updates) => super.copyWith((message) => updates(message as SetProfileRsp)) as SetProfileRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetProfileRsp create() => SetProfileRsp._();
  SetProfileRsp createEmptyInstance() => create();
  static $pb.PbList<SetProfileRsp> createRepeated() => $pb.PbList<SetProfileRsp>();
  @$core.pragma('dart2js:noInline')
  static SetProfileRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetProfileRsp>(create);
  static SetProfileRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $4.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userID => $_getI64(1);
  @$pb.TagNumber(2)
  set userID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserID() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
