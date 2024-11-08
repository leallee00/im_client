//
//  Generated code. Do not modify.
//  source: pb_msg/commim_uaa/commim_uaa.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/rpc/status.pb.dart' as $0;
import '../../pb_pub/comm.pbenum.dart' as $1;
import 'commim_uaa.pbenum.dart';

export 'commim_uaa.pbenum.dart';

/// 检查账号是否存在
class CheckAccountExistReq extends $pb.GeneratedMessage {
  factory CheckAccountExistReq({
    $core.String? account,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    return $result;
  }
  CheckAccountExistReq._() : super();
  factory CheckAccountExistReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckAccountExistReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckAccountExistReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'account')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckAccountExistReq clone() => CheckAccountExistReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckAccountExistReq copyWith(void Function(CheckAccountExistReq) updates) => super.copyWith((message) => updates(message as CheckAccountExistReq)) as CheckAccountExistReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckAccountExistReq create() => CheckAccountExistReq._();
  CheckAccountExistReq createEmptyInstance() => create();
  static $pb.PbList<CheckAccountExistReq> createRepeated() => $pb.PbList<CheckAccountExistReq>();
  @$core.pragma('dart2js:noInline')
  static CheckAccountExistReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckAccountExistReq>(create);
  static CheckAccountExistReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
}

class CheckAccountExistRsp extends $pb.GeneratedMessage {
  factory CheckAccountExistRsp({
    $core.String? account,
    $core.bool? exist,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    if (exist != null) {
      $result.exist = exist;
    }
    return $result;
  }
  CheckAccountExistRsp._() : super();
  factory CheckAccountExistRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckAccountExistRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckAccountExistRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'account')
    ..aOB(2, _omitFieldNames ? '' : 'Exist', protoName: 'Exist')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckAccountExistRsp clone() => CheckAccountExistRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckAccountExistRsp copyWith(void Function(CheckAccountExistRsp) updates) => super.copyWith((message) => updates(message as CheckAccountExistRsp)) as CheckAccountExistRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckAccountExistRsp create() => CheckAccountExistRsp._();
  CheckAccountExistRsp createEmptyInstance() => create();
  static $pb.PbList<CheckAccountExistRsp> createRepeated() => $pb.PbList<CheckAccountExistRsp>();
  @$core.pragma('dart2js:noInline')
  static CheckAccountExistRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckAccountExistRsp>(create);
  static CheckAccountExistRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get exist => $_getBF(1);
  @$pb.TagNumber(2)
  set exist($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExist() => $_has(1);
  @$pb.TagNumber(2)
  void clearExist() => clearField(2);
}

/// // 用户注册
/// // 用户可以 username 或 phone 或 email 注册, 注册时只需填写一个, 填使用第一个非空值
class SignupReq extends $pb.GeneratedMessage {
  factory SignupReq({
    $core.String? username,
    $core.String? phone,
    $core.String? email,
    $core.String? password,
    $core.int? code,
    $core.String? nickname,
    $core.String? sysInviteCode,
    $core.String? avatar,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (code != null) {
      $result.code = code;
    }
    if (nickname != null) {
      $result.nickname = nickname;
    }
    if (sysInviteCode != null) {
      $result.sysInviteCode = sysInviteCode;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  SignupReq._() : super();
  factory SignupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignupReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'phone')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'password')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'nickname')
    ..aOS(7, _omitFieldNames ? '' : 'sysInviteCode', protoName: 'sysInviteCode')
    ..aOS(8, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignupReq clone() => SignupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignupReq copyWith(void Function(SignupReq) updates) => super.copyWith((message) => updates(message as SignupReq)) as SignupReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignupReq create() => SignupReq._();
  SignupReq createEmptyInstance() => create();
  static $pb.PbList<SignupReq> createRepeated() => $pb.PbList<SignupReq>();
  @$core.pragma('dart2js:noInline')
  static SignupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignupReq>(create);
  static SignupReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get phone => $_getSZ(1);
  @$pb.TagNumber(2)
  set phone($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhone() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get code => $_getIZ(4);
  @$pb.TagNumber(5)
  set code($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get nickname => $_getSZ(5);
  @$pb.TagNumber(6)
  set nickname($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNickname() => $_has(5);
  @$pb.TagNumber(6)
  void clearNickname() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get sysInviteCode => $_getSZ(6);
  @$pb.TagNumber(7)
  set sysInviteCode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSysInviteCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearSysInviteCode() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get avatar => $_getSZ(7);
  @$pb.TagNumber(8)
  set avatar($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvatar() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvatar() => clearField(8);
}

class SignupRsp extends $pb.GeneratedMessage {
  factory SignupRsp({
    UserInfo? info,
    $core.String? token,
    $core.String? imToken,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    if (token != null) {
      $result.token = token;
    }
    if (imToken != null) {
      $result.imToken = imToken;
    }
    return $result;
  }
  SignupRsp._() : super();
  factory SignupRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignupRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignupRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<UserInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: UserInfo.create)
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..aOS(3, _omitFieldNames ? '' : 'imToken', protoName: 'imToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignupRsp clone() => SignupRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignupRsp copyWith(void Function(SignupRsp) updates) => super.copyWith((message) => updates(message as SignupRsp)) as SignupRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignupRsp create() => SignupRsp._();
  SignupRsp createEmptyInstance() => create();
  static $pb.PbList<SignupRsp> createRepeated() => $pb.PbList<SignupRsp>();
  @$core.pragma('dart2js:noInline')
  static SignupRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignupRsp>(create);
  static SignupRsp? _defaultInstance;

  @$pb.TagNumber(1)
  UserInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(UserInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  UserInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set imToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearImToken() => clearField(3);
}

/// 注销账号
class UnregisterReq extends $pb.GeneratedMessage {
  factory UnregisterReq({
    $core.String? account,
    $core.String? phone,
    $core.String? email,
    $core.String? password,
    $core.int? code,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  UnregisterReq._() : super();
  factory UnregisterReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnregisterReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnregisterReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'account')
    ..aOS(2, _omitFieldNames ? '' : 'phone')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'password')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnregisterReq clone() => UnregisterReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnregisterReq copyWith(void Function(UnregisterReq) updates) => super.copyWith((message) => updates(message as UnregisterReq)) as UnregisterReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnregisterReq create() => UnregisterReq._();
  UnregisterReq createEmptyInstance() => create();
  static $pb.PbList<UnregisterReq> createRepeated() => $pb.PbList<UnregisterReq>();
  @$core.pragma('dart2js:noInline')
  static UnregisterReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnregisterReq>(create);
  static UnregisterReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get phone => $_getSZ(1);
  @$pb.TagNumber(2)
  set phone($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhone() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get code => $_getIZ(4);
  @$pb.TagNumber(5)
  set code($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearCode() => clearField(5);
}

/// 发送手机验证码
class SendPhoneCodeReq extends $pb.GeneratedMessage {
  factory SendPhoneCodeReq({
    $core.String? phoneNo,
    $core.String? code,
  }) {
    final $result = create();
    if (phoneNo != null) {
      $result.phoneNo = phoneNo;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  SendPhoneCodeReq._() : super();
  factory SendPhoneCodeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendPhoneCodeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendPhoneCodeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'PhoneNo', protoName: 'PhoneNo')
    ..aOS(2, _omitFieldNames ? '' : 'Code', protoName: 'Code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendPhoneCodeReq clone() => SendPhoneCodeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendPhoneCodeReq copyWith(void Function(SendPhoneCodeReq) updates) => super.copyWith((message) => updates(message as SendPhoneCodeReq)) as SendPhoneCodeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendPhoneCodeReq create() => SendPhoneCodeReq._();
  SendPhoneCodeReq createEmptyInstance() => create();
  static $pb.PbList<SendPhoneCodeReq> createRepeated() => $pb.PbList<SendPhoneCodeReq>();
  @$core.pragma('dart2js:noInline')
  static SendPhoneCodeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendPhoneCodeReq>(create);
  static SendPhoneCodeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phoneNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
}

/// 发送邮件验证码
class SendEmailCodeReq extends $pb.GeneratedMessage {
  factory SendEmailCodeReq({
    $core.String? emailAddr,
    $core.String? code,
  }) {
    final $result = create();
    if (emailAddr != null) {
      $result.emailAddr = emailAddr;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  SendEmailCodeReq._() : super();
  factory SendEmailCodeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendEmailCodeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendEmailCodeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'EmailAddr', protoName: 'EmailAddr')
    ..aOS(2, _omitFieldNames ? '' : 'Code', protoName: 'Code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendEmailCodeReq clone() => SendEmailCodeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendEmailCodeReq copyWith(void Function(SendEmailCodeReq) updates) => super.copyWith((message) => updates(message as SendEmailCodeReq)) as SendEmailCodeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendEmailCodeReq create() => SendEmailCodeReq._();
  SendEmailCodeReq createEmptyInstance() => create();
  static $pb.PbList<SendEmailCodeReq> createRepeated() => $pb.PbList<SendEmailCodeReq>();
  @$core.pragma('dart2js:noInline')
  static SendEmailCodeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendEmailCodeReq>(create);
  static SendEmailCodeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emailAddr => $_getSZ(0);
  @$pb.TagNumber(1)
  set emailAddr($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmailAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmailAddr() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
}

/// 用户登录
class LoginReq extends $pb.GeneratedMessage {
  factory LoginReq({
    $core.String? username,
    $core.String? phone,
    $core.String? email,
    $core.String? password,
    $core.int? code,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  LoginReq._() : super();
  factory LoginReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'phone')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'password')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
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

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get phone => $_getSZ(1);
  @$pb.TagNumber(2)
  set phone($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhone() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get code => $_getIZ(4);
  @$pb.TagNumber(5)
  set code($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearCode() => clearField(5);
}

class LoginRsp extends $pb.GeneratedMessage {
  factory LoginRsp({
    UserInfo? info,
    $core.String? token,
    $core.String? imToken,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    if (token != null) {
      $result.token = token;
    }
    if (imToken != null) {
      $result.imToken = imToken;
    }
    return $result;
  }
  LoginRsp._() : super();
  factory LoginRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<UserInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: UserInfo.create)
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..aOS(3, _omitFieldNames ? '' : 'imToken', protoName: 'imToken')
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

  @$pb.TagNumber(1)
  UserInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(UserInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  UserInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set imToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearImToken() => clearField(3);
}

class UserInfo extends $pb.GeneratedMessage {
  factory UserInfo({
    $core.String? userId,
    $core.String? username,
    $fixnum.Int64? imId,
    $core.String? phone,
    $core.String? email,
    $core.String? nickname,
    $core.int? role,
    $core.String? avatar,
    $core.bool? banned,
    $core.int? gender,
    $core.String? sign,
    $core.int? level,
    $core.int? userSourceVersion,
    $core.String? passWord,
    $core.String? code,
    $core.bool? freeAddMeFriend,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (imId != null) {
      $result.imId = imId;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (email != null) {
      $result.email = email;
    }
    if (nickname != null) {
      $result.nickname = nickname;
    }
    if (role != null) {
      $result.role = role;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (banned != null) {
      $result.banned = banned;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (sign != null) {
      $result.sign = sign;
    }
    if (level != null) {
      $result.level = level;
    }
    if (userSourceVersion != null) {
      $result.userSourceVersion = userSourceVersion;
    }
    if (passWord != null) {
      $result.passWord = passWord;
    }
    if (code != null) {
      $result.code = code;
    }
    if (freeAddMeFriend != null) {
      $result.freeAddMeFriend = freeAddMeFriend;
    }
    return $result;
  }
  UserInfo._() : super();
  factory UserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aInt64(3, _omitFieldNames ? '' : 'imId', protoName: 'imId')
    ..aOS(4, _omitFieldNames ? '' : 'phone')
    ..aOS(5, _omitFieldNames ? '' : 'email')
    ..aOS(6, _omitFieldNames ? '' : 'nickname')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'role', $pb.PbFieldType.O3)
    ..aOS(8, _omitFieldNames ? '' : 'avatar')
    ..aOB(9, _omitFieldNames ? '' : 'banned')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.O3)
    ..aOS(11, _omitFieldNames ? '' : 'sign')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'level', $pb.PbFieldType.O3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'userSourceVersion', $pb.PbFieldType.O3, protoName: 'userSourceVersion')
    ..aOS(14, _omitFieldNames ? '' : 'passWord', protoName: 'passWord')
    ..aOS(15, _omitFieldNames ? '' : 'code')
    ..aOB(16, _omitFieldNames ? '' : 'freeAddMeFriend', protoName: 'freeAddMeFriend')
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
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get imId => $_getI64(2);
  @$pb.TagNumber(3)
  set imId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImId() => $_has(2);
  @$pb.TagNumber(3)
  void clearImId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get nickname => $_getSZ(5);
  @$pb.TagNumber(6)
  set nickname($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNickname() => $_has(5);
  @$pb.TagNumber(6)
  void clearNickname() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get role => $_getIZ(6);
  @$pb.TagNumber(7)
  set role($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRole() => $_has(6);
  @$pb.TagNumber(7)
  void clearRole() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get avatar => $_getSZ(7);
  @$pb.TagNumber(8)
  set avatar($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvatar() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvatar() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get banned => $_getBF(8);
  @$pb.TagNumber(9)
  set banned($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBanned() => $_has(8);
  @$pb.TagNumber(9)
  void clearBanned() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get gender => $_getIZ(9);
  @$pb.TagNumber(10)
  set gender($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasGender() => $_has(9);
  @$pb.TagNumber(10)
  void clearGender() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get sign => $_getSZ(10);
  @$pb.TagNumber(11)
  set sign($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSign() => $_has(10);
  @$pb.TagNumber(11)
  void clearSign() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get level => $_getIZ(11);
  @$pb.TagNumber(12)
  set level($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLevel() => $_has(11);
  @$pb.TagNumber(12)
  void clearLevel() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get userSourceVersion => $_getIZ(12);
  @$pb.TagNumber(13)
  set userSourceVersion($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUserSourceVersion() => $_has(12);
  @$pb.TagNumber(13)
  void clearUserSourceVersion() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get passWord => $_getSZ(13);
  @$pb.TagNumber(14)
  set passWord($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPassWord() => $_has(13);
  @$pb.TagNumber(14)
  void clearPassWord() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get code => $_getSZ(14);
  @$pb.TagNumber(15)
  set code($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCode() => $_has(14);
  @$pb.TagNumber(15)
  void clearCode() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get freeAddMeFriend => $_getBF(15);
  @$pb.TagNumber(16)
  set freeAddMeFriend($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasFreeAddMeFriend() => $_has(15);
  @$pb.TagNumber(16)
  void clearFreeAddMeFriend() => clearField(16);
}

/// 获取用心信息
class UserInfoReq extends $pb.GeneratedMessage {
  factory UserInfoReq() => create();
  UserInfoReq._() : super();
  factory UserInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoReq clone() => UserInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoReq copyWith(void Function(UserInfoReq) updates) => super.copyWith((message) => updates(message as UserInfoReq)) as UserInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfoReq create() => UserInfoReq._();
  UserInfoReq createEmptyInstance() => create();
  static $pb.PbList<UserInfoReq> createRepeated() => $pb.PbList<UserInfoReq>();
  @$core.pragma('dart2js:noInline')
  static UserInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoReq>(create);
  static UserInfoReq? _defaultInstance;
}

class UserInfoRsp extends $pb.GeneratedMessage {
  factory UserInfoRsp({
    UserInfo? info,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  UserInfoRsp._() : super();
  factory UserInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<UserInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: UserInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoRsp clone() => UserInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoRsp copyWith(void Function(UserInfoRsp) updates) => super.copyWith((message) => updates(message as UserInfoRsp)) as UserInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfoRsp create() => UserInfoRsp._();
  UserInfoRsp createEmptyInstance() => create();
  static $pb.PbList<UserInfoRsp> createRepeated() => $pb.PbList<UserInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static UserInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoRsp>(create);
  static UserInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  UserInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(UserInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  UserInfo ensureInfo() => $_ensure(0);
}

/// 查找用户，给imid，账号，手机号，邮箱其中的一个，都进行精确匹配
class FindUserInfoIntellReq extends $pb.GeneratedMessage {
  factory FindUserInfoIntellReq({
    $core.String? param,
  }) {
    final $result = create();
    if (param != null) {
      $result.param = param;
    }
    return $result;
  }
  FindUserInfoIntellReq._() : super();
  factory FindUserInfoIntellReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindUserInfoIntellReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindUserInfoIntellReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'param')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindUserInfoIntellReq clone() => FindUserInfoIntellReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindUserInfoIntellReq copyWith(void Function(FindUserInfoIntellReq) updates) => super.copyWith((message) => updates(message as FindUserInfoIntellReq)) as FindUserInfoIntellReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindUserInfoIntellReq create() => FindUserInfoIntellReq._();
  FindUserInfoIntellReq createEmptyInstance() => create();
  static $pb.PbList<FindUserInfoIntellReq> createRepeated() => $pb.PbList<FindUserInfoIntellReq>();
  @$core.pragma('dart2js:noInline')
  static FindUserInfoIntellReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindUserInfoIntellReq>(create);
  static FindUserInfoIntellReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get param => $_getSZ(0);
  @$pb.TagNumber(1)
  set param($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParam() => $_has(0);
  @$pb.TagNumber(1)
  void clearParam() => clearField(1);
}

/// 更新用户信息
class UpdateUserInfoReq extends $pb.GeneratedMessage {
  factory UpdateUserInfoReq({
    $core.String? userId,
    UserInfo? info,
    $core.Iterable<$core.String>? keys,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (info != null) {
      $result.info = info;
    }
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  UpdateUserInfoReq._() : super();
  factory UpdateUserInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOM<UserInfo>(2, _omitFieldNames ? '' : 'info', subBuilder: UserInfo.create)
    ..pPS(3, _omitFieldNames ? '' : 'keys')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserInfoReq clone() => UpdateUserInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserInfoReq copyWith(void Function(UpdateUserInfoReq) updates) => super.copyWith((message) => updates(message as UpdateUserInfoReq)) as UpdateUserInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserInfoReq create() => UpdateUserInfoReq._();
  UpdateUserInfoReq createEmptyInstance() => create();
  static $pb.PbList<UpdateUserInfoReq> createRepeated() => $pb.PbList<UpdateUserInfoReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserInfoReq>(create);
  static UpdateUserInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  UserInfo get info => $_getN(1);
  @$pb.TagNumber(2)
  set info(UserInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearInfo() => clearField(2);
  @$pb.TagNumber(2)
  UserInfo ensureInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get keys => $_getList(2);
}

class UpdateUserInfoRsp extends $pb.GeneratedMessage {
  factory UpdateUserInfoRsp({
    $core.int? userSourceNewVersion,
  }) {
    final $result = create();
    if (userSourceNewVersion != null) {
      $result.userSourceNewVersion = userSourceNewVersion;
    }
    return $result;
  }
  UpdateUserInfoRsp._() : super();
  factory UpdateUserInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userSourceNewVersion', $pb.PbFieldType.O3, protoName: 'userSourceNewVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserInfoRsp clone() => UpdateUserInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserInfoRsp copyWith(void Function(UpdateUserInfoRsp) updates) => super.copyWith((message) => updates(message as UpdateUserInfoRsp)) as UpdateUserInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserInfoRsp create() => UpdateUserInfoRsp._();
  UpdateUserInfoRsp createEmptyInstance() => create();
  static $pb.PbList<UpdateUserInfoRsp> createRepeated() => $pb.PbList<UpdateUserInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserInfoRsp>(create);
  static UpdateUserInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userSourceNewVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set userSourceNewVersion($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserSourceNewVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserSourceNewVersion() => clearField(1);
}

/// 后台通知im，通过后台封禁了用户
class BannedUserNotify extends $pb.GeneratedMessage {
  factory BannedUserNotify({
    $core.String? optUaaUserId,
    $core.String? aimUaaUserId,
    $core.String? reason,
    $core.bool? banned,
  }) {
    final $result = create();
    if (optUaaUserId != null) {
      $result.optUaaUserId = optUaaUserId;
    }
    if (aimUaaUserId != null) {
      $result.aimUaaUserId = aimUaaUserId;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (banned != null) {
      $result.banned = banned;
    }
    return $result;
  }
  BannedUserNotify._() : super();
  factory BannedUserNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BannedUserNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BannedUserNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'optUaaUserId', protoName: 'optUaaUserId')
    ..aOS(2, _omitFieldNames ? '' : 'aimUaaUserId', protoName: 'aimUaaUserId')
    ..aOS(3, _omitFieldNames ? '' : 'reason')
    ..aOB(4, _omitFieldNames ? '' : 'banned')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BannedUserNotify clone() => BannedUserNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BannedUserNotify copyWith(void Function(BannedUserNotify) updates) => super.copyWith((message) => updates(message as BannedUserNotify)) as BannedUserNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BannedUserNotify create() => BannedUserNotify._();
  BannedUserNotify createEmptyInstance() => create();
  static $pb.PbList<BannedUserNotify> createRepeated() => $pb.PbList<BannedUserNotify>();
  @$core.pragma('dart2js:noInline')
  static BannedUserNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BannedUserNotify>(create);
  static BannedUserNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get optUaaUserId => $_getSZ(0);
  @$pb.TagNumber(1)
  set optUaaUserId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptUaaUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptUaaUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get aimUaaUserId => $_getSZ(1);
  @$pb.TagNumber(2)
  set aimUaaUserId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAimUaaUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAimUaaUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get reason => $_getSZ(2);
  @$pb.TagNumber(3)
  set reason($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReason() => $_has(2);
  @$pb.TagNumber(3)
  void clearReason() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get banned => $_getBF(3);
  @$pb.TagNumber(4)
  set banned($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBanned() => $_has(3);
  @$pb.TagNumber(4)
  void clearBanned() => clearField(4);
}

class Suggest extends $pb.GeneratedMessage {
  factory Suggest({
    $fixnum.Int64? id,
    $core.String? suggest,
    $core.int? type,
    $core.int? kind,
    $core.int? emergentLevel,
    $core.int? replyCount,
    $core.int? state,
    $fixnum.Int64? userId,
    $fixnum.Int64? replyUserId,
    $fixnum.Int64? closeUserId,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
    $core.String? results,
    $fixnum.Int64? relationSuggestId,
    $fixnum.Int64? problemTime,
    $core.String? pics,
    $core.String? phoneNo,
    $fixnum.Int64? associationId,
    $core.String? associationInfo,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (suggest != null) {
      $result.suggest = suggest;
    }
    if (type != null) {
      $result.type = type;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (emergentLevel != null) {
      $result.emergentLevel = emergentLevel;
    }
    if (replyCount != null) {
      $result.replyCount = replyCount;
    }
    if (state != null) {
      $result.state = state;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (replyUserId != null) {
      $result.replyUserId = replyUserId;
    }
    if (closeUserId != null) {
      $result.closeUserId = closeUserId;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (results != null) {
      $result.results = results;
    }
    if (relationSuggestId != null) {
      $result.relationSuggestId = relationSuggestId;
    }
    if (problemTime != null) {
      $result.problemTime = problemTime;
    }
    if (pics != null) {
      $result.pics = pics;
    }
    if (phoneNo != null) {
      $result.phoneNo = phoneNo;
    }
    if (associationId != null) {
      $result.associationId = associationId;
    }
    if (associationInfo != null) {
      $result.associationInfo = associationInfo;
    }
    return $result;
  }
  Suggest._() : super();
  factory Suggest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Suggest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Suggest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'suggest')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'emergentLevel', $pb.PbFieldType.O3, protoName: 'emergentLevel')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'replyCount', $pb.PbFieldType.O3, protoName: 'replyCount')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..aInt64(8, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(9, _omitFieldNames ? '' : 'replyUserId', protoName: 'replyUserId')
    ..aInt64(10, _omitFieldNames ? '' : 'closeUserId', protoName: 'closeUserId')
    ..aInt64(11, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aInt64(12, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..aOS(13, _omitFieldNames ? '' : 'results')
    ..aInt64(14, _omitFieldNames ? '' : 'relationSuggestId', protoName: 'relationSuggestId')
    ..aInt64(15, _omitFieldNames ? '' : 'ProblemTime', protoName: 'ProblemTime')
    ..aOS(16, _omitFieldNames ? '' : 'Pics', protoName: 'Pics')
    ..aOS(17, _omitFieldNames ? '' : 'PhoneNo', protoName: 'PhoneNo')
    ..aInt64(18, _omitFieldNames ? '' : 'associationId', protoName: 'associationId')
    ..aOS(19, _omitFieldNames ? '' : 'associationInfo', protoName: 'associationInfo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Suggest clone() => Suggest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Suggest copyWith(void Function(Suggest) updates) => super.copyWith((message) => updates(message as Suggest)) as Suggest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Suggest create() => Suggest._();
  Suggest createEmptyInstance() => create();
  static $pb.PbList<Suggest> createRepeated() => $pb.PbList<Suggest>();
  @$core.pragma('dart2js:noInline')
  static Suggest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Suggest>(create);
  static Suggest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get suggest => $_getSZ(1);
  @$pb.TagNumber(2)
  set suggest($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuggest() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuggest() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get kind => $_getIZ(3);
  @$pb.TagNumber(4)
  set kind($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKind() => $_has(3);
  @$pb.TagNumber(4)
  void clearKind() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get emergentLevel => $_getIZ(4);
  @$pb.TagNumber(5)
  set emergentLevel($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmergentLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmergentLevel() => clearField(5);

  /// 其他属性
  @$pb.TagNumber(6)
  $core.int get replyCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set replyCount($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReplyCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearReplyCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get state => $_getIZ(6);
  @$pb.TagNumber(7)
  set state($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasState() => $_has(6);
  @$pb.TagNumber(7)
  void clearState() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get userId => $_getI64(7);
  @$pb.TagNumber(8)
  set userId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserId() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserId() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get replyUserId => $_getI64(8);
  @$pb.TagNumber(9)
  set replyUserId($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasReplyUserId() => $_has(8);
  @$pb.TagNumber(9)
  void clearReplyUserId() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get closeUserId => $_getI64(9);
  @$pb.TagNumber(10)
  set closeUserId($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCloseUserId() => $_has(9);
  @$pb.TagNumber(10)
  void clearCloseUserId() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get createdAt => $_getI64(10);
  @$pb.TagNumber(11)
  set createdAt($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedAt() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get updatedAt => $_getI64(11);
  @$pb.TagNumber(12)
  set updatedAt($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUpdatedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearUpdatedAt() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get results => $_getSZ(12);
  @$pb.TagNumber(13)
  set results($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasResults() => $_has(12);
  @$pb.TagNumber(13)
  void clearResults() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get relationSuggestId => $_getI64(13);
  @$pb.TagNumber(14)
  set relationSuggestId($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRelationSuggestId() => $_has(13);
  @$pb.TagNumber(14)
  void clearRelationSuggestId() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get problemTime => $_getI64(14);
  @$pb.TagNumber(15)
  set problemTime($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasProblemTime() => $_has(14);
  @$pb.TagNumber(15)
  void clearProblemTime() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get pics => $_getSZ(15);
  @$pb.TagNumber(16)
  set pics($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasPics() => $_has(15);
  @$pb.TagNumber(16)
  void clearPics() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get phoneNo => $_getSZ(16);
  @$pb.TagNumber(17)
  set phoneNo($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPhoneNo() => $_has(16);
  @$pb.TagNumber(17)
  void clearPhoneNo() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get associationId => $_getI64(17);
  @$pb.TagNumber(18)
  set associationId($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasAssociationId() => $_has(17);
  @$pb.TagNumber(18)
  void clearAssociationId() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get associationInfo => $_getSZ(18);
  @$pb.TagNumber(19)
  set associationInfo($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasAssociationInfo() => $_has(18);
  @$pb.TagNumber(19)
  void clearAssociationInfo() => clearField(19);
}

class SuggestReply extends $pb.GeneratedMessage {
  factory SuggestReply({
    $fixnum.Int64? id,
    $fixnum.Int64? suggestId,
    $fixnum.Int64? relationReplyId,
    $core.String? reply,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
    $fixnum.Int64? replyUserId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (suggestId != null) {
      $result.suggestId = suggestId;
    }
    if (relationReplyId != null) {
      $result.relationReplyId = relationReplyId;
    }
    if (reply != null) {
      $result.reply = reply;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (replyUserId != null) {
      $result.replyUserId = replyUserId;
    }
    return $result;
  }
  SuggestReply._() : super();
  factory SuggestReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SuggestReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuggestReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'suggestId', protoName: 'suggestId')
    ..aInt64(3, _omitFieldNames ? '' : 'relationReplyId', protoName: 'relationReplyId')
    ..aOS(4, _omitFieldNames ? '' : 'reply')
    ..aInt64(5, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aInt64(6, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..aInt64(7, _omitFieldNames ? '' : 'replyUserId', protoName: 'replyUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SuggestReply clone() => SuggestReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SuggestReply copyWith(void Function(SuggestReply) updates) => super.copyWith((message) => updates(message as SuggestReply)) as SuggestReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuggestReply create() => SuggestReply._();
  SuggestReply createEmptyInstance() => create();
  static $pb.PbList<SuggestReply> createRepeated() => $pb.PbList<SuggestReply>();
  @$core.pragma('dart2js:noInline')
  static SuggestReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuggestReply>(create);
  static SuggestReply? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get suggestId => $_getI64(1);
  @$pb.TagNumber(2)
  set suggestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuggestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuggestId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get relationReplyId => $_getI64(2);
  @$pb.TagNumber(3)
  set relationReplyId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRelationReplyId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRelationReplyId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reply => $_getSZ(3);
  @$pb.TagNumber(4)
  set reply($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReply() => $_has(3);
  @$pb.TagNumber(4)
  void clearReply() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updatedAt => $_getI64(5);
  @$pb.TagNumber(6)
  set updatedAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get replyUserId => $_getI64(6);
  @$pb.TagNumber(7)
  set replyUserId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReplyUserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearReplyUserId() => clearField(7);
}

/// //////////////////////////////////////////////////////////////////////////////////////////////////
///  投诉建议
/// rpc AddSuggest (pb_msg_commim_uaa.AddSuggestReq) returns (pb_msg_commim_uaa.AddSuggestRsp); // 新建
class AddSuggestReq extends $pb.GeneratedMessage {
  factory AddSuggestReq({
    $core.int? type,
    $core.int? kind,
    $core.String? suggest,
    $core.int? emergentLevel,
    $fixnum.Int64? relationSuggestId,
    Suggest? suggestData,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (suggest != null) {
      $result.suggest = suggest;
    }
    if (emergentLevel != null) {
      $result.emergentLevel = emergentLevel;
    }
    if (relationSuggestId != null) {
      $result.relationSuggestId = relationSuggestId;
    }
    if (suggestData != null) {
      $result.suggestData = suggestData;
    }
    return $result;
  }
  AddSuggestReq._() : super();
  factory AddSuggestReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSuggestReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSuggestReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'suggest')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'emergentLevel', $pb.PbFieldType.O3, protoName: 'emergentLevel')
    ..aInt64(5, _omitFieldNames ? '' : 'relationSuggestId', protoName: 'relationSuggestId')
    ..aOM<Suggest>(6, _omitFieldNames ? '' : 'suggestData', protoName: 'suggestData', subBuilder: Suggest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSuggestReq clone() => AddSuggestReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSuggestReq copyWith(void Function(AddSuggestReq) updates) => super.copyWith((message) => updates(message as AddSuggestReq)) as AddSuggestReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSuggestReq create() => AddSuggestReq._();
  AddSuggestReq createEmptyInstance() => create();
  static $pb.PbList<AddSuggestReq> createRepeated() => $pb.PbList<AddSuggestReq>();
  @$core.pragma('dart2js:noInline')
  static AddSuggestReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSuggestReq>(create);
  static AddSuggestReq? _defaultInstance;

  /// /////////////////////////
  ///  这个放弃 放到结构体里
  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get kind => $_getIZ(1);
  @$pb.TagNumber(2)
  set kind($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get suggest => $_getSZ(2);
  @$pb.TagNumber(3)
  set suggest($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSuggest() => $_has(2);
  @$pb.TagNumber(3)
  void clearSuggest() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get emergentLevel => $_getIZ(3);
  @$pb.TagNumber(4)
  set emergentLevel($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmergentLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmergentLevel() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get relationSuggestId => $_getI64(4);
  @$pb.TagNumber(5)
  set relationSuggestId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRelationSuggestId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRelationSuggestId() => clearField(5);

  @$pb.TagNumber(6)
  Suggest get suggestData => $_getN(5);
  @$pb.TagNumber(6)
  set suggestData(Suggest v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSuggestData() => $_has(5);
  @$pb.TagNumber(6)
  void clearSuggestData() => clearField(6);
  @$pb.TagNumber(6)
  Suggest ensureSuggestData() => $_ensure(5);
}

class AddSuggestRsp extends $pb.GeneratedMessage {
  factory AddSuggestRsp({
    Suggest? suggest,
  }) {
    final $result = create();
    if (suggest != null) {
      $result.suggest = suggest;
    }
    return $result;
  }
  AddSuggestRsp._() : super();
  factory AddSuggestRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSuggestRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSuggestRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<Suggest>(1, _omitFieldNames ? '' : 'suggest', subBuilder: Suggest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSuggestRsp clone() => AddSuggestRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSuggestRsp copyWith(void Function(AddSuggestRsp) updates) => super.copyWith((message) => updates(message as AddSuggestRsp)) as AddSuggestRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSuggestRsp create() => AddSuggestRsp._();
  AddSuggestRsp createEmptyInstance() => create();
  static $pb.PbList<AddSuggestRsp> createRepeated() => $pb.PbList<AddSuggestRsp>();
  @$core.pragma('dart2js:noInline')
  static AddSuggestRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSuggestRsp>(create);
  static AddSuggestRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Suggest get suggest => $_getN(0);
  @$pb.TagNumber(1)
  set suggest(Suggest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuggest() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggest() => clearField(1);
  @$pb.TagNumber(1)
  Suggest ensureSuggest() => $_ensure(0);
}

/// rpc GetSuggestList (pb_msg_commim_uaa.GetSuggestListReq) returns (pb_msg_commim_uaa.GetSuggestListRsp); // 获取列表，只能获取自己的
class GetSuggestListReq extends $pb.GeneratedMessage {
  factory GetSuggestListReq({
    $core.int? page,
    $core.int? pageSize,
    $core.int? totalCount,
    Suggest? suggestCondition,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (suggestCondition != null) {
      $result.suggestCondition = suggestCondition;
    }
    return $result;
  }
  GetSuggestListReq._() : super();
  factory GetSuggestListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSuggestListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSuggestListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3, protoName: 'totalCount')
    ..aOM<Suggest>(4, _omitFieldNames ? '' : 'suggestCondition', protoName: 'suggestCondition', subBuilder: Suggest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSuggestListReq clone() => GetSuggestListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSuggestListReq copyWith(void Function(GetSuggestListReq) updates) => super.copyWith((message) => updates(message as GetSuggestListReq)) as GetSuggestListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSuggestListReq create() => GetSuggestListReq._();
  GetSuggestListReq createEmptyInstance() => create();
  static $pb.PbList<GetSuggestListReq> createRepeated() => $pb.PbList<GetSuggestListReq>();
  @$core.pragma('dart2js:noInline')
  static GetSuggestListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSuggestListReq>(create);
  static GetSuggestListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  Suggest get suggestCondition => $_getN(3);
  @$pb.TagNumber(4)
  set suggestCondition(Suggest v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSuggestCondition() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuggestCondition() => clearField(4);
  @$pb.TagNumber(4)
  Suggest ensureSuggestCondition() => $_ensure(3);
}

class GetSuggestListRsp extends $pb.GeneratedMessage {
  factory GetSuggestListRsp({
    $core.int? page,
    $core.int? pageSize,
    $core.int? totalCount,
    $core.Iterable<Suggest>? suggestList,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (suggestList != null) {
      $result.suggestList.addAll(suggestList);
    }
    return $result;
  }
  GetSuggestListRsp._() : super();
  factory GetSuggestListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSuggestListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSuggestListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3, protoName: 'totalCount')
    ..pc<Suggest>(4, _omitFieldNames ? '' : 'suggestList', $pb.PbFieldType.PM, protoName: 'suggestList', subBuilder: Suggest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSuggestListRsp clone() => GetSuggestListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSuggestListRsp copyWith(void Function(GetSuggestListRsp) updates) => super.copyWith((message) => updates(message as GetSuggestListRsp)) as GetSuggestListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSuggestListRsp create() => GetSuggestListRsp._();
  GetSuggestListRsp createEmptyInstance() => create();
  static $pb.PbList<GetSuggestListRsp> createRepeated() => $pb.PbList<GetSuggestListRsp>();
  @$core.pragma('dart2js:noInline')
  static GetSuggestListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSuggestListRsp>(create);
  static GetSuggestListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Suggest> get suggestList => $_getList(3);
}

/// rpc AddSuggestReply (pb_msg_commim_uaa.AddSuggestReplyReq) returns (pb_msg_commim_uaa.AddSuggestReplyRsp); // 获取列表，只能获取自己的
class AddSuggestReplyReq extends $pb.GeneratedMessage {
  factory AddSuggestReplyReq({
    $fixnum.Int64? suggestId,
    $fixnum.Int64? relationReplyId,
    $core.String? reply,
  }) {
    final $result = create();
    if (suggestId != null) {
      $result.suggestId = suggestId;
    }
    if (relationReplyId != null) {
      $result.relationReplyId = relationReplyId;
    }
    if (reply != null) {
      $result.reply = reply;
    }
    return $result;
  }
  AddSuggestReplyReq._() : super();
  factory AddSuggestReplyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSuggestReplyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSuggestReplyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'suggestId', protoName: 'suggestId')
    ..aInt64(2, _omitFieldNames ? '' : 'relationReplyId', protoName: 'relationReplyId')
    ..aOS(3, _omitFieldNames ? '' : 'reply')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSuggestReplyReq clone() => AddSuggestReplyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSuggestReplyReq copyWith(void Function(AddSuggestReplyReq) updates) => super.copyWith((message) => updates(message as AddSuggestReplyReq)) as AddSuggestReplyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSuggestReplyReq create() => AddSuggestReplyReq._();
  AddSuggestReplyReq createEmptyInstance() => create();
  static $pb.PbList<AddSuggestReplyReq> createRepeated() => $pb.PbList<AddSuggestReplyReq>();
  @$core.pragma('dart2js:noInline')
  static AddSuggestReplyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSuggestReplyReq>(create);
  static AddSuggestReplyReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get suggestId => $_getI64(0);
  @$pb.TagNumber(1)
  set suggestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuggestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get relationReplyId => $_getI64(1);
  @$pb.TagNumber(2)
  set relationReplyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRelationReplyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRelationReplyId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get reply => $_getSZ(2);
  @$pb.TagNumber(3)
  set reply($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReply() => $_has(2);
  @$pb.TagNumber(3)
  void clearReply() => clearField(3);
}

class AddSuggestReplyRsp extends $pb.GeneratedMessage {
  factory AddSuggestReplyRsp({
    SuggestReply? suggestReply,
  }) {
    final $result = create();
    if (suggestReply != null) {
      $result.suggestReply = suggestReply;
    }
    return $result;
  }
  AddSuggestReplyRsp._() : super();
  factory AddSuggestReplyRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSuggestReplyRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSuggestReplyRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<SuggestReply>(1, _omitFieldNames ? '' : 'suggestReply', protoName: 'suggestReply', subBuilder: SuggestReply.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSuggestReplyRsp clone() => AddSuggestReplyRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSuggestReplyRsp copyWith(void Function(AddSuggestReplyRsp) updates) => super.copyWith((message) => updates(message as AddSuggestReplyRsp)) as AddSuggestReplyRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSuggestReplyRsp create() => AddSuggestReplyRsp._();
  AddSuggestReplyRsp createEmptyInstance() => create();
  static $pb.PbList<AddSuggestReplyRsp> createRepeated() => $pb.PbList<AddSuggestReplyRsp>();
  @$core.pragma('dart2js:noInline')
  static AddSuggestReplyRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSuggestReplyRsp>(create);
  static AddSuggestReplyRsp? _defaultInstance;

  @$pb.TagNumber(1)
  SuggestReply get suggestReply => $_getN(0);
  @$pb.TagNumber(1)
  set suggestReply(SuggestReply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuggestReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggestReply() => clearField(1);
  @$pb.TagNumber(1)
  SuggestReply ensureSuggestReply() => $_ensure(0);
}

/// rpc GetSuggestDetail (pb_msg_commim_uaa.GetSuggestDetailReq) returns (pb_msg_commim_uaa.GetSuggestDetailRsp); // 获取详情，只能获取自己的
class GetSuggestDetailReq extends $pb.GeneratedMessage {
  factory GetSuggestDetailReq({
    $fixnum.Int64? suggestId,
  }) {
    final $result = create();
    if (suggestId != null) {
      $result.suggestId = suggestId;
    }
    return $result;
  }
  GetSuggestDetailReq._() : super();
  factory GetSuggestDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSuggestDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSuggestDetailReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'SuggestId', protoName: 'SuggestId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSuggestDetailReq clone() => GetSuggestDetailReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSuggestDetailReq copyWith(void Function(GetSuggestDetailReq) updates) => super.copyWith((message) => updates(message as GetSuggestDetailReq)) as GetSuggestDetailReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSuggestDetailReq create() => GetSuggestDetailReq._();
  GetSuggestDetailReq createEmptyInstance() => create();
  static $pb.PbList<GetSuggestDetailReq> createRepeated() => $pb.PbList<GetSuggestDetailReq>();
  @$core.pragma('dart2js:noInline')
  static GetSuggestDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSuggestDetailReq>(create);
  static GetSuggestDetailReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get suggestId => $_getI64(0);
  @$pb.TagNumber(1)
  set suggestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuggestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggestId() => clearField(1);
}

class GetSuggestDetailRsp extends $pb.GeneratedMessage {
  factory GetSuggestDetailRsp({
    Suggest? suggest,
  }) {
    final $result = create();
    if (suggest != null) {
      $result.suggest = suggest;
    }
    return $result;
  }
  GetSuggestDetailRsp._() : super();
  factory GetSuggestDetailRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSuggestDetailRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSuggestDetailRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<Suggest>(1, _omitFieldNames ? '' : 'suggest', subBuilder: Suggest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSuggestDetailRsp clone() => GetSuggestDetailRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSuggestDetailRsp copyWith(void Function(GetSuggestDetailRsp) updates) => super.copyWith((message) => updates(message as GetSuggestDetailRsp)) as GetSuggestDetailRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSuggestDetailRsp create() => GetSuggestDetailRsp._();
  GetSuggestDetailRsp createEmptyInstance() => create();
  static $pb.PbList<GetSuggestDetailRsp> createRepeated() => $pb.PbList<GetSuggestDetailRsp>();
  @$core.pragma('dart2js:noInline')
  static GetSuggestDetailRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSuggestDetailRsp>(create);
  static GetSuggestDetailRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Suggest get suggest => $_getN(0);
  @$pb.TagNumber(1)
  set suggest(Suggest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuggest() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggest() => clearField(1);
  @$pb.TagNumber(1)
  Suggest ensureSuggest() => $_ensure(0);
}

/// rpc GetSuggestReplyList (pb_msg_commim_uaa.GetSuggestReplyListReq) returns (pb_msg_commim_uaa.GetSuggestReplyListRsp); // 获取列表，只能获取自己的
class GetSuggestReplyListReq extends $pb.GeneratedMessage {
  factory GetSuggestReplyListReq({
    $core.int? page,
    $core.int? pageSize,
    $core.int? totalCount,
    $fixnum.Int64? suggestId,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (suggestId != null) {
      $result.suggestId = suggestId;
    }
    return $result;
  }
  GetSuggestReplyListReq._() : super();
  factory GetSuggestReplyListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSuggestReplyListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSuggestReplyListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3, protoName: 'totalCount')
    ..aInt64(4, _omitFieldNames ? '' : 'SuggestId', protoName: 'SuggestId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSuggestReplyListReq clone() => GetSuggestReplyListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSuggestReplyListReq copyWith(void Function(GetSuggestReplyListReq) updates) => super.copyWith((message) => updates(message as GetSuggestReplyListReq)) as GetSuggestReplyListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSuggestReplyListReq create() => GetSuggestReplyListReq._();
  GetSuggestReplyListReq createEmptyInstance() => create();
  static $pb.PbList<GetSuggestReplyListReq> createRepeated() => $pb.PbList<GetSuggestReplyListReq>();
  @$core.pragma('dart2js:noInline')
  static GetSuggestReplyListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSuggestReplyListReq>(create);
  static GetSuggestReplyListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get suggestId => $_getI64(3);
  @$pb.TagNumber(4)
  set suggestId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSuggestId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuggestId() => clearField(4);
}

class GetSuggestReplyListRsp extends $pb.GeneratedMessage {
  factory GetSuggestReplyListRsp({
    $core.int? page,
    $core.int? pageSize,
    $core.int? totalCount,
    $fixnum.Int64? suggestId,
    $core.Iterable<SuggestReply>? suggestReplyList,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (suggestId != null) {
      $result.suggestId = suggestId;
    }
    if (suggestReplyList != null) {
      $result.suggestReplyList.addAll(suggestReplyList);
    }
    return $result;
  }
  GetSuggestReplyListRsp._() : super();
  factory GetSuggestReplyListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSuggestReplyListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSuggestReplyListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3, protoName: 'totalCount')
    ..aInt64(4, _omitFieldNames ? '' : 'SuggestId', protoName: 'SuggestId')
    ..pc<SuggestReply>(5, _omitFieldNames ? '' : 'suggestReplyList', $pb.PbFieldType.PM, protoName: 'suggestReplyList', subBuilder: SuggestReply.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSuggestReplyListRsp clone() => GetSuggestReplyListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSuggestReplyListRsp copyWith(void Function(GetSuggestReplyListRsp) updates) => super.copyWith((message) => updates(message as GetSuggestReplyListRsp)) as GetSuggestReplyListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSuggestReplyListRsp create() => GetSuggestReplyListRsp._();
  GetSuggestReplyListRsp createEmptyInstance() => create();
  static $pb.PbList<GetSuggestReplyListRsp> createRepeated() => $pb.PbList<GetSuggestReplyListRsp>();
  @$core.pragma('dart2js:noInline')
  static GetSuggestReplyListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSuggestReplyListRsp>(create);
  static GetSuggestReplyListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get suggestId => $_getI64(3);
  @$pb.TagNumber(4)
  set suggestId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSuggestId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuggestId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<SuggestReply> get suggestReplyList => $_getList(4);
}

/// rpc SetSuggestStatus (pb_msg_commim_uaa.SetSuggestStatusReq) returns (pb_msg_commim_uaa.SetSuggestReplyStatusRsp); // 设置处理结果状态 满意，不满意，未解决等
class SetSuggestStatusReq extends $pb.GeneratedMessage {
  factory SetSuggestStatusReq({
    $fixnum.Int64? suggestId,
    $core.int? status,
  }) {
    final $result = create();
    if (suggestId != null) {
      $result.suggestId = suggestId;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetSuggestStatusReq._() : super();
  factory SetSuggestStatusReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSuggestStatusReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetSuggestStatusReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'suggestId', protoName: 'suggestId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSuggestStatusReq clone() => SetSuggestStatusReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSuggestStatusReq copyWith(void Function(SetSuggestStatusReq) updates) => super.copyWith((message) => updates(message as SetSuggestStatusReq)) as SetSuggestStatusReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSuggestStatusReq create() => SetSuggestStatusReq._();
  SetSuggestStatusReq createEmptyInstance() => create();
  static $pb.PbList<SetSuggestStatusReq> createRepeated() => $pb.PbList<SetSuggestStatusReq>();
  @$core.pragma('dart2js:noInline')
  static SetSuggestStatusReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSuggestStatusReq>(create);
  static SetSuggestStatusReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get suggestId => $_getI64(0);
  @$pb.TagNumber(1)
  set suggestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuggestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class SetSuggestReplyStatusRsp extends $pb.GeneratedMessage {
  factory SetSuggestReplyStatusRsp({
    $fixnum.Int64? suggestId,
    $core.int? status,
  }) {
    final $result = create();
    if (suggestId != null) {
      $result.suggestId = suggestId;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetSuggestReplyStatusRsp._() : super();
  factory SetSuggestReplyStatusRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSuggestReplyStatusRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetSuggestReplyStatusRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'suggestId', protoName: 'suggestId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSuggestReplyStatusRsp clone() => SetSuggestReplyStatusRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSuggestReplyStatusRsp copyWith(void Function(SetSuggestReplyStatusRsp) updates) => super.copyWith((message) => updates(message as SetSuggestReplyStatusRsp)) as SetSuggestReplyStatusRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSuggestReplyStatusRsp create() => SetSuggestReplyStatusRsp._();
  SetSuggestReplyStatusRsp createEmptyInstance() => create();
  static $pb.PbList<SetSuggestReplyStatusRsp> createRepeated() => $pb.PbList<SetSuggestReplyStatusRsp>();
  @$core.pragma('dart2js:noInline')
  static SetSuggestReplyStatusRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSuggestReplyStatusRsp>(create);
  static SetSuggestReplyStatusRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get suggestId => $_getI64(0);
  @$pb.TagNumber(1)
  set suggestId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuggestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

/// //////////////////////////////////////////////////////////////////////////////////////////////////
///  version 版本管理，自动升级
class CheckVersionReq extends $pb.GeneratedMessage {
  factory CheckVersionReq({
    $fixnum.Int64? version,
    $1.CLIENT_RUN_ENV_TYPE? clientRunEnv,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (clientRunEnv != null) {
      $result.clientRunEnv = clientRunEnv;
    }
    return $result;
  }
  CheckVersionReq._() : super();
  factory CheckVersionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckVersionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckVersionReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'version')
    ..e<$1.CLIENT_RUN_ENV_TYPE>(2, _omitFieldNames ? '' : 'clientRunEnv', $pb.PbFieldType.OE, protoName: 'clientRunEnv', defaultOrMaker: $1.CLIENT_RUN_ENV_TYPE.ANDROID, valueOf: $1.CLIENT_RUN_ENV_TYPE.valueOf, enumValues: $1.CLIENT_RUN_ENV_TYPE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckVersionReq clone() => CheckVersionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckVersionReq copyWith(void Function(CheckVersionReq) updates) => super.copyWith((message) => updates(message as CheckVersionReq)) as CheckVersionReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckVersionReq create() => CheckVersionReq._();
  CheckVersionReq createEmptyInstance() => create();
  static $pb.PbList<CheckVersionReq> createRepeated() => $pb.PbList<CheckVersionReq>();
  @$core.pragma('dart2js:noInline')
  static CheckVersionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckVersionReq>(create);
  static CheckVersionReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get version => $_getI64(0);
  @$pb.TagNumber(1)
  set version($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $1.CLIENT_RUN_ENV_TYPE get clientRunEnv => $_getN(1);
  @$pb.TagNumber(2)
  set clientRunEnv($1.CLIENT_RUN_ENV_TYPE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientRunEnv() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientRunEnv() => clearField(2);
}

class CheckVersionRsp extends $pb.GeneratedMessage {
  factory CheckVersionRsp({
    $fixnum.Int64? latestVersion,
    $core.bool? needForcedUpdate,
    $core.String? url,
    $core.String? versionDesc,
    $1.CLIENT_RUN_ENV_TYPE? clientRunEnv,
    $core.bool? needCleanCatchData,
  }) {
    final $result = create();
    if (latestVersion != null) {
      $result.latestVersion = latestVersion;
    }
    if (needForcedUpdate != null) {
      $result.needForcedUpdate = needForcedUpdate;
    }
    if (url != null) {
      $result.url = url;
    }
    if (versionDesc != null) {
      $result.versionDesc = versionDesc;
    }
    if (clientRunEnv != null) {
      $result.clientRunEnv = clientRunEnv;
    }
    if (needCleanCatchData != null) {
      $result.needCleanCatchData = needCleanCatchData;
    }
    return $result;
  }
  CheckVersionRsp._() : super();
  factory CheckVersionRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckVersionRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckVersionRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'LatestVersion', protoName: 'LatestVersion')
    ..aOB(2, _omitFieldNames ? '' : 'needForcedUpdate', protoName: 'needForcedUpdate')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..aOS(4, _omitFieldNames ? '' : 'versionDesc', protoName: 'versionDesc')
    ..e<$1.CLIENT_RUN_ENV_TYPE>(5, _omitFieldNames ? '' : 'clientRunEnv', $pb.PbFieldType.OE, protoName: 'clientRunEnv', defaultOrMaker: $1.CLIENT_RUN_ENV_TYPE.ANDROID, valueOf: $1.CLIENT_RUN_ENV_TYPE.valueOf, enumValues: $1.CLIENT_RUN_ENV_TYPE.values)
    ..aOB(6, _omitFieldNames ? '' : 'needCleanCatchData', protoName: 'needCleanCatchData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckVersionRsp clone() => CheckVersionRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckVersionRsp copyWith(void Function(CheckVersionRsp) updates) => super.copyWith((message) => updates(message as CheckVersionRsp)) as CheckVersionRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckVersionRsp create() => CheckVersionRsp._();
  CheckVersionRsp createEmptyInstance() => create();
  static $pb.PbList<CheckVersionRsp> createRepeated() => $pb.PbList<CheckVersionRsp>();
  @$core.pragma('dart2js:noInline')
  static CheckVersionRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckVersionRsp>(create);
  static CheckVersionRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get latestVersion => $_getI64(0);
  @$pb.TagNumber(1)
  set latestVersion($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatestVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatestVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get needForcedUpdate => $_getBF(1);
  @$pb.TagNumber(2)
  set needForcedUpdate($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNeedForcedUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeedForcedUpdate() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get versionDesc => $_getSZ(3);
  @$pb.TagNumber(4)
  set versionDesc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersionDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersionDesc() => clearField(4);

  @$pb.TagNumber(5)
  $1.CLIENT_RUN_ENV_TYPE get clientRunEnv => $_getN(4);
  @$pb.TagNumber(5)
  set clientRunEnv($1.CLIENT_RUN_ENV_TYPE v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasClientRunEnv() => $_has(4);
  @$pb.TagNumber(5)
  void clearClientRunEnv() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get needCleanCatchData => $_getBF(5);
  @$pb.TagNumber(6)
  set needCleanCatchData($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNeedCleanCatchData() => $_has(5);
  @$pb.TagNumber(6)
  void clearNeedCleanCatchData() => clearField(6);
}

class ImEndPoint extends $pb.GeneratedMessage {
  factory ImEndPoint({
    $core.String? cfgAllocatorUrl,
    $core.String? urlUploadFile,
    $core.String? cfgImInterApiUrl,
    $core.String? cfgImOutApiUrl,
    $core.String? cfgAppGateApiHost,
    $core.String? cfgGrpcUrl,
    $core.int? appId,
    $core.int? score,
    $core.int? delay,
    $core.String? name,
  }) {
    final $result = create();
    if (cfgAllocatorUrl != null) {
      $result.cfgAllocatorUrl = cfgAllocatorUrl;
    }
    if (urlUploadFile != null) {
      $result.urlUploadFile = urlUploadFile;
    }
    if (cfgImInterApiUrl != null) {
      $result.cfgImInterApiUrl = cfgImInterApiUrl;
    }
    if (cfgImOutApiUrl != null) {
      $result.cfgImOutApiUrl = cfgImOutApiUrl;
    }
    if (cfgAppGateApiHost != null) {
      $result.cfgAppGateApiHost = cfgAppGateApiHost;
    }
    if (cfgGrpcUrl != null) {
      $result.cfgGrpcUrl = cfgGrpcUrl;
    }
    if (appId != null) {
      $result.appId = appId;
    }
    if (score != null) {
      $result.score = score;
    }
    if (delay != null) {
      $result.delay = delay;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  ImEndPoint._() : super();
  factory ImEndPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImEndPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImEndPoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cfgAllocatorUrl', protoName: 'cfgAllocatorUrl')
    ..aOS(2, _omitFieldNames ? '' : 'urlUploadFile', protoName: 'urlUploadFile')
    ..aOS(3, _omitFieldNames ? '' : 'cfgImInterApiUrl', protoName: 'cfgImInterApiUrl')
    ..aOS(4, _omitFieldNames ? '' : 'cfgImOutApiUrl', protoName: 'cfgImOutApiUrl')
    ..aOS(5, _omitFieldNames ? '' : 'cfgAppGateApiHost', protoName: 'cfgAppGateApiHost')
    ..aOS(6, _omitFieldNames ? '' : 'cfgGrpcUrl', protoName: 'cfgGrpcUrl')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'appId', $pb.PbFieldType.O3, protoName: 'appId')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'score', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'delay', $pb.PbFieldType.O3)
    ..aOS(10, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImEndPoint clone() => ImEndPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImEndPoint copyWith(void Function(ImEndPoint) updates) => super.copyWith((message) => updates(message as ImEndPoint)) as ImEndPoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImEndPoint create() => ImEndPoint._();
  ImEndPoint createEmptyInstance() => create();
  static $pb.PbList<ImEndPoint> createRepeated() => $pb.PbList<ImEndPoint>();
  @$core.pragma('dart2js:noInline')
  static ImEndPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImEndPoint>(create);
  static ImEndPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cfgAllocatorUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set cfgAllocatorUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCfgAllocatorUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearCfgAllocatorUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get urlUploadFile => $_getSZ(1);
  @$pb.TagNumber(2)
  set urlUploadFile($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrlUploadFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrlUploadFile() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cfgImInterApiUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set cfgImInterApiUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCfgImInterApiUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearCfgImInterApiUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get cfgImOutApiUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set cfgImOutApiUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCfgImOutApiUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearCfgImOutApiUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get cfgAppGateApiHost => $_getSZ(4);
  @$pb.TagNumber(5)
  set cfgAppGateApiHost($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCfgAppGateApiHost() => $_has(4);
  @$pb.TagNumber(5)
  void clearCfgAppGateApiHost() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get cfgGrpcUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set cfgGrpcUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCfgGrpcUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearCfgGrpcUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get appId => $_getIZ(6);
  @$pb.TagNumber(7)
  set appId($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppId() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppId() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get score => $_getIZ(7);
  @$pb.TagNumber(8)
  set score($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasScore() => $_has(7);
  @$pb.TagNumber(8)
  void clearScore() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get delay => $_getIZ(8);
  @$pb.TagNumber(9)
  set delay($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDelay() => $_has(8);
  @$pb.TagNumber(9)
  void clearDelay() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get name => $_getSZ(9);
  @$pb.TagNumber(10)
  set name($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasName() => $_has(9);
  @$pb.TagNumber(10)
  void clearName() => clearField(10);
}

class FetchEndPointReq extends $pb.GeneratedMessage {
  factory FetchEndPointReq() => create();
  FetchEndPointReq._() : super();
  factory FetchEndPointReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchEndPointReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchEndPointReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchEndPointReq clone() => FetchEndPointReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchEndPointReq copyWith(void Function(FetchEndPointReq) updates) => super.copyWith((message) => updates(message as FetchEndPointReq)) as FetchEndPointReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchEndPointReq create() => FetchEndPointReq._();
  FetchEndPointReq createEmptyInstance() => create();
  static $pb.PbList<FetchEndPointReq> createRepeated() => $pb.PbList<FetchEndPointReq>();
  @$core.pragma('dart2js:noInline')
  static FetchEndPointReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchEndPointReq>(create);
  static FetchEndPointReq? _defaultInstance;
}

class FetchEndPointRsp extends $pb.GeneratedMessage {
  factory FetchEndPointRsp({
    $core.Iterable<ImEndPoint>? endPoints,
  }) {
    final $result = create();
    if (endPoints != null) {
      $result.endPoints.addAll(endPoints);
    }
    return $result;
  }
  FetchEndPointRsp._() : super();
  factory FetchEndPointRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchEndPointRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchEndPointRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..pc<ImEndPoint>(1, _omitFieldNames ? '' : 'endPoints', $pb.PbFieldType.PM, protoName: 'endPoints', subBuilder: ImEndPoint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchEndPointRsp clone() => FetchEndPointRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchEndPointRsp copyWith(void Function(FetchEndPointRsp) updates) => super.copyWith((message) => updates(message as FetchEndPointRsp)) as FetchEndPointRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchEndPointRsp create() => FetchEndPointRsp._();
  FetchEndPointRsp createEmptyInstance() => create();
  static $pb.PbList<FetchEndPointRsp> createRepeated() => $pb.PbList<FetchEndPointRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchEndPointRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchEndPointRsp>(create);
  static FetchEndPointRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ImEndPoint> get endPoints => $_getList(0);
}

/// 检测延迟
class CheckDelayReq extends $pb.GeneratedMessage {
  factory CheckDelayReq() => create();
  CheckDelayReq._() : super();
  factory CheckDelayReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckDelayReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckDelayReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckDelayReq clone() => CheckDelayReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckDelayReq copyWith(void Function(CheckDelayReq) updates) => super.copyWith((message) => updates(message as CheckDelayReq)) as CheckDelayReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckDelayReq create() => CheckDelayReq._();
  CheckDelayReq createEmptyInstance() => create();
  static $pb.PbList<CheckDelayReq> createRepeated() => $pb.PbList<CheckDelayReq>();
  @$core.pragma('dart2js:noInline')
  static CheckDelayReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckDelayReq>(create);
  static CheckDelayReq? _defaultInstance;
}

class CheckDelayRsp extends $pb.GeneratedMessage {
  factory CheckDelayRsp() => create();
  CheckDelayRsp._() : super();
  factory CheckDelayRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckDelayRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckDelayRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckDelayRsp clone() => CheckDelayRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckDelayRsp copyWith(void Function(CheckDelayRsp) updates) => super.copyWith((message) => updates(message as CheckDelayRsp)) as CheckDelayRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckDelayRsp create() => CheckDelayRsp._();
  CheckDelayRsp createEmptyInstance() => create();
  static $pb.PbList<CheckDelayRsp> createRepeated() => $pb.PbList<CheckDelayRsp>();
  @$core.pragma('dart2js:noInline')
  static CheckDelayRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckDelayRsp>(create);
  static CheckDelayRsp? _defaultInstance;
}

/// 检查系统限制
class GetSysCfgReq extends $pb.GeneratedMessage {
  factory GetSysCfgReq({
    $fixnum.Int64? appId,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    return $result;
  }
  GetSysCfgReq._() : super();
  factory GetSysCfgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSysCfgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSysCfgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSysCfgReq clone() => GetSysCfgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSysCfgReq copyWith(void Function(GetSysCfgReq) updates) => super.copyWith((message) => updates(message as GetSysCfgReq)) as GetSysCfgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSysCfgReq create() => GetSysCfgReq._();
  GetSysCfgReq createEmptyInstance() => create();
  static $pb.PbList<GetSysCfgReq> createRepeated() => $pb.PbList<GetSysCfgReq>();
  @$core.pragma('dart2js:noInline')
  static GetSysCfgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSysCfgReq>(create);
  static GetSysCfgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get appId => $_getI64(0);
  @$pb.TagNumber(1)
  set appId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);
}

class GetSysCfgRsp extends $pb.GeneratedMessage {
  factory GetSysCfgRsp({
    $core.Map<$core.String, $core.String>? sysCfg,
  }) {
    final $result = create();
    if (sysCfg != null) {
      $result.sysCfg.addAll(sysCfg);
    }
    return $result;
  }
  GetSysCfgRsp._() : super();
  factory GetSysCfgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSysCfgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSysCfgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'sysCfg', protoName: 'sysCfg', entryClassName: 'GetSysCfgRsp.SysCfgEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_commim_uaa'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSysCfgRsp clone() => GetSysCfgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSysCfgRsp copyWith(void Function(GetSysCfgRsp) updates) => super.copyWith((message) => updates(message as GetSysCfgRsp)) as GetSysCfgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSysCfgRsp create() => GetSysCfgRsp._();
  GetSysCfgRsp createEmptyInstance() => create();
  static $pb.PbList<GetSysCfgRsp> createRepeated() => $pb.PbList<GetSysCfgRsp>();
  @$core.pragma('dart2js:noInline')
  static GetSysCfgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSysCfgRsp>(create);
  static GetSysCfgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get sysCfg => $_getMap(0);
}

/// IM检查账号正确性
class ImLoginConfirmReq extends $pb.GeneratedMessage {
  factory ImLoginConfirmReq({
    $fixnum.Int64? imUserId,
    $core.String? token,
  }) {
    final $result = create();
    if (imUserId != null) {
      $result.imUserId = imUserId;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  ImLoginConfirmReq._() : super();
  factory ImLoginConfirmReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImLoginConfirmReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImLoginConfirmReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'imUserId', protoName: 'imUserId')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImLoginConfirmReq clone() => ImLoginConfirmReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImLoginConfirmReq copyWith(void Function(ImLoginConfirmReq) updates) => super.copyWith((message) => updates(message as ImLoginConfirmReq)) as ImLoginConfirmReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImLoginConfirmReq create() => ImLoginConfirmReq._();
  ImLoginConfirmReq createEmptyInstance() => create();
  static $pb.PbList<ImLoginConfirmReq> createRepeated() => $pb.PbList<ImLoginConfirmReq>();
  @$core.pragma('dart2js:noInline')
  static ImLoginConfirmReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImLoginConfirmReq>(create);
  static ImLoginConfirmReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get imUserId => $_getI64(0);
  @$pb.TagNumber(1)
  set imUserId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearImUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class ImLoginConfirmRsp extends $pb.GeneratedMessage {
  factory ImLoginConfirmRsp({
    $core.bool? pass,
    $core.String? reason,
  }) {
    final $result = create();
    if (pass != null) {
      $result.pass = pass;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  ImLoginConfirmRsp._() : super();
  factory ImLoginConfirmRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImLoginConfirmRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImLoginConfirmRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'pass')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImLoginConfirmRsp clone() => ImLoginConfirmRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImLoginConfirmRsp copyWith(void Function(ImLoginConfirmRsp) updates) => super.copyWith((message) => updates(message as ImLoginConfirmRsp)) as ImLoginConfirmRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImLoginConfirmRsp create() => ImLoginConfirmRsp._();
  ImLoginConfirmRsp createEmptyInstance() => create();
  static $pb.PbList<ImLoginConfirmRsp> createRepeated() => $pb.PbList<ImLoginConfirmRsp>();
  @$core.pragma('dart2js:noInline')
  static ImLoginConfirmRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImLoginConfirmRsp>(create);
  static ImLoginConfirmRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get pass => $_getBF(0);
  @$pb.TagNumber(1)
  set pass($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPass() => $_has(0);
  @$pb.TagNumber(1)
  void clearPass() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);
}

class ResetPasswordReq extends $pb.GeneratedMessage {
  factory ResetPasswordReq({
    $core.String? phone,
    $core.String? email,
    $core.String? password,
    $core.int? code,
  }) {
    final $result = create();
    if (phone != null) {
      $result.phone = phone;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  ResetPasswordReq._() : super();
  factory ResetPasswordReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetPasswordReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResetPasswordReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'phone')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'password')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetPasswordReq clone() => ResetPasswordReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetPasswordReq copyWith(void Function(ResetPasswordReq) updates) => super.copyWith((message) => updates(message as ResetPasswordReq)) as ResetPasswordReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetPasswordReq create() => ResetPasswordReq._();
  ResetPasswordReq createEmptyInstance() => create();
  static $pb.PbList<ResetPasswordReq> createRepeated() => $pb.PbList<ResetPasswordReq>();
  @$core.pragma('dart2js:noInline')
  static ResetPasswordReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetPasswordReq>(create);
  static ResetPasswordReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get code => $_getIZ(3);
  @$pb.TagNumber(4)
  set code($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCode() => clearField(4);
}

class ResetPasswordRsp extends $pb.GeneratedMessage {
  factory ResetPasswordRsp({
    $0.Status? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ResetPasswordRsp._() : super();
  factory ResetPasswordRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetPasswordRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResetPasswordRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<$0.Status>(2, _omitFieldNames ? '' : 'status', subBuilder: $0.Status.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetPasswordRsp clone() => ResetPasswordRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetPasswordRsp copyWith(void Function(ResetPasswordRsp) updates) => super.copyWith((message) => updates(message as ResetPasswordRsp)) as ResetPasswordRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetPasswordRsp create() => ResetPasswordRsp._();
  ResetPasswordRsp createEmptyInstance() => create();
  static $pb.PbList<ResetPasswordRsp> createRepeated() => $pb.PbList<ResetPasswordRsp>();
  @$core.pragma('dart2js:noInline')
  static ResetPasswordRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetPasswordRsp>(create);
  static ResetPasswordRsp? _defaultInstance;

  @$pb.TagNumber(2)
  $0.Status get status => $_getN(0);
  @$pb.TagNumber(2)
  set status($0.Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
  @$pb.TagNumber(2)
  $0.Status ensureStatus() => $_ensure(0);
}

class UserAddress extends $pb.GeneratedMessage {
  factory UserAddress({
    $fixnum.Int64? id,
    $core.String? contacts,
    $core.String? phoneCode,
    $core.String? area,
    $core.String? detailAddress,
    $core.String? postCode,
    $core.bool? isDefault,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (contacts != null) {
      $result.contacts = contacts;
    }
    if (phoneCode != null) {
      $result.phoneCode = phoneCode;
    }
    if (area != null) {
      $result.area = area;
    }
    if (detailAddress != null) {
      $result.detailAddress = detailAddress;
    }
    if (postCode != null) {
      $result.postCode = postCode;
    }
    if (isDefault != null) {
      $result.isDefault = isDefault;
    }
    return $result;
  }
  UserAddress._() : super();
  factory UserAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserAddress', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'contacts')
    ..aOS(3, _omitFieldNames ? '' : 'phoneCode', protoName: 'phoneCode')
    ..aOS(4, _omitFieldNames ? '' : 'area')
    ..aOS(5, _omitFieldNames ? '' : 'detailAddress', protoName: 'detailAddress')
    ..aOS(6, _omitFieldNames ? '' : 'postCode', protoName: 'postCode')
    ..aOB(7, _omitFieldNames ? '' : 'isDefault', protoName: 'isDefault')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAddress clone() => UserAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAddress copyWith(void Function(UserAddress) updates) => super.copyWith((message) => updates(message as UserAddress)) as UserAddress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAddress create() => UserAddress._();
  UserAddress createEmptyInstance() => create();
  static $pb.PbList<UserAddress> createRepeated() => $pb.PbList<UserAddress>();
  @$core.pragma('dart2js:noInline')
  static UserAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAddress>(create);
  static UserAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contacts => $_getSZ(1);
  @$pb.TagNumber(2)
  set contacts($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContacts() => $_has(1);
  @$pb.TagNumber(2)
  void clearContacts() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phoneCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoneCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get area => $_getSZ(3);
  @$pb.TagNumber(4)
  set area($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasArea() => $_has(3);
  @$pb.TagNumber(4)
  void clearArea() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get detailAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set detailAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDetailAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearDetailAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get postCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set postCode($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPostCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearPostCode() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isDefault => $_getBF(6);
  @$pb.TagNumber(7)
  set isDefault($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsDefault() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsDefault() => clearField(7);
}

/// 添加地址
class AddAddressReq extends $pb.GeneratedMessage {
  factory AddAddressReq({
    UserAddress? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  AddAddressReq._() : super();
  factory AddAddressReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAddressReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddAddressReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<UserAddress>(1, _omitFieldNames ? '' : 'address', subBuilder: UserAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAddressReq clone() => AddAddressReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAddressReq copyWith(void Function(AddAddressReq) updates) => super.copyWith((message) => updates(message as AddAddressReq)) as AddAddressReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddAddressReq create() => AddAddressReq._();
  AddAddressReq createEmptyInstance() => create();
  static $pb.PbList<AddAddressReq> createRepeated() => $pb.PbList<AddAddressReq>();
  @$core.pragma('dart2js:noInline')
  static AddAddressReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAddressReq>(create);
  static AddAddressReq? _defaultInstance;

  @$pb.TagNumber(1)
  UserAddress get address => $_getN(0);
  @$pb.TagNumber(1)
  set address(UserAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
  @$pb.TagNumber(1)
  UserAddress ensureAddress() => $_ensure(0);
}

/// 返回带id的数据
class AddAddressRsp extends $pb.GeneratedMessage {
  factory AddAddressRsp({
    UserAddress? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  AddAddressRsp._() : super();
  factory AddAddressRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAddressRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddAddressRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<UserAddress>(1, _omitFieldNames ? '' : 'address', subBuilder: UserAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAddressRsp clone() => AddAddressRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAddressRsp copyWith(void Function(AddAddressRsp) updates) => super.copyWith((message) => updates(message as AddAddressRsp)) as AddAddressRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddAddressRsp create() => AddAddressRsp._();
  AddAddressRsp createEmptyInstance() => create();
  static $pb.PbList<AddAddressRsp> createRepeated() => $pb.PbList<AddAddressRsp>();
  @$core.pragma('dart2js:noInline')
  static AddAddressRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAddressRsp>(create);
  static AddAddressRsp? _defaultInstance;

  @$pb.TagNumber(1)
  UserAddress get address => $_getN(0);
  @$pb.TagNumber(1)
  set address(UserAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
  @$pb.TagNumber(1)
  UserAddress ensureAddress() => $_ensure(0);
}

/// 删除地址
class DelAddressReq extends $pb.GeneratedMessage {
  factory DelAddressReq({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DelAddressReq._() : super();
  factory DelAddressReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelAddressReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelAddressReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelAddressReq clone() => DelAddressReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelAddressReq copyWith(void Function(DelAddressReq) updates) => super.copyWith((message) => updates(message as DelAddressReq)) as DelAddressReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelAddressReq create() => DelAddressReq._();
  DelAddressReq createEmptyInstance() => create();
  static $pb.PbList<DelAddressReq> createRepeated() => $pb.PbList<DelAddressReq>();
  @$core.pragma('dart2js:noInline')
  static DelAddressReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelAddressReq>(create);
  static DelAddressReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

/// 修改地址
class EditAddressReq extends $pb.GeneratedMessage {
  factory EditAddressReq({
    UserAddress? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  EditAddressReq._() : super();
  factory EditAddressReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditAddressReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditAddressReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<UserAddress>(1, _omitFieldNames ? '' : 'address', subBuilder: UserAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditAddressReq clone() => EditAddressReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditAddressReq copyWith(void Function(EditAddressReq) updates) => super.copyWith((message) => updates(message as EditAddressReq)) as EditAddressReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditAddressReq create() => EditAddressReq._();
  EditAddressReq createEmptyInstance() => create();
  static $pb.PbList<EditAddressReq> createRepeated() => $pb.PbList<EditAddressReq>();
  @$core.pragma('dart2js:noInline')
  static EditAddressReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditAddressReq>(create);
  static EditAddressReq? _defaultInstance;

  @$pb.TagNumber(1)
  UserAddress get address => $_getN(0);
  @$pb.TagNumber(1)
  set address(UserAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
  @$pb.TagNumber(1)
  UserAddress ensureAddress() => $_ensure(0);
}

/// 查
class FetchAddressReq extends $pb.GeneratedMessage {
  factory FetchAddressReq({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  FetchAddressReq._() : super();
  factory FetchAddressReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchAddressReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchAddressReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchAddressReq clone() => FetchAddressReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchAddressReq copyWith(void Function(FetchAddressReq) updates) => super.copyWith((message) => updates(message as FetchAddressReq)) as FetchAddressReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchAddressReq create() => FetchAddressReq._();
  FetchAddressReq createEmptyInstance() => create();
  static $pb.PbList<FetchAddressReq> createRepeated() => $pb.PbList<FetchAddressReq>();
  @$core.pragma('dart2js:noInline')
  static FetchAddressReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchAddressReq>(create);
  static FetchAddressReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class FetchAddressRsp extends $pb.GeneratedMessage {
  factory FetchAddressRsp({
    UserAddress? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  FetchAddressRsp._() : super();
  factory FetchAddressRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchAddressRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchAddressRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<UserAddress>(1, _omitFieldNames ? '' : 'address', subBuilder: UserAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchAddressRsp clone() => FetchAddressRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchAddressRsp copyWith(void Function(FetchAddressRsp) updates) => super.copyWith((message) => updates(message as FetchAddressRsp)) as FetchAddressRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchAddressRsp create() => FetchAddressRsp._();
  FetchAddressRsp createEmptyInstance() => create();
  static $pb.PbList<FetchAddressRsp> createRepeated() => $pb.PbList<FetchAddressRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchAddressRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchAddressRsp>(create);
  static FetchAddressRsp? _defaultInstance;

  @$pb.TagNumber(1)
  UserAddress get address => $_getN(0);
  @$pb.TagNumber(1)
  set address(UserAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
  @$pb.TagNumber(1)
  UserAddress ensureAddress() => $_ensure(0);
}

/// 查默认地址
class FetchDefaultAddressReq extends $pb.GeneratedMessage {
  factory FetchDefaultAddressReq() => create();
  FetchDefaultAddressReq._() : super();
  factory FetchDefaultAddressReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchDefaultAddressReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchDefaultAddressReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchDefaultAddressReq clone() => FetchDefaultAddressReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchDefaultAddressReq copyWith(void Function(FetchDefaultAddressReq) updates) => super.copyWith((message) => updates(message as FetchDefaultAddressReq)) as FetchDefaultAddressReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchDefaultAddressReq create() => FetchDefaultAddressReq._();
  FetchDefaultAddressReq createEmptyInstance() => create();
  static $pb.PbList<FetchDefaultAddressReq> createRepeated() => $pb.PbList<FetchDefaultAddressReq>();
  @$core.pragma('dart2js:noInline')
  static FetchDefaultAddressReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchDefaultAddressReq>(create);
  static FetchDefaultAddressReq? _defaultInstance;
}

class FetchDefaultAddressRsp extends $pb.GeneratedMessage {
  factory FetchDefaultAddressRsp({
    UserAddress? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  FetchDefaultAddressRsp._() : super();
  factory FetchDefaultAddressRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchDefaultAddressRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchDefaultAddressRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<UserAddress>(1, _omitFieldNames ? '' : 'address', subBuilder: UserAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchDefaultAddressRsp clone() => FetchDefaultAddressRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchDefaultAddressRsp copyWith(void Function(FetchDefaultAddressRsp) updates) => super.copyWith((message) => updates(message as FetchDefaultAddressRsp)) as FetchDefaultAddressRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchDefaultAddressRsp create() => FetchDefaultAddressRsp._();
  FetchDefaultAddressRsp createEmptyInstance() => create();
  static $pb.PbList<FetchDefaultAddressRsp> createRepeated() => $pb.PbList<FetchDefaultAddressRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchDefaultAddressRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchDefaultAddressRsp>(create);
  static FetchDefaultAddressRsp? _defaultInstance;

  @$pb.TagNumber(1)
  UserAddress get address => $_getN(0);
  @$pb.TagNumber(1)
  set address(UserAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
  @$pb.TagNumber(1)
  UserAddress ensureAddress() => $_ensure(0);
}

class FetchAddressListReq extends $pb.GeneratedMessage {
  factory FetchAddressListReq({
    $core.int? page,
    $core.int? pageSize,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    return $result;
  }
  FetchAddressListReq._() : super();
  factory FetchAddressListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchAddressListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchAddressListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchAddressListReq clone() => FetchAddressListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchAddressListReq copyWith(void Function(FetchAddressListReq) updates) => super.copyWith((message) => updates(message as FetchAddressListReq)) as FetchAddressListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchAddressListReq create() => FetchAddressListReq._();
  FetchAddressListReq createEmptyInstance() => create();
  static $pb.PbList<FetchAddressListReq> createRepeated() => $pb.PbList<FetchAddressListReq>();
  @$core.pragma('dart2js:noInline')
  static FetchAddressListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchAddressListReq>(create);
  static FetchAddressListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);
}

class FetchAddressListRsp extends $pb.GeneratedMessage {
  factory FetchAddressListRsp({
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? total,
    $core.Iterable<UserAddress>? addressList,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (total != null) {
      $result.total = total;
    }
    if (addressList != null) {
      $result.addressList.addAll(addressList);
    }
    return $result;
  }
  FetchAddressListRsp._() : super();
  factory FetchAddressListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchAddressListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchAddressListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'total')
    ..pc<UserAddress>(4, _omitFieldNames ? '' : 'addressList', $pb.PbFieldType.PM, protoName: 'addressList', subBuilder: UserAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchAddressListRsp clone() => FetchAddressListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchAddressListRsp copyWith(void Function(FetchAddressListRsp) updates) => super.copyWith((message) => updates(message as FetchAddressListRsp)) as FetchAddressListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchAddressListRsp create() => FetchAddressListRsp._();
  FetchAddressListRsp createEmptyInstance() => create();
  static $pb.PbList<FetchAddressListRsp> createRepeated() => $pb.PbList<FetchAddressListRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchAddressListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchAddressListRsp>(create);
  static FetchAddressListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get total => $_getI64(2);
  @$pb.TagNumber(3)
  set total($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<UserAddress> get addressList => $_getList(3);
}

/// 分类标签维护
/// 分类标签
class CategorizeTag extends $pb.GeneratedMessage {
  factory CategorizeTag({
    $fixnum.Int64? id,
    $core.String? tag,
    $fixnum.Int64? memberCount,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (tag != null) {
      $result.tag = tag;
    }
    if (memberCount != null) {
      $result.memberCount = memberCount;
    }
    return $result;
  }
  CategorizeTag._() : super();
  factory CategorizeTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategorizeTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategorizeTag', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'tag')
    ..aInt64(3, _omitFieldNames ? '' : 'memberCount', protoName: 'memberCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategorizeTag clone() => CategorizeTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategorizeTag copyWith(void Function(CategorizeTag) updates) => super.copyWith((message) => updates(message as CategorizeTag)) as CategorizeTag;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategorizeTag create() => CategorizeTag._();
  CategorizeTag createEmptyInstance() => create();
  static $pb.PbList<CategorizeTag> createRepeated() => $pb.PbList<CategorizeTag>();
  @$core.pragma('dart2js:noInline')
  static CategorizeTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategorizeTag>(create);
  static CategorizeTag? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tag => $_getSZ(1);
  @$pb.TagNumber(2)
  set tag($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearTag() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get memberCount => $_getI64(2);
  @$pb.TagNumber(3)
  set memberCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMemberCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMemberCount() => clearField(3);
}

/// 分类标签成员
class CategorizeTagMember extends $pb.GeneratedMessage {
  factory CategorizeTagMember({
    $fixnum.Int64? tagId,
    $fixnum.Int64? memberId,
  }) {
    final $result = create();
    if (tagId != null) {
      $result.tagId = tagId;
    }
    if (memberId != null) {
      $result.memberId = memberId;
    }
    return $result;
  }
  CategorizeTagMember._() : super();
  factory CategorizeTagMember.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategorizeTagMember.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategorizeTagMember', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'tagId', protoName: 'tagId')
    ..aInt64(2, _omitFieldNames ? '' : 'memberId', protoName: 'memberId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategorizeTagMember clone() => CategorizeTagMember()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategorizeTagMember copyWith(void Function(CategorizeTagMember) updates) => super.copyWith((message) => updates(message as CategorizeTagMember)) as CategorizeTagMember;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategorizeTagMember create() => CategorizeTagMember._();
  CategorizeTagMember createEmptyInstance() => create();
  static $pb.PbList<CategorizeTagMember> createRepeated() => $pb.PbList<CategorizeTagMember>();
  @$core.pragma('dart2js:noInline')
  static CategorizeTagMember getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategorizeTagMember>(create);
  static CategorizeTagMember? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get tagId => $_getI64(0);
  @$pb.TagNumber(1)
  set tagId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTagId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTagId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get memberId => $_getI64(1);
  @$pb.TagNumber(2)
  set memberId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemberId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberId() => clearField(2);
}

/// rpc AddCategorizeTag(pb_msg_commim_uaa.AddCategorizeTagReq)returns(pb_msg_commim_uaa.AddCategorizeTagRsp);
class AddCategorizeTagReq extends $pb.GeneratedMessage {
  factory AddCategorizeTagReq({
    $core.String? tag,
    $core.Iterable<CategorizeTagMember>? member,
  }) {
    final $result = create();
    if (tag != null) {
      $result.tag = tag;
    }
    if (member != null) {
      $result.member.addAll(member);
    }
    return $result;
  }
  AddCategorizeTagReq._() : super();
  factory AddCategorizeTagReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCategorizeTagReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddCategorizeTagReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tag')
    ..pc<CategorizeTagMember>(2, _omitFieldNames ? '' : 'member', $pb.PbFieldType.PM, subBuilder: CategorizeTagMember.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCategorizeTagReq clone() => AddCategorizeTagReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCategorizeTagReq copyWith(void Function(AddCategorizeTagReq) updates) => super.copyWith((message) => updates(message as AddCategorizeTagReq)) as AddCategorizeTagReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddCategorizeTagReq create() => AddCategorizeTagReq._();
  AddCategorizeTagReq createEmptyInstance() => create();
  static $pb.PbList<AddCategorizeTagReq> createRepeated() => $pb.PbList<AddCategorizeTagReq>();
  @$core.pragma('dart2js:noInline')
  static AddCategorizeTagReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCategorizeTagReq>(create);
  static AddCategorizeTagReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tag => $_getSZ(0);
  @$pb.TagNumber(1)
  set tag($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<CategorizeTagMember> get member => $_getList(1);
}

class AddCategorizeTagRsp extends $pb.GeneratedMessage {
  factory AddCategorizeTagRsp({
    CategorizeTag? tag,
    $core.Iterable<CategorizeTagMember>? member,
  }) {
    final $result = create();
    if (tag != null) {
      $result.tag = tag;
    }
    if (member != null) {
      $result.member.addAll(member);
    }
    return $result;
  }
  AddCategorizeTagRsp._() : super();
  factory AddCategorizeTagRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCategorizeTagRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddCategorizeTagRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<CategorizeTag>(1, _omitFieldNames ? '' : 'tag', subBuilder: CategorizeTag.create)
    ..pc<CategorizeTagMember>(2, _omitFieldNames ? '' : 'member', $pb.PbFieldType.PM, subBuilder: CategorizeTagMember.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCategorizeTagRsp clone() => AddCategorizeTagRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCategorizeTagRsp copyWith(void Function(AddCategorizeTagRsp) updates) => super.copyWith((message) => updates(message as AddCategorizeTagRsp)) as AddCategorizeTagRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddCategorizeTagRsp create() => AddCategorizeTagRsp._();
  AddCategorizeTagRsp createEmptyInstance() => create();
  static $pb.PbList<AddCategorizeTagRsp> createRepeated() => $pb.PbList<AddCategorizeTagRsp>();
  @$core.pragma('dart2js:noInline')
  static AddCategorizeTagRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCategorizeTagRsp>(create);
  static AddCategorizeTagRsp? _defaultInstance;

  @$pb.TagNumber(1)
  CategorizeTag get tag => $_getN(0);
  @$pb.TagNumber(1)
  set tag(CategorizeTag v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);
  @$pb.TagNumber(1)
  CategorizeTag ensureTag() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<CategorizeTagMember> get member => $_getList(1);
}

/// rpc DelCategorizeTag(pb_msg_commim_uaa.DelCategorizeTagReq)returns(pb_msg_commim_uaa.DelCategorizeTagRsp);
class DelCategorizeTagReq extends $pb.GeneratedMessage {
  factory DelCategorizeTagReq({
    $fixnum.Int64? tagId,
  }) {
    final $result = create();
    if (tagId != null) {
      $result.tagId = tagId;
    }
    return $result;
  }
  DelCategorizeTagReq._() : super();
  factory DelCategorizeTagReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelCategorizeTagReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelCategorizeTagReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'tagId', protoName: 'tagId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelCategorizeTagReq clone() => DelCategorizeTagReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelCategorizeTagReq copyWith(void Function(DelCategorizeTagReq) updates) => super.copyWith((message) => updates(message as DelCategorizeTagReq)) as DelCategorizeTagReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelCategorizeTagReq create() => DelCategorizeTagReq._();
  DelCategorizeTagReq createEmptyInstance() => create();
  static $pb.PbList<DelCategorizeTagReq> createRepeated() => $pb.PbList<DelCategorizeTagReq>();
  @$core.pragma('dart2js:noInline')
  static DelCategorizeTagReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelCategorizeTagReq>(create);
  static DelCategorizeTagReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get tagId => $_getI64(0);
  @$pb.TagNumber(1)
  set tagId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTagId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTagId() => clearField(1);
}

/// rpc EditCategorizeTag(pb_msg_commim_uaa.EditCategorizeTagReq)returns(pb_msg_commim_uaa.EditCategorizeTagRsp);
class EditCategorizeTagReq extends $pb.GeneratedMessage {
  factory EditCategorizeTagReq({
    CategorizeTag? tag,
  }) {
    final $result = create();
    if (tag != null) {
      $result.tag = tag;
    }
    return $result;
  }
  EditCategorizeTagReq._() : super();
  factory EditCategorizeTagReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditCategorizeTagReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditCategorizeTagReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<CategorizeTag>(1, _omitFieldNames ? '' : 'tag', subBuilder: CategorizeTag.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditCategorizeTagReq clone() => EditCategorizeTagReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditCategorizeTagReq copyWith(void Function(EditCategorizeTagReq) updates) => super.copyWith((message) => updates(message as EditCategorizeTagReq)) as EditCategorizeTagReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditCategorizeTagReq create() => EditCategorizeTagReq._();
  EditCategorizeTagReq createEmptyInstance() => create();
  static $pb.PbList<EditCategorizeTagReq> createRepeated() => $pb.PbList<EditCategorizeTagReq>();
  @$core.pragma('dart2js:noInline')
  static EditCategorizeTagReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditCategorizeTagReq>(create);
  static EditCategorizeTagReq? _defaultInstance;

  @$pb.TagNumber(1)
  CategorizeTag get tag => $_getN(0);
  @$pb.TagNumber(1)
  set tag(CategorizeTag v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);
  @$pb.TagNumber(1)
  CategorizeTag ensureTag() => $_ensure(0);
}

/// rpc FetchCategorizeTagList(pb_msg_commim_uaa.FetchCategorizeTagListReq)returns(pb_msg_commim_uaa.FetchCategorizeTagListRsp);
class FetchCategorizeTagListReq extends $pb.GeneratedMessage {
  factory FetchCategorizeTagListReq({
    $core.int? page,
    $core.int? pageSize,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    return $result;
  }
  FetchCategorizeTagListReq._() : super();
  factory FetchCategorizeTagListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCategorizeTagListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchCategorizeTagListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchCategorizeTagListReq clone() => FetchCategorizeTagListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchCategorizeTagListReq copyWith(void Function(FetchCategorizeTagListReq) updates) => super.copyWith((message) => updates(message as FetchCategorizeTagListReq)) as FetchCategorizeTagListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchCategorizeTagListReq create() => FetchCategorizeTagListReq._();
  FetchCategorizeTagListReq createEmptyInstance() => create();
  static $pb.PbList<FetchCategorizeTagListReq> createRepeated() => $pb.PbList<FetchCategorizeTagListReq>();
  @$core.pragma('dart2js:noInline')
  static FetchCategorizeTagListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCategorizeTagListReq>(create);
  static FetchCategorizeTagListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);
}

class FetchCategorizeTagListRsp extends $pb.GeneratedMessage {
  factory FetchCategorizeTagListRsp({
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? total,
    $core.Iterable<CategorizeTag>? tagList,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (total != null) {
      $result.total = total;
    }
    if (tagList != null) {
      $result.tagList.addAll(tagList);
    }
    return $result;
  }
  FetchCategorizeTagListRsp._() : super();
  factory FetchCategorizeTagListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCategorizeTagListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchCategorizeTagListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'total')
    ..pc<CategorizeTag>(4, _omitFieldNames ? '' : 'tagList', $pb.PbFieldType.PM, protoName: 'tagList', subBuilder: CategorizeTag.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchCategorizeTagListRsp clone() => FetchCategorizeTagListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchCategorizeTagListRsp copyWith(void Function(FetchCategorizeTagListRsp) updates) => super.copyWith((message) => updates(message as FetchCategorizeTagListRsp)) as FetchCategorizeTagListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchCategorizeTagListRsp create() => FetchCategorizeTagListRsp._();
  FetchCategorizeTagListRsp createEmptyInstance() => create();
  static $pb.PbList<FetchCategorizeTagListRsp> createRepeated() => $pb.PbList<FetchCategorizeTagListRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchCategorizeTagListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCategorizeTagListRsp>(create);
  static FetchCategorizeTagListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get total => $_getI64(2);
  @$pb.TagNumber(3)
  set total($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<CategorizeTag> get tagList => $_getList(3);
}

/// 分组标签成员操作
///    rpc AddCategorizeTagMember(pb_msg_commim_uaa.AddCategorizeTagMemberReq)returns(pb_msg_commim_uaa.AddCategorizeTagMemberRsp);
class AddCategorizeTagMemberReq extends $pb.GeneratedMessage {
  factory AddCategorizeTagMemberReq({
    CategorizeTagMember? member,
  }) {
    final $result = create();
    if (member != null) {
      $result.member = member;
    }
    return $result;
  }
  AddCategorizeTagMemberReq._() : super();
  factory AddCategorizeTagMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCategorizeTagMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddCategorizeTagMemberReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<CategorizeTagMember>(1, _omitFieldNames ? '' : 'member', subBuilder: CategorizeTagMember.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCategorizeTagMemberReq clone() => AddCategorizeTagMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCategorizeTagMemberReq copyWith(void Function(AddCategorizeTagMemberReq) updates) => super.copyWith((message) => updates(message as AddCategorizeTagMemberReq)) as AddCategorizeTagMemberReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddCategorizeTagMemberReq create() => AddCategorizeTagMemberReq._();
  AddCategorizeTagMemberReq createEmptyInstance() => create();
  static $pb.PbList<AddCategorizeTagMemberReq> createRepeated() => $pb.PbList<AddCategorizeTagMemberReq>();
  @$core.pragma('dart2js:noInline')
  static AddCategorizeTagMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCategorizeTagMemberReq>(create);
  static AddCategorizeTagMemberReq? _defaultInstance;

  @$pb.TagNumber(1)
  CategorizeTagMember get member => $_getN(0);
  @$pb.TagNumber(1)
  set member(CategorizeTagMember v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => clearField(1);
  @$pb.TagNumber(1)
  CategorizeTagMember ensureMember() => $_ensure(0);
}

class AddCategorizeTagMemberRsp extends $pb.GeneratedMessage {
  factory AddCategorizeTagMemberRsp({
    CategorizeTagMember? member,
    $fixnum.Int64? tagMemberTotalCount,
  }) {
    final $result = create();
    if (member != null) {
      $result.member = member;
    }
    if (tagMemberTotalCount != null) {
      $result.tagMemberTotalCount = tagMemberTotalCount;
    }
    return $result;
  }
  AddCategorizeTagMemberRsp._() : super();
  factory AddCategorizeTagMemberRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCategorizeTagMemberRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddCategorizeTagMemberRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<CategorizeTagMember>(1, _omitFieldNames ? '' : 'member', subBuilder: CategorizeTagMember.create)
    ..aInt64(2, _omitFieldNames ? '' : 'tagMemberTotalCount', protoName: 'tagMemberTotalCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCategorizeTagMemberRsp clone() => AddCategorizeTagMemberRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCategorizeTagMemberRsp copyWith(void Function(AddCategorizeTagMemberRsp) updates) => super.copyWith((message) => updates(message as AddCategorizeTagMemberRsp)) as AddCategorizeTagMemberRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddCategorizeTagMemberRsp create() => AddCategorizeTagMemberRsp._();
  AddCategorizeTagMemberRsp createEmptyInstance() => create();
  static $pb.PbList<AddCategorizeTagMemberRsp> createRepeated() => $pb.PbList<AddCategorizeTagMemberRsp>();
  @$core.pragma('dart2js:noInline')
  static AddCategorizeTagMemberRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCategorizeTagMemberRsp>(create);
  static AddCategorizeTagMemberRsp? _defaultInstance;

  @$pb.TagNumber(1)
  CategorizeTagMember get member => $_getN(0);
  @$pb.TagNumber(1)
  set member(CategorizeTagMember v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => clearField(1);
  @$pb.TagNumber(1)
  CategorizeTagMember ensureMember() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get tagMemberTotalCount => $_getI64(1);
  @$pb.TagNumber(2)
  set tagMemberTotalCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTagMemberTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTagMemberTotalCount() => clearField(2);
}

/// rpc DelCategorizeTagMember(pb_msg_commim_uaa.DelCategorizeTagMemberReq)returns(pb_msg_commim_uaa.DelCategorizeTagMemberRsp);
class DelCategorizeTagMemberReq extends $pb.GeneratedMessage {
  factory DelCategorizeTagMemberReq({
    CategorizeTagMember? member,
  }) {
    final $result = create();
    if (member != null) {
      $result.member = member;
    }
    return $result;
  }
  DelCategorizeTagMemberReq._() : super();
  factory DelCategorizeTagMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelCategorizeTagMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelCategorizeTagMemberReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<CategorizeTagMember>(1, _omitFieldNames ? '' : 'member', subBuilder: CategorizeTagMember.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelCategorizeTagMemberReq clone() => DelCategorizeTagMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelCategorizeTagMemberReq copyWith(void Function(DelCategorizeTagMemberReq) updates) => super.copyWith((message) => updates(message as DelCategorizeTagMemberReq)) as DelCategorizeTagMemberReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelCategorizeTagMemberReq create() => DelCategorizeTagMemberReq._();
  DelCategorizeTagMemberReq createEmptyInstance() => create();
  static $pb.PbList<DelCategorizeTagMemberReq> createRepeated() => $pb.PbList<DelCategorizeTagMemberReq>();
  @$core.pragma('dart2js:noInline')
  static DelCategorizeTagMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelCategorizeTagMemberReq>(create);
  static DelCategorizeTagMemberReq? _defaultInstance;

  @$pb.TagNumber(1)
  CategorizeTagMember get member => $_getN(0);
  @$pb.TagNumber(1)
  set member(CategorizeTagMember v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => clearField(1);
  @$pb.TagNumber(1)
  CategorizeTagMember ensureMember() => $_ensure(0);
}

class DelCategorizeTagMemberRsp extends $pb.GeneratedMessage {
  factory DelCategorizeTagMemberRsp({
    $fixnum.Int64? tagMemberTotalCount,
  }) {
    final $result = create();
    if (tagMemberTotalCount != null) {
      $result.tagMemberTotalCount = tagMemberTotalCount;
    }
    return $result;
  }
  DelCategorizeTagMemberRsp._() : super();
  factory DelCategorizeTagMemberRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelCategorizeTagMemberRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelCategorizeTagMemberRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'tagMemberTotalCount', protoName: 'tagMemberTotalCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelCategorizeTagMemberRsp clone() => DelCategorizeTagMemberRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelCategorizeTagMemberRsp copyWith(void Function(DelCategorizeTagMemberRsp) updates) => super.copyWith((message) => updates(message as DelCategorizeTagMemberRsp)) as DelCategorizeTagMemberRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelCategorizeTagMemberRsp create() => DelCategorizeTagMemberRsp._();
  DelCategorizeTagMemberRsp createEmptyInstance() => create();
  static $pb.PbList<DelCategorizeTagMemberRsp> createRepeated() => $pb.PbList<DelCategorizeTagMemberRsp>();
  @$core.pragma('dart2js:noInline')
  static DelCategorizeTagMemberRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelCategorizeTagMemberRsp>(create);
  static DelCategorizeTagMemberRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get tagMemberTotalCount => $_getI64(0);
  @$pb.TagNumber(1)
  set tagMemberTotalCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTagMemberTotalCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearTagMemberTotalCount() => clearField(1);
}

/// rpc FetchCategorizeTagMemberList(pb_msg_commim_uaa.FetchCategorizeTagMemberListReq)returns(pb_msg_commim_uaa.FetchCategorizeTagMemberListRsp);
class FetchCategorizeTagMemberListReq extends $pb.GeneratedMessage {
  factory FetchCategorizeTagMemberListReq({
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? tagId,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (tagId != null) {
      $result.tagId = tagId;
    }
    return $result;
  }
  FetchCategorizeTagMemberListReq._() : super();
  factory FetchCategorizeTagMemberListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCategorizeTagMemberListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchCategorizeTagMemberListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'tagId', protoName: 'tagId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchCategorizeTagMemberListReq clone() => FetchCategorizeTagMemberListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchCategorizeTagMemberListReq copyWith(void Function(FetchCategorizeTagMemberListReq) updates) => super.copyWith((message) => updates(message as FetchCategorizeTagMemberListReq)) as FetchCategorizeTagMemberListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchCategorizeTagMemberListReq create() => FetchCategorizeTagMemberListReq._();
  FetchCategorizeTagMemberListReq createEmptyInstance() => create();
  static $pb.PbList<FetchCategorizeTagMemberListReq> createRepeated() => $pb.PbList<FetchCategorizeTagMemberListReq>();
  @$core.pragma('dart2js:noInline')
  static FetchCategorizeTagMemberListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCategorizeTagMemberListReq>(create);
  static FetchCategorizeTagMemberListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get tagId => $_getI64(2);
  @$pb.TagNumber(3)
  set tagId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTagId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTagId() => clearField(3);
}

class FetchCategorizeTagMemberListRsp extends $pb.GeneratedMessage {
  factory FetchCategorizeTagMemberListRsp({
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? total,
    $core.Iterable<CategorizeTagMember>? memberList,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (total != null) {
      $result.total = total;
    }
    if (memberList != null) {
      $result.memberList.addAll(memberList);
    }
    return $result;
  }
  FetchCategorizeTagMemberListRsp._() : super();
  factory FetchCategorizeTagMemberListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCategorizeTagMemberListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchCategorizeTagMemberListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'total')
    ..pc<CategorizeTagMember>(4, _omitFieldNames ? '' : 'memberList', $pb.PbFieldType.PM, protoName: 'memberList', subBuilder: CategorizeTagMember.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchCategorizeTagMemberListRsp clone() => FetchCategorizeTagMemberListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchCategorizeTagMemberListRsp copyWith(void Function(FetchCategorizeTagMemberListRsp) updates) => super.copyWith((message) => updates(message as FetchCategorizeTagMemberListRsp)) as FetchCategorizeTagMemberListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchCategorizeTagMemberListRsp create() => FetchCategorizeTagMemberListRsp._();
  FetchCategorizeTagMemberListRsp createEmptyInstance() => create();
  static $pb.PbList<FetchCategorizeTagMemberListRsp> createRepeated() => $pb.PbList<FetchCategorizeTagMemberListRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchCategorizeTagMemberListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCategorizeTagMemberListRsp>(create);
  static FetchCategorizeTagMemberListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get total => $_getI64(2);
  @$pb.TagNumber(3)
  set total($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<CategorizeTagMember> get memberList => $_getList(3);
}

class BackgroundImageInfo extends $pb.GeneratedMessage {
  factory BackgroundImageInfo({
    $fixnum.Int64? id,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? userId,
    ENBackgroundImageModelType? modelType,
    $fixnum.Int64? modelRelationId,
    $core.String? imageUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (modelType != null) {
      $result.modelType = modelType;
    }
    if (modelRelationId != null) {
      $result.modelRelationId = modelRelationId;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    return $result;
  }
  BackgroundImageInfo._() : super();
  factory BackgroundImageInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BackgroundImageInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BackgroundImageInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aInt64(3, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..e<ENBackgroundImageModelType>(4, _omitFieldNames ? '' : 'modelType', $pb.PbFieldType.OE, protoName: 'modelType', defaultOrMaker: ENBackgroundImageModelType.ENBackgroundImageModelChat, valueOf: ENBackgroundImageModelType.valueOf, enumValues: ENBackgroundImageModelType.values)
    ..aInt64(5, _omitFieldNames ? '' : 'modelRelationId', protoName: 'modelRelationId')
    ..aOS(6, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BackgroundImageInfo clone() => BackgroundImageInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BackgroundImageInfo copyWith(void Function(BackgroundImageInfo) updates) => super.copyWith((message) => updates(message as BackgroundImageInfo)) as BackgroundImageInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackgroundImageInfo create() => BackgroundImageInfo._();
  BackgroundImageInfo createEmptyInstance() => create();
  static $pb.PbList<BackgroundImageInfo> createRepeated() => $pb.PbList<BackgroundImageInfo>();
  @$core.pragma('dart2js:noInline')
  static BackgroundImageInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BackgroundImageInfo>(create);
  static BackgroundImageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createdAt => $_getI64(1);
  @$pb.TagNumber(2)
  set createdAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  ENBackgroundImageModelType get modelType => $_getN(3);
  @$pb.TagNumber(4)
  set modelType(ENBackgroundImageModelType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasModelType() => $_has(3);
  @$pb.TagNumber(4)
  void clearModelType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get modelRelationId => $_getI64(4);
  @$pb.TagNumber(5)
  set modelRelationId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasModelRelationId() => $_has(4);
  @$pb.TagNumber(5)
  void clearModelRelationId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageUrl() => clearField(6);
}

class AddBackgroundReq extends $pb.GeneratedMessage {
  factory AddBackgroundReq({
    BackgroundImageInfo? imageInfo,
  }) {
    final $result = create();
    if (imageInfo != null) {
      $result.imageInfo = imageInfo;
    }
    return $result;
  }
  AddBackgroundReq._() : super();
  factory AddBackgroundReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddBackgroundReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddBackgroundReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<BackgroundImageInfo>(1, _omitFieldNames ? '' : 'imageInfo', protoName: 'imageInfo', subBuilder: BackgroundImageInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddBackgroundReq clone() => AddBackgroundReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddBackgroundReq copyWith(void Function(AddBackgroundReq) updates) => super.copyWith((message) => updates(message as AddBackgroundReq)) as AddBackgroundReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddBackgroundReq create() => AddBackgroundReq._();
  AddBackgroundReq createEmptyInstance() => create();
  static $pb.PbList<AddBackgroundReq> createRepeated() => $pb.PbList<AddBackgroundReq>();
  @$core.pragma('dart2js:noInline')
  static AddBackgroundReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddBackgroundReq>(create);
  static AddBackgroundReq? _defaultInstance;

  @$pb.TagNumber(1)
  BackgroundImageInfo get imageInfo => $_getN(0);
  @$pb.TagNumber(1)
  set imageInfo(BackgroundImageInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageInfo() => clearField(1);
  @$pb.TagNumber(1)
  BackgroundImageInfo ensureImageInfo() => $_ensure(0);
}

class AddBackgroundRsp extends $pb.GeneratedMessage {
  factory AddBackgroundRsp({
    BackgroundImageInfo? imageInfo,
  }) {
    final $result = create();
    if (imageInfo != null) {
      $result.imageInfo = imageInfo;
    }
    return $result;
  }
  AddBackgroundRsp._() : super();
  factory AddBackgroundRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddBackgroundRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddBackgroundRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<BackgroundImageInfo>(1, _omitFieldNames ? '' : 'imageInfo', protoName: 'imageInfo', subBuilder: BackgroundImageInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddBackgroundRsp clone() => AddBackgroundRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddBackgroundRsp copyWith(void Function(AddBackgroundRsp) updates) => super.copyWith((message) => updates(message as AddBackgroundRsp)) as AddBackgroundRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddBackgroundRsp create() => AddBackgroundRsp._();
  AddBackgroundRsp createEmptyInstance() => create();
  static $pb.PbList<AddBackgroundRsp> createRepeated() => $pb.PbList<AddBackgroundRsp>();
  @$core.pragma('dart2js:noInline')
  static AddBackgroundRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddBackgroundRsp>(create);
  static AddBackgroundRsp? _defaultInstance;

  @$pb.TagNumber(1)
  BackgroundImageInfo get imageInfo => $_getN(0);
  @$pb.TagNumber(1)
  set imageInfo(BackgroundImageInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageInfo() => clearField(1);
  @$pb.TagNumber(1)
  BackgroundImageInfo ensureImageInfo() => $_ensure(0);
}

/// 删除的时候imageInfo里面设置的属性为过滤条件，没有设置的忽略
class DelBackgroundPicReq extends $pb.GeneratedMessage {
  factory DelBackgroundPicReq({
    BackgroundImageInfo? imageInfo,
  }) {
    final $result = create();
    if (imageInfo != null) {
      $result.imageInfo = imageInfo;
    }
    return $result;
  }
  DelBackgroundPicReq._() : super();
  factory DelBackgroundPicReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelBackgroundPicReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelBackgroundPicReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<BackgroundImageInfo>(1, _omitFieldNames ? '' : 'imageInfo', protoName: 'imageInfo', subBuilder: BackgroundImageInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelBackgroundPicReq clone() => DelBackgroundPicReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelBackgroundPicReq copyWith(void Function(DelBackgroundPicReq) updates) => super.copyWith((message) => updates(message as DelBackgroundPicReq)) as DelBackgroundPicReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelBackgroundPicReq create() => DelBackgroundPicReq._();
  DelBackgroundPicReq createEmptyInstance() => create();
  static $pb.PbList<DelBackgroundPicReq> createRepeated() => $pb.PbList<DelBackgroundPicReq>();
  @$core.pragma('dart2js:noInline')
  static DelBackgroundPicReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelBackgroundPicReq>(create);
  static DelBackgroundPicReq? _defaultInstance;

  @$pb.TagNumber(1)
  BackgroundImageInfo get imageInfo => $_getN(0);
  @$pb.TagNumber(1)
  set imageInfo(BackgroundImageInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageInfo() => clearField(1);
  @$pb.TagNumber(1)
  BackgroundImageInfo ensureImageInfo() => $_ensure(0);
}

class DelBackgroundRsp extends $pb.GeneratedMessage {
  factory DelBackgroundRsp({
    BackgroundImageInfo? imageInfo,
  }) {
    final $result = create();
    if (imageInfo != null) {
      $result.imageInfo = imageInfo;
    }
    return $result;
  }
  DelBackgroundRsp._() : super();
  factory DelBackgroundRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelBackgroundRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelBackgroundRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<BackgroundImageInfo>(1, _omitFieldNames ? '' : 'imageInfo', protoName: 'imageInfo', subBuilder: BackgroundImageInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelBackgroundRsp clone() => DelBackgroundRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelBackgroundRsp copyWith(void Function(DelBackgroundRsp) updates) => super.copyWith((message) => updates(message as DelBackgroundRsp)) as DelBackgroundRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelBackgroundRsp create() => DelBackgroundRsp._();
  DelBackgroundRsp createEmptyInstance() => create();
  static $pb.PbList<DelBackgroundRsp> createRepeated() => $pb.PbList<DelBackgroundRsp>();
  @$core.pragma('dart2js:noInline')
  static DelBackgroundRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelBackgroundRsp>(create);
  static DelBackgroundRsp? _defaultInstance;

  @$pb.TagNumber(1)
  BackgroundImageInfo get imageInfo => $_getN(0);
  @$pb.TagNumber(1)
  set imageInfo(BackgroundImageInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageInfo() => clearField(1);
  @$pb.TagNumber(1)
  BackgroundImageInfo ensureImageInfo() => $_ensure(0);
}

/// 查询列表，imageInfo 设置的属性为查询条件，空值忽略
class FetchBackgroundPicListReq extends $pb.GeneratedMessage {
  factory FetchBackgroundPicListReq({
    BackgroundImageInfo? imageInfo,
  }) {
    final $result = create();
    if (imageInfo != null) {
      $result.imageInfo = imageInfo;
    }
    return $result;
  }
  FetchBackgroundPicListReq._() : super();
  factory FetchBackgroundPicListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchBackgroundPicListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchBackgroundPicListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<BackgroundImageInfo>(1, _omitFieldNames ? '' : 'imageInfo', protoName: 'imageInfo', subBuilder: BackgroundImageInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchBackgroundPicListReq clone() => FetchBackgroundPicListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchBackgroundPicListReq copyWith(void Function(FetchBackgroundPicListReq) updates) => super.copyWith((message) => updates(message as FetchBackgroundPicListReq)) as FetchBackgroundPicListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchBackgroundPicListReq create() => FetchBackgroundPicListReq._();
  FetchBackgroundPicListReq createEmptyInstance() => create();
  static $pb.PbList<FetchBackgroundPicListReq> createRepeated() => $pb.PbList<FetchBackgroundPicListReq>();
  @$core.pragma('dart2js:noInline')
  static FetchBackgroundPicListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchBackgroundPicListReq>(create);
  static FetchBackgroundPicListReq? _defaultInstance;

  @$pb.TagNumber(1)
  BackgroundImageInfo get imageInfo => $_getN(0);
  @$pb.TagNumber(1)
  set imageInfo(BackgroundImageInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageInfo() => clearField(1);
  @$pb.TagNumber(1)
  BackgroundImageInfo ensureImageInfo() => $_ensure(0);
}

class FetchBackgroundPicListRsp extends $pb.GeneratedMessage {
  factory FetchBackgroundPicListRsp({
    $core.Iterable<BackgroundImageInfo>? imageInfoList,
  }) {
    final $result = create();
    if (imageInfoList != null) {
      $result.imageInfoList.addAll(imageInfoList);
    }
    return $result;
  }
  FetchBackgroundPicListRsp._() : super();
  factory FetchBackgroundPicListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchBackgroundPicListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchBackgroundPicListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..pc<BackgroundImageInfo>(1, _omitFieldNames ? '' : 'imageInfoList', $pb.PbFieldType.PM, protoName: 'imageInfoList', subBuilder: BackgroundImageInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchBackgroundPicListRsp clone() => FetchBackgroundPicListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchBackgroundPicListRsp copyWith(void Function(FetchBackgroundPicListRsp) updates) => super.copyWith((message) => updates(message as FetchBackgroundPicListRsp)) as FetchBackgroundPicListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchBackgroundPicListRsp create() => FetchBackgroundPicListRsp._();
  FetchBackgroundPicListRsp createEmptyInstance() => create();
  static $pb.PbList<FetchBackgroundPicListRsp> createRepeated() => $pb.PbList<FetchBackgroundPicListRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchBackgroundPicListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchBackgroundPicListRsp>(create);
  static FetchBackgroundPicListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BackgroundImageInfo> get imageInfoList => $_getList(0);
}

class Wallet extends $pb.GeneratedMessage {
  factory Wallet({
    $fixnum.Int64? id,
    $core.int? walletType,
    $fixnum.Int64? value,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Wallet._() : super();
  factory Wallet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Wallet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Wallet', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..aInt64(3, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Wallet clone() => Wallet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Wallet copyWith(void Function(Wallet) updates) => super.copyWith((message) => updates(message as Wallet)) as Wallet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Wallet create() => Wallet._();
  Wallet createEmptyInstance() => create();
  static $pb.PbList<Wallet> createRepeated() => $pb.PbList<Wallet>();
  @$core.pragma('dart2js:noInline')
  static Wallet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Wallet>(create);
  static Wallet? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(1);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get value => $_getI64(2);
  @$pb.TagNumber(3)
  set value($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

/// 获取钱包信息
class WalletGetInfoReq extends $pb.GeneratedMessage {
  factory WalletGetInfoReq({
    $fixnum.Int64? userId,
    $core.int? walletType,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    return $result;
  }
  WalletGetInfoReq._() : super();
  factory WalletGetInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletGetInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletGetInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletGetInfoReq clone() => WalletGetInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletGetInfoReq copyWith(void Function(WalletGetInfoReq) updates) => super.copyWith((message) => updates(message as WalletGetInfoReq)) as WalletGetInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletGetInfoReq create() => WalletGetInfoReq._();
  WalletGetInfoReq createEmptyInstance() => create();
  static $pb.PbList<WalletGetInfoReq> createRepeated() => $pb.PbList<WalletGetInfoReq>();
  @$core.pragma('dart2js:noInline')
  static WalletGetInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletGetInfoReq>(create);
  static WalletGetInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(1);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);
}

class WalletGetInfoRsp extends $pb.GeneratedMessage {
  factory WalletGetInfoRsp({
    $core.Iterable<Wallet>? wallet,
    $core.bool? hasePassWorld,
  }) {
    final $result = create();
    if (wallet != null) {
      $result.wallet.addAll(wallet);
    }
    if (hasePassWorld != null) {
      $result.hasePassWorld = hasePassWorld;
    }
    return $result;
  }
  WalletGetInfoRsp._() : super();
  factory WalletGetInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletGetInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletGetInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..pc<Wallet>(1, _omitFieldNames ? '' : 'wallet', $pb.PbFieldType.PM, subBuilder: Wallet.create)
    ..aOB(2, _omitFieldNames ? '' : 'hasePassWorld', protoName: 'hasePassWorld')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletGetInfoRsp clone() => WalletGetInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletGetInfoRsp copyWith(void Function(WalletGetInfoRsp) updates) => super.copyWith((message) => updates(message as WalletGetInfoRsp)) as WalletGetInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletGetInfoRsp create() => WalletGetInfoRsp._();
  WalletGetInfoRsp createEmptyInstance() => create();
  static $pb.PbList<WalletGetInfoRsp> createRepeated() => $pb.PbList<WalletGetInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static WalletGetInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletGetInfoRsp>(create);
  static WalletGetInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Wallet> get wallet => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get hasePassWorld => $_getBF(1);
  @$pb.TagNumber(2)
  set hasePassWorld($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasePassWorld() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasePassWorld() => clearField(2);
}

/// 加钱，只能服务器触发
class WalletAddValueReq extends $pb.GeneratedMessage {
  factory WalletAddValueReq({
    $fixnum.Int64? userId,
    $core.int? walletType,
    $fixnum.Int64? addValue,
    $fixnum.Int64? optUserId,
    $core.String? description,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (addValue != null) {
      $result.addValue = addValue;
    }
    if (optUserId != null) {
      $result.optUserId = optUserId;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  WalletAddValueReq._() : super();
  factory WalletAddValueReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletAddValueReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletAddValueReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..aInt64(3, _omitFieldNames ? '' : 'addValue', protoName: 'addValue')
    ..aInt64(4, _omitFieldNames ? '' : 'optUserId', protoName: 'optUserId')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletAddValueReq clone() => WalletAddValueReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletAddValueReq copyWith(void Function(WalletAddValueReq) updates) => super.copyWith((message) => updates(message as WalletAddValueReq)) as WalletAddValueReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletAddValueReq create() => WalletAddValueReq._();
  WalletAddValueReq createEmptyInstance() => create();
  static $pb.PbList<WalletAddValueReq> createRepeated() => $pb.PbList<WalletAddValueReq>();
  @$core.pragma('dart2js:noInline')
  static WalletAddValueReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletAddValueReq>(create);
  static WalletAddValueReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(1);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get addValue => $_getI64(2);
  @$pb.TagNumber(3)
  set addValue($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddValue() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get optUserId => $_getI64(3);
  @$pb.TagNumber(4)
  set optUserId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOptUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
}

/// 加钱结果
class WalletAddValueRsp extends $pb.GeneratedMessage {
  factory WalletAddValueRsp({
    $fixnum.Int64? userId,
    $core.int? walletType,
    $fixnum.Int64? addValue,
    $fixnum.Int64? optUserId,
    $fixnum.Int64? latestValue,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (addValue != null) {
      $result.addValue = addValue;
    }
    if (optUserId != null) {
      $result.optUserId = optUserId;
    }
    if (latestValue != null) {
      $result.latestValue = latestValue;
    }
    return $result;
  }
  WalletAddValueRsp._() : super();
  factory WalletAddValueRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletAddValueRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletAddValueRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..aInt64(3, _omitFieldNames ? '' : 'addValue', protoName: 'addValue')
    ..aInt64(4, _omitFieldNames ? '' : 'optUserId', protoName: 'optUserId')
    ..aInt64(5, _omitFieldNames ? '' : 'latestValue', protoName: 'latestValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletAddValueRsp clone() => WalletAddValueRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletAddValueRsp copyWith(void Function(WalletAddValueRsp) updates) => super.copyWith((message) => updates(message as WalletAddValueRsp)) as WalletAddValueRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletAddValueRsp create() => WalletAddValueRsp._();
  WalletAddValueRsp createEmptyInstance() => create();
  static $pb.PbList<WalletAddValueRsp> createRepeated() => $pb.PbList<WalletAddValueRsp>();
  @$core.pragma('dart2js:noInline')
  static WalletAddValueRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletAddValueRsp>(create);
  static WalletAddValueRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(1);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get addValue => $_getI64(2);
  @$pb.TagNumber(3)
  set addValue($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddValue() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get optUserId => $_getI64(3);
  @$pb.TagNumber(4)
  set optUserId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOptUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptUserId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get latestValue => $_getI64(4);
  @$pb.TagNumber(5)
  set latestValue($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatestValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearLatestValue() => clearField(5);
}

/// 减钱,只有系统才可操作
class WalletReduceValueReq extends $pb.GeneratedMessage {
  factory WalletReduceValueReq({
    $fixnum.Int64? userId,
    $core.int? walletType,
    $fixnum.Int64? reduceValue,
    $fixnum.Int64? optUserId,
    $core.String? description,
    $core.String? passwd,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (reduceValue != null) {
      $result.reduceValue = reduceValue;
    }
    if (optUserId != null) {
      $result.optUserId = optUserId;
    }
    if (description != null) {
      $result.description = description;
    }
    if (passwd != null) {
      $result.passwd = passwd;
    }
    return $result;
  }
  WalletReduceValueReq._() : super();
  factory WalletReduceValueReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletReduceValueReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletReduceValueReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..aInt64(3, _omitFieldNames ? '' : 'reduceValue', protoName: 'reduceValue')
    ..aInt64(4, _omitFieldNames ? '' : 'optUserId', protoName: 'optUserId')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'passwd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletReduceValueReq clone() => WalletReduceValueReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletReduceValueReq copyWith(void Function(WalletReduceValueReq) updates) => super.copyWith((message) => updates(message as WalletReduceValueReq)) as WalletReduceValueReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletReduceValueReq create() => WalletReduceValueReq._();
  WalletReduceValueReq createEmptyInstance() => create();
  static $pb.PbList<WalletReduceValueReq> createRepeated() => $pb.PbList<WalletReduceValueReq>();
  @$core.pragma('dart2js:noInline')
  static WalletReduceValueReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletReduceValueReq>(create);
  static WalletReduceValueReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(1);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get reduceValue => $_getI64(2);
  @$pb.TagNumber(3)
  set reduceValue($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReduceValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearReduceValue() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get optUserId => $_getI64(3);
  @$pb.TagNumber(4)
  set optUserId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOptUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get passwd => $_getSZ(5);
  @$pb.TagNumber(6)
  set passwd($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPasswd() => $_has(5);
  @$pb.TagNumber(6)
  void clearPasswd() => clearField(6);
}

class WalletReduceValueRsp extends $pb.GeneratedMessage {
  factory WalletReduceValueRsp({
    $fixnum.Int64? userId,
    $core.int? walletType,
    $fixnum.Int64? reduceValue,
    $fixnum.Int64? optUserId,
    $fixnum.Int64? latestValue,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (reduceValue != null) {
      $result.reduceValue = reduceValue;
    }
    if (optUserId != null) {
      $result.optUserId = optUserId;
    }
    if (latestValue != null) {
      $result.latestValue = latestValue;
    }
    return $result;
  }
  WalletReduceValueRsp._() : super();
  factory WalletReduceValueRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletReduceValueRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletReduceValueRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..aInt64(3, _omitFieldNames ? '' : 'reduceValue', protoName: 'reduceValue')
    ..aInt64(4, _omitFieldNames ? '' : 'optUserId', protoName: 'optUserId')
    ..aInt64(5, _omitFieldNames ? '' : 'latestValue', protoName: 'latestValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletReduceValueRsp clone() => WalletReduceValueRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletReduceValueRsp copyWith(void Function(WalletReduceValueRsp) updates) => super.copyWith((message) => updates(message as WalletReduceValueRsp)) as WalletReduceValueRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletReduceValueRsp create() => WalletReduceValueRsp._();
  WalletReduceValueRsp createEmptyInstance() => create();
  static $pb.PbList<WalletReduceValueRsp> createRepeated() => $pb.PbList<WalletReduceValueRsp>();
  @$core.pragma('dart2js:noInline')
  static WalletReduceValueRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletReduceValueRsp>(create);
  static WalletReduceValueRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(1);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get reduceValue => $_getI64(2);
  @$pb.TagNumber(3)
  set reduceValue($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReduceValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearReduceValue() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get optUserId => $_getI64(3);
  @$pb.TagNumber(4)
  set optUserId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOptUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptUserId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get latestValue => $_getI64(4);
  @$pb.TagNumber(5)
  set latestValue($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatestValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearLatestValue() => clearField(5);
}

/// 钱包变化通知
class WalletChangeNotify extends $pb.GeneratedMessage {
  factory WalletChangeNotify({
    $core.int? walletType,
    $fixnum.Int64? changeValue,
    $fixnum.Int64? optUserId,
    $fixnum.Int64? latestValue,
    $core.String? description,
  }) {
    final $result = create();
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (changeValue != null) {
      $result.changeValue = changeValue;
    }
    if (optUserId != null) {
      $result.optUserId = optUserId;
    }
    if (latestValue != null) {
      $result.latestValue = latestValue;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  WalletChangeNotify._() : super();
  factory WalletChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..aInt64(3, _omitFieldNames ? '' : 'changeValue', protoName: 'changeValue')
    ..aInt64(4, _omitFieldNames ? '' : 'optUserId', protoName: 'optUserId')
    ..aInt64(5, _omitFieldNames ? '' : 'latestValue', protoName: 'latestValue')
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletChangeNotify clone() => WalletChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletChangeNotify copyWith(void Function(WalletChangeNotify) updates) => super.copyWith((message) => updates(message as WalletChangeNotify)) as WalletChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletChangeNotify create() => WalletChangeNotify._();
  WalletChangeNotify createEmptyInstance() => create();
  static $pb.PbList<WalletChangeNotify> createRepeated() => $pb.PbList<WalletChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static WalletChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletChangeNotify>(create);
  static WalletChangeNotify? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(0);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(0);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get changeValue => $_getI64(1);
  @$pb.TagNumber(3)
  set changeValue($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasChangeValue() => $_has(1);
  @$pb.TagNumber(3)
  void clearChangeValue() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get optUserId => $_getI64(2);
  @$pb.TagNumber(4)
  set optUserId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasOptUserId() => $_has(2);
  @$pb.TagNumber(4)
  void clearOptUserId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get latestValue => $_getI64(3);
  @$pb.TagNumber(5)
  set latestValue($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatestValue() => $_has(3);
  @$pb.TagNumber(5)
  void clearLatestValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);
}

/// 钱包变化流水
class WalletChangeFlowItem extends $pb.GeneratedMessage {
  factory WalletChangeFlowItem({
    $fixnum.Int64? id,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
    $fixnum.Int64? userId,
    $core.int? walletType,
    $fixnum.Int64? changeValue,
    $fixnum.Int64? optUserId,
    $fixnum.Int64? latestValue,
    $core.String? description,
    $core.int? status,
    $core.String? statusDesc,
    $core.int? channelId,
    $core.String? channelName,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (changeValue != null) {
      $result.changeValue = changeValue;
    }
    if (optUserId != null) {
      $result.optUserId = optUserId;
    }
    if (latestValue != null) {
      $result.latestValue = latestValue;
    }
    if (description != null) {
      $result.description = description;
    }
    if (status != null) {
      $result.status = status;
    }
    if (statusDesc != null) {
      $result.statusDesc = statusDesc;
    }
    if (channelId != null) {
      $result.channelId = channelId;
    }
    if (channelName != null) {
      $result.channelName = channelName;
    }
    return $result;
  }
  WalletChangeFlowItem._() : super();
  factory WalletChangeFlowItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletChangeFlowItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletChangeFlowItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aInt64(3, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..aInt64(4, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..aInt64(6, _omitFieldNames ? '' : 'changeValue', protoName: 'changeValue')
    ..aInt64(7, _omitFieldNames ? '' : 'optUserId', protoName: 'optUserId')
    ..aInt64(8, _omitFieldNames ? '' : 'latestValue', protoName: 'latestValue')
    ..aOS(9, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'Status', $pb.PbFieldType.O3, protoName: 'Status')
    ..aOS(11, _omitFieldNames ? '' : 'StatusDesc', protoName: 'StatusDesc')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'ChannelId', $pb.PbFieldType.O3, protoName: 'ChannelId')
    ..aOS(13, _omitFieldNames ? '' : 'ChannelName', protoName: 'ChannelName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletChangeFlowItem clone() => WalletChangeFlowItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletChangeFlowItem copyWith(void Function(WalletChangeFlowItem) updates) => super.copyWith((message) => updates(message as WalletChangeFlowItem)) as WalletChangeFlowItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletChangeFlowItem create() => WalletChangeFlowItem._();
  WalletChangeFlowItem createEmptyInstance() => create();
  static $pb.PbList<WalletChangeFlowItem> createRepeated() => $pb.PbList<WalletChangeFlowItem>();
  @$core.pragma('dart2js:noInline')
  static WalletChangeFlowItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletChangeFlowItem>(create);
  static WalletChangeFlowItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createdAt => $_getI64(1);
  @$pb.TagNumber(2)
  set createdAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get updatedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set updatedAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get userId => $_getI64(3);
  @$pb.TagNumber(4)
  set userId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get walletType => $_getIZ(4);
  @$pb.TagNumber(5)
  set walletType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWalletType() => $_has(4);
  @$pb.TagNumber(5)
  void clearWalletType() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get changeValue => $_getI64(5);
  @$pb.TagNumber(6)
  set changeValue($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChangeValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearChangeValue() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get optUserId => $_getI64(6);
  @$pb.TagNumber(7)
  set optUserId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOptUserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearOptUserId() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get latestValue => $_getI64(7);
  @$pb.TagNumber(8)
  set latestValue($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLatestValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearLatestValue() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get description => $_getSZ(8);
  @$pb.TagNumber(9)
  set description($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDescription() => $_has(8);
  @$pb.TagNumber(9)
  void clearDescription() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get status => $_getIZ(9);
  @$pb.TagNumber(10)
  set status($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStatus() => $_has(9);
  @$pb.TagNumber(10)
  void clearStatus() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get statusDesc => $_getSZ(10);
  @$pb.TagNumber(11)
  set statusDesc($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasStatusDesc() => $_has(10);
  @$pb.TagNumber(11)
  void clearStatusDesc() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get channelId => $_getIZ(11);
  @$pb.TagNumber(12)
  set channelId($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasChannelId() => $_has(11);
  @$pb.TagNumber(12)
  void clearChannelId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get channelName => $_getSZ(12);
  @$pb.TagNumber(13)
  set channelName($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasChannelName() => $_has(12);
  @$pb.TagNumber(13)
  void clearChannelName() => clearField(13);
}

/// 请求流水
class WalletGetChangeFlowReq extends $pb.GeneratedMessage {
  factory WalletGetChangeFlowReq({
    $core.int? page,
    $core.int? pageSize,
    $core.int? sortingRules,
    $fixnum.Int64? beginTime,
    $fixnum.Int64? endTime,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (sortingRules != null) {
      $result.sortingRules = sortingRules;
    }
    if (beginTime != null) {
      $result.beginTime = beginTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    return $result;
  }
  WalletGetChangeFlowReq._() : super();
  factory WalletGetChangeFlowReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletGetChangeFlowReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletGetChangeFlowReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'SortingRules', $pb.PbFieldType.O3, protoName: 'SortingRules')
    ..aInt64(4, _omitFieldNames ? '' : 'beginTime', protoName: 'beginTime')
    ..aInt64(5, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletGetChangeFlowReq clone() => WalletGetChangeFlowReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletGetChangeFlowReq copyWith(void Function(WalletGetChangeFlowReq) updates) => super.copyWith((message) => updates(message as WalletGetChangeFlowReq)) as WalletGetChangeFlowReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletGetChangeFlowReq create() => WalletGetChangeFlowReq._();
  WalletGetChangeFlowReq createEmptyInstance() => create();
  static $pb.PbList<WalletGetChangeFlowReq> createRepeated() => $pb.PbList<WalletGetChangeFlowReq>();
  @$core.pragma('dart2js:noInline')
  static WalletGetChangeFlowReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletGetChangeFlowReq>(create);
  static WalletGetChangeFlowReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sortingRules => $_getIZ(2);
  @$pb.TagNumber(3)
  set sortingRules($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSortingRules() => $_has(2);
  @$pb.TagNumber(3)
  void clearSortingRules() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get beginTime => $_getI64(3);
  @$pb.TagNumber(4)
  set beginTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBeginTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearBeginTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get endTime => $_getI64(4);
  @$pb.TagNumber(5)
  set endTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndTime() => clearField(5);
}

/// 流水返回
class WalletGetChangeFlowRsp extends $pb.GeneratedMessage {
  factory WalletGetChangeFlowRsp({
    $core.int? page,
    $core.int? pageSize,
    $core.int? sortingRules,
    $fixnum.Int64? beginTime,
    $fixnum.Int64? endTime,
    $fixnum.Int64? totalCount,
    $core.Iterable<WalletChangeFlowItem>? items,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (sortingRules != null) {
      $result.sortingRules = sortingRules;
    }
    if (beginTime != null) {
      $result.beginTime = beginTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  WalletGetChangeFlowRsp._() : super();
  factory WalletGetChangeFlowRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletGetChangeFlowRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletGetChangeFlowRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'SortingRules', $pb.PbFieldType.O3, protoName: 'SortingRules')
    ..aInt64(4, _omitFieldNames ? '' : 'beginTime', protoName: 'beginTime')
    ..aInt64(5, _omitFieldNames ? '' : 'endTime', protoName: 'endTime')
    ..aInt64(6, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..pc<WalletChangeFlowItem>(7, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: WalletChangeFlowItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletGetChangeFlowRsp clone() => WalletGetChangeFlowRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletGetChangeFlowRsp copyWith(void Function(WalletGetChangeFlowRsp) updates) => super.copyWith((message) => updates(message as WalletGetChangeFlowRsp)) as WalletGetChangeFlowRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletGetChangeFlowRsp create() => WalletGetChangeFlowRsp._();
  WalletGetChangeFlowRsp createEmptyInstance() => create();
  static $pb.PbList<WalletGetChangeFlowRsp> createRepeated() => $pb.PbList<WalletGetChangeFlowRsp>();
  @$core.pragma('dart2js:noInline')
  static WalletGetChangeFlowRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletGetChangeFlowRsp>(create);
  static WalletGetChangeFlowRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sortingRules => $_getIZ(2);
  @$pb.TagNumber(3)
  set sortingRules($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSortingRules() => $_has(2);
  @$pb.TagNumber(3)
  void clearSortingRules() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get beginTime => $_getI64(3);
  @$pb.TagNumber(4)
  set beginTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBeginTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearBeginTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get endTime => $_getI64(4);
  @$pb.TagNumber(5)
  set endTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndTime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalCount => $_getI64(5);
  @$pb.TagNumber(6)
  set totalCount($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<WalletChangeFlowItem> get items => $_getList(6);
}

/// 设置密码
class WalletSetPasswordReq extends $pb.GeneratedMessage {
  factory WalletSetPasswordReq({
    $fixnum.Int64? userId,
    $core.int? walletType,
    $core.String? phoneCode,
    $core.String? oldPassword,
    $core.String? newPassword,
    $core.String? changeReason,
    $fixnum.Int64? optUserId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (walletType != null) {
      $result.walletType = walletType;
    }
    if (phoneCode != null) {
      $result.phoneCode = phoneCode;
    }
    if (oldPassword != null) {
      $result.oldPassword = oldPassword;
    }
    if (newPassword != null) {
      $result.newPassword = newPassword;
    }
    if (changeReason != null) {
      $result.changeReason = changeReason;
    }
    if (optUserId != null) {
      $result.optUserId = optUserId;
    }
    return $result;
  }
  WalletSetPasswordReq._() : super();
  factory WalletSetPasswordReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletSetPasswordReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletSetPasswordReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'walletType', $pb.PbFieldType.O3, protoName: 'walletType')
    ..aOS(3, _omitFieldNames ? '' : 'phoneCode', protoName: 'phoneCode')
    ..aOS(4, _omitFieldNames ? '' : 'oldPassword', protoName: 'oldPassword')
    ..aOS(5, _omitFieldNames ? '' : 'newPassword', protoName: 'newPassword')
    ..aOS(6, _omitFieldNames ? '' : 'changeReason', protoName: 'changeReason')
    ..aInt64(7, _omitFieldNames ? '' : 'optUserId', protoName: 'optUserId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletSetPasswordReq clone() => WalletSetPasswordReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletSetPasswordReq copyWith(void Function(WalletSetPasswordReq) updates) => super.copyWith((message) => updates(message as WalletSetPasswordReq)) as WalletSetPasswordReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletSetPasswordReq create() => WalletSetPasswordReq._();
  WalletSetPasswordReq createEmptyInstance() => create();
  static $pb.PbList<WalletSetPasswordReq> createRepeated() => $pb.PbList<WalletSetPasswordReq>();
  @$core.pragma('dart2js:noInline')
  static WalletSetPasswordReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletSetPasswordReq>(create);
  static WalletSetPasswordReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get walletType => $_getIZ(1);
  @$pb.TagNumber(2)
  set walletType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phoneCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoneCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get oldPassword => $_getSZ(3);
  @$pb.TagNumber(4)
  set oldPassword($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOldPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearOldPassword() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get newPassword => $_getSZ(4);
  @$pb.TagNumber(5)
  set newPassword($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNewPassword() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewPassword() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get changeReason => $_getSZ(5);
  @$pb.TagNumber(6)
  set changeReason($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChangeReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearChangeReason() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get optUserId => $_getI64(6);
  @$pb.TagNumber(7)
  set optUserId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOptUserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearOptUserId() => clearField(7);
}

class Card extends $pb.GeneratedMessage {
  factory Card({
    $fixnum.Int64? id,
    $core.String? icon,
    $core.String? name,
    $core.String? code,
    $core.String? awardsUrl,
    $fixnum.Int64? createTime,
    $fixnum.Int64? expireTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (name != null) {
      $result.name = name;
    }
    if (code != null) {
      $result.code = code;
    }
    if (awardsUrl != null) {
      $result.awardsUrl = awardsUrl;
    }
    if (createTime != null) {
      $result.createTime = createTime;
    }
    if (expireTime != null) {
      $result.expireTime = expireTime;
    }
    return $result;
  }
  Card._() : super();
  factory Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'code')
    ..aOS(5, _omitFieldNames ? '' : 'awardsUrl', protoName: 'awardsUrl')
    ..aInt64(6, _omitFieldNames ? '' : 'createTime', protoName: 'createTime')
    ..aInt64(7, _omitFieldNames ? '' : 'expireTime', protoName: 'expireTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Card clone() => Card()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Card copyWith(void Function(Card) updates) => super.copyWith((message) => updates(message as Card)) as Card;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Card create() => Card._();
  Card createEmptyInstance() => create();
  static $pb.PbList<Card> createRepeated() => $pb.PbList<Card>();
  @$core.pragma('dart2js:noInline')
  static Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Card>(create);
  static Card? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get code => $_getSZ(3);
  @$pb.TagNumber(4)
  set code($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get awardsUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set awardsUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAwardsUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAwardsUrl() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createTime => $_getI64(5);
  @$pb.TagNumber(6)
  set createTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateTime() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get expireTime => $_getI64(6);
  @$pb.TagNumber(7)
  set expireTime($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpireTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearExpireTime() => clearField(7);
}

/// 获取卡包列表，时间默认倒序
class GetCardPackageItemsReq extends $pb.GeneratedMessage {
  factory GetCardPackageItemsReq({
    $core.int? page,
    $core.int? pageSize,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    return $result;
  }
  GetCardPackageItemsReq._() : super();
  factory GetCardPackageItemsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCardPackageItemsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCardPackageItemsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCardPackageItemsReq clone() => GetCardPackageItemsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCardPackageItemsReq copyWith(void Function(GetCardPackageItemsReq) updates) => super.copyWith((message) => updates(message as GetCardPackageItemsReq)) as GetCardPackageItemsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCardPackageItemsReq create() => GetCardPackageItemsReq._();
  GetCardPackageItemsReq createEmptyInstance() => create();
  static $pb.PbList<GetCardPackageItemsReq> createRepeated() => $pb.PbList<GetCardPackageItemsReq>();
  @$core.pragma('dart2js:noInline')
  static GetCardPackageItemsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCardPackageItemsReq>(create);
  static GetCardPackageItemsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);
}

class GetCardPackageItemsRsp extends $pb.GeneratedMessage {
  factory GetCardPackageItemsRsp({
    $core.int? page,
    $core.int? pageSize,
    $core.int? totalCount,
    $core.Iterable<Card>? cardItems,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (cardItems != null) {
      $result.cardItems.addAll(cardItems);
    }
    return $result;
  }
  GetCardPackageItemsRsp._() : super();
  factory GetCardPackageItemsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCardPackageItemsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCardPackageItemsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3, protoName: 'totalCount')
    ..pc<Card>(4, _omitFieldNames ? '' : 'cardItems', $pb.PbFieldType.PM, protoName: 'cardItems', subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCardPackageItemsRsp clone() => GetCardPackageItemsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCardPackageItemsRsp copyWith(void Function(GetCardPackageItemsRsp) updates) => super.copyWith((message) => updates(message as GetCardPackageItemsRsp)) as GetCardPackageItemsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCardPackageItemsRsp create() => GetCardPackageItemsRsp._();
  GetCardPackageItemsRsp createEmptyInstance() => create();
  static $pb.PbList<GetCardPackageItemsRsp> createRepeated() => $pb.PbList<GetCardPackageItemsRsp>();
  @$core.pragma('dart2js:noInline')
  static GetCardPackageItemsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCardPackageItemsRsp>(create);
  static GetCardPackageItemsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Card> get cardItems => $_getList(3);
}

/// 签到
class TaskSignUpReq extends $pb.GeneratedMessage {
  factory TaskSignUpReq() => create();
  TaskSignUpReq._() : super();
  factory TaskSignUpReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskSignUpReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskSignUpReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskSignUpReq clone() => TaskSignUpReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskSignUpReq copyWith(void Function(TaskSignUpReq) updates) => super.copyWith((message) => updates(message as TaskSignUpReq)) as TaskSignUpReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskSignUpReq create() => TaskSignUpReq._();
  TaskSignUpReq createEmptyInstance() => create();
  static $pb.PbList<TaskSignUpReq> createRepeated() => $pb.PbList<TaskSignUpReq>();
  @$core.pragma('dart2js:noInline')
  static TaskSignUpReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskSignUpReq>(create);
  static TaskSignUpReq? _defaultInstance;
}

class TaskSignUpRsp extends $pb.GeneratedMessage {
  factory TaskSignUpRsp({
    $core.int? continuTimes,
    $core.Iterable<AwardsInstance>? awards,
  }) {
    final $result = create();
    if (continuTimes != null) {
      $result.continuTimes = continuTimes;
    }
    if (awards != null) {
      $result.awards.addAll(awards);
    }
    return $result;
  }
  TaskSignUpRsp._() : super();
  factory TaskSignUpRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskSignUpRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskSignUpRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'continuTimes', $pb.PbFieldType.O3, protoName: 'continuTimes')
    ..pc<AwardsInstance>(2, _omitFieldNames ? '' : 'awards', $pb.PbFieldType.PM, subBuilder: AwardsInstance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskSignUpRsp clone() => TaskSignUpRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskSignUpRsp copyWith(void Function(TaskSignUpRsp) updates) => super.copyWith((message) => updates(message as TaskSignUpRsp)) as TaskSignUpRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskSignUpRsp create() => TaskSignUpRsp._();
  TaskSignUpRsp createEmptyInstance() => create();
  static $pb.PbList<TaskSignUpRsp> createRepeated() => $pb.PbList<TaskSignUpRsp>();
  @$core.pragma('dart2js:noInline')
  static TaskSignUpRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskSignUpRsp>(create);
  static TaskSignUpRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get continuTimes => $_getIZ(0);
  @$pb.TagNumber(1)
  set continuTimes($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContinuTimes() => $_has(0);
  @$pb.TagNumber(1)
  void clearContinuTimes() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<AwardsInstance> get awards => $_getList(1);
}

/// 本轮签到日志
class SignUpLog extends $pb.GeneratedMessage {
  factory SignUpLog({
    $fixnum.Int64? createdAt,
    $core.int? continueTimes,
  }) {
    final $result = create();
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (continueTimes != null) {
      $result.continueTimes = continueTimes;
    }
    return $result;
  }
  SignUpLog._() : super();
  factory SignUpLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUpLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignUpLog', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'continueTimes', $pb.PbFieldType.O3, protoName: 'continueTimes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignUpLog clone() => SignUpLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignUpLog copyWith(void Function(SignUpLog) updates) => super.copyWith((message) => updates(message as SignUpLog)) as SignUpLog;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignUpLog create() => SignUpLog._();
  SignUpLog createEmptyInstance() => create();
  static $pb.PbList<SignUpLog> createRepeated() => $pb.PbList<SignUpLog>();
  @$core.pragma('dart2js:noInline')
  static SignUpLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUpLog>(create);
  static SignUpLog? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get createdAt => $_getI64(0);
  @$pb.TagNumber(1)
  set createdAt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedAt() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get continueTimes => $_getIZ(1);
  @$pb.TagNumber(2)
  set continueTimes($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContinueTimes() => $_has(1);
  @$pb.TagNumber(2)
  void clearContinueTimes() => clearField(2);
}

/// 获取本轮签到最新状态，连续签到的天数
class TaskSignUpStatusReq extends $pb.GeneratedMessage {
  factory TaskSignUpStatusReq() => create();
  TaskSignUpStatusReq._() : super();
  factory TaskSignUpStatusReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskSignUpStatusReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskSignUpStatusReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskSignUpStatusReq clone() => TaskSignUpStatusReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskSignUpStatusReq copyWith(void Function(TaskSignUpStatusReq) updates) => super.copyWith((message) => updates(message as TaskSignUpStatusReq)) as TaskSignUpStatusReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskSignUpStatusReq create() => TaskSignUpStatusReq._();
  TaskSignUpStatusReq createEmptyInstance() => create();
  static $pb.PbList<TaskSignUpStatusReq> createRepeated() => $pb.PbList<TaskSignUpStatusReq>();
  @$core.pragma('dart2js:noInline')
  static TaskSignUpStatusReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskSignUpStatusReq>(create);
  static TaskSignUpStatusReq? _defaultInstance;
}

class TaskSignUpStatusRsp extends $pb.GeneratedMessage {
  factory TaskSignUpStatusRsp({
    $fixnum.Int64? periodBeginTime,
    $fixnum.Int64? createdTime,
    $core.int? continuTimes,
    $core.Iterable<SignUpLog>? signUpLog,
  }) {
    final $result = create();
    if (periodBeginTime != null) {
      $result.periodBeginTime = periodBeginTime;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    if (continuTimes != null) {
      $result.continuTimes = continuTimes;
    }
    if (signUpLog != null) {
      $result.signUpLog.addAll(signUpLog);
    }
    return $result;
  }
  TaskSignUpStatusRsp._() : super();
  factory TaskSignUpStatusRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskSignUpStatusRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskSignUpStatusRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'periodBeginTime', protoName: 'periodBeginTime')
    ..aInt64(2, _omitFieldNames ? '' : 'createdTime', protoName: 'createdTime')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'continuTimes', $pb.PbFieldType.O3, protoName: 'continuTimes')
    ..pc<SignUpLog>(4, _omitFieldNames ? '' : 'signUpLog', $pb.PbFieldType.PM, protoName: 'signUpLog', subBuilder: SignUpLog.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskSignUpStatusRsp clone() => TaskSignUpStatusRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskSignUpStatusRsp copyWith(void Function(TaskSignUpStatusRsp) updates) => super.copyWith((message) => updates(message as TaskSignUpStatusRsp)) as TaskSignUpStatusRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskSignUpStatusRsp create() => TaskSignUpStatusRsp._();
  TaskSignUpStatusRsp createEmptyInstance() => create();
  static $pb.PbList<TaskSignUpStatusRsp> createRepeated() => $pb.PbList<TaskSignUpStatusRsp>();
  @$core.pragma('dart2js:noInline')
  static TaskSignUpStatusRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskSignUpStatusRsp>(create);
  static TaskSignUpStatusRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get periodBeginTime => $_getI64(0);
  @$pb.TagNumber(1)
  set periodBeginTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriodBeginTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriodBeginTime() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createdTime => $_getI64(1);
  @$pb.TagNumber(2)
  set createdTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get continuTimes => $_getIZ(2);
  @$pb.TagNumber(3)
  set continuTimes($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContinuTimes() => $_has(2);
  @$pb.TagNumber(3)
  void clearContinuTimes() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<SignUpLog> get signUpLog => $_getList(3);
}

/// 获取本次签到信息
class TaskSignUpInfoReq extends $pb.GeneratedMessage {
  factory TaskSignUpInfoReq() => create();
  TaskSignUpInfoReq._() : super();
  factory TaskSignUpInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskSignUpInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskSignUpInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskSignUpInfoReq clone() => TaskSignUpInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskSignUpInfoReq copyWith(void Function(TaskSignUpInfoReq) updates) => super.copyWith((message) => updates(message as TaskSignUpInfoReq)) as TaskSignUpInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskSignUpInfoReq create() => TaskSignUpInfoReq._();
  TaskSignUpInfoReq createEmptyInstance() => create();
  static $pb.PbList<TaskSignUpInfoReq> createRepeated() => $pb.PbList<TaskSignUpInfoReq>();
  @$core.pragma('dart2js:noInline')
  static TaskSignUpInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskSignUpInfoReq>(create);
  static TaskSignUpInfoReq? _defaultInstance;
}

/// 奖励
class Awards extends $pb.GeneratedMessage {
  factory Awards({
    $fixnum.Int64? awardsId,
    $core.String? name,
    $core.String? icon,
    $core.String? description,
    $core.String? data,
  }) {
    final $result = create();
    if (awardsId != null) {
      $result.awardsId = awardsId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (description != null) {
      $result.description = description;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  Awards._() : super();
  factory Awards.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Awards.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Awards', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'awardsId', protoName: 'awardsId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'icon')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Awards clone() => Awards()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Awards copyWith(void Function(Awards) updates) => super.copyWith((message) => updates(message as Awards)) as Awards;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Awards create() => Awards._();
  Awards createEmptyInstance() => create();
  static $pb.PbList<Awards> createRepeated() => $pb.PbList<Awards>();
  @$core.pragma('dart2js:noInline')
  static Awards getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Awards>(create);
  static Awards? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get awardsId => $_getI64(0);
  @$pb.TagNumber(1)
  set awardsId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAwardsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAwardsId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(4)
  void clearIcon() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get data => $_getSZ(4);
  @$pb.TagNumber(6)
  set data($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasData() => $_has(4);
  @$pb.TagNumber(6)
  void clearData() => clearField(6);
}

/// 奖励
class AwardsInstance extends $pb.GeneratedMessage {
  factory AwardsInstance({
    Awards? awardsTemplate,
    $core.Map<$core.String, $core.String>? awardsInstanceData,
    $core.String? awardsInstanceJson,
  }) {
    final $result = create();
    if (awardsTemplate != null) {
      $result.awardsTemplate = awardsTemplate;
    }
    if (awardsInstanceData != null) {
      $result.awardsInstanceData.addAll(awardsInstanceData);
    }
    if (awardsInstanceJson != null) {
      $result.awardsInstanceJson = awardsInstanceJson;
    }
    return $result;
  }
  AwardsInstance._() : super();
  factory AwardsInstance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AwardsInstance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AwardsInstance', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<Awards>(1, _omitFieldNames ? '' : 'awardsTemplate', protoName: 'awardsTemplate', subBuilder: Awards.create)
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'awardsInstanceData', protoName: 'awardsInstanceData', entryClassName: 'AwardsInstance.AwardsInstanceDataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_msg_commim_uaa'))
    ..aOS(3, _omitFieldNames ? '' : 'awardsInstanceJson', protoName: 'awardsInstanceJson')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AwardsInstance clone() => AwardsInstance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AwardsInstance copyWith(void Function(AwardsInstance) updates) => super.copyWith((message) => updates(message as AwardsInstance)) as AwardsInstance;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AwardsInstance create() => AwardsInstance._();
  AwardsInstance createEmptyInstance() => create();
  static $pb.PbList<AwardsInstance> createRepeated() => $pb.PbList<AwardsInstance>();
  @$core.pragma('dart2js:noInline')
  static AwardsInstance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AwardsInstance>(create);
  static AwardsInstance? _defaultInstance;

  @$pb.TagNumber(1)
  Awards get awardsTemplate => $_getN(0);
  @$pb.TagNumber(1)
  set awardsTemplate(Awards v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAwardsTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearAwardsTemplate() => clearField(1);
  @$pb.TagNumber(1)
  Awards ensureAwardsTemplate() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get awardsInstanceData => $_getMap(1);

  @$pb.TagNumber(3)
  $core.String get awardsInstanceJson => $_getSZ(2);
  @$pb.TagNumber(3)
  set awardsInstanceJson($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAwardsInstanceJson() => $_has(2);
  @$pb.TagNumber(3)
  void clearAwardsInstanceJson() => clearField(3);
}

class Task extends $pb.GeneratedMessage {
  factory Task({
    $fixnum.Int64? id,
    $core.String? name,
    TaskLoopType? loopType,
    TaskPeriod? period,
    $core.int? periodCounts,
    $core.String? description,
    TaskStatus? status,
    $core.Iterable<SubTask>? subTask,
    $core.Iterable<Awards>? awards,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (loopType != null) {
      $result.loopType = loopType;
    }
    if (period != null) {
      $result.period = period;
    }
    if (periodCounts != null) {
      $result.periodCounts = periodCounts;
    }
    if (description != null) {
      $result.description = description;
    }
    if (status != null) {
      $result.status = status;
    }
    if (subTask != null) {
      $result.subTask.addAll(subTask);
    }
    if (awards != null) {
      $result.awards.addAll(awards);
    }
    return $result;
  }
  Task._() : super();
  factory Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..e<TaskLoopType>(3, _omitFieldNames ? '' : 'loopType', $pb.PbFieldType.OE, protoName: 'loopType', defaultOrMaker: TaskLoopType.TaskLoopOnce, valueOf: TaskLoopType.valueOf, enumValues: TaskLoopType.values)
    ..e<TaskPeriod>(4, _omitFieldNames ? '' : 'period', $pb.PbFieldType.OE, defaultOrMaker: TaskPeriod.Day, valueOf: TaskPeriod.valueOf, enumValues: TaskPeriod.values)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'periodCounts', $pb.PbFieldType.O3, protoName: 'periodCounts')
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..e<TaskStatus>(7, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.Edit, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..pc<SubTask>(8, _omitFieldNames ? '' : 'subTask', $pb.PbFieldType.PM, protoName: 'subTask', subBuilder: SubTask.create)
    ..pc<Awards>(9, _omitFieldNames ? '' : 'awards', $pb.PbFieldType.PM, subBuilder: Awards.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task clone() => Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task copyWith(void Function(Task) updates) => super.copyWith((message) => updates(message as Task)) as Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task create() => Task._();
  Task createEmptyInstance() => create();
  static $pb.PbList<Task> createRepeated() => $pb.PbList<Task>();
  @$core.pragma('dart2js:noInline')
  static Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task>(create);
  static Task? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  TaskLoopType get loopType => $_getN(2);
  @$pb.TagNumber(3)
  set loopType(TaskLoopType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLoopType() => $_has(2);
  @$pb.TagNumber(3)
  void clearLoopType() => clearField(3);

  @$pb.TagNumber(4)
  TaskPeriod get period => $_getN(3);
  @$pb.TagNumber(4)
  set period(TaskPeriod v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPeriod() => $_has(3);
  @$pb.TagNumber(4)
  void clearPeriod() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get periodCounts => $_getIZ(4);
  @$pb.TagNumber(5)
  set periodCounts($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPeriodCounts() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeriodCounts() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  TaskStatus get status => $_getN(6);
  @$pb.TagNumber(7)
  set status(TaskStatus v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<SubTask> get subTask => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<Awards> get awards => $_getList(8);
}

/// 子任务
class SubTask extends $pb.GeneratedMessage {
  factory SubTask({
    $fixnum.Int64? subTaskId,
    $core.String? name,
    $core.String? description,
    $core.int? orderId,
    TaskStatus? status,
    $core.String? completionConditions,
    $core.Iterable<Awards>? awardsList,
    TaskGoingStatus? taskGoingStatus,
  }) {
    final $result = create();
    if (subTaskId != null) {
      $result.subTaskId = subTaskId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (orderId != null) {
      $result.orderId = orderId;
    }
    if (status != null) {
      $result.status = status;
    }
    if (completionConditions != null) {
      $result.completionConditions = completionConditions;
    }
    if (awardsList != null) {
      $result.awardsList.addAll(awardsList);
    }
    if (taskGoingStatus != null) {
      $result.taskGoingStatus = taskGoingStatus;
    }
    return $result;
  }
  SubTask._() : super();
  factory SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'subTaskId', protoName: 'subTaskId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'orderId', $pb.PbFieldType.O3, protoName: 'orderId')
    ..e<TaskStatus>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.Edit, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..aOS(6, _omitFieldNames ? '' : 'completionConditions', protoName: 'completionConditions')
    ..pc<Awards>(7, _omitFieldNames ? '' : 'awardsList', $pb.PbFieldType.PM, protoName: 'awardsList', subBuilder: Awards.create)
    ..e<TaskGoingStatus>(8, _omitFieldNames ? '' : 'taskGoingStatus', $pb.PbFieldType.OE, protoName: 'taskGoingStatus', defaultOrMaker: TaskGoingStatus.Default, valueOf: TaskGoingStatus.valueOf, enumValues: TaskGoingStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubTask clone() => SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubTask copyWith(void Function(SubTask) updates) => super.copyWith((message) => updates(message as SubTask)) as SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubTask create() => SubTask._();
  SubTask createEmptyInstance() => create();
  static $pb.PbList<SubTask> createRepeated() => $pb.PbList<SubTask>();
  @$core.pragma('dart2js:noInline')
  static SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubTask>(create);
  static SubTask? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subTaskId => $_getI64(0);
  @$pb.TagNumber(1)
  set subTaskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get orderId => $_getIZ(3);
  @$pb.TagNumber(4)
  set orderId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrderId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrderId() => clearField(4);

  @$pb.TagNumber(5)
  TaskStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(TaskStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get completionConditions => $_getSZ(5);
  @$pb.TagNumber(6)
  set completionConditions($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCompletionConditions() => $_has(5);
  @$pb.TagNumber(6)
  void clearCompletionConditions() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<Awards> get awardsList => $_getList(6);

  @$pb.TagNumber(8)
  TaskGoingStatus get taskGoingStatus => $_getN(7);
  @$pb.TagNumber(8)
  set taskGoingStatus(TaskGoingStatus v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasTaskGoingStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearTaskGoingStatus() => clearField(8);
}

/// 签到任务信息
class TaskSignUpInfoRsp extends $pb.GeneratedMessage {
  factory TaskSignUpInfoRsp({
    Task? task,
  }) {
    final $result = create();
    if (task != null) {
      $result.task = task;
    }
    return $result;
  }
  TaskSignUpInfoRsp._() : super();
  factory TaskSignUpInfoRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskSignUpInfoRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskSignUpInfoRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_commim_uaa'), createEmptyInstance: create)
    ..aOM<Task>(1, _omitFieldNames ? '' : 'task', subBuilder: Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskSignUpInfoRsp clone() => TaskSignUpInfoRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskSignUpInfoRsp copyWith(void Function(TaskSignUpInfoRsp) updates) => super.copyWith((message) => updates(message as TaskSignUpInfoRsp)) as TaskSignUpInfoRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskSignUpInfoRsp create() => TaskSignUpInfoRsp._();
  TaskSignUpInfoRsp createEmptyInstance() => create();
  static $pb.PbList<TaskSignUpInfoRsp> createRepeated() => $pb.PbList<TaskSignUpInfoRsp>();
  @$core.pragma('dart2js:noInline')
  static TaskSignUpInfoRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskSignUpInfoRsp>(create);
  static TaskSignUpInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  Task get task => $_getN(0);
  @$pb.TagNumber(1)
  set task(Task v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTask() => $_has(0);
  @$pb.TagNumber(1)
  void clearTask() => clearField(1);
  @$pb.TagNumber(1)
  Task ensureTask() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
