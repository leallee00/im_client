//
//  Generated code. Do not modify.
//  source: pb_stats/stat_notify.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use statisticNotifyDescriptor instead')
const StatisticNotify$json = {
  '1': 'StatisticNotify',
  '2': [
    {'1': 'pbCommData', '3': 1, '4': 1, '5': 11, '6': '.pb_pub.PBCommData', '10': 'pbCommData'},
    {'1': 'pbName', '3': 2, '4': 1, '5': 9, '10': 'pbName'},
    {'1': 'pbData', '3': 3, '4': 1, '5': 12, '10': 'pbData'},
  ],
};

/// Descriptor for `StatisticNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statisticNotifyDescriptor = $convert.base64Decode(
    'Cg9TdGF0aXN0aWNOb3RpZnkSMgoKcGJDb21tRGF0YRgBIAEoCzISLnBiX3B1Yi5QQkNvbW1EYX'
    'RhUgpwYkNvbW1EYXRhEhYKBnBiTmFtZRgCIAEoCVIGcGJOYW1lEhYKBnBiRGF0YRgDIAEoDFIG'
    'cGJEYXRh');

@$core.Deprecated('Use invitationStatusChangedDescriptor instead')
const InvitationStatusChanged$json = {
  '1': 'InvitationStatusChanged',
  '2': [
    {'1': 'callerId', '3': 1, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 2, '4': 1, '5': 3, '10': 'calleeId'},
    {'1': 'inviteTime', '3': 3, '4': 1, '5': 3, '10': 'inviteTime'},
    {'1': 'interval', '3': 4, '4': 1, '5': 3, '10': 'interval'},
    {'1': 'price', '3': 5, '4': 1, '5': 3, '10': 'price'},
    {'1': 'status', '3': 6, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `InvitationStatusChanged`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitationStatusChangedDescriptor = $convert.base64Decode(
    'ChdJbnZpdGF0aW9uU3RhdHVzQ2hhbmdlZBIaCghjYWxsZXJJZBgBIAEoA1IIY2FsbGVySWQSGg'
    'oIY2FsbGVlSWQYAiABKANSCGNhbGxlZUlkEh4KCmludml0ZVRpbWUYAyABKANSCmludml0ZVRp'
    'bWUSGgoIaW50ZXJ2YWwYBCABKANSCGludGVydmFsEhQKBXByaWNlGAUgASgDUgVwcmljZRIWCg'
    'ZzdGF0dXMYBiABKAVSBnN0YXR1cw==');

@$core.Deprecated('Use chatRoomClosedDescriptor instead')
const ChatRoomClosed$json = {
  '1': 'ChatRoomClosed',
  '2': [
    {'1': 'roomId', '3': 1, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'callerId', '3': 2, '4': 1, '5': 3, '10': 'callerId'},
    {'1': 'calleeId', '3': 3, '4': 1, '5': 3, '10': 'calleeId'},
    {'1': 'startTime', '3': 4, '4': 1, '5': 3, '10': 'startTime'},
    {'1': 'closeTime', '3': 5, '4': 1, '5': 3, '10': 'closeTime'},
    {'1': 'duration', '3': 6, '4': 1, '5': 3, '10': 'duration'},
    {'1': 'interval', '3': 7, '4': 1, '5': 3, '10': 'interval'},
    {'1': 'price', '3': 8, '4': 1, '5': 3, '10': 'price'},
    {'1': 'round', '3': 9, '4': 1, '5': 3, '10': 'round'},
  ],
};

/// Descriptor for `ChatRoomClosed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatRoomClosedDescriptor = $convert.base64Decode(
    'Cg5DaGF0Um9vbUNsb3NlZBIWCgZyb29tSWQYASABKANSBnJvb21JZBIaCghjYWxsZXJJZBgCIA'
    'EoA1IIY2FsbGVySWQSGgoIY2FsbGVlSWQYAyABKANSCGNhbGxlZUlkEhwKCXN0YXJ0VGltZRgE'
    'IAEoA1IJc3RhcnRUaW1lEhwKCWNsb3NlVGltZRgFIAEoA1IJY2xvc2VUaW1lEhoKCGR1cmF0aW'
    '9uGAYgASgDUghkdXJhdGlvbhIaCghpbnRlcnZhbBgHIAEoA1IIaW50ZXJ2YWwSFAoFcHJpY2UY'
    'CCABKANSBXByaWNlEhQKBXJvdW5kGAkgASgDUgVyb3VuZA==');

@$core.Deprecated('Use videoRoomClosedDescriptor instead')
const VideoRoomClosed$json = {
  '1': 'VideoRoomClosed',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'roomId', '3': 2, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'EnterTime', '3': 3, '4': 1, '5': 3, '10': 'EnterTime'},
    {'1': 'ExitTime', '3': 4, '4': 1, '5': 3, '10': 'ExitTime'},
    {'1': 'WatchTime', '3': 5, '4': 1, '5': 3, '10': 'WatchTime'},
  ],
};

/// Descriptor for `VideoRoomClosed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoRoomClosedDescriptor = $convert.base64Decode(
    'Cg9WaWRlb1Jvb21DbG9zZWQSFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSFgoGcm9vbUlkGAIgAS'
    'gDUgZyb29tSWQSHAoJRW50ZXJUaW1lGAMgASgDUglFbnRlclRpbWUSGgoIRXhpdFRpbWUYBCAB'
    'KANSCEV4aXRUaW1lEhwKCVdhdGNoVGltZRgFIAEoA1IJV2F0Y2hUaW1l');

