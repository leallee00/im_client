//
//  Generated code. Do not modify.
//  source: pb_msg/msg_analyze/msg_analyze.proto
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
import '../../pb_pub/error_code.pbenum.dart' as $1;

/// 查询A与B之间的历史消息
class ReadMsgHistoryReq extends $pb.GeneratedMessage {
  factory ReadMsgHistoryReq({
    $fixnum.Int64? useridA,
    $fixnum.Int64? useridB,
    $fixnum.Int64? num,
    $fixnum.Int64? time,
    $fixnum.Int64? sn,
  }) {
    final $result = create();
    if (useridA != null) {
      $result.useridA = useridA;
    }
    if (useridB != null) {
      $result.useridB = useridB;
    }
    if (num != null) {
      $result.num = num;
    }
    if (time != null) {
      $result.time = time;
    }
    if (sn != null) {
      $result.sn = sn;
    }
    return $result;
  }
  ReadMsgHistoryReq._() : super();
  factory ReadMsgHistoryReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadMsgHistoryReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadMsgHistoryReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'useridA', protoName: 'useridA')
    ..aInt64(2, _omitFieldNames ? '' : 'useridB', protoName: 'useridB')
    ..aInt64(3, _omitFieldNames ? '' : 'num')
    ..aInt64(4, _omitFieldNames ? '' : 'time')
    ..aInt64(5, _omitFieldNames ? '' : 'sn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadMsgHistoryReq clone() => ReadMsgHistoryReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadMsgHistoryReq copyWith(void Function(ReadMsgHistoryReq) updates) => super.copyWith((message) => updates(message as ReadMsgHistoryReq)) as ReadMsgHistoryReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadMsgHistoryReq create() => ReadMsgHistoryReq._();
  ReadMsgHistoryReq createEmptyInstance() => create();
  static $pb.PbList<ReadMsgHistoryReq> createRepeated() => $pb.PbList<ReadMsgHistoryReq>();
  @$core.pragma('dart2js:noInline')
  static ReadMsgHistoryReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadMsgHistoryReq>(create);
  static ReadMsgHistoryReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get useridA => $_getI64(0);
  @$pb.TagNumber(1)
  set useridA($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUseridA() => $_has(0);
  @$pb.TagNumber(1)
  void clearUseridA() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get useridB => $_getI64(1);
  @$pb.TagNumber(2)
  set useridB($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUseridB() => $_has(1);
  @$pb.TagNumber(2)
  void clearUseridB() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get num => $_getI64(2);
  @$pb.TagNumber(3)
  set num($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearNum() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get time => $_getI64(3);
  @$pb.TagNumber(4)
  set time($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get sn => $_getI64(4);
  @$pb.TagNumber(5)
  set sn($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSn() => $_has(4);
  @$pb.TagNumber(5)
  void clearSn() => clearField(5);
}

class ReadMsgHistoryRsp extends $pb.GeneratedMessage {
  factory ReadMsgHistoryRsp({
    $1.ErrCode? result,
    $core.Iterable<MsgHistory>? msgHistory,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (msgHistory != null) {
      $result.msgHistory.addAll(msgHistory);
    }
    return $result;
  }
  ReadMsgHistoryRsp._() : super();
  factory ReadMsgHistoryRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadMsgHistoryRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadMsgHistoryRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..e<$1.ErrCode>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: $1.ErrCode.SUCCESS, valueOf: $1.ErrCode.valueOf, enumValues: $1.ErrCode.values)
    ..pc<MsgHistory>(2, _omitFieldNames ? '' : 'msgHistory', $pb.PbFieldType.PM, protoName: 'msgHistory', subBuilder: MsgHistory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadMsgHistoryRsp clone() => ReadMsgHistoryRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadMsgHistoryRsp copyWith(void Function(ReadMsgHistoryRsp) updates) => super.copyWith((message) => updates(message as ReadMsgHistoryRsp)) as ReadMsgHistoryRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadMsgHistoryRsp create() => ReadMsgHistoryRsp._();
  ReadMsgHistoryRsp createEmptyInstance() => create();
  static $pb.PbList<ReadMsgHistoryRsp> createRepeated() => $pb.PbList<ReadMsgHistoryRsp>();
  @$core.pragma('dart2js:noInline')
  static ReadMsgHistoryRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadMsgHistoryRsp>(create);
  static ReadMsgHistoryRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ErrCode get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($1.ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<MsgHistory> get msgHistory => $_getList(1);
}

/// 历史消息结构
class MsgHistory extends $pb.GeneratedMessage {
  factory MsgHistory({
    $0.PBCommData? pbCommData,
    $core.String? pbName,
    $core.List<$core.int>? pbData,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (pbName != null) {
      $result.pbName = pbName;
    }
    if (pbData != null) {
      $result.pbData = pbData;
    }
    return $result;
  }
  MsgHistory._() : super();
  factory MsgHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgHistory', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..aOM<$0.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $0.PBCommData.create)
    ..aOS(2, _omitFieldNames ? '' : 'pbName', protoName: 'pbName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'pbData', $pb.PbFieldType.OY, protoName: 'pbData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgHistory clone() => MsgHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgHistory copyWith(void Function(MsgHistory) updates) => super.copyWith((message) => updates(message as MsgHistory)) as MsgHistory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgHistory create() => MsgHistory._();
  MsgHistory createEmptyInstance() => create();
  static $pb.PbList<MsgHistory> createRepeated() => $pb.PbList<MsgHistory>();
  @$core.pragma('dart2js:noInline')
  static MsgHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgHistory>(create);
  static MsgHistory? _defaultInstance;

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

/// 获取srcid的全部聊过天的用户
class ChatSessionsReq extends $pb.GeneratedMessage {
  factory ChatSessionsReq({
    $fixnum.Int64? offset,
    $fixnum.Int64? length,
    $fixnum.Int64? time,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (length != null) {
      $result.length = length;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  ChatSessionsReq._() : super();
  factory ChatSessionsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatSessionsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatSessionsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'length')
    ..aInt64(3, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatSessionsReq clone() => ChatSessionsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatSessionsReq copyWith(void Function(ChatSessionsReq) updates) => super.copyWith((message) => updates(message as ChatSessionsReq)) as ChatSessionsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatSessionsReq create() => ChatSessionsReq._();
  ChatSessionsReq createEmptyInstance() => create();
  static $pb.PbList<ChatSessionsReq> createRepeated() => $pb.PbList<ChatSessionsReq>();
  @$core.pragma('dart2js:noInline')
  static ChatSessionsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatSessionsReq>(create);
  static ChatSessionsReq? _defaultInstance;

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

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
}

class ChatSessionsRsp extends $pb.GeneratedMessage {
  factory ChatSessionsRsp({
    $core.Iterable<MsgHistory>? chatSessions,
  }) {
    final $result = create();
    if (chatSessions != null) {
      $result.chatSessions.addAll(chatSessions);
    }
    return $result;
  }
  ChatSessionsRsp._() : super();
  factory ChatSessionsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatSessionsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatSessionsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..pc<MsgHistory>(1, _omitFieldNames ? '' : 'chatSessions', $pb.PbFieldType.PM, protoName: 'chatSessions', subBuilder: MsgHistory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatSessionsRsp clone() => ChatSessionsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatSessionsRsp copyWith(void Function(ChatSessionsRsp) updates) => super.copyWith((message) => updates(message as ChatSessionsRsp)) as ChatSessionsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatSessionsRsp create() => ChatSessionsRsp._();
  ChatSessionsRsp createEmptyInstance() => create();
  static $pb.PbList<ChatSessionsRsp> createRepeated() => $pb.PbList<ChatSessionsRsp>();
  @$core.pragma('dart2js:noInline')
  static ChatSessionsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatSessionsRsp>(create);
  static ChatSessionsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MsgHistory> get chatSessions => $_getList(0);
}

/// ChatHistoriesReq 获取历史聊天消息
class ChatHistoriesReq extends $pb.GeneratedMessage {
  factory ChatHistoriesReq({
    $fixnum.Int64? time,
    $fixnum.Int64? num,
  }) {
    final $result = create();
    if (time != null) {
      $result.time = time;
    }
    if (num != null) {
      $result.num = num;
    }
    return $result;
  }
  ChatHistoriesReq._() : super();
  factory ChatHistoriesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatHistoriesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatHistoriesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'time')
    ..aInt64(2, _omitFieldNames ? '' : 'num')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatHistoriesReq clone() => ChatHistoriesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatHistoriesReq copyWith(void Function(ChatHistoriesReq) updates) => super.copyWith((message) => updates(message as ChatHistoriesReq)) as ChatHistoriesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatHistoriesReq create() => ChatHistoriesReq._();
  ChatHistoriesReq createEmptyInstance() => create();
  static $pb.PbList<ChatHistoriesReq> createRepeated() => $pb.PbList<ChatHistoriesReq>();
  @$core.pragma('dart2js:noInline')
  static ChatHistoriesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatHistoriesReq>(create);
  static ChatHistoriesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get time => $_getI64(0);
  @$pb.TagNumber(1)
  set time($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get num => $_getI64(1);
  @$pb.TagNumber(2)
  set num($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearNum() => clearField(2);
}

class ChatHistoriesRsp extends $pb.GeneratedMessage {
  factory ChatHistoriesRsp({
    $core.Iterable<MsgHistory>? chatHistories,
  }) {
    final $result = create();
    if (chatHistories != null) {
      $result.chatHistories.addAll(chatHistories);
    }
    return $result;
  }
  ChatHistoriesRsp._() : super();
  factory ChatHistoriesRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatHistoriesRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatHistoriesRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..pc<MsgHistory>(1, _omitFieldNames ? '' : 'chatHistories', $pb.PbFieldType.PM, protoName: 'chatHistories', subBuilder: MsgHistory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatHistoriesRsp clone() => ChatHistoriesRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatHistoriesRsp copyWith(void Function(ChatHistoriesRsp) updates) => super.copyWith((message) => updates(message as ChatHistoriesRsp)) as ChatHistoriesRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatHistoriesRsp create() => ChatHistoriesRsp._();
  ChatHistoriesRsp createEmptyInstance() => create();
  static $pb.PbList<ChatHistoriesRsp> createRepeated() => $pb.PbList<ChatHistoriesRsp>();
  @$core.pragma('dart2js:noInline')
  static ChatHistoriesRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatHistoriesRsp>(create);
  static ChatHistoriesRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MsgHistory> get chatHistories => $_getList(0);
}

class ChatStatsReq extends $pb.GeneratedMessage {
  factory ChatStatsReq({
    $fixnum.Int64? days,
  }) {
    final $result = create();
    if (days != null) {
      $result.days = days;
    }
    return $result;
  }
  ChatStatsReq._() : super();
  factory ChatStatsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatStatsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatStatsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'days')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatStatsReq clone() => ChatStatsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatStatsReq copyWith(void Function(ChatStatsReq) updates) => super.copyWith((message) => updates(message as ChatStatsReq)) as ChatStatsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatStatsReq create() => ChatStatsReq._();
  ChatStatsReq createEmptyInstance() => create();
  static $pb.PbList<ChatStatsReq> createRepeated() => $pb.PbList<ChatStatsReq>();
  @$core.pragma('dart2js:noInline')
  static ChatStatsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatStatsReq>(create);
  static ChatStatsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get days => $_getI64(0);
  @$pb.TagNumber(1)
  set days($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDays() => $_has(0);
  @$pb.TagNumber(1)
  void clearDays() => clearField(1);
}

class ChatStatsRsp extends $pb.GeneratedMessage {
  factory ChatStatsRsp({
    $core.Iterable<ChatStats>? stats,
  }) {
    final $result = create();
    if (stats != null) {
      $result.stats.addAll(stats);
    }
    return $result;
  }
  ChatStatsRsp._() : super();
  factory ChatStatsRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatStatsRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatStatsRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..pc<ChatStats>(1, _omitFieldNames ? '' : 'stats', $pb.PbFieldType.PM, subBuilder: ChatStats.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatStatsRsp clone() => ChatStatsRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatStatsRsp copyWith(void Function(ChatStatsRsp) updates) => super.copyWith((message) => updates(message as ChatStatsRsp)) as ChatStatsRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatStatsRsp create() => ChatStatsRsp._();
  ChatStatsRsp createEmptyInstance() => create();
  static $pb.PbList<ChatStatsRsp> createRepeated() => $pb.PbList<ChatStatsRsp>();
  @$core.pragma('dart2js:noInline')
  static ChatStatsRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatStatsRsp>(create);
  static ChatStatsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatStats> get stats => $_getList(0);
}

class ChatStats extends $pb.GeneratedMessage {
  factory ChatStats({
    $fixnum.Int64? fromTime,
    $fixnum.Int64? toTime,
    $fixnum.Int64? sendNum,
    $fixnum.Int64? instantRecvNum,
    $fixnum.Int64? offlineRecvNum,
    $fixnum.Int64? notRecvNum,
  }) {
    final $result = create();
    if (fromTime != null) {
      $result.fromTime = fromTime;
    }
    if (toTime != null) {
      $result.toTime = toTime;
    }
    if (sendNum != null) {
      $result.sendNum = sendNum;
    }
    if (instantRecvNum != null) {
      $result.instantRecvNum = instantRecvNum;
    }
    if (offlineRecvNum != null) {
      $result.offlineRecvNum = offlineRecvNum;
    }
    if (notRecvNum != null) {
      $result.notRecvNum = notRecvNum;
    }
    return $result;
  }
  ChatStats._() : super();
  factory ChatStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_msgAnalyze'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'fromTime', protoName: 'fromTime')
    ..aInt64(2, _omitFieldNames ? '' : 'toTime', protoName: 'toTime')
    ..aInt64(3, _omitFieldNames ? '' : 'sendNum', protoName: 'sendNum')
    ..aInt64(4, _omitFieldNames ? '' : 'instantRecvNum', protoName: 'instantRecvNum')
    ..aInt64(5, _omitFieldNames ? '' : 'offlineRecvNum', protoName: 'offlineRecvNum')
    ..aInt64(6, _omitFieldNames ? '' : 'notRecvNum', protoName: 'notRecvNum')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatStats clone() => ChatStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatStats copyWith(void Function(ChatStats) updates) => super.copyWith((message) => updates(message as ChatStats)) as ChatStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatStats create() => ChatStats._();
  ChatStats createEmptyInstance() => create();
  static $pb.PbList<ChatStats> createRepeated() => $pb.PbList<ChatStats>();
  @$core.pragma('dart2js:noInline')
  static ChatStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatStats>(create);
  static ChatStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get fromTime => $_getI64(0);
  @$pb.TagNumber(1)
  set fromTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFromTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromTime() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get toTime => $_getI64(1);
  @$pb.TagNumber(2)
  set toTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearToTime() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sendNum => $_getI64(2);
  @$pb.TagNumber(3)
  set sendNum($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSendNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearSendNum() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get instantRecvNum => $_getI64(3);
  @$pb.TagNumber(4)
  set instantRecvNum($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInstantRecvNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearInstantRecvNum() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get offlineRecvNum => $_getI64(4);
  @$pb.TagNumber(5)
  set offlineRecvNum($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOfflineRecvNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearOfflineRecvNum() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get notRecvNum => $_getI64(5);
  @$pb.TagNumber(6)
  set notRecvNum($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNotRecvNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearNotRecvNum() => clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
