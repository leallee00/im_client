import 'dart:convert';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:protobuf/protobuf.dart';
import 'package:http/http.dart' as http;
import 'package:grpc/grpc.dart';

// ignore: implementation_imports
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;
import 'package:quliao/widgets/loading.dart';

Future<http.Response> _rpcCall(
  String host,
  fullMethod,
  GeneratedMessage pbMsg,
  PBCommData pbCommData, {
  bool toast = false,
  bool loading = false,
}) async {
  if (loading) {
    LoadingDialog.show();
  }

  // var uri = Uri.parse("https://" + host + "/rpc${fullMethod}");
  var uri = Uri.parse(host + "/rpc${fullMethod}");

  log("---------------------------------------------->>>>>>>>----------------uri=${uri} pbMsg=$pbMsg pbCommData=${pbCommData} token: ${AppUserInfo.instance.uniToken}");

  var rsp = await http.post(uri, body: pbMsg.writeToBuffer(), headers: {
    "token": AppUserInfo.instance.uniToken,
    "x-pcd": base64Encode(pbCommData.writeToBuffer()),
    "Content-Type": "application/x-protobuf",
  });
  // .catchError((err) {
  //   log("rpc call error uri=$uri, body:${pbMsg.toProto3Json()} pbCommData:${pbCommData.toProto3Json()}  catchError $err ",level: LOG_LEVEL.ERROR);
  //   // rethrow;//  rethrow(err);
  //   // return http.Response();
  //   onErr
  // });

  if (loading) {
    LoadingDialog.dismiss();
  }

  if (rsp.statusCode == 500) {
    // 正常的业务错误
    var status = $grpcStatus.Status();
    status.mergeFromBuffer(rsp.bodyBytes);
    var errMsg = "请求失败：code=${status.code} msg=${status.message}";
    // showToast(errMsg);
    log("$errMsg---$uri---$pbMsg ");
    if (toast) {
      showToast(status.message);
    }
  }
  // log("statusCode = ${rsp.statusCode} uri=${uri} headers=${rsp.headers} ${rsp.statusCode}");
  return rsp;
}

typedef ImGrpcOptSuccessCallBack = void Function(http.Response);
typedef ImGrpcOptErrCallBack = void Function(String);

///
/// fullMethod: grpc方法全路径，比如 /pb_grpc_friend.Friend/FriendDetail 是friend 服务提供的 frienddetail方法
///
Future<http.Response> RpcCallImOuterApi(
  String fullMethod,
  GeneratedMessage pbMsg,
  PBCommData pbCommData, {
  bool showToast = false,
  bool loading = false,
}) async {
  var rsp = await _rpcCall(
    ConfigMgr().config!.cfgImOutApiUrl,
    fullMethod,
    pbMsg,
    pbCommData,
    toast: showToast,
    loading: loading,
  );
  return rsp;
}

Future<http.Response> RpcCallAppGateApi(
  String fullMethod,
  GeneratedMessage pbMsg,
  PBCommData pbCommData, {
  bool showToast = false,
  bool loading = false,
}) async {
  var rsp = await _rpcCall(
    ConfigMgr().config!.cfgAppGateApiHost,
    fullMethod,
    pbMsg,
    pbCommData,
    toast: showToast,
    loading: loading,
  );
  return rsp;
}

Future<http.Response> RpcCallAppGateNotApi(
  String apiHost,
  String fullMethod,
  GeneratedMessage pbMsg,
  PBCommData pbCommData, {
  bool showToast = false,
  bool loading = false,
}) async {
  var rsp = await _rpcCall(
    apiHost,
    fullMethod,
    pbMsg,
    pbCommData,
    toast: showToast,
    loading: loading,
  );
  return rsp;
}
