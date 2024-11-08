import 'package:fixnum/fixnum.dart';
import 'package:quliao/db/db.dart';

class RelationFollow{
  static Map<Int64, bool> _mapFollow = Map<Int64, bool>();

  // 关注设置 userid 关注的用户id， follow ture关注 false取关
  static Future<void> SetFollow(Int64 userId, bool follow)async{
    _mapFollow[userId] = follow;
    await dbFollowSet(userId, follow);
  }

  // 如果没有就从数据库加载
  static Future<bool?> isFollow(Int64 userId)async{
    if (_mapFollow[userId] != null){
      return _mapFollow[userId];
    }

    _mapFollow[userId] = await dbIsFollowed(userId);
    return _mapFollow[userId];
  }

  // 不从数据库中加载
  static bool? isFollowSync(Int64 userId){
    if (_mapFollow[userId] != null){
      return _mapFollow[userId];
    }

    return false;
  }
}