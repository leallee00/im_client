//
//  Generated code. Do not modify.
//  source: pb_grpc/admin/admin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

export 'admin.pb.dart';

@$pb.GrpcServiceName('pb_grpc_admin.Admin')
class AdminClient extends $grpc.Client {

  AdminClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);
}

@$pb.GrpcServiceName('pb_grpc_admin.Admin')
abstract class AdminServiceBase extends $grpc.Service {
  $core.String get $name => 'pb_grpc_admin.Admin';

  AdminServiceBase() {
  }

}
