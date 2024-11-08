import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class EndPointConfig {
  EndPointConfig({
    this.cfgAllocatorUrl,
    this.urlUploadFile,
    this.cfgImInterApiUrl,
    this.cfgImOutApiUrl,
    this.cfgAppGateApiHost,
    this.cfgGrpcUrl,
    this.appId = 0,
    this.score = 0,
    this.delay = 0,
  });

  EndPointConfig.fromJson(Map<String, dynamic> json) {
    cfgAllocatorUrl = json['cfgAllocatorUrl'] as String?;
    urlUploadFile = json['urlUploadFile'] as String?;
    cfgImInterApiUrl = json['cfgImInterApiUrl'] as String?;
    cfgImOutApiUrl = json['cfgImOutApiUrl'] as String?;
    cfgAppGateApiHost = json['cfgAppGateApiHost'] as String?;
    cfgGrpcUrl = json['cfgGrpcUrl'] as String?;
    appId = json['appId'] as int;
    score = json['score'] as int;
    delay = json['delay'] as int;
  }

  EndPointConfig.fromImEndPoint(ImEndPoint imEndPoint) {
    cfgAllocatorUrl = imEndPoint.cfgAllocatorUrl;
    urlUploadFile = imEndPoint.urlUploadFile;
    cfgImInterApiUrl = imEndPoint.cfgImInterApiUrl;
    cfgImOutApiUrl = imEndPoint.cfgImOutApiUrl;
    cfgAppGateApiHost = imEndPoint.cfgAppGateApiHost;
    cfgGrpcUrl = imEndPoint.cfgGrpcUrl;
    appId = imEndPoint.appId;
    score = imEndPoint.score;
    delay = imEndPoint.delay;
  }

  ImEndPoint toImEndPoint(EndPointConfig config) {
    return ImEndPoint(
      cfgAllocatorUrl: config.cfgAllocatorUrl,
      urlUploadFile: config.urlUploadFile,
      cfgImInterApiUrl: config.cfgImInterApiUrl,
      cfgImOutApiUrl: config.cfgImOutApiUrl,
      cfgAppGateApiHost: config.cfgAppGateApiHost,
      cfgGrpcUrl: config.cfgGrpcUrl,
      appId: config.appId,
      score: config.score,
      delay: config.delay,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'cfgAllocatorUrl': cfgAllocatorUrl,
    'urlUploadFile': urlUploadFile,
    'cfgImInterApiUrl': cfgImInterApiUrl,
    'cfgImOutApiUrl': cfgImOutApiUrl,
    'cfgAppGateApiHost': cfgAppGateApiHost,
    'cfgGrpcUrl': cfgGrpcUrl,
    'appId': appId,
    'score': score,
    'delay': delay,
  };

  String? cfgAllocatorUrl;
  String? urlUploadFile;
  String? cfgImInterApiUrl;
  String? cfgImOutApiUrl;
  String? cfgAppGateApiHost;
  String? cfgGrpcUrl;
  late int appId;
  late int score;
  late int delay;
}
