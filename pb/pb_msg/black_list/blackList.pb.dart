//
//  Generated code. Do not modify.
//  source: pb_msg/black_list/blackList.proto
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
import 'blackList.pbenum.dart';

export 'blackList.pbenum.dart';

/// 读取srcuser的黑名单列表
class ReadBlackListReq extends $pb.GeneratedMessage {
  factory ReadBlackListReq({
    $fixnum.Int64? srcUserid,
  }) {
    final $result = create();
    if (srcUserid != null) {
      $result.srcUserid = srcUserid;
    }
    return $result;
  }
  ReadBlackListReq._() : super();
  factory ReadBlackListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadBlackListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadBlackListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_blackList'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'srcUserid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadBlackListReq clone() => ReadBlackListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadBlackListReq copyWith(void Function(ReadBlackListReq) updates) => super.copyWith((message) => updates(message as ReadBlackListReq)) as ReadBlackListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadBlackListReq create() => ReadBlackListReq._();
  ReadBlackListReq createEmptyInstance() => create();
  static $pb.PbList<ReadBlackListReq> createRepeated() => $pb.PbList<ReadBlackListReq>();
  @$core.pragma('dart2js:noInline')
  static ReadBlackListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadBlackListReq>(create);
  static ReadBlackListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get srcUserid => $_getI64(0);
  @$pb.TagNumber(1)
  set srcUserid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcUserid() => clearField(1);
}

class ReadBlackListRsp extends $pb.GeneratedMessage {
  factory ReadBlackListRsp({
    $0.ErrCode? result,
    $core.Iterable<$core.String>? aimUserid,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (aimUserid != null) {
      $result.aimUserid.addAll(aimUserid);
    }
    return $result;
  }
  ReadBlackListRsp._() : super();
  factory ReadBlackListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadBlackListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadBlackListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_blackList'), createEmptyInstance: create)
    ..e<$0.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..pPS(2, _omitFieldNames ? '' : 'aimUserid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadBlackListRsp clone() => ReadBlackListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadBlackListRsp copyWith(void Function(ReadBlackListRsp) updates) => super.copyWith((message) => updates(message as ReadBlackListRsp)) as ReadBlackListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadBlackListRsp create() => ReadBlackListRsp._();
  ReadBlackListRsp createEmptyInstance() => create();
  static $pb.PbList<ReadBlackListRsp> createRepeated() => $pb.PbList<ReadBlackListRsp>();
  @$core.pragma('dart2js:noInline')
  static ReadBlackListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadBlackListRsp>(create);
  static ReadBlackListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($0.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get aimUserid => $_getList(1);
}

/// 判断aimuser是否在srcuser的黑名单列表中
class JudgeBlackListReq extends $pb.GeneratedMessage {
  factory JudgeBlackListReq({
    $fixnum.Int64? srcUserid,
    $fixnum.Int64? aimUserid,
  }) {
    final $result = create();
    if (srcUserid != null) {
      $result.srcUserid = srcUserid;
    }
    if (aimUserid != null) {
      $result.aimUserid = aimUserid;
    }
    return $result;
  }
  JudgeBlackListReq._() : super();
  factory JudgeBlackListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JudgeBlackListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JudgeBlackListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_blackList'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'srcUserid')
    ..aInt64(2, _omitFieldNames ? '' : 'aimUserid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JudgeBlackListReq clone() => JudgeBlackListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JudgeBlackListReq copyWith(void Function(JudgeBlackListReq) updates) => super.copyWith((message) => updates(message as JudgeBlackListReq)) as JudgeBlackListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JudgeBlackListReq create() => JudgeBlackListReq._();
  JudgeBlackListReq createEmptyInstance() => create();
  static $pb.PbList<JudgeBlackListReq> createRepeated() => $pb.PbList<JudgeBlackListReq>();
  @$core.pragma('dart2js:noInline')
  static JudgeBlackListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JudgeBlackListReq>(create);
  static JudgeBlackListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get srcUserid => $_getI64(0);
  @$pb.TagNumber(1)
  set srcUserid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcUserid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get aimUserid => $_getI64(1);
  @$pb.TagNumber(2)
  set aimUserid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAimUserid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAimUserid() => clearField(2);
}

class JudgeBlackListRsp extends $pb.GeneratedMessage {
  factory JudgeBlackListRsp({
    $0.ErrCode? result,
    Judge_State? state,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  JudgeBlackListRsp._() : super();
  factory JudgeBlackListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JudgeBlackListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JudgeBlackListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_blackList'), createEmptyInstance: create)
    ..e<$0.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..e<Judge_State>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: Judge_State.NOT_EXIST, valueOf: Judge_State.valueOf, enumValues: Judge_State.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JudgeBlackListRsp clone() => JudgeBlackListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JudgeBlackListRsp copyWith(void Function(JudgeBlackListRsp) updates) => super.copyWith((message) => updates(message as JudgeBlackListRsp)) as JudgeBlackListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JudgeBlackListRsp create() => JudgeBlackListRsp._();
  JudgeBlackListRsp createEmptyInstance() => create();
  static $pb.PbList<JudgeBlackListRsp> createRepeated() => $pb.PbList<JudgeBlackListRsp>();
  @$core.pragma('dart2js:noInline')
  static JudgeBlackListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JudgeBlackListRsp>(create);
  static JudgeBlackListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($0.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  Judge_State get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(Judge_State v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
}

/// 将aimuser存入srcuser的黑名单中
class SaveBlackListReq extends $pb.GeneratedMessage {
  factory SaveBlackListReq({
    $fixnum.Int64? srcUserid,
    $fixnum.Int64? aimUserid,
  }) {
    final $result = create();
    if (srcUserid != null) {
      $result.srcUserid = srcUserid;
    }
    if (aimUserid != null) {
      $result.aimUserid = aimUserid;
    }
    return $result;
  }
  SaveBlackListReq._() : super();
  factory SaveBlackListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveBlackListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaveBlackListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_blackList'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'srcUserid')
    ..aInt64(2, _omitFieldNames ? '' : 'aimUserid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveBlackListReq clone() => SaveBlackListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveBlackListReq copyWith(void Function(SaveBlackListReq) updates) => super.copyWith((message) => updates(message as SaveBlackListReq)) as SaveBlackListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaveBlackListReq create() => SaveBlackListReq._();
  SaveBlackListReq createEmptyInstance() => create();
  static $pb.PbList<SaveBlackListReq> createRepeated() => $pb.PbList<SaveBlackListReq>();
  @$core.pragma('dart2js:noInline')
  static SaveBlackListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveBlackListReq>(create);
  static SaveBlackListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get srcUserid => $_getI64(0);
  @$pb.TagNumber(1)
  set srcUserid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcUserid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get aimUserid => $_getI64(1);
  @$pb.TagNumber(2)
  set aimUserid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAimUserid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAimUserid() => clearField(2);
}

class SaveBlackListRsp extends $pb.GeneratedMessage {
  factory SaveBlackListRsp({
    $0.ErrCode? result,
    $fixnum.Int64? aimUserid,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (aimUserid != null) {
      $result.aimUserid = aimUserid;
    }
    return $result;
  }
  SaveBlackListRsp._() : super();
  factory SaveBlackListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveBlackListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaveBlackListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_blackList'), createEmptyInstance: create)
    ..e<$0.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..aInt64(2, _omitFieldNames ? '' : 'aimUserid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveBlackListRsp clone() => SaveBlackListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveBlackListRsp copyWith(void Function(SaveBlackListRsp) updates) => super.copyWith((message) => updates(message as SaveBlackListRsp)) as SaveBlackListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaveBlackListRsp create() => SaveBlackListRsp._();
  SaveBlackListRsp createEmptyInstance() => create();
  static $pb.PbList<SaveBlackListRsp> createRepeated() => $pb.PbList<SaveBlackListRsp>();
  @$core.pragma('dart2js:noInline')
  static SaveBlackListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveBlackListRsp>(create);
  static SaveBlackListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($0.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get aimUserid => $_getI64(1);
  @$pb.TagNumber(2)
  set aimUserid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAimUserid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAimUserid() => clearField(2);
}

/// 将aimuser从srcuser的黑名单中删除
class DeleteBlackListReq extends $pb.GeneratedMessage {
  factory DeleteBlackListReq({
    $fixnum.Int64? srcUserid,
    $fixnum.Int64? aimUserid,
  }) {
    final $result = create();
    if (srcUserid != null) {
      $result.srcUserid = srcUserid;
    }
    if (aimUserid != null) {
      $result.aimUserid = aimUserid;
    }
    return $result;
  }
  DeleteBlackListReq._() : super();
  factory DeleteBlackListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBlackListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteBlackListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_blackList'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'srcUserid')
    ..aInt64(2, _omitFieldNames ? '' : 'aimUserid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBlackListReq clone() => DeleteBlackListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBlackListReq copyWith(void Function(DeleteBlackListReq) updates) => super.copyWith((message) => updates(message as DeleteBlackListReq)) as DeleteBlackListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBlackListReq create() => DeleteBlackListReq._();
  DeleteBlackListReq createEmptyInstance() => create();
  static $pb.PbList<DeleteBlackListReq> createRepeated() => $pb.PbList<DeleteBlackListReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteBlackListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteBlackListReq>(create);
  static DeleteBlackListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get srcUserid => $_getI64(0);
  @$pb.TagNumber(1)
  set srcUserid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcUserid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get aimUserid => $_getI64(1);
  @$pb.TagNumber(2)
  set aimUserid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAimUserid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAimUserid() => clearField(2);
}

class DeleteBlackListRsp extends $pb.GeneratedMessage {
  factory DeleteBlackListRsp({
    $0.ErrCode? result,
    $fixnum.Int64? aimUserid,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (aimUserid != null) {
      $result.aimUserid = aimUserid;
    }
    return $result;
  }
  DeleteBlackListRsp._() : super();
  factory DeleteBlackListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBlackListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteBlackListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_blackList'), createEmptyInstance: create)
    ..e<$0.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $0.ErrCode.SUCCESS, valueOf: $0.ErrCode.valueOf, enumValues: $0.ErrCode.values)
    ..aInt64(2, _omitFieldNames ? '' : 'aimUserid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBlackListRsp clone() => DeleteBlackListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBlackListRsp copyWith(void Function(DeleteBlackListRsp) updates) => super.copyWith((message) => updates(message as DeleteBlackListRsp)) as DeleteBlackListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBlackListRsp create() => DeleteBlackListRsp._();
  DeleteBlackListRsp createEmptyInstance() => create();
  static $pb.PbList<DeleteBlackListRsp> createRepeated() => $pb.PbList<DeleteBlackListRsp>();
  @$core.pragma('dart2js:noInline')
  static DeleteBlackListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteBlackListRsp>(create);
  static DeleteBlackListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($0.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get aimUserid => $_getI64(1);
  @$pb.TagNumber(2)
  set aimUserid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAimUserid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAimUserid() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
