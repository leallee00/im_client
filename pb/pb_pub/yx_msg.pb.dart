//
//  Generated code. Do not modify.
//  source: pb_pub/yx_msg.proto
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
import 'yx_msg_type.pbenum.dart' as $5;

/// 兼容云信通用消息
class YXCommMsg extends $pb.GeneratedMessage {
  factory YXCommMsg({
    $5.MessageType? messageType,
    $core.String? messageBody,
    $fixnum.Int64? isImMessage,
  }) {
    final $result = create();
    if (messageType != null) {
      $result.messageType = messageType;
    }
    if (messageBody != null) {
      $result.messageBody = messageBody;
    }
    if (isImMessage != null) {
      $result.isImMessage = isImMessage;
    }
    return $result;
  }
  YXCommMsg._() : super();
  factory YXCommMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory YXCommMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'YXCommMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..e<$5.MessageType>(1, _omitFieldNames ? '' : 'MessageType', $pb.PbFieldType.OE, protoName: 'MessageType', defaultOrMaker: $5.MessageType.MessageTypeUnknown, valueOf: $5.MessageType.valueOf, enumValues: $5.MessageType.values)
    ..aOS(2, _omitFieldNames ? '' : 'MessageBody', protoName: 'MessageBody')
    ..aInt64(3, _omitFieldNames ? '' : 'IsImMessage', protoName: 'IsImMessage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  YXCommMsg clone() => YXCommMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  YXCommMsg copyWith(void Function(YXCommMsg) updates) => super.copyWith((message) => updates(message as YXCommMsg)) as YXCommMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static YXCommMsg create() => YXCommMsg._();
  YXCommMsg createEmptyInstance() => create();
  static $pb.PbList<YXCommMsg> createRepeated() => $pb.PbList<YXCommMsg>();
  @$core.pragma('dart2js:noInline')
  static YXCommMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YXCommMsg>(create);
  static YXCommMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $5.MessageType get messageType => $_getN(0);
  @$pb.TagNumber(1)
  set messageType($5.MessageType v) { setField(1, v); }
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

  @$pb.TagNumber(3)
  $fixnum.Int64 get isImMessage => $_getI64(2);
  @$pb.TagNumber(3)
  set isImMessage($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsImMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsImMessage() => clearField(3);
}

/// 云信通用消息应答
class YXCommMsgRsp extends $pb.GeneratedMessage {
  factory YXCommMsgRsp() => create();
  YXCommMsgRsp._() : super();
  factory YXCommMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory YXCommMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'YXCommMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  YXCommMsgRsp clone() => YXCommMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  YXCommMsgRsp copyWith(void Function(YXCommMsgRsp) updates) => super.copyWith((message) => updates(message as YXCommMsgRsp)) as YXCommMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static YXCommMsgRsp create() => YXCommMsgRsp._();
  YXCommMsgRsp createEmptyInstance() => create();
  static $pb.PbList<YXCommMsgRsp> createRepeated() => $pb.PbList<YXCommMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static YXCommMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YXCommMsgRsp>(create);
  static YXCommMsgRsp? _defaultInstance;
}

class YXCommMsgNSQ extends $pb.GeneratedMessage {
  factory YXCommMsgNSQ({
    $4.PBCommData? pbCommData,
    $fixnum.Int64? groupId,
    $5.MessageType? messageType,
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
  YXCommMsgNSQ._() : super();
  factory YXCommMsgNSQ.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory YXCommMsgNSQ.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'YXCommMsgNSQ', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..aInt64(2, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..e<$5.MessageType>(3, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.OE, protoName: 'messageType', defaultOrMaker: $5.MessageType.MessageTypeUnknown, valueOf: $5.MessageType.valueOf, enumValues: $5.MessageType.values)
    ..aOS(4, _omitFieldNames ? '' : 'messageBody', protoName: 'messageBody')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'exp', entryClassName: 'YXCommMsgNSQ.ExpEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb_pub'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  YXCommMsgNSQ clone() => YXCommMsgNSQ()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  YXCommMsgNSQ copyWith(void Function(YXCommMsgNSQ) updates) => super.copyWith((message) => updates(message as YXCommMsgNSQ)) as YXCommMsgNSQ;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static YXCommMsgNSQ create() => YXCommMsgNSQ._();
  YXCommMsgNSQ createEmptyInstance() => create();
  static $pb.PbList<YXCommMsgNSQ> createRepeated() => $pb.PbList<YXCommMsgNSQ>();
  @$core.pragma('dart2js:noInline')
  static YXCommMsgNSQ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YXCommMsgNSQ>(create);
  static YXCommMsgNSQ? _defaultInstance;

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
  $5.MessageType get messageType => $_getN(2);
  @$pb.TagNumber(3)
  set messageType($5.MessageType v) { setField(3, v); }
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
