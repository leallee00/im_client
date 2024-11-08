import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/global/models/oss_config.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/utils/cache.dart';
import 'package:flutter_oss_aliyun/flutter_oss_aliyun.dart' as $oss;
import 'package:quliao/utils/encrypt_utils.dart';
import 'package:quliao/utils/log/manager.dart';

class OssUtils {
  static final GlobalRepository _repository = GlobalRepository();

  static Future<OssConfig?> getOssConfig() async {
    try {
      final response = await _repository.getOssConfig(AppUserInfo().imId);
      if (response.success) {
        final result = response.getResult();
        Cache.applyWith(
          endpoint: result.endPoint,
          bucketName: result.bucketName,
        );
        $oss.Client.init(
          ossEndpoint: result.endPoint ?? Config.ossEndPoint,
          bucketName: result.bucketName ?? Config.ossBucketName,
          authGetter: () {
            return $oss.Auth(
              accessKey: result.credentials?.accessKeyId ?? '',
              accessSecret: result.credentials?.accessKeySecret ?? '',
              expire: result.credentials?.expiration ?? '',
              secureToken: result.credentials?.securityToken ?? '',
            );
          },
        );
        return result;
      }
      return null;
    } catch (error) {
      LoggerManager().debug(error.toString());
      return null;
    }
  }

  static Future<String?> uploadFile(
    String path, {
    required String name,
  }) async {
    try {
      final Response<dynamic> response = await $oss.Client().putObjectFile(
        path,
        option: $oss.PutRequestOption(
          onSendProgress: (count, total) {
            LoggerManager().debug(
              'oss file onSendProgress ===> count: $count  total: $total',
            );
          },
          override: true,
          aclModel: $oss.AclMode.publicRead,
          storageType: $oss.StorageType.ia,
        ),
        fileKey: name,
      );
      if (response.statusCode == 200) {
        return '${Cache.getInstance().ossPrefix}$name';
      }
      return null;
    } catch (error) {
      if (error is DioError) {
        final int? statusCode = error.response?.statusCode;
        if (statusCode == 403) {
          final OssConfig? ossConfig = await getOssConfig();
          if (null != ossConfig) {
            return await uploadFile(path, name: name);
          } else {
            return null;
          }
        }
      }
      return null;
    }
  }

  static Future<String?> uploadFileData(
    List<int> fileData, {
    required String name,
  }) async {
    try {
      final Response<dynamic> response = await $oss.Client().putObject(
        await EncryptUtils.encode(fileData),
        name,
        option: $oss.PutRequestOption(
          onSendProgress: (count, total) {
            LoggerManager().debug(
              'oss file onSendProgress ===> count: $count  total: $total',
            );
          },
          override: true,
          aclModel: $oss.AclMode.publicRead,
          storageType: $oss.StorageType.ia,
        ),
      );
      if (response.statusCode == 200) {
        return '${Cache.getInstance().ossPrefix}$name';
      }
      return null;
    } catch (error) {
      if (error is DioError) {
        final int? statusCode = error.response?.statusCode;
        if (statusCode == 403) {
          final OssConfig? ossConfig = await getOssConfig();
          if (null != ossConfig) {
            return await uploadFileData(fileData, name: name);
          } else {
            return null;
          }
        }
      }
      return null;
    }
  }

  static Future<void> uploadFileV2(
    List<int> fileData, {
    required String name,
    Function(String)? callback,
  }) async {
    try {
      final Response<dynamic> response = await $oss.Client().putObject(
        fileData,
        name,
        option: $oss.PutRequestOption(
          onSendProgress: (count, total) {
            LoggerManager().debug(
              'oss file onSendProgress ===> count: $count  total: $total',
            );
          },
          override: true,
          aclModel: $oss.AclMode.publicRead,
          storageType: $oss.StorageType.ia,
        ),
      );
      if (response.statusCode == 200) {
        if (null != callback) {
          callback('${Cache.getInstance().ossPrefix}$name');
        }
      }
    } on DioException catch (error) {
      final int? statusCode = error.response?.statusCode;
      if (statusCode == 403) {
        final OssConfig? ossConfig = await getOssConfig();
        if (null != ossConfig) {
          await uploadFileV2(fileData, name: name, callback: callback);
        }
      }
      throw HttpException(error.toString());
    }
  }
}
