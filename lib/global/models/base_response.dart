import 'package:quliao/global/models/oss_file.dart';

import 'oss_config.dart';

class BaseResponse<T> {
  BaseResponse({
    this.result = 0,
    this.message,
    this.data,
  });

  BaseResponse.fromJson(Map<String, dynamic> json) {
    result = json['result'] as int;
    message = json['msg'] as String?;
    data = json['data'];
  }

  T getResult<S>() {
    return _generateObj(data);
  }

  S _generateObj<S>(dynamic json) {
    if (S.toString() == 'String') {
      return json.toString() as S;
    } else if (S.toString() == 'int') {
      return json as S;
    } else {
      return generateModel(json);
    }
  }

  static T generateModel<T>(dynamic json) {
    if (T.toString() == 'OssFileModel') {
      return OssFileModel.fromJson(json as Map<String, dynamic>) as T;
    } else if (T.toString() == 'OssConfig') {
      return OssConfig.fromJson(json as Map<String, dynamic>) as T;
    }else {
      return json as T;
    }
  }

  bool get success => result == 0;

  int result = 0;
  String? message;
  dynamic data;
}
