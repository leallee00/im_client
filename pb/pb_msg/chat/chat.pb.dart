//
//  Generated code. Do not modify.
//  source: pb_msg/chat/chat.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../pb_pub/comm.pb.dart' as $0;

/// 私人礼物
class PersonalGift extends $pb.GeneratedMessage {
  factory PersonalGift({
    $0.Gift? gift,
  }) {
    final $result = create();
    if (gift != null) {
      $result.gift = gift;
    }
    return $result;
  }
  PersonalGift._() : super();
  factory PersonalGift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersonalGift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersonalGift', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb_msg_chart'), createEmptyInstance: create)
    ..aOM<$0.Gift>(1, _omitFieldNames ? '' : 'gift', subBuilder: $0.Gift.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersonalGift clone() => PersonalGift()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersonalGift copyWith(void Function(PersonalGift) updates) => super.copyWith((message) => updates(message as PersonalGift)) as PersonalGift;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersonalGift create() => PersonalGift._();
  PersonalGift createEmptyInstance() => create();
  static $pb.PbList<PersonalGift> createRepeated() => $pb.PbList<PersonalGift>();
  @$core.pragma('dart2js:noInline')
  static PersonalGift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersonalGift>(create);
  static PersonalGift? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Gift get gift => $_getN(0);
  @$pb.TagNumber(1)
  set gift($0.Gift v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGift() => $_has(0);
  @$pb.TagNumber(1)
  void clearGift() => clearField(1);
  @$pb.TagNumber(1)
  $0.Gift ensureGift() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
