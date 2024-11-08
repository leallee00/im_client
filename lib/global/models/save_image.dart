class SaveImage {
  SaveImage({
    this.filePath,
    this.errorMessage,
    this.isSuccess = false,
  });

  SaveImage.fromJson(Map<Object?, Object?> json) {
    filePath = json['filePath'] as String?;
    errorMessage = json['errorMessage'] as String?;
    if (null == json['isSuccess']) {
      isSuccess = false;
    } else {
      isSuccess = json['isSuccess']! as bool;
    }
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'filePath': filePath,
    'errorMessage': errorMessage,
    'isSuccess': isSuccess,
  };

  String? filePath;
  String? errorMessage;
  late bool isSuccess;
}
