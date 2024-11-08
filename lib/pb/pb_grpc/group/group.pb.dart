//
//  Generated code. Do not modify.
//  source: pb_grpc/group/group.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RefreshMemoryReq extends $pb.GeneratedMessage {
  factory RefreshMemoryReq() => create();
  RefreshMemoryReq._() : super();
  factory RefreshMemoryReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshMemoryReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RefreshMemoryReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshMemoryReq clone() => RefreshMemoryReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshMemoryReq copyWith(void Function(RefreshMemoryReq) updates) => super.copyWith((message) => updates(message as RefreshMemoryReq)) as RefreshMemoryReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshMemoryReq create() => RefreshMemoryReq._();
  RefreshMemoryReq createEmptyInstance() => create();
  static $pb.PbList<RefreshMemoryReq> createRepeated() => $pb.PbList<RefreshMemoryReq>();
  @$core.pragma('dart2js:noInline')
  static RefreshMemoryReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshMemoryReq>(create);
  static RefreshMemoryReq? _defaultInstance;
}

class RefreshMemoryRsp extends $pb.GeneratedMessage {
  factory RefreshMemoryRsp() => create();
  RefreshMemoryRsp._() : super();
  factory RefreshMemoryRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshMemoryRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RefreshMemoryRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_grpc_group'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshMemoryRsp clone() => RefreshMemoryRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshMemoryRsp copyWith(void Function(RefreshMemoryRsp) updates) => super.copyWith((message) => updates(message as RefreshMemoryRsp)) as RefreshMemoryRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshMemoryRsp create() => RefreshMemoryRsp._();
  RefreshMemoryRsp createEmptyInstance() => create();
  static $pb.PbList<RefreshMemoryRsp> createRepeated() => $pb.PbList<RefreshMemoryRsp>();
  @$core.pragma('dart2js:noInline')
  static RefreshMemoryRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshMemoryRsp>(create);
  static RefreshMemoryRsp? _defaultInstance;
}


const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
