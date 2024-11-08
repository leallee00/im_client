//
//  Generated code. Do not modify.
//  source: pb_grpc/gate/gate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userEnterRoomNotifyDescriptor instead')
const UserEnterRoomNotify$json = {
  '1': 'UserEnterRoomNotify',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'serviceType', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.Service', '10': 'serviceType'},
    {'1': 'groupId', '3': 3, '4': 1, '5': 5, '10': 'groupId'},
  ],
};

/// Descriptor for `UserEnterRoomNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userEnterRoomNotifyDescriptor = $convert.base64Decode(
    'ChNVc2VyRW50ZXJSb29tTm90aWZ5EhYKBnVzZXJJZBgBIAEoA1IGdXNlcklkEjEKC3NlcnZpY2'
    'VUeXBlGAIgASgOMg8ucGJfcHViLlNlcnZpY2VSC3NlcnZpY2VUeXBlEhgKB2dyb3VwSWQYAyAB'
    'KAVSB2dyb3VwSWQ=');

@$core.Deprecated('Use userExitRoomNotifyDescriptor instead')
const UserExitRoomNotify$json = {
  '1': 'UserExitRoomNotify',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'serviceType', '3': 2, '4': 1, '5': 14, '6': '.pb_pub.Service', '10': 'serviceType'},
    {'1': 'groupId', '3': 3, '4': 1, '5': 5, '10': 'groupId'},
  ],
};

/// Descriptor for `UserExitRoomNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userExitRoomNotifyDescriptor = $convert.base64Decode(
    'ChJVc2VyRXhpdFJvb21Ob3RpZnkSFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSMQoLc2VydmljZV'
    'R5cGUYAiABKA4yDy5wYl9wdWIuU2VydmljZVILc2VydmljZVR5cGUSGAoHZ3JvdXBJZBgDIAEo'
    'BVIHZ3JvdXBJZA==');

