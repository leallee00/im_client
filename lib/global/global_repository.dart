import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/global_api.dart';
import 'package:quliao/global/models/oss_config.dart';
import 'package:quliao/global/models/save_image.dart';
import 'package:quliao/global/models/system_config.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/common_util.dart';
import 'package:quliao/utils/encrypt_utils.dart';
import 'package:quliao/utils/http/http.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/storage/index.dart';

import '../pb/pb_pub/service.pbenum.dart';
import 'models/base_response.dart';
import 'models/error_source.dart';
import 'models/oss_file.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;

class GlobalRepository {
  final GlobalApi _api = GlobalApi();

  Future<BaseResponse<OssFileModel>> uploadFile(
    int userId,
    String path, {
    String ossDir = "im-msg",
    String bucket = "commim",
  }) async {
    final response = await _api.uploadFile(
      userId,
      path,
      ossDir: ossDir,
      bucket: bucket,
    );
    final dataMap = jsonDecode(response.data!) as Map<String, dynamic>;
    return BaseResponse<OssFileModel>.fromJson(dataMap);
  }

  Future<BaseResponse<OssConfig>> getOssConfig(int userId) async {
    final response = await _api.getOssConfig(userId);
    final dataMap = jsonDecode(response.data!) as Map<String, dynamic>;
    return BaseResponse<OssConfig>.fromJson(dataMap);
  }

  Future<SystemConfig?> getSystemConfig(int appId) async {
    try {
      final response = await _api.getSystemConfig(appId);
      final GetSysCfgRsp rsp = GetSysCfgRsp();
      rsp.mergeFromBuffer(response.bodyBytes);
      LoggerManager().debug(
          'system config info ========> ${SystemConfig.fromJson(rsp.sysCfg)}');
      return SystemConfig.fromJson(rsp.sysCfg);
    } catch (error) {
      return null;
    }
  }

  Future<SaveImage?> downloadNetworkImage(String imageUrl) async {
    final response = await http.get<List<int>>(
      imageUrl,
      options: Options(responseType: ResponseType.bytes),
    );
    if (null != response.data) {
      Uint8List responseData = Uint8List.fromList(response.data!);
      responseData = EncryptUtils.decode(responseData);
      final result = await ImageGallerySaver.saveImage(
        responseData,
        quality: 100,
        name: '${DateTime.now().millisecondsSinceEpoch}',
      );
      final SaveImage data = SaveImage.fromJson(
        result as Map<Object?, Object?>,
      );
      return data;
    } else {
      return null;
    }
  }

  Future<SaveImage?> downloadNetworkVideo(String videoUrl) async {
    try {
      final name = '${DateTime.now().millisecondsSinceEpoch}';
      final appDocDir = await getTemporaryDirectory();
      final String savePath = '${appDocDir.path}/$name.mp4';
      await http.download(videoUrl, savePath);

      final result = await ImageGallerySaver.saveFile(savePath);
      final SaveImage data = SaveImage.fromJson(
        result as Map<Object?, Object?>,
      );
      LoggerManager().debug('downloadNetworkImage =======> ${data.toJson()}');
      return data;
    } catch (error) {
      return null;
    }
  }

  Future<void> checkNewErrorInfo() async {
    final clientVersion = Storage.instance.getInt(StorageKey.errorVersion);
    try {
      final dataMap = <String, dynamic>{
        'appId': AppUserInfo().appId,

        /// 暂时没有多语言配置，先写死为中文
        'languageName': 'cn',
        'clientVersion': clientVersion,
      };
      final response = await http.post(
        '${ConfigMgr.instance.config?.cfgImOutApiUrl}/ErrStatus/GetNewErrSource',
        data: dataMap,
      );
      final map = response.data as Map<String, dynamic>;
      if (null != map['data']) {
        Storage.instance.setString(
          StorageKey.errorMsg,
          jsonEncode(map['data']),
        );
      }
      final ErrorSourceModel errorSourceModel = ErrorSourceModel.fromJson(
        map['data'] as Map<String, dynamic>,
      );
      Storage.instance.setInt(
        StorageKey.errorVersion,
        errorSourceModel.version ?? 0,
      );
      GlobalController.to.errorSource.value = errorSourceModel;
      debugPrint('checkNewErrorInfo ======> $map');
      debugPrint(
        'checkNewErrorInfo aaa ======> ${errorSourceModel.languageName}',
      );
    } catch (error) {
      debugPrint('checkNewErrorInfo error ======> $error');
      final jsonValue = Storage.instance.getString(StorageKey.errorMsg);
      if (jsonValue.isNotEmpty) {
        final ErrorSourceModel errorSourceModel = ErrorSourceModel.fromJson(
          jsonDecode(jsonValue) as Map<String, dynamic>,
        );
        GlobalController.to.errorSource.value = errorSourceModel;
      }
    }
  }

  Future<void> report({
    required AddSuggestReq req,
    Function()? callback,
    Function()? onError,
  }) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/DelCategorizeTag',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = AddSuggestRsp()..mergeFromBuffer(value.bodyBytes);
        if (null != callback) {
          callback();
        }
      } else {
        if (null != onError) {
          onError();
        }
      }
    }).catchError((err) {
      LoggerManager().debug('$err');
      if (null != onError) {
        onError();
      }
    });
  }
}
