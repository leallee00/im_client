import 'package:fixnum/fixnum.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/obox/model/private_msg_model.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/offline_msg/offlineMsg.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';

import '../../../pb/pb_pub/service.pbenum.dart';
import 'package:http/http.dart' as http1;

class PrivateChatRepository {
  Future<List<PrivateMsgModel>> queryLocalMessages(
    int userId, {
    int offset = 20,
  }) async {
    final dataList = await AppDatabase().objectBox.getPrivateMsgList(
          userId,
          page: offset,
        );
    for (final item in dataList) {
      LoggerManager().error(
        'queryLocalMessages =========> recallUid: ${item.recallUid} updated time: ${item.updatedAt}',
      );
    }
    // dataList.removeWhere((e) => null != e.recallUid && e.recallUid! > 0);
    return dataList;
  }

  Future<List<PrivateMsgModel>> queryRemoteMessages(
    int sessionId,
    Map<String, dynamic> msgSnMap, {
    int page = 1,
    int offset = 20,
  }) async {
    final req = FetchChatHisMsgListOfSessionReq(
      page: Int64(page),
      pageSize: Int64(20),
      session: Int64(sessionId),
    );

    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo().imId),
      toService: Service.offline_msg,
    );

    http1.Response response = await RpcCallImOuterApi(
      '/pb_grpc_offlineMsg.OfflineMsg/FetchChatHisMsgListOfSession',
      req,
      pbCommData,
    );

    if (response.statusCode == 200) {
      final rsp = FetchChatHisMsgListOfSessionRsp()
        ..mergeFromBuffer(response.bodyBytes);
      LoggerManager().error('queryRemoteMessages ===========> \n $rsp');

      final messageList = <PrivateMsgModel>[];

      for (final item in rsp.chatHisMsgs) {
        var pbMsg = PBMessage();
        PBCommData commData = PBCommData();
        commData.mergeFromBuffer(item.pbCommData);
        pbMsg.pbCommData = commData;
        pbMsg.pbData = item.pbData;
        pbMsg.pbName = item.pbName;

        final friendId =
            (AppUserInfo.instance.imId == pbMsg.pbCommData.srcId.toInt())
                ? pbMsg.pbCommData.aimId.toInt()
                : pbMsg.pbCommData.srcId.toInt();

        if (pbMsg.pbName == 'pb_pub.MsgRecallReq') {
          final req = MsgRecallReq()..mergeFromBuffer(item.pbData);
          final originMsnSn = req.msgSn.toInt();

          AppDatabase()
              .objectBox
              .getPrivateMsg(friendId, originMsnSn)
              .then((privateMsg) {
            if (null != privateMsg) {
              /// 更新撤回人的uid
              privateMsg.recallUid = pbMsg.pbCommData.srcId.toInt();
              AppDatabase().objectBox.addPrivateMsg(privateMsg);
            }
          });
        } else {
          var privateMsg = await AppDatabase().objectBox.getPrivateMsg(
                friendId,
                pbMsg.pbCommData.msgSn.toInt(),
              );
          if (null != privateMsg) {
            privateMsg.msgState = item.msgStatus.value;
            AppDatabase().objectBox.addPrivateMsg(privateMsg);
          } else {
            final privateMsgDataMap = <String, dynamic>{
              'userId': friendId,
              'srcId': pbMsg.pbCommData.srcId.toInt(),
              'msgSn': pbMsg.pbCommData.msgSn.toInt(),
              'pbName': pbMsg.pbName,
              'pbData': pbMsg.pbData,
              'pbCommData': pbMsg.pbCommData.writeToBuffer(),
              'msgState': item.msgStatus.value,
              'createAt': item.createdAt.toInt() * 1000,
              'updatedAt': pbMsg.pbCommData.time.toInt() * 1000,
            };

            privateMsg = PrivateMsgModel.fromJson(privateMsgDataMap);
            AppDatabase().objectBox.addPrivateMsg(privateMsg);
          }

          if (!msgSnMap.containsKey(pbMsg.pbCommData.msgSn.toInt())) {
            messageList.add(privateMsg);
          }
        }
      }
      return messageList;
    } else {
      return [];
    }
  }
}
