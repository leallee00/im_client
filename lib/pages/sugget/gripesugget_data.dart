import 'package:flutter/material.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import '../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';



String timestampToDate(String timestamps) {
  int timestamp = int.parse(timestamps);
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  String formattedDate = "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}"; // 转换为年月日格式
  String formattedTime = "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}"; // 转换为时分秒格式
  return formattedDate + ' ' + formattedTime;
}

String nickNameToDate(String str) {
  if(str.length>10 && str.contains('nickName:')){
    List<String> listStrAr = str.split("nickName:");
    String s1 = listStrAr[1];
    if (s1.length>0){
      List<String> listStrAr2 = s1.split(",avatar");
      String s2 = listStrAr2[0];
      return s2;
      print('00   ==: $s2');
    }

  }
  return '用户名';
}

String avatarUrlToDate(String str) {
  if(str.length>10 && str.contains(',avatar:')){
    List<String> listStrAr = str.split(",avatar:");
    String s1 = listStrAr[1];
    if (s1.length>0){
      List<String> listStrAr2 = s1.split(",level:0");
      String s2 = listStrAr2[0];
      // print('00   ==: $s2');
      return s2;
    }
  }
  return '';
}


Future<void> ComplaintSuggetNetworkRequest(Function(GetSuggestListRsp rsp) callback) async  {
  var suggestReq = $uaa.GetSuggestListReq();
  suggestReq.page = 1; // 仅用于测试
  suggestReq.pageSize = 40; // 仅用于测试
  suggestReq.totalCount = 40; // 仅用于测试
  var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
  RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/GetSuggestList",
      suggestReq, pbCommData)
      .then((value) {
    var rsp = $uaa.GetSuggestListRsp()
      ..mergeFromBuffer(value.bodyBytes);
    callback(rsp);
  }).catchError((err) {
    showToast("获取数据失败：${err}");
  });
}


Future<void> ComplaintSuggetDetailNetworkRequest(String id ,Function(GetSuggestDetailRsp rsp) callback ) async  {
  var suggestReq = $uaa.GetSuggestDetailReq();
  int ids = int.parse(id);
  suggestReq.suggestId = Int64(ids);
  var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
  RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/GetSuggestDetail",
      suggestReq, pbCommData)
      .then((value) {
    var rsp = $uaa.GetSuggestDetailRsp()
      ..mergeFromBuffer(value.bodyBytes);
    callback(rsp);
  }).catchError((err) {
    showToast("获取数据失败：${err}");
  });
}

// factory GetSuggestReplyListReq({
// $core.int? page,
// $core.int? pageSize,
// $core.int? totalCount,
// $fixnum.Int64? suggestId,

Future<void> ComplaintSuggetDetailListNetworkRequest(String id ,Function(GetSuggestReplyListRsp rsp) callback ) async  {
  var suggestReplyListReq = $uaa.GetSuggestReplyListReq();
  suggestReplyListReq.page = 1;
  suggestReplyListReq.pageSize = 40; //测试数据
  suggestReplyListReq.totalCount = 40; //测试数据
  suggestReplyListReq.suggestId = Int64(int.parse(id));

  var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
  RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/GetSuggestReplyList",
      suggestReplyListReq, pbCommData)
      .then((value) {
    var rsp = $uaa.GetSuggestReplyListRsp()
      ..mergeFromBuffer(value.bodyBytes);
    callback(rsp);
  }).catchError((err) {
    showToast("获取数据失败：${err}");
  });
}







Future<void> ComplaintSuggetDetailReplyNetworkRequest(String id ,String text,Function(SuggestReply rsp) callback ) async  {
  var suggestReplyReq = $uaa.AddSuggestReplyReq();
  int ids = int.parse(id);
  suggestReplyReq.suggestId = Int64(ids);
  suggestReplyReq.relationReplyId = Int64(ids);
  suggestReplyReq.reply = text;
  var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
  RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/AddSuggestReply",
      suggestReplyReq, pbCommData)
      .then((value) {
    var rsp = $uaa.SuggestReply()
      ..mergeFromBuffer(value.bodyBytes);
    callback(rsp);
  }).catchError((err) {
    showToast("发送数据失败：${err}");
  });
}



// SetSuggestStatus

Future<void> ComplaintSuggetDetailReplyCompleteNetworkRequest(String id ,Function(SetSuggestReplyStatusRsp rsp) callback ) async  {
  var setSuggestStatusReq = $uaa.SetSuggestStatusReq();
  int ids = int.parse(id);
  setSuggestStatusReq.status = 1;
  setSuggestStatusReq.suggestId = Int64(ids);
  // suggestReplyReq.reply = text;
  // print('------回复。。。----- $suggestReplyReq');
  var pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId), toService: Service.commim_uaa);
  RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/SetSuggestStatus",
      setSuggestStatusReq, pbCommData)
      .then((value) {
    var rsp = $uaa.SetSuggestReplyStatusRsp()
      ..mergeFromBuffer(value.bodyBytes);
    // print('====4444===== $rsp');
    callback(rsp);
  }).catchError((err) {
    showToast("发送数据失败：${err}");
  });
}



// 加载等待动画
void Refresh(BuildContext context) async {
  // 显示进度条
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(child: CircularProgressIndicator());
    },
  );
}


void EndRefresh(BuildContext context) async {
  Navigator.of(context).pop();
}

