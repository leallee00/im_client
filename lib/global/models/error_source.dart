class ErrorSourceModel {
  ErrorSourceModel({
    this.languageName = '',
    this.version = 0,
    this.list,
  });

  Map<int?, String?> codeMsgMap = <int, String>{};

  ErrorSourceModel.fromJson(Map<String, dynamic> json) {
    languageName = json['LanguageName'] as String;
    version = json['Version'] as int;
    if (json['StatusList'] is List) {
      for (final item in json['StatusList']) {
        final statusModel = StatusModel.fromJson(item as Map<String, dynamic>);
        list?.add(statusModel);
        codeMsgMap[statusModel.code] = statusModel.message;
      }
    }
  }

  String? languageName;
  int? version;
  List<StatusModel>? list = [];
}

class StatusModel {
  StatusModel({
    this.code,
    this.message,
  });

  StatusModel.fromJson(Map<String, dynamic> json) {
    code = json['Code'] as int;
    message = json['Message'] as String;
  }

  int? code;
  String? message;
}
