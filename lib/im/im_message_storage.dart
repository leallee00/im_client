import 'package:quliao/db/db.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/pub-def.dart';

class IMMessageStorage {
  static Future<int> updateMessageStatus(
    String msgSn, {
    MSG_STATE msgStatus = MSG_STATE.SEND,
    CHAT_TYPE conversationType = CHAT_TYPE.PRIVATE,
  }) async {
    final condition = "msgSn=$msgSn and msgStatus < ${MSG_STATE.READ.value}";
    if (conversationType == CHAT_TYPE.PRIVATE) {
      return dbMsg!.update(
        tbPrivateMsgTable,
        {"msgStatus": msgStatus.value},
        where: condition,
      );
    } else {
      return dbMsg!.update(
        tbGroupMsgTable,
        {"msgStatus": msgStatus.value},
        where: condition,
      );
    }
  }
}
