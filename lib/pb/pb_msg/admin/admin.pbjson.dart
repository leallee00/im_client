//
//  Generated code. Do not modify.
//  source: pb_msg/admin/admin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use adminLogonRspDescriptor instead')
const AdminLogonRsp$json = {
  '1': 'AdminLogonRsp',
  '2': [
    {'1': 'admin_id', '3': 1, '4': 1, '5': 3, '10': 'adminId'},
    {'1': 'admin_user', '3': 2, '4': 1, '5': 9, '10': 'adminUser'},
    {'1': 'authorization', '3': 3, '4': 1, '5': 9, '10': 'authorization'},
  ],
};

/// Descriptor for `AdminLogonRsp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminLogonRspDescriptor = $convert.base64Decode(
    'Cg1BZG1pbkxvZ29uUnNwEhkKCGFkbWluX2lkGAEgASgDUgdhZG1pbklkEh0KCmFkbWluX3VzZX'
    'IYAiABKAlSCWFkbWluVXNlchIkCg1hdXRob3JpemF0aW9uGAMgASgJUg1hdXRob3JpemF0aW9u');

@$core.Deprecated('Use logonUPReqDescriptor instead')
const LogonUPReq$json = {
  '1': 'LogonUPReq',
  '2': [
    {'1': 'admin_name', '3': 1, '4': 1, '5': 9, '10': 'adminName'},
    {'1': 'admin_passwd', '3': 2, '4': 1, '5': 9, '10': 'adminPasswd'},
    {'1': 'host', '3': 3, '4': 1, '5': 9, '10': 'host'},
  ],
};

/// Descriptor for `LogonUPReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logonUPReqDescriptor = $convert.base64Decode(
    'CgpMb2dvblVQUmVxEh0KCmFkbWluX25hbWUYASABKAlSCWFkbWluTmFtZRIhCgxhZG1pbl9wYX'
    'Nzd2QYAiABKAlSC2FkbWluUGFzc3dkEhIKBGhvc3QYAyABKAlSBGhvc3Q=');

@$core.Deprecated('Use updateTableDescriptor instead')
const UpdateTable$json = {
  '1': 'UpdateTable',
  '2': [
    {'1': 'update_col', '3': 1, '4': 1, '5': 9, '10': 'updateCol'},
    {'1': 'update_value', '3': 2, '4': 1, '5': 9, '10': 'updateValue'},
    {'1': 'exps', '3': 3, '4': 3, '5': 11, '6': '.pb_msg_admin.UpdateTable.ExpsEntry', '10': 'exps'},
  ],
  '3': [UpdateTable_ExpsEntry$json],
};

@$core.Deprecated('Use updateTableDescriptor instead')
const UpdateTable_ExpsEntry$json = {
  '1': 'ExpsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `UpdateTable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTableDescriptor = $convert.base64Decode(
    'CgtVcGRhdGVUYWJsZRIdCgp1cGRhdGVfY29sGAEgASgJUgl1cGRhdGVDb2wSIQoMdXBkYXRlX3'
    'ZhbHVlGAIgASgJUgt1cGRhdGVWYWx1ZRI3CgRleHBzGAMgAygLMiMucGJfbXNnX2FkbWluLlVw'
    'ZGF0ZVRhYmxlLkV4cHNFbnRyeVIEZXhwcxo3CglFeHBzRW50cnkSEAoDa2V5GAEgASgJUgNrZX'
    'kSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

