import 'package:quliao/db/database.dart';
import 'package:quliao/db/obox/model/user_model.dart';
import 'package:quliao/db/obox/object_box.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/utils/http/http.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/safe_convert.dart';

class UserRepository {
  ObjectBox get _objectBox => AppDatabase().objectBox;

  Future<UserModel> getUserInfo(
    int userId, {
    int sourceVersion = 0,
  }) async {
    var userModel = await _objectBox.getUser(userId);
    if (null != userModel) {
      if (userModel.sourceVersion >= sourceVersion) {
        return userModel;
      }
    }
    final reqUrl =
        '${ConfigMgr().config!.cfgImInterApiUrl}/GetFriendInfo?imId=$userId';
    final response = await http.get(reqUrl);
    final dataMap = response.data as Map<String, dynamic>;
    LoggerManager().error('getUserInfo ===============> \n $dataMap');
    final result = asT<int>(dataMap, 'result');
    if (result == 0) {
      userModel = UserModel.fromJson(
        dataMap['data'] as Map<String, dynamic>,
      );
      AppDatabase().objectBox.addUser(userModel);
      return userModel;
    } else {
      return userModel ??= UserModel();
    }
  }
}
