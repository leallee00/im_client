import 'package:quliao/pub/func.dart';

class UploadFileService {
  static Future<String> uploadFile(
    String path, {
    String ossDir = 'im-msg',
  }) async {
    final result = await UpLoadImageWithLocalPath(path, ossDir);
    return result.data['data']['url'];
  }
}
