//
//  Generated code. Do not modify.
//  source: pb_pub/comm_im.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'comm.pb.dart' as $4;
import 'comm_im.pbenum.dart';

export 'comm_im.pbenum.dart';

class NSQMessage extends $pb.GeneratedMessage {
  factory NSQMessage({
    $4.PBCommData? pbCommData,
    CODEC? codec,
    $core.String? name,
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (pbCommData != null) {
      $result.pbCommData = pbCommData;
    }
    if (codec != null) {
      $result.codec = codec;
    }
    if (name != null) {
      $result.name = name;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  NSQMessage._() : super();
  factory NSQMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NSQMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NSQMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_pub'), createEmptyInstance: create)
    ..aOM<$4.PBCommData>(1, _omitFieldNames ? '' : 'pbCommData', protoName: 'pbCommData', subBuilder: $4.PBCommData.create)
    ..e<CODEC>(2, _omitFieldNames ? '' : 'codec', $pb.PbFieldType.OE, defaultOrMaker: CODEC.PROTOBUF, valueOf: CODEC.valueOf, enumValues: CODEC.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NSQMessage clone() => NSQMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NSQMessage copyWith(void Function(NSQMessage) updates) => super.copyWith((message) => updates(message as NSQMessage)) as NSQMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NSQMessage create() => NSQMessage._();
  NSQMessage createEmptyInstance() => create();
  static $pb.PbList<NSQMessage> createRepeated() => $pb.PbList<NSQMessage>();
  @$core.pragma('dart2js:noInline')
  static NSQMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NSQMessage>(create);
  static NSQMessage? _defaultInstance;

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
  CODEC get codec => $_getN(1);
  @$pb.TagNumber(2)
  set codec(CODEC v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCodec() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodec() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(4)
  set data($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(4)
  void clearData() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
