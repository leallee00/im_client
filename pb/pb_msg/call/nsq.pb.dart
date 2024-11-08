//
//  Generated code. Do not modify.
//  source: pb_msg/call/nsq.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// 开启接听通知
class EnableAcceptNotify extends $pb.GeneratedMessage {
  factory EnableAcceptNotify({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  EnableAcceptNotify._() : super();
  factory EnableAcceptNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnableAcceptNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnableAcceptNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnableAcceptNotify clone() => EnableAcceptNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnableAcceptNotify copyWith(void Function(EnableAcceptNotify) updates) => super.copyWith((message) => updates(message as EnableAcceptNotify)) as EnableAcceptNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnableAcceptNotify create() => EnableAcceptNotify._();
  EnableAcceptNotify createEmptyInstance() => create();
  static $pb.PbList<EnableAcceptNotify> createRepeated() => $pb.PbList<EnableAcceptNotify>();
  @$core.pragma('dart2js:noInline')
  static EnableAcceptNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnableAcceptNotify>(create);
  static EnableAcceptNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

/// 关闭接听通知
class DisableAcceptNotify extends $pb.GeneratedMessage {
  factory DisableAcceptNotify({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  DisableAcceptNotify._() : super();
  factory DisableAcceptNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisableAcceptNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DisableAcceptNotify', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_call'), createEmptyInstance: create)
    ..aInt64(2, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisableAcceptNotify clone() => DisableAcceptNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisableAcceptNotify copyWith(void Function(DisableAcceptNotify) updates) => super.copyWith((message) => updates(message as DisableAcceptNotify)) as DisableAcceptNotify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DisableAcceptNotify create() => DisableAcceptNotify._();
  DisableAcceptNotify createEmptyInstance() => create();
  static $pb.PbList<DisableAcceptNotify> createRepeated() => $pb.PbList<DisableAcceptNotify>();
  @$core.pragma('dart2js:noInline')
  static DisableAcceptNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisableAcceptNotify>(create);
  static DisableAcceptNotify? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
