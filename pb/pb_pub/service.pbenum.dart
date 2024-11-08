//
//  Generated code. Do not modify.
//  source: pb_pub/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// service 服务号.
class Service extends $pb.ProtobufEnum {
  static const Service gate = Service._(0, _omitEnumNames ? '' : 'gate');
  static const Service user_center = Service._(1, _omitEnumNames ? '' : 'user_center');
  static const Service msg_sender = Service._(2, _omitEnumNames ? '' : 'msg_sender');
  static const Service chat = Service._(3, _omitEnumNames ? '' : 'chat');
  static const Service allocater = Service._(4, _omitEnumNames ? '' : 'allocater');
  static const Service black_list = Service._(5, _omitEnumNames ? '' : 'black_list');
  static const Service live_room = Service._(6, _omitEnumNames ? '' : 'live_room');
  static const Service offline_msg = Service._(7, _omitEnumNames ? '' : 'offline_msg');
  static const Service pk_room = Service._(8, _omitEnumNames ? '' : 'pk_room');
  static const Service visitors_gate = Service._(9, _omitEnumNames ? '' : 'visitors_gate');
  static const Service oss = Service._(10, _omitEnumNames ? '' : 'oss');
  static const Service service_monitor = Service._(11, _omitEnumNames ? '' : 'service_monitor');
  static const Service msg_pusher = Service._(12, _omitEnumNames ? '' : 'msg_pusher');
  static const Service call_scene = Service._(13, _omitEnumNames ? '' : 'call_scene');
  static const Service admin = Service._(14, _omitEnumNames ? '' : 'admin');
  static const Service multi_anchor_hall = Service._(15, _omitEnumNames ? '' : 'multi_anchor_hall');
  static const Service ttk_game = Service._(16, _omitEnumNames ? '' : 'ttk_game');
  static const Service wish_hall = Service._(17, _omitEnumNames ? '' : 'wish_hall');
  static const Service msg_analyze = Service._(18, _omitEnumNames ? '' : 'msg_analyze');
  static const Service comm_room = Service._(19, _omitEnumNames ? '' : 'comm_room');
  static const Service api_http = Service._(20, _omitEnumNames ? '' : 'api_http');
  static const Service luxury = Service._(21, _omitEnumNames ? '' : 'luxury');
  static const Service friend = Service._(22, _omitEnumNames ? '' : 'friend');
  static const Service game_scene = Service._(23, _omitEnumNames ? '' : 'game_scene');
  static const Service group = Service._(24, _omitEnumNames ? '' : 'group');
  static const Service commim_uaa = Service._(25, _omitEnumNames ? '' : 'commim_uaa');
  static const Service commim_gate = Service._(26, _omitEnumNames ? '' : 'commim_gate');
  static const Service call = Service._(28, _omitEnumNames ? '' : 'call');
  static const Service followship = Service._(30, _omitEnumNames ? '' : 'followship');
  static const Service community = Service._(31, _omitEnumNames ? '' : 'community');
  static const Service groups = Service._(32, _omitEnumNames ? '' : 'groups');
  static const Service customer_service = Service._(33, _omitEnumNames ? '' : 'customer_service');

  static const $core.List<Service> values = <Service> [
    gate,
    user_center,
    msg_sender,
    chat,
    allocater,
    black_list,
    live_room,
    offline_msg,
    pk_room,
    visitors_gate,
    oss,
    service_monitor,
    msg_pusher,
    call_scene,
    admin,
    multi_anchor_hall,
    ttk_game,
    wish_hall,
    msg_analyze,
    comm_room,
    api_http,
    luxury,
    friend,
    game_scene,
    group,
    commim_uaa,
    commim_gate,
    call,
    followship,
    community,
    groups,
    customer_service,
  ];

  static final $core.Map<$core.int, Service> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Service? valueOf($core.int value) => _byValue[value];

  const Service._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
