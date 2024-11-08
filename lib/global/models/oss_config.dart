class OssConfig {
  OssConfig({
    this.credentials,
    this.bucketName,
  });

  OssConfig.fromJson(Map<String, dynamic> json) {
    credentials = OssCredentials.fromJson(json['Credentials']);
    endPoint = json['EndPoint'] as String?;
    bucketName = json['Bucket'] as String?;
  }

  OssCredentials? credentials;
  String? endPoint;
  String? bucketName;
}

class OssCredentials {
  OssCredentials({
    this.accessKeyId,
    this.accessKeySecret,
    this.expiration,
    this.securityToken,
  });

  OssCredentials.fromJson(Map<String, dynamic> json) {
    accessKeyId = json['AccessKeyId'] as String?;
    accessKeySecret = json['AccessKeySecret'] as String?;
    expiration = json['Expiration'] as String?;
    securityToken = json['SecurityToken'] as String?;
  }

  String? accessKeyId;
  String? accessKeySecret;
  String? expiration;
  String? securityToken;
}
