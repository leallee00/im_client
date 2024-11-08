class OssFileModel {
  OssFileModel({
    this.url,
  });

  OssFileModel.fromJson(Map<String, dynamic> json) {
    url = json['url'] as String?;
  }

  String? url;
}