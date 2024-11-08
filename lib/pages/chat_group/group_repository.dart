import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/db/obox/model/group_msg_model.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:http/http.dart' as http;
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';

class GroupRepository {
  Future<List<GroupMsgModel>> queryLocalMessages(
    int groupId, {
    int offset = 20,
  }) async {
    // return await AppDatabase().groupMessageDao?.list(groupId, offset: offset) ??
    //     [];
    final dataList = await AppDatabase().objectBox.getGroupMsgList(
          groupId,
          page: offset,
        );
    for (final item in dataList) {
      LoggerManager().error(
        'queryLocalMessages =========> id: ${item.id} recallUid: ${item.recallUid} msgState: ${MSG_STATE.valueOf(item.msgState)} groupMsgSn: ${item.groupMsgSn} msgSn: ${item.msgSn}',
      );
    }
    dataList.removeWhere((e) => null != e.recallUid && e.recallUid! > 0);
    return dataList;
  }

  Future<List<GroupMsgModel>> queryRemoteMessages(
    int groupId, {
    int groupMsgSn = 0,
  }) async {
    final dataMap = <String, dynamic>{};

    final req = FetchGroupHistoryMsgFromGroupMsgSnReq();
    req.startGroupMsgSn = Int64(groupMsgSn);
    req.wantCount = Int64(20);
    req.orderDesc = true;

    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo().imId),
      groupId: Int64(groupId.toInt()),
      toService: Service.group,
    );
    if (Dimens.isDesktop()) {
      pbCommData.srcClientType = CLIENT_TYPE.PC;
    } else {
      pbCommData.srcClientType = CLIENT_TYPE.PHONE;
    }

    http.Response response = await RpcCallImOuterApi(
      '/pb_grpc_group.Group/FetchGroupHistoryMsgFromGroupMsgSn',
      req,
      pbCommData,
    ).catchError((err) {});

    if (response.statusCode == 200) {
      GlobalController.to.removeMsgSn(groupId);

      final List<GroupMsgModel> messages = [];
      final List<MsgRecallReq> msgRecallList = [];
      final List<GroupHistoryMsg> groupHistoryMsgList = [];

      var rsp = FetchGroupHistoryMsgFromGroupMsgSnRsp()
        ..mergeFromBuffer(response.bodyBytes);
      LoggerManager().debug(
        'queryRemoteMessages groupMsgSn: $groupMsgSn result: ${rsp.startGroupMsgSn} count: ${rsp.pbHisMsg.length}',
      );
      int index = 0;
      for (final item in rsp.pbHisMsg) {
        var pbMsg = PBMessage();
        PBCommData commData = PBCommData();
        commData.mergeFromBuffer(item.pbCommData);
        pbMsg.pbCommData = commData;
        pbMsg.pbData = item.pbData;
        pbMsg.pbName = item.pbName;

        LoggerManager().debug(
          'queryRemoteMessages index: $index pbName:${pbMsg.pbName}'
          ' msgSn: ${commData.msgSn.toInt()} '
          'groupMsgSn: ${commData.groupMsgSn.toInt()} '
          'srcId: ${pbMsg.pbCommData.srcId} '
          'srcId: ${pbMsg.pbCommData.srcId} '
          'aimId: ${pbMsg.pbCommData.aimId}',
        );

        index++;

        final friendId =
            (AppUserInfo.instance.imId == pbMsg.pbCommData.srcId.toInt())
                ? pbMsg.pbCommData.aimId.toInt()
                : pbMsg.pbCommData.srcId.toInt();

        if (pbMsg.pbName == 'pb_pub.MsgRecallReq') {
          final req = MsgRecallReq()..mergeFromBuffer(item.pbData);
          final originMsnSn = req.msgSn.toInt();

          AppDatabase()
              .objectBox
              .getGroupMsg(
                groupId.toInt(),
                originMsnSn,
              )
              .then((groupMsg) {
            if (null != groupMsg) {
              /// 更新撤回人的uid
              groupMsg.recallUid = pbMsg.pbCommData.srcId.toInt();
              AppDatabase().objectBox.addGroupMsg(groupMsg);
            }
          });
        } else {
          var groupMsg = await AppDatabase().objectBox.getGroupMsg(
                groupId.toInt(),
                pbMsg.pbCommData.msgSn.toInt(),
              );
          if (null != groupMsg) {
            groupMsg.msgState = item.msgStatus.value;
            AppDatabase().objectBox.addGroupMsg(groupMsg);
          } else {
            final groupMsgDataMap = <String, dynamic>{
              'groupId': groupId.toInt(),
              'userId': friendId,
              'pbName': pbMsg.pbName,
              'pbData': pbMsg.pbData,
              'srcId': pbMsg.pbCommData.srcId.toInt(),
              'pbCommData': pbMsg.pbCommData.writeToBuffer(),
              'msgState': item.msgStatus.value,
              'msgSn': pbMsg.pbCommData.msgSn.toInt(),
              'groupMsgSn': pbMsg.pbCommData.groupMsgSn.toInt(),
              'createAt': DateTime.now().millisecondsSinceEpoch,
              'updateAt': pbMsg.pbCommData.time.toInt() * 1000,
            };

            groupMsg = GroupMsgModel.fromJson(groupMsgDataMap);
            AppDatabase().objectBox.addGroupMsg(groupMsg);
          }

          messages.add(groupMsg);
        }

        // if (pbMsg.pbName == 'pb_pub.MsgRecallReq') {
        //   MsgRecallReq req = MsgRecallReq()..mergeFromBuffer(item.pbData);
        //   msgRecallList.add(req);
        //
        //   LoggerManager().debug(
        //       'group repository msgRecallReq msgSn: ${req.msgSn} msgOwnerId: ${req.msgOwnerId}');
        //
        //   final originMsnSn = req.msgSn.toInt();
        //   final String condition = 'msgSn=$originMsnSn';
        //   req.msgOwnerId = pbMsg.pbCommData.srcId;
        //   dbMsg
        //       ?.update(
        //     tbGroupMsgTable,
        //     {
        //       "msgType": TextChatType.RECALL.value,
        //       'recallUid': pbMsg.pbCommData.srcId.toInt(),
        //     },
        //     where: condition,
        //   )
        //       .then((value) {
        //     LoggerManager().debug(
        //         'group repository originMsnSn: $originMsnSn value: $value');
        //   });
        // } else {
        //   // final dataMap = <String, dynamic>{
        //   //   'srcId': commData.srcId.toInt(),
        //   //   'groupId': commData.groupId.toInt(),
        //   //   'msgSn': commData.msgSn.toInt(),
        //   //   'appId': commData.appId.toInt(),
        //   //   'appUserId': commData.appUserId,
        //   //   'groupMsgSn': commData.groupMsgSn.toInt(),
        //   //   'clientType': commData.srcClientType.value,
        //   //   'pbData': pbMsg.writeToBuffer(),
        //   //   'msgTime': (commData.time.toInt() * 1000),
        //   //   'msgStatus': item.msgStatus.value,
        //   //   'createTime': DateTime.now().toString(),
        //   // };
        //
        //
        //
        //   groupHistoryMsgList.add(item);
        //
        //   // AppDatabase().objectBox.addGroupMsg(model);
        //
        //   // AppDatabase().groupMessageDao?.insertOrUpdate(
        //   //       groupId: groupId,
        //   //       msgSn: commData.msgSn.toInt(),
        //   //       dataMap: dataMap,
        //   //     );
        // }
      }

      // AppDatabase().objectBox.addGroupMsgs(messages);

      // dataMap.putIfAbsent('msgList', () => groupHistoryMsgList);
      // dataMap.putIfAbsent('msgRecallList', () => msgRecallList);
      return messages;
    }

    return [];
  }

  Future<List<GroupHistoryMsg>> fetchHistoryByMsgSn(
    int groupId,
    int groupMsgSn,
  ) async {
    final req = FetchGroupHistoryMsgFromGroupMsgSnReq();
    req.startGroupMsgSn = Int64(groupMsgSn);
    req.wantCount = Int64(20);
    req.orderDesc = true;

    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo().imId),
      groupId: Int64(groupId.toInt()),
      toService: Service.group,
    );
    if (Dimens.isDesktop()) {
      pbCommData.srcClientType = CLIENT_TYPE.PC;
    } else {
      pbCommData.srcClientType = CLIENT_TYPE.PHONE;
    }

    http.Response response = await RpcCallImOuterApi(
      '/pb_grpc_group.Group/FetchGroupHistoryMsgFromGroupMsgSn',
      req,
      pbCommData,
    ).catchError((err) {});

    if (response.statusCode == 200) {
      GlobalController.to.removeMsgSn(groupId);

      var rsp = FetchGroupHistoryMsgFromGroupMsgSnRsp()
        ..mergeFromBuffer(response.bodyBytes);
      LoggerManager().debug(
        'FetchGroupHistoryMsgFromGroupMsgSn groupMsgSn: $groupMsgSn result: ${rsp.startGroupMsgSn} count: ${rsp.pbHisMsg.length}',
      );
      int index = 0;
      for (final item in rsp.pbHisMsg) {
        var pbMsg = PBMessage();
        PBCommData commData = PBCommData();
        commData.mergeFromBuffer(item.pbCommData);
        pbMsg.pbCommData = commData;
        pbMsg.pbData = item.pbData;
        pbMsg.pbName = item.pbName;

        LoggerManager().debug(
          'FetchGroupHistoryMsgFromGroupMsgSn index: $index groupMsgSn: ${commData.groupMsgSn.toInt()}',
        );

        index++;

        final dataMap = <String, dynamic>{
          'srcId': commData.srcId.toInt(),
          'groupId': commData.groupId.toInt(),
          'msgSn': commData.msgSn.toInt(),
          'appId': commData.appId.toInt(),
          'appUserId': commData.appUserId,
          'groupMsgSn': commData.groupMsgSn.toInt(),
          'clientType': commData.srcClientType.value,
          'pbData': pbMsg.writeToBuffer(),
          'msgTime': (commData.time.toInt() * 1000),
          'msgStatus': item.msgStatus.value,
          'createTime': DateTime.now().toString(),
        };

        AppDatabase().groupMessageDao?.insertOrUpdate(
              groupId: groupId,
              msgSn: commData.msgSn.toInt(),
              dataMap: dataMap,
            );
      }
      return rsp.pbHisMsg;
    }

    return [];
  }

  Future<List<GroupHistoryMsg>> fetchHistory(
    int groupId,
    int offSet,
  ) async {
    http.Response response = await RpcCallImOuterApi(
      "/pb_grpc_group.Group/FetchGroupHistoryMsg",
      FetchGroupHistoryMsgReq(
        page: Int64(offSet),
        pageSize: Int64(20),
      ),
      MakePBCommData(
        aimId: Int64(AppUserInfo().imId),
        groupId: Int64(groupId.toInt()),
        toService: Service.group,
      ),
    ).catchError((err) {});

    if (response.statusCode == 200) {
      var rsp = FetchGroupHistoryMsgRsp()
        ..mergeFromBuffer(
          response.bodyBytes,
        );

      for (final item in rsp.pbHisMsg) {
        var pbMsg = PBMessage();
        PBCommData commData = PBCommData();
        commData.mergeFromBuffer(item.pbCommData);
        pbMsg.pbCommData = commData;
        pbMsg.pbData = item.pbData;
        pbMsg.pbName = item.pbName;

        final dataMap = <String, dynamic>{
          'srcId': commData.srcId.toInt(),
          'groupId': commData.groupId.toInt(),
          'msgSn': commData.msgSn.toInt(),
          'appId': commData.appId.toInt(),
          'appUserId': commData.appUserId,
          'groupMsgSn': commData.groupMsgSn.toInt(),
          'clientType': commData.srcClientType.value,
          'pbData': pbMsg.writeToBuffer(),
          'msgTime': (commData.time.toInt() * 1000),
          'msgStatus': item.msgStatus.value,
          'createTime': DateTime.now().toString(),
        };

        AppDatabase().groupMessageDao?.insertOrUpdate(
              groupId: groupId,
              msgSn: commData.msgSn.toInt(),
              dataMap: dataMap,
            );
      }

      return rsp.pbHisMsg;
    }

    return [];
  }

  Future<List<Member>> fetchGroupMembers({
    required int groupId,
    required int page,
  }) async {
    final req = MembersReq();
    req.page = page;

    final pbCommData = MakePBCommData(
      aimId: Int64(groupId),
      groupId: Int64(groupId),
      toService: Service.group,
    );

    http.Response response = await RpcCallImOuterApi(
      '/pb_grpc_group.Group/Members',
      req,
      pbCommData,
    ).catchError((err) {});

    if (response.statusCode == 200) {
      final rsp = MembersRsp()..mergeFromBuffer(response.bodyBytes);

      return rsp.members;
    }

    return [];
  }

  Future<List<Member>> findMember({
    required int groupId,
    required String keywords,
  }) async {
    final req = FindMembersReq();
    req.findString = keywords;

    final pbCommData = MakePBCommData(
      aimId: Int64(groupId),
      groupId: Int64(groupId),
      toService: Service.group,
    );

    http.Response response = await RpcCallImOuterApi(
      '/pb_grpc_group.Group/FindMembers',
      req,
      pbCommData,
    ).catchError((err) {});

    if (response.statusCode == 200) {
      final rsp = FindMembersRsp()..mergeFromBuffer(response.bodyBytes);

      return rsp.members;
    }

    return [];
  }

  Future<Member?> getMemberDetails({
    required int groupId,
    required int targetId,
  }) async {
    final req = MemberDetailReq();

    final pbCommData = MakePBCommData(
      aimId: Int64(targetId),
      groupId: Int64(groupId),
      toService: Service.group,
    );
    pbCommData.srcId = Int64(targetId);

    http.Response response = await RpcCallImOuterApi(
      '/pb_grpc_group.Group/MemberDetail',
      req,
      pbCommData,
    ).catchError((err) {});

    if (response.statusCode == 200) {
      final rsp = MemberDetailRsp()..mergeFromBuffer(response.bodyBytes);

      final Member member = Member();
      member.userId = rsp.userId;
      member.groupId = rsp.groupId;
      member.avatar = rsp.avatar;
      member.username = rsp.username;
      member.banned = rsp.banned;
      member.remark = rsp.remark;
      member.role = rsp.role;

      await AppDatabase().groupMemberDao?.insertOrUpdate(
            groupId: groupId,
            member: member,
          );

      return member;
    }

    return null;
  }

  Future<ApplyRsp?> applyJoinGroup(
    ApplyReq req, {
    required int groupId,
  }) async {
    final req = MemberDetailReq();

    final pbCommData = MakePBCommData(
      aimId: Int64(groupId),
      groupId: Int64(groupId),
      toService: Service.group,
    );

    http.Response response = await RpcCallImOuterApi(
      '/pb_grpc_group.Group/Apply',
      req,
      pbCommData,
    ).catchError((err) {});

    if (response.statusCode == 200) {
      final rsp = ApplyRsp()..mergeFromBuffer(response.bodyBytes);

      return rsp;
    }

    return null;
  }
}
