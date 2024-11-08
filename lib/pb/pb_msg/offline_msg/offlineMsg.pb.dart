//
//  Generated code. Do not modify.
//  source: pb_msg/offline_msg/offlineMsg.proto
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
import '../../pb_pub/comm.pbenum.dart' as $0;
import '../../pb_pub/error_code.pbenum.dart' as $1;
import '../../pb_pub/service.pbenum.dart' as $2;
import 'offlineMsg.pbenum.dart';

export 'offlineMsg.pbenum.dart';

class SaveOfflineMsgReq extends $pb.GeneratedMessage {
  factory SaveOfflineMsgReq({
    $fixnum.Int64? srcUserid,
    $fixnum.Int64? aimUserid,
    $fixnum.Int64? sn,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $fixnum.Int64? time,
    $0.PBCommData? pbCommData,
    $core.Iterable<$fixnum.Int64>? relationUserIds,
  }) {
    final $result = create();
    if (srcUserid != null) {
      $result.srcUserid = srcUserid;
    }
    if (aimUserid != null) {
      $result.aimUserid = aimUserid;
    }
    if (sn != null) {
      $result.sn = sn;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (time != null) {
      $result.time = time;
    }
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (relationUserIds != null) {
      $result.relationUserIds.addAll(relationUserIds);
    }
    return $result;
  }
  SaveOfflineMsgReq._() : super();
  factory SaveOfflineMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveOfflineMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaveOfflineMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'srcUserid')
    ..aInt64(2, _omitFieldNames ? '' : 'aimUserid')
    ..aInt64(3, _omitFieldNames ? '' : 'sn')
    ..aOS(4, _omitFieldNames ? '' : 'pbName')
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY)
    ..aInt64(6, _omitFieldNames ? '' : 'time')
    ..aOM<$0.PBCommData>(7, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $0.PBCommData.create)
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'relationUserIds', $pb.PbFieldType.K6, protoName: 'relationUserIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveOfflineMsgReq clone() => SaveOfflineMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveOfflineMsgReq copyWith(void Function(SaveOfflineMsgReq) updates) => super.copyWith((message) => updates(message as SaveOfflineMsgReq)) as SaveOfflineMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaveOfflineMsgReq create() => SaveOfflineMsgReq._();
  SaveOfflineMsgReq createEmptyInstance() => create();
  static $pb.PbList<SaveOfflineMsgReq> createRepeated() => $pb.PbList<SaveOfflineMsgReq>();
  @$core.pragma('dart2js:noInline')
  static SaveOfflineMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveOfflineMsgReq>(create);
  static SaveOfflineMsgReq? _defaultInstance;

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

  @$pb.TagNumber(3)
  $fixnum.Int64 get sn => $_getI64(2);
  @$pb.TagNumber(3)
  set sn($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSn() => $_has(2);
  @$pb.TagNumber(3)
  void clearSn() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get pbName => $_getSZ(3);
  @$pb.TagNumber(4)
  set pbName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPbName() => $_has(3);
  @$pb.TagNumber(4)
  void clearPbName() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get pbData => $_getN(4);
  @$pb.TagNumber(5)
  set pbData($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPbData() => $_has(4);
  @$pb.TagNumber(5)
  void clearPbData() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get time => $_getI64(5);
  @$pb.TagNumber(6)
  set time($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearTime() => clearField(6);

  @$pb.TagNumber(7)
  $0.PBCommData get pbCommData => $_getN(6);
  @$pb.TagNumber(7)
  set pbCommData($0.PBCommData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPbCommData() => $_has(6);
  @$pb.TagNumber(7)
  void clearPbCommData() => clearField(7);
  @$pb.TagNumber(7)
  $0.PBCommData ensurePbCommData() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$fixnum.Int64> get relationUserIds => $_getList(7);
}

class SaveOfflineMsgRsp extends $pb.GeneratedMessage {
  factory SaveOfflineMsgRsp({
    $1.ErrCode? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  SaveOfflineMsgRsp._() : super();
  factory SaveOfflineMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveOfflineMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaveOfflineMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..e<$1.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $1.ErrCode.SUCCESS, valueOf: $1.ErrCode.valueOf, enumValues: $1.ErrCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveOfflineMsgRsp clone() => SaveOfflineMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveOfflineMsgRsp copyWith(void Function(SaveOfflineMsgRsp) updates) => super.copyWith((message) => updates(message as SaveOfflineMsgRsp)) as SaveOfflineMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaveOfflineMsgRsp create() => SaveOfflineMsgRsp._();
  SaveOfflineMsgRsp createEmptyInstance() => create();
  static $pb.PbList<SaveOfflineMsgRsp> createRepeated() => $pb.PbList<SaveOfflineMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static SaveOfflineMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveOfflineMsgRsp>(create);
  static SaveOfflineMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($1.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class ReadOfflineMsgReq extends $pb.GeneratedMessage {
  factory ReadOfflineMsgReq({
    $fixnum.Int64? userid,
    $fixnum.Int64? num,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (userid != null) {
      $result.userid = userid;
    }
    if (num != null) {
      $result.num = num;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  ReadOfflineMsgReq._() : super();
  factory ReadOfflineMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadOfflineMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadOfflineMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userid')
    ..aInt64(2, _omitFieldNames ? '' : 'num')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadOfflineMsgReq clone() => ReadOfflineMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadOfflineMsgReq copyWith(void Function(ReadOfflineMsgReq) updates) => super.copyWith((message) => updates(message as ReadOfflineMsgReq)) as ReadOfflineMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadOfflineMsgReq create() => ReadOfflineMsgReq._();
  ReadOfflineMsgReq createEmptyInstance() => create();
  static $pb.PbList<ReadOfflineMsgReq> createRepeated() => $pb.PbList<ReadOfflineMsgReq>();
  @$core.pragma('dart2js:noInline')
  static ReadOfflineMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadOfflineMsgReq>(create);
  static ReadOfflineMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userid => $_getI64(0);
  @$pb.TagNumber(1)
  set userid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get num => $_getI64(1);
  @$pb.TagNumber(2)
  set num($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearNum() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
}

class ReadOfflineMsgRsp_MsgList extends $pb.GeneratedMessage {
  factory ReadOfflineMsgRsp_MsgList({
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $fixnum.Int64? time,
    $fixnum.Int64? sn,
    $fixnum.Int64? srcUserid,
    $fixnum.Int64? aimUserid,
    $0.PBCommData? pbCommData,
  }) {
    final $result = create();
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (time != null) {
      $result.time = time;
    }
    if (sn != null) {
      $result.sn = sn;
    }
    if (srcUserid != null) {
      $result.srcUserid = srcUserid;
    }
    if (aimUserid != null) {
      $result.aimUserid = aimUserid;
    }
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    return $result;
  }
  ReadOfflineMsgRsp_MsgList._() : super();
  factory ReadOfflineMsgRsp_MsgList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadOfflineMsgRsp_MsgList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadOfflineMsgRsp.MsgList', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pbName')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY)
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..aInt64(4, _omitFieldNames ? '' : 'sn')
    ..aInt64(5, _omitFieldNames ? '' : 'srcUserid')
    ..aInt64(6, _omitFieldNames ? '' : 'aimUserid')
    ..aOM<$0.PBCommData>(7, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $0.PBCommData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadOfflineMsgRsp_MsgList clone() => ReadOfflineMsgRsp_MsgList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadOfflineMsgRsp_MsgList copyWith(void Function(ReadOfflineMsgRsp_MsgList) updates) => super.copyWith((message) => updates(message as ReadOfflineMsgRsp_MsgList)) as ReadOfflineMsgRsp_MsgList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadOfflineMsgRsp_MsgList create() => ReadOfflineMsgRsp_MsgList._();
  ReadOfflineMsgRsp_MsgList createEmptyInstance() => create();
  static $pb.PbList<ReadOfflineMsgRsp_MsgList> createRepeated() => $pb.PbList<ReadOfflineMsgRsp_MsgList>();
  @$core.pragma('dart2js:noInline')
  static ReadOfflineMsgRsp_MsgList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadOfflineMsgRsp_MsgList>(create);
  static ReadOfflineMsgRsp_MsgList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pbName => $_getSZ(0);
  @$pb.TagNumber(1)
  set pbName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPbName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pbData => $_getN(1);
  @$pb.TagNumber(2)
  set pbData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPbData() => $_has(1);
  @$pb.TagNumber(2)
  void clearPbData() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sn => $_getI64(3);
  @$pb.TagNumber(4)
  set sn($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSn() => $_has(3);
  @$pb.TagNumber(4)
  void clearSn() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get srcUserid => $_getI64(4);
  @$pb.TagNumber(5)
  set srcUserid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSrcUserid() => $_has(4);
  @$pb.TagNumber(5)
  void clearSrcUserid() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get aimUserid => $_getI64(5);
  @$pb.TagNumber(6)
  set aimUserid($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAimUserid() => $_has(5);
  @$pb.TagNumber(6)
  void clearAimUserid() => clearField(6);

  @$pb.TagNumber(7)
  $0.PBCommData get pbCommData => $_getN(6);
  @$pb.TagNumber(7)
  set pbCommData($0.PBCommData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPbCommData() => $_has(6);
  @$pb.TagNumber(7)
  void clearPbCommData() => clearField(7);
  @$pb.TagNumber(7)
  $0.PBCommData ensurePbCommData() => $_ensure(6);
}

/// 返回总消息数量及消息内容，可以通过请求num为0来获取离线消息数，
/// 当用户返回已送达时，删除离线消息
class ReadOfflineMsgRsp extends $pb.GeneratedMessage {
  factory ReadOfflineMsgRsp({
    $1.ErrCode? result,
    $fixnum.Int64? msgNum,
    $core.Iterable<ReadOfflineMsgRsp_MsgList>? msgList,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (msgNum != null) {
      $result.msgNum = msgNum;
    }
    if (msgList != null) {
      $result.msgList.addAll(msgList);
    }
    return $result;
  }
  ReadOfflineMsgRsp._() : super();
  factory ReadOfflineMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadOfflineMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadOfflineMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..e<$1.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $1.ErrCode.SUCCESS, valueOf: $1.ErrCode.valueOf, enumValues: $1.ErrCode.values)
    ..aInt64(2, _omitFieldNames ? '' : 'msgNum')
    ..pc<ReadOfflineMsgRsp_MsgList>(3, _omitFieldNames ? '' : 'msgList', $pb.PbFieldType.PM, subBuilder: ReadOfflineMsgRsp_MsgList.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadOfflineMsgRsp clone() => ReadOfflineMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadOfflineMsgRsp copyWith(void Function(ReadOfflineMsgRsp) updates) => super.copyWith((message) => updates(message as ReadOfflineMsgRsp)) as ReadOfflineMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadOfflineMsgRsp create() => ReadOfflineMsgRsp._();
  ReadOfflineMsgRsp createEmptyInstance() => create();
  static $pb.PbList<ReadOfflineMsgRsp> createRepeated() => $pb.PbList<ReadOfflineMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static ReadOfflineMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadOfflineMsgRsp>(create);
  static ReadOfflineMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($1.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgNum => $_getI64(1);
  @$pb.TagNumber(2)
  set msgNum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgNum() => clearField(2);

  /// 	repeated bytes pb_data = 3;
  @$pb.TagNumber(3)
  $core.List<ReadOfflineMsgRsp_MsgList> get msgList => $_getList(2);
}

/// 历史消息读取
class HistoryMsg extends $pb.GeneratedMessage {
  factory HistoryMsg({
    $fixnum.Int64? id,
    $2.Service? service,
    $fixnum.Int64? groupId,
    $fixnum.Int64? msgSn,
    $fixnum.Int64? srcId,
    $fixnum.Int64? aimId,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $0.MSG_STATE? msgStatus,
    $core.Iterable<ReadStatusOfDiffClients>? readStatus,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updateAt,
    $core.List<$core.int>? pbCommData,
    $fixnum.Int64? groupMsgSn,
    $fixnum.Int64? session,
    $fixnum.Int64? sessionCurSn,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (service != null) {
      $result.service = service;
    }
    if (groupId != null) {
      $result.groupId = groupId;
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
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (msgStatus != null) {
      $result.msgStatus = msgStatus;
    }
    if (readStatus != null) {
      $result.readStatus.addAll(readStatus);
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updateAt != null) {
      $result.updateAt = updateAt;
    }
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (groupMsgSn != null) {
      $result.groupMsgSn = groupMsgSn;
    }
    if (session != null) {
      $result.session = session;
    }
    if (sessionCurSn != null) {
      $result.sessionCurSn = sessionCurSn;
    }
    return $result;
  }
  HistoryMsg._() : super();
  factory HistoryMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..e<$2.Service>(2, _omitFieldNames ? '' : 'service', $pb.PbFieldType.OE, defaultOrMaker: $2.Service.gate, valueOf: $2.Service.valueOf, enumValues: $2.Service.values)
    ..aInt64(3, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(4, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..aInt64(5, _omitFieldNames ? '' : 'srcId', protoName: 'srcId')
    ..aInt64(6, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..aOS(7, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..e<$0.MSG_STATE>(9, _omitFieldNames ? '' : 'msgStatus', $pb.PbFieldType.OE, protoName: 'msgStatus', defaultOrMaker: $0.MSG_STATE.INIT, valueOf: $0.MSG_STATE.valueOf, enumValues: $0.MSG_STATE.values)
    ..pc<ReadStatusOfDiffClients>(10, _omitFieldNames ? '' : 'readStatus', $pb.PbFieldType.PM, protoName: 'readStatus', subBuilder: ReadStatusOfDiffClients.create)
    ..aInt64(11, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aInt64(12, _omitFieldNames ? '' : 'updateAt', protoName: 'updateAt')
    ..a<$core.List<$core.int>>(13, _omitFieldNames ? '' : 'pbCommData', $pb.PbFieldType.OY, protoName: 'pbCommData')
    ..aInt64(14, _omitFieldNames ? '' : 'groupMsgSn', protoName: 'groupMsgSn')
    ..aInt64(15, _omitFieldNames ? '' : 'Session', protoName: 'Session')
    ..aInt64(16, _omitFieldNames ? '' : 'SessionCurSn', protoName: 'SessionCurSn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryMsg clone() => HistoryMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryMsg copyWith(void Function(HistoryMsg) updates) => super.copyWith((message) => updates(message as HistoryMsg)) as HistoryMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryMsg create() => HistoryMsg._();
  HistoryMsg createEmptyInstance() => create();
  static $pb.PbList<HistoryMsg> createRepeated() => $pb.PbList<HistoryMsg>();
  @$core.pragma('dart2js:noInline')
  static HistoryMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryMsg>(create);
  static HistoryMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $2.Service get service => $_getN(1);
  @$pb.TagNumber(2)
  set service($2.Service v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasService() => $_has(1);
  @$pb.TagNumber(2)
  void clearService() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get groupId => $_getI64(2);
  @$pb.TagNumber(3)
  set groupId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroupId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroupId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get msgSn => $_getI64(3);
  @$pb.TagNumber(4)
  set msgSn($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMsgSn() => $_has(3);
  @$pb.TagNumber(4)
  void clearMsgSn() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get srcId => $_getI64(4);
  @$pb.TagNumber(5)
  set srcId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSrcId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSrcId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get aimId => $_getI64(5);
  @$pb.TagNumber(6)
  set aimId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAimId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAimId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get pbName => $_getSZ(6);
  @$pb.TagNumber(7)
  set pbName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPbName() => $_has(6);
  @$pb.TagNumber(7)
  void clearPbName() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get pbData => $_getN(7);
  @$pb.TagNumber(8)
  set pbData($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPbData() => $_has(7);
  @$pb.TagNumber(8)
  void clearPbData() => clearField(8);

  @$pb.TagNumber(9)
  $0.MSG_STATE get msgStatus => $_getN(8);
  @$pb.TagNumber(9)
  set msgStatus($0.MSG_STATE v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasMsgStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearMsgStatus() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<ReadStatusOfDiffClients> get readStatus => $_getList(9);

  @$pb.TagNumber(11)
  $fixnum.Int64 get createdAt => $_getI64(10);
  @$pb.TagNumber(11)
  set createdAt($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedAt() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get updateAt => $_getI64(11);
  @$pb.TagNumber(12)
  set updateAt($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUpdateAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearUpdateAt() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get pbCommData => $_getN(12);
  @$pb.TagNumber(13)
  set pbCommData($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPbCommData() => $_has(12);
  @$pb.TagNumber(13)
  void clearPbCommData() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get groupMsgSn => $_getI64(13);
  @$pb.TagNumber(14)
  set groupMsgSn($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGroupMsgSn() => $_has(13);
  @$pb.TagNumber(14)
  void clearGroupMsgSn() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get session => $_getI64(14);
  @$pb.TagNumber(15)
  set session($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasSession() => $_has(14);
  @$pb.TagNumber(15)
  void clearSession() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get sessionCurSn => $_getI64(15);
  @$pb.TagNumber(16)
  set sessionCurSn($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSessionCurSn() => $_has(15);
  @$pb.TagNumber(16)
  void clearSessionCurSn() => clearField(16);
}

class ReadStatusOfDiffClients extends $pb.GeneratedMessage {
  factory ReadStatusOfDiffClients({
    $0.CLIENT_TYPE? clientType,
    $0.MSG_STATE? readStatus,
    $fixnum.Int64? upDateAt,
  }) {
    final $result = create();
    if (clientType != null) {
      $result.clientType = clientType;
    }
    if (readStatus != null) {
      $result.readStatus = readStatus;
    }
    if (upDateAt != null) {
      $result.upDateAt = upDateAt;
    }
    return $result;
  }
  ReadStatusOfDiffClients._() : super();
  factory ReadStatusOfDiffClients.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadStatusOfDiffClients.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadStatusOfDiffClients', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..e<$0.CLIENT_TYPE>(1, _omitFieldNames ? '' : 'clientType', $pb.PbFieldType.OE, protoName: 'clientType', defaultOrMaker: $0.CLIENT_TYPE.NONE, valueOf: $0.CLIENT_TYPE.valueOf, enumValues: $0.CLIENT_TYPE.values)
    ..e<$0.MSG_STATE>(2, _omitFieldNames ? '' : 'readStatus', $pb.PbFieldType.OE, protoName: 'readStatus', defaultOrMaker: $0.MSG_STATE.INIT, valueOf: $0.MSG_STATE.valueOf, enumValues: $0.MSG_STATE.values)
    ..aInt64(3, _omitFieldNames ? '' : 'upDateAt', protoName: 'upDateAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadStatusOfDiffClients clone() => ReadStatusOfDiffClients()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadStatusOfDiffClients copyWith(void Function(ReadStatusOfDiffClients) updates) => super.copyWith((message) => updates(message as ReadStatusOfDiffClients)) as ReadStatusOfDiffClients;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadStatusOfDiffClients create() => ReadStatusOfDiffClients._();
  ReadStatusOfDiffClients createEmptyInstance() => create();
  static $pb.PbList<ReadStatusOfDiffClients> createRepeated() => $pb.PbList<ReadStatusOfDiffClients>();
  @$core.pragma('dart2js:noInline')
  static ReadStatusOfDiffClients getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadStatusOfDiffClients>(create);
  static ReadStatusOfDiffClients? _defaultInstance;

  @$pb.TagNumber(1)
  $0.CLIENT_TYPE get clientType => $_getN(0);
  @$pb.TagNumber(1)
  set clientType($0.CLIENT_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientType() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientType() => clearField(1);

  @$pb.TagNumber(2)
  $0.MSG_STATE get readStatus => $_getN(1);
  @$pb.TagNumber(2)
  set readStatus($0.MSG_STATE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReadStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadStatus() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get upDateAt => $_getI64(2);
  @$pb.TagNumber(3)
  set upDateAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpDateAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpDateAt() => clearField(3);
}

/// 获取历史消息
class FetchHistoryMsgReq extends $pb.GeneratedMessage {
  factory FetchHistoryMsgReq({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? totalCount,
    $core.bool? filterNew,
    $core.bool? orderDesc,
    $fixnum.Int64? startCreatedAt,
    $fixnum.Int64? endCreatedAt,
    $fixnum.Int64? startUpdatedAt,
    $fixnum.Int64? endUpdatedAt,
    $fixnum.Int64? id,
    $fixnum.Int64? msgSn,
    $fixnum.Int64? groupId,
    $fixnum.Int64? srcId,
    $fixnum.Int64? aimId,
    $core.String? pbName,
    $core.int? msgStatus,
    $core.String? sort,
    $core.String? order,
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
    if (filterNew != null) {
      $result.filterNew = filterNew;
    }
    if (orderDesc != null) {
      $result.orderDesc = orderDesc;
    }
    if (startCreatedAt != null) {
      $result.startCreatedAt = startCreatedAt;
    }
    if (endCreatedAt != null) {
      $result.endCreatedAt = endCreatedAt;
    }
    if (startUpdatedAt != null) {
      $result.startUpdatedAt = startUpdatedAt;
    }
    if (endUpdatedAt != null) {
      $result.endUpdatedAt = endUpdatedAt;
    }
    if (id != null) {
      $result.id = id;
    }
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (srcId != null) {
      $result.srcId = srcId;
    }
    if (aimId != null) {
      $result.aimId = aimId;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (msgStatus != null) {
      $result.msgStatus = msgStatus;
    }
    if (sort != null) {
      $result.sort = sort;
    }
    if (order != null) {
      $result.order = order;
    }
    return $result;
  }
  FetchHistoryMsgReq._() : super();
  factory FetchHistoryMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchHistoryMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchHistoryMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..aOB(4, _omitFieldNames ? '' : 'filterNew', protoName: 'filterNew')
    ..aOB(5, _omitFieldNames ? '' : 'orderDesc', protoName: 'orderDesc')
    ..aInt64(6, _omitFieldNames ? '' : 'startCreatedAt', protoName: 'startCreatedAt')
    ..aInt64(7, _omitFieldNames ? '' : 'endCreatedAt', protoName: 'endCreatedAt')
    ..aInt64(8, _omitFieldNames ? '' : 'startUpdatedAt', protoName: 'startUpdatedAt')
    ..aInt64(9, _omitFieldNames ? '' : 'endUpdatedAt', protoName: 'endUpdatedAt')
    ..aInt64(10, _omitFieldNames ? '' : 'id')
    ..aInt64(11, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..aInt64(12, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(13, _omitFieldNames ? '' : 'srcId', protoName: 'srcId')
    ..aInt64(14, _omitFieldNames ? '' : 'aimId', protoName: 'aimId')
    ..aOS(15, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'msgStatus', $pb.PbFieldType.O3, protoName: 'msgStatus')
    ..aOS(17, _omitFieldNames ? '' : 'sort')
    ..aOS(18, _omitFieldNames ? '' : 'order')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchHistoryMsgReq clone() => FetchHistoryMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchHistoryMsgReq copyWith(void Function(FetchHistoryMsgReq) updates) => super.copyWith((message) => updates(message as FetchHistoryMsgReq)) as FetchHistoryMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchHistoryMsgReq create() => FetchHistoryMsgReq._();
  FetchHistoryMsgReq createEmptyInstance() => create();
  static $pb.PbList<FetchHistoryMsgReq> createRepeated() => $pb.PbList<FetchHistoryMsgReq>();
  @$core.pragma('dart2js:noInline')
  static FetchHistoryMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchHistoryMsgReq>(create);
  static FetchHistoryMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalCount => $_getI64(2);
  @$pb.TagNumber(3)
  set totalCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get filterNew => $_getBF(3);
  @$pb.TagNumber(4)
  set filterNew($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFilterNew() => $_has(3);
  @$pb.TagNumber(4)
  void clearFilterNew() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get orderDesc => $_getBF(4);
  @$pb.TagNumber(5)
  set orderDesc($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrderDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrderDesc() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get startCreatedAt => $_getI64(5);
  @$pb.TagNumber(6)
  set startCreatedAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStartCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartCreatedAt() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get endCreatedAt => $_getI64(6);
  @$pb.TagNumber(7)
  set endCreatedAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEndCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndCreatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get startUpdatedAt => $_getI64(7);
  @$pb.TagNumber(8)
  set startUpdatedAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStartUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearStartUpdatedAt() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get endUpdatedAt => $_getI64(8);
  @$pb.TagNumber(9)
  set endUpdatedAt($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEndUpdatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearEndUpdatedAt() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get id => $_getI64(9);
  @$pb.TagNumber(10)
  set id($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasId() => $_has(9);
  @$pb.TagNumber(10)
  void clearId() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get msgSn => $_getI64(10);
  @$pb.TagNumber(11)
  set msgSn($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMsgSn() => $_has(10);
  @$pb.TagNumber(11)
  void clearMsgSn() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get groupId => $_getI64(11);
  @$pb.TagNumber(12)
  set groupId($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasGroupId() => $_has(11);
  @$pb.TagNumber(12)
  void clearGroupId() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get srcId => $_getI64(12);
  @$pb.TagNumber(13)
  set srcId($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSrcId() => $_has(12);
  @$pb.TagNumber(13)
  void clearSrcId() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get aimId => $_getI64(13);
  @$pb.TagNumber(14)
  set aimId($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasAimId() => $_has(13);
  @$pb.TagNumber(14)
  void clearAimId() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get pbName => $_getSZ(14);
  @$pb.TagNumber(15)
  set pbName($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPbName() => $_has(14);
  @$pb.TagNumber(15)
  void clearPbName() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get msgStatus => $_getIZ(15);
  @$pb.TagNumber(16)
  set msgStatus($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasMsgStatus() => $_has(15);
  @$pb.TagNumber(16)
  void clearMsgStatus() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get sort => $_getSZ(16);
  @$pb.TagNumber(17)
  set sort($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasSort() => $_has(16);
  @$pb.TagNumber(17)
  void clearSort() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get order => $_getSZ(17);
  @$pb.TagNumber(18)
  set order($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasOrder() => $_has(17);
  @$pb.TagNumber(18)
  void clearOrder() => clearField(18);
}

class FetchHistoryMsgRsp extends $pb.GeneratedMessage {
  factory FetchHistoryMsgRsp({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? totalCount,
    $core.Iterable<HistoryMsg>? pbHisMsg,
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
    if (pbHisMsg != null) {
      $result.pbHisMsg.addAll(pbHisMsg);
    }
    return $result;
  }
  FetchHistoryMsgRsp._() : super();
  factory FetchHistoryMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchHistoryMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchHistoryMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..pc<HistoryMsg>(4, _omitFieldNames ? '' : 'pbHisMsg', $pb.PbFieldType.PM, protoName: 'pbHisMsg', subBuilder: HistoryMsg.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchHistoryMsgRsp clone() => FetchHistoryMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchHistoryMsgRsp copyWith(void Function(FetchHistoryMsgRsp) updates) => super.copyWith((message) => updates(message as FetchHistoryMsgRsp)) as FetchHistoryMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchHistoryMsgRsp create() => FetchHistoryMsgRsp._();
  FetchHistoryMsgRsp createEmptyInstance() => create();
  static $pb.PbList<FetchHistoryMsgRsp> createRepeated() => $pb.PbList<FetchHistoryMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchHistoryMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchHistoryMsgRsp>(create);
  static FetchHistoryMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalCount => $_getI64(2);
  @$pb.TagNumber(3)
  set totalCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  /// 消息
  @$pb.TagNumber(4)
  $core.List<HistoryMsg> get pbHisMsg => $_getList(3);
}

/// 获取历史消息，包括私聊和群聊
class FetchNewHistoryMsgReq extends $pb.GeneratedMessage {
  factory FetchNewHistoryMsgReq({
    $fixnum.Int64? beginId,
    $fixnum.Int64? pageSize,
    $core.bool? orderDesc,
  }) {
    final $result = create();
    if (beginId != null) {
      $result.beginId = beginId;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (orderDesc != null) {
      $result.orderDesc = orderDesc;
    }
    return $result;
  }
  FetchNewHistoryMsgReq._() : super();
  factory FetchNewHistoryMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchNewHistoryMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchNewHistoryMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'beginId', protoName: 'beginId')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aOB(3, _omitFieldNames ? '' : 'orderDesc', protoName: 'orderDesc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchNewHistoryMsgReq clone() => FetchNewHistoryMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchNewHistoryMsgReq copyWith(void Function(FetchNewHistoryMsgReq) updates) => super.copyWith((message) => updates(message as FetchNewHistoryMsgReq)) as FetchNewHistoryMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchNewHistoryMsgReq create() => FetchNewHistoryMsgReq._();
  FetchNewHistoryMsgReq createEmptyInstance() => create();
  static $pb.PbList<FetchNewHistoryMsgReq> createRepeated() => $pb.PbList<FetchNewHistoryMsgReq>();
  @$core.pragma('dart2js:noInline')
  static FetchNewHistoryMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchNewHistoryMsgReq>(create);
  static FetchNewHistoryMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get beginId => $_getI64(0);
  @$pb.TagNumber(1)
  set beginId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBeginId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBeginId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get orderDesc => $_getBF(2);
  @$pb.TagNumber(3)
  set orderDesc($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderDesc() => clearField(3);
}

class FetchNewHistoryMsgRsp extends $pb.GeneratedMessage {
  factory FetchNewHistoryMsgRsp({
    $fixnum.Int64? pageSize,
    $fixnum.Int64? totalCount,
    $core.Iterable<HistoryMsg>? pbHisMsg,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (pbHisMsg != null) {
      $result.pbHisMsg.addAll(pbHisMsg);
    }
    return $result;
  }
  FetchNewHistoryMsgRsp._() : super();
  factory FetchNewHistoryMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchNewHistoryMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchNewHistoryMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(2, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..pc<HistoryMsg>(3, _omitFieldNames ? '' : 'pbHisMsg', $pb.PbFieldType.PM, protoName: 'pbHisMsg', subBuilder: HistoryMsg.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchNewHistoryMsgRsp clone() => FetchNewHistoryMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchNewHistoryMsgRsp copyWith(void Function(FetchNewHistoryMsgRsp) updates) => super.copyWith((message) => updates(message as FetchNewHistoryMsgRsp)) as FetchNewHistoryMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchNewHistoryMsgRsp create() => FetchNewHistoryMsgRsp._();
  FetchNewHistoryMsgRsp createEmptyInstance() => create();
  static $pb.PbList<FetchNewHistoryMsgRsp> createRepeated() => $pb.PbList<FetchNewHistoryMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchNewHistoryMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchNewHistoryMsgRsp>(create);
  static FetchNewHistoryMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pageSize => $_getI64(0);
  @$pb.TagNumber(1)
  set pageSize($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get totalCount => $_getI64(1);
  @$pb.TagNumber(2)
  set totalCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalCount() => clearField(2);

  /// 消息
  @$pb.TagNumber(3)
  $core.List<HistoryMsg> get pbHisMsg => $_getList(2);
}

/// 读取单个消息
/// 至少填一个
class FetchOneHistoryMsgReq extends $pb.GeneratedMessage {
  factory FetchOneHistoryMsgReq({
    $fixnum.Int64? msgSn,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    return $result;
  }
  FetchOneHistoryMsgReq._() : super();
  factory FetchOneHistoryMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchOneHistoryMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchOneHistoryMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(2, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchOneHistoryMsgReq clone() => FetchOneHistoryMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchOneHistoryMsgReq copyWith(void Function(FetchOneHistoryMsgReq) updates) => super.copyWith((message) => updates(message as FetchOneHistoryMsgReq)) as FetchOneHistoryMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchOneHistoryMsgReq create() => FetchOneHistoryMsgReq._();
  FetchOneHistoryMsgReq createEmptyInstance() => create();
  static $pb.PbList<FetchOneHistoryMsgReq> createRepeated() => $pb.PbList<FetchOneHistoryMsgReq>();
  @$core.pragma('dart2js:noInline')
  static FetchOneHistoryMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchOneHistoryMsgReq>(create);
  static FetchOneHistoryMsgReq? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(2)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(2)
  void clearMsgSn() => clearField(2);
}

class FetchOneHistoryMsgRsp extends $pb.GeneratedMessage {
  factory FetchOneHistoryMsgRsp({
    HistoryMsg? privateHistoryMsg,
  }) {
    final $result = create();
    if (privateHistoryMsg != null) {
      $result.privateHistoryMsg = privateHistoryMsg;
    }
    return $result;
  }
  FetchOneHistoryMsgRsp._() : super();
  factory FetchOneHistoryMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchOneHistoryMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchOneHistoryMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aOM<HistoryMsg>(1, _omitFieldNames ? '' : 'privateHistoryMsg', protoName: 'privateHistoryMsg', subBuilder: HistoryMsg.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchOneHistoryMsgRsp clone() => FetchOneHistoryMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchOneHistoryMsgRsp copyWith(void Function(FetchOneHistoryMsgRsp) updates) => super.copyWith((message) => updates(message as FetchOneHistoryMsgRsp)) as FetchOneHistoryMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchOneHistoryMsgRsp create() => FetchOneHistoryMsgRsp._();
  FetchOneHistoryMsgRsp createEmptyInstance() => create();
  static $pb.PbList<FetchOneHistoryMsgRsp> createRepeated() => $pb.PbList<FetchOneHistoryMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchOneHistoryMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchOneHistoryMsgRsp>(create);
  static FetchOneHistoryMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  HistoryMsg get privateHistoryMsg => $_getN(0);
  @$pb.TagNumber(1)
  set privateHistoryMsg(HistoryMsg v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrivateHistoryMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrivateHistoryMsg() => clearField(1);
  @$pb.TagNumber(1)
  HistoryMsg ensurePrivateHistoryMsg() => $_ensure(0);
}

/// 删除单个消息
class DelHistoryMsgReq extends $pb.GeneratedMessage {
  factory DelHistoryMsgReq({
    $core.Iterable<$fixnum.Int64>? msgSn,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn.addAll(msgSn);
    }
    return $result;
  }
  DelHistoryMsgReq._() : super();
  factory DelHistoryMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelHistoryMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelHistoryMsgReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'msgSn', $pb.PbFieldType.K6, protoName: 'msgSn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelHistoryMsgReq clone() => DelHistoryMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelHistoryMsgReq copyWith(void Function(DelHistoryMsgReq) updates) => super.copyWith((message) => updates(message as DelHistoryMsgReq)) as DelHistoryMsgReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelHistoryMsgReq create() => DelHistoryMsgReq._();
  DelHistoryMsgReq createEmptyInstance() => create();
  static $pb.PbList<DelHistoryMsgReq> createRepeated() => $pb.PbList<DelHistoryMsgReq>();
  @$core.pragma('dart2js:noInline')
  static DelHistoryMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelHistoryMsgReq>(create);
  static DelHistoryMsgReq? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get msgSn => $_getList(0);
}

class DelHistoryMsgRsp extends $pb.GeneratedMessage {
  factory DelHistoryMsgRsp() => create();
  DelHistoryMsgRsp._() : super();
  factory DelHistoryMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelHistoryMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelHistoryMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelHistoryMsgRsp clone() => DelHistoryMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelHistoryMsgRsp copyWith(void Function(DelHistoryMsgRsp) updates) => super.copyWith((message) => updates(message as DelHistoryMsgRsp)) as DelHistoryMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelHistoryMsgRsp create() => DelHistoryMsgRsp._();
  DelHistoryMsgRsp createEmptyInstance() => create();
  static $pb.PbList<DelHistoryMsgRsp> createRepeated() => $pb.PbList<DelHistoryMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static DelHistoryMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelHistoryMsgRsp>(create);
  static DelHistoryMsgRsp? _defaultInstance;
}

///  准备好接收用户离线消息
/// 		rpc ReadyForSyncOfflineMsgStatus(pb_msg_offlineMsg.ReadyForSyncOfflineMsgStatusReq) returns (pb_msg_offlineMsg.ReadyForSyncOfflineMsgStatusRsp) {}
class ReadyForSyncOfflineMsgStatusReq extends $pb.GeneratedMessage {
  factory ReadyForSyncOfflineMsgStatusReq() => create();
  ReadyForSyncOfflineMsgStatusReq._() : super();
  factory ReadyForSyncOfflineMsgStatusReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadyForSyncOfflineMsgStatusReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadyForSyncOfflineMsgStatusReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadyForSyncOfflineMsgStatusReq clone() => ReadyForSyncOfflineMsgStatusReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadyForSyncOfflineMsgStatusReq copyWith(void Function(ReadyForSyncOfflineMsgStatusReq) updates) => super.copyWith((message) => updates(message as ReadyForSyncOfflineMsgStatusReq)) as ReadyForSyncOfflineMsgStatusReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadyForSyncOfflineMsgStatusReq create() => ReadyForSyncOfflineMsgStatusReq._();
  ReadyForSyncOfflineMsgStatusReq createEmptyInstance() => create();
  static $pb.PbList<ReadyForSyncOfflineMsgStatusReq> createRepeated() => $pb.PbList<ReadyForSyncOfflineMsgStatusReq>();
  @$core.pragma('dart2js:noInline')
  static ReadyForSyncOfflineMsgStatusReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadyForSyncOfflineMsgStatusReq>(create);
  static ReadyForSyncOfflineMsgStatusReq? _defaultInstance;
}

class ReadyForSyncOfflineMsgStatusRsp extends $pb.GeneratedMessage {
  factory ReadyForSyncOfflineMsgStatusRsp() => create();
  ReadyForSyncOfflineMsgStatusRsp._() : super();
  factory ReadyForSyncOfflineMsgStatusRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadyForSyncOfflineMsgStatusRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadyForSyncOfflineMsgStatusRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadyForSyncOfflineMsgStatusRsp clone() => ReadyForSyncOfflineMsgStatusRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadyForSyncOfflineMsgStatusRsp copyWith(void Function(ReadyForSyncOfflineMsgStatusRsp) updates) => super.copyWith((message) => updates(message as ReadyForSyncOfflineMsgStatusRsp)) as ReadyForSyncOfflineMsgStatusRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadyForSyncOfflineMsgStatusRsp create() => ReadyForSyncOfflineMsgStatusRsp._();
  ReadyForSyncOfflineMsgStatusRsp createEmptyInstance() => create();
  static $pb.PbList<ReadyForSyncOfflineMsgStatusRsp> createRepeated() => $pb.PbList<ReadyForSyncOfflineMsgStatusRsp>();
  @$core.pragma('dart2js:noInline')
  static ReadyForSyncOfflineMsgStatusRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadyForSyncOfflineMsgStatusRsp>(create);
  static ReadyForSyncOfflineMsgStatusRsp? _defaultInstance;
}

class StatusChangeItem extends $pb.GeneratedMessage {
  factory StatusChangeItem({
    $fixnum.Int64? msgSn,
    $0.MSG_STATE? msgCurStatus,
  }) {
    final $result = create();
    if (msgSn != null) {
      $result.msgSn = msgSn;
    }
    if (msgCurStatus != null) {
      $result.msgCurStatus = msgCurStatus;
    }
    return $result;
  }
  StatusChangeItem._() : super();
  factory StatusChangeItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusChangeItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusChangeItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgSn', protoName: 'msgSn')
    ..e<$0.MSG_STATE>(2, _omitFieldNames ? '' : 'msgCurStatus', $pb.PbFieldType.OE, protoName: 'msgCurStatus', defaultOrMaker: $0.MSG_STATE.INIT, valueOf: $0.MSG_STATE.valueOf, enumValues: $0.MSG_STATE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusChangeItem clone() => StatusChangeItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusChangeItem copyWith(void Function(StatusChangeItem) updates) => super.copyWith((message) => updates(message as StatusChangeItem)) as StatusChangeItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusChangeItem create() => StatusChangeItem._();
  StatusChangeItem createEmptyInstance() => create();
  static $pb.PbList<StatusChangeItem> createRepeated() => $pb.PbList<StatusChangeItem>();
  @$core.pragma('dart2js:noInline')
  static StatusChangeItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusChangeItem>(create);
  static StatusChangeItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgSn => $_getI64(0);
  @$pb.TagNumber(1)
  set msgSn($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgSn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgSn() => clearField(1);

  @$pb.TagNumber(2)
  $0.MSG_STATE get msgCurStatus => $_getN(1);
  @$pb.TagNumber(2)
  set msgCurStatus($0.MSG_STATE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgCurStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgCurStatus() => clearField(2);
}

/// 服务端发送给客户端
class OfflineMsgStatueChangeNotify extends $pb.GeneratedMessage {
  factory OfflineMsgStatueChangeNotify({
    $fixnum.Int64? session,
    $core.Iterable<StatusChangeItem>? statusChangeItems,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    if (statusChangeItems != null) {
      $result.statusChangeItems.addAll(statusChangeItems);
    }
    return $result;
  }
  OfflineMsgStatueChangeNotify._() : super();
  factory OfflineMsgStatueChangeNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OfflineMsgStatueChangeNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OfflineMsgStatueChangeNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'session')
    ..pc<StatusChangeItem>(2, _omitFieldNames ? '' : 'StatusChangeItems', $pb.PbFieldType.PM, protoName: 'StatusChangeItems', subBuilder: StatusChangeItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OfflineMsgStatueChangeNotify clone() => OfflineMsgStatueChangeNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OfflineMsgStatueChangeNotify copyWith(void Function(OfflineMsgStatueChangeNotify) updates) => super.copyWith((message) => updates(message as OfflineMsgStatueChangeNotify)) as OfflineMsgStatueChangeNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OfflineMsgStatueChangeNotify create() => OfflineMsgStatueChangeNotify._();
  OfflineMsgStatueChangeNotify createEmptyInstance() => create();
  static $pb.PbList<OfflineMsgStatueChangeNotify> createRepeated() => $pb.PbList<OfflineMsgStatueChangeNotify>();
  @$core.pragma('dart2js:noInline')
  static OfflineMsgStatueChangeNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OfflineMsgStatueChangeNotify>(create);
  static OfflineMsgStatueChangeNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get session => $_getI64(0);
  @$pb.TagNumber(1)
  set session($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<StatusChangeItem> get statusChangeItems => $_getList(1);
}

/// 客户端发回给服务端，确认已经收到
class OfflineMsgStatueChangeNotifyReceived extends $pb.GeneratedMessage {
  factory OfflineMsgStatueChangeNotifyReceived({
    $fixnum.Int64? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  OfflineMsgStatueChangeNotifyReceived._() : super();
  factory OfflineMsgStatueChangeNotifyReceived.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OfflineMsgStatueChangeNotifyReceived.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OfflineMsgStatueChangeNotifyReceived', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'session')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OfflineMsgStatueChangeNotifyReceived clone() => OfflineMsgStatueChangeNotifyReceived()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OfflineMsgStatueChangeNotifyReceived copyWith(void Function(OfflineMsgStatueChangeNotifyReceived) updates) => super.copyWith((message) => updates(message as OfflineMsgStatueChangeNotifyReceived)) as OfflineMsgStatueChangeNotifyReceived;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OfflineMsgStatueChangeNotifyReceived create() => OfflineMsgStatueChangeNotifyReceived._();
  OfflineMsgStatueChangeNotifyReceived createEmptyInstance() => create();
  static $pb.PbList<OfflineMsgStatueChangeNotifyReceived> createRepeated() => $pb.PbList<OfflineMsgStatueChangeNotifyReceived>();
  @$core.pragma('dart2js:noInline')
  static OfflineMsgStatueChangeNotifyReceived getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OfflineMsgStatueChangeNotifyReceived>(create);
  static OfflineMsgStatueChangeNotifyReceived? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get session => $_getI64(0);
  @$pb.TagNumber(1)
  set session($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
}

class UserSessionStatus extends $pb.GeneratedMessage {
  factory UserSessionStatus({
    $fixnum.Int64? userId,
    $core.String? beginMsgRecordId,
    $fixnum.Int64? newMsgCount,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (beginMsgRecordId != null) {
      $result.beginMsgRecordId = beginMsgRecordId;
    }
    if (newMsgCount != null) {
      $result.newMsgCount = newMsgCount;
    }
    return $result;
  }
  UserSessionStatus._() : super();
  factory UserSessionStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSessionStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserSessionStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'beginMsgRecordId', protoName: 'beginMsgRecordId')
    ..aInt64(3, _omitFieldNames ? '' : 'newMsgCount', protoName: 'newMsgCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserSessionStatus clone() => UserSessionStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserSessionStatus copyWith(void Function(UserSessionStatus) updates) => super.copyWith((message) => updates(message as UserSessionStatus)) as UserSessionStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserSessionStatus create() => UserSessionStatus._();
  UserSessionStatus createEmptyInstance() => create();
  static $pb.PbList<UserSessionStatus> createRepeated() => $pb.PbList<UserSessionStatus>();
  @$core.pragma('dart2js:noInline')
  static UserSessionStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSessionStatus>(create);
  static UserSessionStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get beginMsgRecordId => $_getSZ(1);
  @$pb.TagNumber(2)
  set beginMsgRecordId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBeginMsgRecordId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeginMsgRecordId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get newMsgCount => $_getI64(2);
  @$pb.TagNumber(3)
  set newMsgCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNewMsgCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearNewMsgCount() => clearField(3);
}

/// chat session 用于展示会话列表
class ChatSession extends $pb.GeneratedMessage {
  factory ChatSession({
    $fixnum.Int64? session,
    $fixnum.Int64? sessionCurSubSn,
    $0.MSG_STATE? lastMsgStatus,
    CHAT_SESSION_TYPE? sessionType,
    $fixnum.Int64? srcId,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
    $core.List<$core.int>? pbCommData,
    $fixnum.Int64? newMsgCount,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    if (sessionCurSubSn != null) {
      $result.sessionCurSubSn = sessionCurSubSn;
    }
    if (lastMsgStatus != null) {
      $result.lastMsgStatus = lastMsgStatus;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    if (srcId != null) {
      $result.srcId = srcId;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (newMsgCount != null) {
      $result.newMsgCount = newMsgCount;
    }
    return $result;
  }
  ChatSession._() : super();
  factory ChatSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatSession', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'session')
    ..aInt64(2, _omitFieldNames ? '' : 'SessionCurSubSn', protoName: 'SessionCurSubSn')
    ..e<$0.MSG_STATE>(3, _omitFieldNames ? '' : 'LastMsgStatus', $pb.PbFieldType.OE, protoName: 'LastMsgStatus', defaultOrMaker: $0.MSG_STATE.INIT, valueOf: $0.MSG_STATE.valueOf, enumValues: $0.MSG_STATE.values)
    ..e<CHAT_SESSION_TYPE>(4, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.OE, protoName: 'sessionType', defaultOrMaker: CHAT_SESSION_TYPE.CHAT_SESSION_TYPE_GROUP_CHAT, valueOf: CHAT_SESSION_TYPE.valueOf, enumValues: CHAT_SESSION_TYPE.values)
    ..aInt64(5, _omitFieldNames ? '' : 'SrcId', protoName: 'SrcId')
    ..aOS(6, _omitFieldNames ? '' : 'PbName', protoName: 'PbName')
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'PbData', $pb.PbFieldType.OY, protoName: 'PbData')
    ..aInt64(9, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt')
    ..aInt64(10, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt')
    ..a<$core.List<$core.int>>(11, _omitFieldNames ? '' : 'PbCommData', $pb.PbFieldType.OY, protoName: 'PbCommData')
    ..aInt64(12, _omitFieldNames ? '' : 'newMsgCount', protoName: 'newMsgCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatSession clone() => ChatSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatSession copyWith(void Function(ChatSession) updates) => super.copyWith((message) => updates(message as ChatSession)) as ChatSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatSession create() => ChatSession._();
  ChatSession createEmptyInstance() => create();
  static $pb.PbList<ChatSession> createRepeated() => $pb.PbList<ChatSession>();
  @$core.pragma('dart2js:noInline')
  static ChatSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatSession>(create);
  static ChatSession? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get session => $_getI64(0);
  @$pb.TagNumber(1)
  set session($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sessionCurSubSn => $_getI64(1);
  @$pb.TagNumber(2)
  set sessionCurSubSn($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionCurSubSn() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionCurSubSn() => clearField(2);

  @$pb.TagNumber(3)
  $0.MSG_STATE get lastMsgStatus => $_getN(2);
  @$pb.TagNumber(3)
  set lastMsgStatus($0.MSG_STATE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastMsgStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastMsgStatus() => clearField(3);

  @$pb.TagNumber(4)
  CHAT_SESSION_TYPE get sessionType => $_getN(3);
  @$pb.TagNumber(4)
  set sessionType(CHAT_SESSION_TYPE v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSessionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get srcId => $_getI64(4);
  @$pb.TagNumber(5)
  set srcId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSrcId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSrcId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get pbName => $_getSZ(5);
  @$pb.TagNumber(6)
  set pbName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPbName() => $_has(5);
  @$pb.TagNumber(6)
  void clearPbName() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get pbData => $_getN(6);
  @$pb.TagNumber(7)
  set pbData($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPbData() => $_has(6);
  @$pb.TagNumber(7)
  void clearPbData() => clearField(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get createdAt => $_getI64(7);
  @$pb.TagNumber(9)
  set createdAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(9)
  void clearCreatedAt() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get updatedAt => $_getI64(8);
  @$pb.TagNumber(10)
  set updatedAt($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasUpdatedAt() => $_has(8);
  @$pb.TagNumber(10)
  void clearUpdatedAt() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get pbCommData => $_getN(9);
  @$pb.TagNumber(11)
  set pbCommData($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasPbCommData() => $_has(9);
  @$pb.TagNumber(11)
  void clearPbCommData() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get newMsgCount => $_getI64(10);
  @$pb.TagNumber(12)
  set newMsgCount($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasNewMsgCount() => $_has(10);
  @$pb.TagNumber(12)
  void clearNewMsgCount() => clearField(12);
}

/// 分页获取srcid的全部聊过天的会话
class FetchChatSessionsReq extends $pb.GeneratedMessage {
  factory FetchChatSessionsReq({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? time,
    FETCH_SESSION_RANGE? range,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (time != null) {
      $result.time = time;
    }
    if (range != null) {
      $result.range = range;
    }
    return $result;
  }
  FetchChatSessionsReq._() : super();
  factory FetchChatSessionsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchChatSessionsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchChatSessionsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..e<FETCH_SESSION_RANGE>(4, _omitFieldNames ? '' : 'range', $pb.PbFieldType.OE, defaultOrMaker: FETCH_SESSION_RANGE.ALL, valueOf: FETCH_SESSION_RANGE.valueOf, enumValues: FETCH_SESSION_RANGE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchChatSessionsReq clone() => FetchChatSessionsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchChatSessionsReq copyWith(void Function(FetchChatSessionsReq) updates) => super.copyWith((message) => updates(message as FetchChatSessionsReq)) as FetchChatSessionsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchChatSessionsReq create() => FetchChatSessionsReq._();
  FetchChatSessionsReq createEmptyInstance() => create();
  static $pb.PbList<FetchChatSessionsReq> createRepeated() => $pb.PbList<FetchChatSessionsReq>();
  @$core.pragma('dart2js:noInline')
  static FetchChatSessionsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchChatSessionsReq>(create);
  static FetchChatSessionsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  FETCH_SESSION_RANGE get range => $_getN(3);
  @$pb.TagNumber(4)
  set range(FETCH_SESSION_RANGE v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRange() => $_has(3);
  @$pb.TagNumber(4)
  void clearRange() => clearField(4);
}

class FetchChatSessionsRsp extends $pb.GeneratedMessage {
  factory FetchChatSessionsRsp({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? time,
    FETCH_SESSION_RANGE? range,
    $core.Iterable<ChatSession>? chatSessions,
    $fixnum.Int64? totalCount,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (time != null) {
      $result.time = time;
    }
    if (range != null) {
      $result.range = range;
    }
    if (chatSessions != null) {
      $result.chatSessions.addAll(chatSessions);
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  FetchChatSessionsRsp._() : super();
  factory FetchChatSessionsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchChatSessionsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchChatSessionsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..e<FETCH_SESSION_RANGE>(4, _omitFieldNames ? '' : 'range', $pb.PbFieldType.OE, defaultOrMaker: FETCH_SESSION_RANGE.ALL, valueOf: FETCH_SESSION_RANGE.valueOf, enumValues: FETCH_SESSION_RANGE.values)
    ..pc<ChatSession>(5, _omitFieldNames ? '' : 'chatSessions', $pb.PbFieldType.PM, protoName: 'chatSessions', subBuilder: ChatSession.create)
    ..aInt64(6, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchChatSessionsRsp clone() => FetchChatSessionsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchChatSessionsRsp copyWith(void Function(FetchChatSessionsRsp) updates) => super.copyWith((message) => updates(message as FetchChatSessionsRsp)) as FetchChatSessionsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchChatSessionsRsp create() => FetchChatSessionsRsp._();
  FetchChatSessionsRsp createEmptyInstance() => create();
  static $pb.PbList<FetchChatSessionsRsp> createRepeated() => $pb.PbList<FetchChatSessionsRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchChatSessionsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchChatSessionsRsp>(create);
  static FetchChatSessionsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  FETCH_SESSION_RANGE get range => $_getN(3);
  @$pb.TagNumber(4)
  set range(FETCH_SESSION_RANGE v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRange() => $_has(3);
  @$pb.TagNumber(4)
  void clearRange() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<ChatSession> get chatSessions => $_getList(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalCount => $_getI64(5);
  @$pb.TagNumber(6)
  set totalCount($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalCount() => clearField(6);
}

/// ChatHisMsgReq 获取历史聊天消息
class FetchChatHisMsgListOfSessionReq extends $pb.GeneratedMessage {
  factory FetchChatHisMsgListOfSessionReq({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? time,
    $fixnum.Int64? session,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (time != null) {
      $result.time = time;
    }
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  FetchChatHisMsgListOfSessionReq._() : super();
  factory FetchChatHisMsgListOfSessionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchChatHisMsgListOfSessionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchChatHisMsgListOfSessionReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..aInt64(4, _omitFieldNames ? '' : 'session')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchChatHisMsgListOfSessionReq clone() => FetchChatHisMsgListOfSessionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchChatHisMsgListOfSessionReq copyWith(void Function(FetchChatHisMsgListOfSessionReq) updates) => super.copyWith((message) => updates(message as FetchChatHisMsgListOfSessionReq)) as FetchChatHisMsgListOfSessionReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchChatHisMsgListOfSessionReq create() => FetchChatHisMsgListOfSessionReq._();
  FetchChatHisMsgListOfSessionReq createEmptyInstance() => create();
  static $pb.PbList<FetchChatHisMsgListOfSessionReq> createRepeated() => $pb.PbList<FetchChatHisMsgListOfSessionReq>();
  @$core.pragma('dart2js:noInline')
  static FetchChatHisMsgListOfSessionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchChatHisMsgListOfSessionReq>(create);
  static FetchChatHisMsgListOfSessionReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get session => $_getI64(3);
  @$pb.TagNumber(4)
  set session($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSession() => $_has(3);
  @$pb.TagNumber(4)
  void clearSession() => clearField(4);
}

class FetchChatHisMsgListOfSessionRsp extends $pb.GeneratedMessage {
  factory FetchChatHisMsgListOfSessionRsp({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? time,
    $fixnum.Int64? session,
    $core.Iterable<HistoryMsg>? chatHisMsgs,
    $fixnum.Int64? totalCount,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (time != null) {
      $result.time = time;
    }
    if (session != null) {
      $result.session = session;
    }
    if (chatHisMsgs != null) {
      $result.chatHisMsgs.addAll(chatHisMsgs);
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  FetchChatHisMsgListOfSessionRsp._() : super();
  factory FetchChatHisMsgListOfSessionRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchChatHisMsgListOfSessionRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchChatHisMsgListOfSessionRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..aInt64(4, _omitFieldNames ? '' : 'session')
    ..pc<HistoryMsg>(5, _omitFieldNames ? '' : 'chatHisMsgs', $pb.PbFieldType.PM, protoName: 'chatHisMsgs', subBuilder: HistoryMsg.create)
    ..aInt64(6, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchChatHisMsgListOfSessionRsp clone() => FetchChatHisMsgListOfSessionRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchChatHisMsgListOfSessionRsp copyWith(void Function(FetchChatHisMsgListOfSessionRsp) updates) => super.copyWith((message) => updates(message as FetchChatHisMsgListOfSessionRsp)) as FetchChatHisMsgListOfSessionRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchChatHisMsgListOfSessionRsp create() => FetchChatHisMsgListOfSessionRsp._();
  FetchChatHisMsgListOfSessionRsp createEmptyInstance() => create();
  static $pb.PbList<FetchChatHisMsgListOfSessionRsp> createRepeated() => $pb.PbList<FetchChatHisMsgListOfSessionRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchChatHisMsgListOfSessionRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchChatHisMsgListOfSessionRsp>(create);
  static FetchChatHisMsgListOfSessionRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get session => $_getI64(3);
  @$pb.TagNumber(4)
  set session($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSession() => $_has(3);
  @$pb.TagNumber(4)
  void clearSession() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<HistoryMsg> get chatHisMsgs => $_getList(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalCount => $_getI64(5);
  @$pb.TagNumber(6)
  set totalCount($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalCount() => clearField(6);
}

/// 删除会话, 解除好友关系时调用
class DelChatSessionsReq extends $pb.GeneratedMessage {
  factory DelChatSessionsReq({
    $fixnum.Int64? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  DelChatSessionsReq._() : super();
  factory DelChatSessionsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelChatSessionsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelChatSessionsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'session')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelChatSessionsReq clone() => DelChatSessionsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelChatSessionsReq copyWith(void Function(DelChatSessionsReq) updates) => super.copyWith((message) => updates(message as DelChatSessionsReq)) as DelChatSessionsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelChatSessionsReq create() => DelChatSessionsReq._();
  DelChatSessionsReq createEmptyInstance() => create();
  static $pb.PbList<DelChatSessionsReq> createRepeated() => $pb.PbList<DelChatSessionsReq>();
  @$core.pragma('dart2js:noInline')
  static DelChatSessionsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelChatSessionsReq>(create);
  static DelChatSessionsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get session => $_getI64(0);
  @$pb.TagNumber(1)
  set session($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
}

class DelChatSessionsRsp extends $pb.GeneratedMessage {
  factory DelChatSessionsRsp({
    $fixnum.Int64? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  DelChatSessionsRsp._() : super();
  factory DelChatSessionsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelChatSessionsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelChatSessionsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'session')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelChatSessionsRsp clone() => DelChatSessionsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelChatSessionsRsp copyWith(void Function(DelChatSessionsRsp) updates) => super.copyWith((message) => updates(message as DelChatSessionsRsp)) as DelChatSessionsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelChatSessionsRsp create() => DelChatSessionsRsp._();
  DelChatSessionsRsp createEmptyInstance() => create();
  static $pb.PbList<DelChatSessionsRsp> createRepeated() => $pb.PbList<DelChatSessionsRsp>();
  @$core.pragma('dart2js:noInline')
  static DelChatSessionsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelChatSessionsRsp>(create);
  static DelChatSessionsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get session => $_getI64(0);
  @$pb.TagNumber(1)
  set session($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
}

/// 清除消息 客户端从聊天列表删除一项聊天会话时调用，这时对方可能是好友，也可能不是
class ClearMsgOfSessionReq extends $pb.GeneratedMessage {
  factory ClearMsgOfSessionReq({
    $fixnum.Int64? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  ClearMsgOfSessionReq._() : super();
  factory ClearMsgOfSessionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClearMsgOfSessionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClearMsgOfSessionReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'session')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClearMsgOfSessionReq clone() => ClearMsgOfSessionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClearMsgOfSessionReq copyWith(void Function(ClearMsgOfSessionReq) updates) => super.copyWith((message) => updates(message as ClearMsgOfSessionReq)) as ClearMsgOfSessionReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearMsgOfSessionReq create() => ClearMsgOfSessionReq._();
  ClearMsgOfSessionReq createEmptyInstance() => create();
  static $pb.PbList<ClearMsgOfSessionReq> createRepeated() => $pb.PbList<ClearMsgOfSessionReq>();
  @$core.pragma('dart2js:noInline')
  static ClearMsgOfSessionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClearMsgOfSessionReq>(create);
  static ClearMsgOfSessionReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get session => $_getI64(0);
  @$pb.TagNumber(1)
  set session($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
}

class ClearMsgOfSessionRsp extends $pb.GeneratedMessage {
  factory ClearMsgOfSessionRsp({
    $fixnum.Int64? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  ClearMsgOfSessionRsp._() : super();
  factory ClearMsgOfSessionRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClearMsgOfSessionRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClearMsgOfSessionRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'session')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClearMsgOfSessionRsp clone() => ClearMsgOfSessionRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClearMsgOfSessionRsp copyWith(void Function(ClearMsgOfSessionRsp) updates) => super.copyWith((message) => updates(message as ClearMsgOfSessionRsp)) as ClearMsgOfSessionRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearMsgOfSessionRsp create() => ClearMsgOfSessionRsp._();
  ClearMsgOfSessionRsp createEmptyInstance() => create();
  static $pb.PbList<ClearMsgOfSessionRsp> createRepeated() => $pb.PbList<ClearMsgOfSessionRsp>();
  @$core.pragma('dart2js:noInline')
  static ClearMsgOfSessionRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClearMsgOfSessionRsp>(create);
  static ClearMsgOfSessionRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get session => $_getI64(0);
  @$pb.TagNumber(1)
  set session($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
}

/// 获取系统通知消息
class FetchSysNotifyMsgListReq extends $pb.GeneratedMessage {
  factory FetchSysNotifyMsgListReq({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  FetchSysNotifyMsgListReq._() : super();
  factory FetchSysNotifyMsgListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchSysNotifyMsgListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchSysNotifyMsgListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchSysNotifyMsgListReq clone() => FetchSysNotifyMsgListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchSysNotifyMsgListReq copyWith(void Function(FetchSysNotifyMsgListReq) updates) => super.copyWith((message) => updates(message as FetchSysNotifyMsgListReq)) as FetchSysNotifyMsgListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchSysNotifyMsgListReq create() => FetchSysNotifyMsgListReq._();
  FetchSysNotifyMsgListReq createEmptyInstance() => create();
  static $pb.PbList<FetchSysNotifyMsgListReq> createRepeated() => $pb.PbList<FetchSysNotifyMsgListReq>();
  @$core.pragma('dart2js:noInline')
  static FetchSysNotifyMsgListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchSysNotifyMsgListReq>(create);
  static FetchSysNotifyMsgListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
}

class FetchSysNotifyMsgListRsp extends $pb.GeneratedMessage {
  factory FetchSysNotifyMsgListRsp({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? time,
    $core.Iterable<HistoryMsg>? chatHisMsgs,
    $fixnum.Int64? totalCount,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (time != null) {
      $result.time = time;
    }
    if (chatHisMsgs != null) {
      $result.chatHisMsgs.addAll(chatHisMsgs);
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  FetchSysNotifyMsgListRsp._() : super();
  factory FetchSysNotifyMsgListRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchSysNotifyMsgListRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchSysNotifyMsgListRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_offlineMsg'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'pageSize', protoName: 'pageSize')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..pc<HistoryMsg>(4, _omitFieldNames ? '' : 'chatHisMsgs', $pb.PbFieldType.PM, protoName: 'chatHisMsgs', subBuilder: HistoryMsg.create)
    ..aInt64(5, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchSysNotifyMsgListRsp clone() => FetchSysNotifyMsgListRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchSysNotifyMsgListRsp copyWith(void Function(FetchSysNotifyMsgListRsp) updates) => super.copyWith((message) => updates(message as FetchSysNotifyMsgListRsp)) as FetchSysNotifyMsgListRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchSysNotifyMsgListRsp create() => FetchSysNotifyMsgListRsp._();
  FetchSysNotifyMsgListRsp createEmptyInstance() => create();
  static $pb.PbList<FetchSysNotifyMsgListRsp> createRepeated() => $pb.PbList<FetchSysNotifyMsgListRsp>();
  @$core.pragma('dart2js:noInline')
  static FetchSysNotifyMsgListRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchSysNotifyMsgListRsp>(create);
  static FetchSysNotifyMsgListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<HistoryMsg> get chatHisMsgs => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get totalCount => $_getI64(4);
  @$pb.TagNumber(5)
  set totalCount($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalCount() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
