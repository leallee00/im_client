//
//  Generated code. Do not modify.
//  source: pb_grpc/offline_msg/offlineMsg.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/error_code.pbenum.dart' as $1;

/// 当一次删除多条时，输入最后一条的time，将time之前所有的消息全部删除
/// 当只进行单条删除，time设为0，通过sn进行单条消息的删除
class DeleteOfflineMsgReq extends $pb.GeneratedMessage {
  factory DeleteOfflineMsgReq({
    $fixnum.Int64? userid,
    $fixnum.Int64? sn,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (userid != null) {
      $result.userid = userid;
    }
    if (sn != null) {
      $result.sn = sn;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  DeleteOfflineMsgReq._() : super();
  factory DeleteOfflineMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteOfflineMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteOfflineMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userid')
    ..aInt64(2, _omitFieldNames ? '' : 'sn')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteOfflineMsgReq clone() => DeleteOfflineMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteOfflineMsgReq copyWith(void Function(DeleteOfflineMsgReq) updates) => super.copyWith((message) => updates(message as DeleteOfflineMsgReq)) as DeleteOfflineMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteOfflineMsgReq create() => DeleteOfflineMsgReq._();
  DeleteOfflineMsgReq createEmptyInstance() => create();
  static $pb.PbList<DeleteOfflineMsgReq> createRepeated() => $pb.PbList<DeleteOfflineMsgReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteOfflineMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteOfflineMsgReq>(create);
  static DeleteOfflineMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userid => $_getI64(0);
  @$pb.TagNumber(1)
  set userid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sn => $_getI64(1);
  @$pb.TagNumber(2)
  set sn($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSn() => $_has(1);
  @$pb.TagNumber(2)
  void clearSn() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
}

class DeleteOfflineMsgRsp extends $pb.GeneratedMessage {
  factory DeleteOfflineMsgRsp({
    $1.ErrCode? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  DeleteOfflineMsgRsp._() : super();
  factory DeleteOfflineMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteOfflineMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteOfflineMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_offlineMsg'), createEmptyInstance: create)
    ..e<$1.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $1.ErrCode.SUCCESS, valueOf: $1.ErrCode.valueOf, enumValues: $1.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteOfflineMsgRsp clone() => DeleteOfflineMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteOfflineMsgRsp copyWith(void Function(DeleteOfflineMsgRsp) updates) => super.copyWith((message) => updates(message as DeleteOfflineMsgRsp)) as DeleteOfflineMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteOfflineMsgRsp create() => DeleteOfflineMsgRsp._();
  DeleteOfflineMsgRsp createEmptyInstance() => create();
  static $pb.PbList<DeleteOfflineMsgRsp> createRepeated() => $pb.PbList<DeleteOfflineMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static DeleteOfflineMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteOfflineMsgRsp>(create);
  static DeleteOfflineMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($1.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
