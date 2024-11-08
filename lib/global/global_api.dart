import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/http/http.dart';
import 'package:http/http.dart' as http1;
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;
import 'package:quliao/utils/log/manager.dart';

import '../pb/pb_pub/service.pb.dart';

class GlobalApi {
  final String uploadFileUrl = ConfigMgr().config!.urlUploadFile;

  Future<Response<String>> uploadFile(
    int userId,
    String path, {
    String ossDir = "im-msg",
    String bucket = "commim",
  }) async {
    final String name = path.substring(path.lastIndexOf("/") + 1, path.length);
    final MultipartFile multipartFile = await MultipartFile.fromFile(
      path,
      filename: name,
    );
    FormData formData = FormData.fromMap(
      {
        "file": multipartFile,
        "loc": "local",
      },
    );
    final headerParam = {
      "ObjectDir": ossDir,
      "UserID": userId,
      "Bucket": bucket,
    };
    return await http.post(
      uploadFileUrl,
      data: formData,
      options: Options(
        headers: headerParam,
      ),
      onSendProgress: (received, total) {
        if (total != -1) {
          LoggerManager().debug(
            "onSendProgress ===> ${(received / total * 100).toStringAsFixed(0)}%",
          );
        }
      },
    );
  }

  Future<Response<String>> getOssConfig(
    int userId, {
    String bucket = 'commimhk',
  }) async {
    final headerParam = {
      "UserID": userId,
    };
    return await http.get(
      '${ConfigMgr().config!.urlUploadFile}/getStsToken',
      // queryParameters: <String, dynamic>{
      //   'bucketName': bucket,
      // },
      options: Options(
        headers: headerParam,
      ),
    );
  }

  Future<http1.Response> getSystemConfig(int appId) async {
    $uaa.GetSysCfgReq getSysCfgReq = $uaa.GetSysCfgReq(
      appId: Int64(appId),
    );
    return await RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/GetSysCfg",
      getSysCfgReq,
      MakePBCommData(
        aimId: Int64(AppUserInfo().imId),
        toService: Service.commim_uaa,
      ),
    );
  }
}
