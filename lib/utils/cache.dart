import 'package:quliao/config/config.dart';
import 'package:quliao/global/models/system_config.dart';

class Cache {
  Cache._({
    this.endpoint,
    this.bucketName,
    this.systemConfig,
  });

  static Cache? _instance;

  String? endpoint;
  String? bucketName;
  SystemConfig? systemConfig;

  static Future<Cache> init() async {
    _instance ??= Cache._(
      endpoint: '',
      bucketName: '',
      systemConfig: null,
    );
    return _instance!;
  }

  static Cache getInstance() {
    return _instance!;
  }

  String get ossPrefix => 'https://$bucketName.$endpoint/';

  static Cache applyWith({
    String? endpoint,
    String? bucketName,
    SystemConfig? systemConfig,
  }) {
    _instance!.endpoint = endpoint ?? _instance!.endpoint;
    _instance!.bucketName = bucketName ?? _instance!.bucketName;
    _instance!.systemConfig = systemConfig ?? _instance!.systemConfig;
    return _instance!;
  }
}
