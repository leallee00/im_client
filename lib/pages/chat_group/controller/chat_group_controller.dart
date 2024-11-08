import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:oktoast/oktoast.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/db/dao/group_msg.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/db/obox/model/group_msg_model.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/modules/red_packet/record/red_packet_record_page.dart';
import 'package:quliao/modules/red_packet/repository/red_packet_repository.dart';
import 'package:quliao/modules/red_packet/widgets/empty_red_packet_dialog.dart';
import 'package:quliao/modules/red_packet/widgets/receive_red_packet_dialog.dart';
import 'package:quliao/modules/red_packet/widgets/timeout_red_packet_dialog.dart';
import 'package:quliao/pages/chat_group/group_repository.dart';
import 'package:quliao/pages/chat_index/conversation_controller.dart';
import 'package:quliao/pages/chat_index/replied_message.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pbenum.dart';
import 'package:quliao/pub/custom_alert.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/loading.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../db/db.dart';
import '../../../event/event_modul.dart';
import '../../../models/user/myinfo.dart';
import '../../../net/msg_handler_mgr.dart';
import '../../../net/socket.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import '../../../pb/pb_msg/group/group.pb.dart';
import '../../../pb/pb_pub/comm.pb.dart';
import '../../../pb/pb_pub/comm.pbenum.dart';
import '../../../pb/pb_pub/service.pbenum.dart';
import '../../../pub/im_grpc_opt.dart';
import '../../chat_private/chat.dart';
import '../flyer_chat/chat_group_change_to_message.dart';

class ChatGroupController extends GetxController {
  static ChatGroupController to(String tag) => Get.find(tag: tag);

  int groupId = 0;
  var name;
  int page = 1;
  int pageSize = 20;
  var loading = false.obs;

  var showGroupNotice = false.obs;

  var msgHandlerMgr = MsgHandlerMgr();
  var messageList = <types.Message>[].obs;
  final Map<String, types.Message> msgSnMessageMap = <String, types.Message>{};
  final Map<String, MsgRecallReq> msgRecallMap = <String, MsgRecallReq>{};

  GroupRepository? _repository = GroupRepository();
  final _redPacketRepository = RedPacketRepository();

  ///我的用户信息
  final user = types.User(
    id: AppUserInfo().imId.toString(),
    firstName: AppUserInfo().nickName,
    imageUrl:
        "${AppUserInfo().appAvatar}?x-oss-process=image/resize,m_fill,h_100,w_100",
  );

  Rx<int> applyListsSize = RxInt(-1);

  final Rx<GroupModel> groupInfo = Rx(GroupModel());

  var repliedMessage = RepliedMessage().obs;

  var isMultiSelect = false.obs;
  var multiSelectedMessageList = <types.Message>[].obs;

  final GroupMessageDao? _groupMsgDao = AppDatabase().groupMessageDao;

  int get _groupId => groupId;

  int? lastGroupMsgSn;
  int? firstGroupMsgSn;

  RxList<Member> groupMembers = RxList();

  int? offlineGroupMsgSn;

  void collectMessage(
    int groupId,
    types.Message message,
  ) async {
    final msgSn = int.parse(message.id);
    final value = await AppDatabase().collectionsDao?.queryByMsgSn(msgSn);
    if (null != value && value.isNotEmpty) {
      ToastUtil.show('已收藏');
    } else {
      try {
        final list = await _groupMsgDao?.singleByMsgSn(groupId, msgSn) ?? [];
        if (list.isNotEmpty) {
          final dataMap = list.first;

          final value = <String, dynamic>{
            'srcId': dataMap['srcId'],
            'groupId': dataMap['groupId'],
            'msgSn': dataMap['msgSn'],
            'appId': dataMap['appId'],
            'appUserId': dataMap['appUserId'],
            'groupMsgSn': dataMap['groupMsgSn'],
            //'atList UintList,'
            'clientType': dataMap['clientType'],
            'pbData': dataMap['pbData'],
            //'msgType INTEGER,' // 消息类型
            'msgTime': dataMap['msgTime'],
            'msgStatus': dataMap['msgStatus'],
            'createTime': DateTime.now().toString(),
          };

          await AppDatabase().collectionsDao?.insert(value);
          ToastUtil.show('收藏成功');
        }
      } catch (error) {
        debugPrint('error =========> $error');
      }
    }
  }

  void filterMember(
    String keywords,
  ) async {}

  Future<void> kickOutMember(
    BuildContext context, {
    required int userId,
    required int groupId,
  }) async {
    if (context.mounted) {
      getMemberDetails(groupId, userId).then((value) {
        if (null != value) {
          showAlertView(
            "群成员管理",
            "您将${(value.username.isNotEmpty ? value.username : "${value.userId}")}移除群组",
            context,
            callBack: (index) {
              if (index == 1) {
                Client.instance.sendMsg(
                  KickoutReq(),
                  Int64(userId),
                  MakePBCommData(
                    aimId: Int64(userId),
                    groupId: Int64(groupId),
                    toService: Service.group,
                  ),
                );
              }
              showToast('操作成功');
            },
          );
        }
      });
    }
  }

  Future<void> banMember({
    required int userId,
    required int groupId,
    required bool banned,
  }) async {
    GeneratedMessage pbOutMsg;
    if (banned == true) {
      pbOutMsg = BanMemberReq();
    } else {
      pbOutMsg = UnbanMemberReq();
    }

    Client.instance.sendMsg(
      pbOutMsg,
      Int64(groupId),
      MakePBCommData(
        aimId: Int64(userId),
        groupId: Int64(groupId),
        toService: Service.group,
      ),
    );

    // if (banned == false) {
    //   showToast(
    //       "您将${(member.username.isNotEmpty ? member.username : "${member.userId}")}设置封禁");
    // } else {
    //   showToast(
    //       "已移除${(member.username.isNotEmpty ? member.username : "${member.userId}")}封禁");
    // }
  }

  Future<Member?> getRemoteMemberDetails(
    int groupId,
    int userId,
  ) async {
    var member = await _repository?.getMemberDetails(
      groupId: groupId,
      targetId: userId,
    );
    member ??= await AppDatabase().groupMemberDao?.singleMember(
          groupId: groupId,
          userId: userId,
        );
    return member;
  }

  Future<Member?> getMemberDetails(
    int groupId,
    int userId, {
    bool showLoading = false,
  }) async {
    var member = await AppDatabase().groupMemberDao?.singleMember(
          groupId: groupId,
          userId: userId,
        );
    if (null == member) {
      if (showLoading) {
        LoadingDialog.show();
      }
      member = await _repository?.getMemberDetails(
        groupId: groupId,
        targetId: userId,
      );
      if (showLoading) {
        LoadingDialog.dismiss();
      }
    }
    return member;
  }

  Future<void> fetchGroupMembers(int groupId) async {
    final members = await _repository?.fetchGroupMembers(
          groupId: groupId,
          page: 1,
        ) ??
        [];
    if (members.isNotEmpty) {
      groupMembers.clear();
      groupMembers.addAll(members);
    }
  }

  void init(Int64 groupId, String name) {
    this.groupId = groupId.toInt();
    this.name = name;

    final dataMap = GlobalController.to.groupIdMsgSnMap;
    if (dataMap.containsKey(groupId.toInt())) {
      offlineGroupMsgSn = dataMap[groupId.toInt()];
    }

    fetchGroupApplyLists();
    fetchGroupInfoFromDB();
    // loadHistoryMsgList();
    // loadHistoryMessages();
    // loadMessage();
    loadData();
    if (Platform.isWindows || Platform.isMacOS) {
      ever(
        GlobalController.to.groupIdMsgSnMap,
        (callback) async {
          GroupInfo dbGroupInfo = GroupInfo();
          await dbGroupInfo.fetchGroupData(groupId.toInt());
          if (!dbGroupInfo.needReceip) {
            if (callback.containsKey(_groupId)) {
              _loadRemoteHistoryMessages(callback[_groupId]!);
            }
          }
        },
      );
    }
  }

  Future<void> _loadRemoteHistory() async {
    GroupInfo dbGroupInfo = GroupInfo();
    await dbGroupInfo.fetchGroupData(groupId.toInt());
    if (!dbGroupInfo.needReceip) {
      final dataMap = GlobalController.to.groupIdMsgSnMap;
      if (dataMap.containsKey(_groupId)) {
        _loadRemoteHistoryMessages(dataMap[_groupId]!);
      }
    }
  }

  void addSelectedMessage(
    types.Message message,
    bool changed,
  ) {
    if (changed) {
      multiSelectedMessageList.add(message);
    } else {
      multiSelectedMessageList.remove(message);
    }
  }

  void updateSelectStatus() {
    isMultiSelect.value = !isMultiSelect.value;
    if (!isMultiSelect.value) {
      multiSelectedMessageList.clear();
    }
  }

  void updateRepliedMessage(Message? message) {
    repliedMessage.value = RepliedMessage(message: message);
    // eventBus.fire(
    //   ReplyMessageChanged(repliedMessage: repliedMessage.value),
    // );
  }

  String getRepliedNickname() {
    final String nickname = repliedMessage.value.message!.author.firstName ??
        '游客${repliedMessage.value.message!.author.id}';
    return nickname;
  }

  String getRepliedContent() {
    final Message message = repliedMessage.value.message!;
    if (message.type == MessageType.text) {
      return (message as TextMessage).text;
    } else if (message.type == MessageType.image) {
      return '[图片]';
    } else if (message.type == MessageType.video) {
      return '[视频]';
    } else if (message.type == MessageType.file) {
      return '[文件]';
    } else if (message.type == MessageType.audio) {
      return '[语音]';
    } else {
      return '[位置消息]';
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  int get offset => (page - 1) * pageSize;

  /// 如果是第一页，则展示loading。
  /// 首页数据加载逻辑：
  /// 先请求本地数据，然后异步加载网络数据。
  Future<void> loadData() async {
    if (page <= 1) {
      loading.value = true;
    }

    final messages = <Message>[];

    if (page == 1) {
      final cacheMessages = await _repository?.queryLocalMessages(
            _groupId,
            offset: offset,
          ) ??
          [];
      // for (final item in cacheMessages) {
      //   LoggerManager().error('recallUid =======> ${item.recallUid}');
      // }
      final localMessages = await mapToMessages(
        cacheMessages,
        localMessage: true,
      );

      messages.addAll(localMessages);
      loading.value = false;
      messageList.addAll(messages);

      final dataMap = GlobalController.to.groupIdMsgSnMap;
      if (dataMap.containsKey(_groupId)) {
        lastGroupMsgSn = dataMap[_groupId];
      } else {
        if (messageList.length == 20) {
          lastGroupMsgSn = null;
        }
      }

      // final conversation = await AppDatabase().objectBox.getConversation(_groupId);
      // if (null != conversation && null != conversation.groupMsgSn) {
      //   lastGroupMsgSn = conversation.groupMsgSn;
      // }

      final enableLoadRemote =
          messageList.length < 20 || null != lastGroupMsgSn;
      lastGroupMsgSn ??= 0;

      if (enableLoadRemote) {
        if (messageList.isEmpty) {
          loading.value = true;
        }
        try {
          _loadRemote().then(
            (value) {
              mapToMessages(value).then((value) async {
                loading.value = false;
                final list = <Message>[];
                list.addAll(messageList);
                list.addAll(value);
                LoggerManager()
                    .debug('chat group controller list size: ${list.length}');
                list.sort((a, b) {
                  int bGroupMsgSn = 0;
                  if (null != b.remoteId) {
                    bGroupMsgSn = int.parse(b.remoteId!);
                  }
                  int aGroupMsgSn = 0;
                  if (null != a.remoteId) {
                    aGroupMsgSn = int.parse(a.remoteId!);
                  }
                  if (aGroupMsgSn == 0) {
                    return aGroupMsgSn.compareTo(bGroupMsgSn);
                  }
                  LoggerManager().debug(
                      'chat group controller list sort aGroupMsgSn:$aGroupMsgSn bGroupMsgSn:$bGroupMsgSn');
                  return bGroupMsgSn.compareTo(aGroupMsgSn);
                });

                for (var i = 0; i < list.length; i++) {
                  final item = list[i];
                  if (msgRecallMap.containsKey(item.id)) {
                    final MsgRecallReq? req = msgRecallMap[item.id];
                    if (null != req) {
                      final changeMessageMap = await groupMessageChangeType(
                        _groupId,
                        item,
                        MsgReceipt(
                          state:
                              _statusToState(item.status ?? types.Status.sent),
                        ),
                        types.MessageType.system,
                        req.msgOwnerId,
                      );
                      types.Message changeMessage =
                          types.Message.fromJson(changeMessageMap);
                      list.removeAt(i);
                      list.insert(i, changeMessage);
                      msgRecallMap.remove(item.id);
                    }
                  }
                }

                messageList.clear();
                messageList.addAll(list);
              });
            },
          );
        } catch (error) {
          loading.value = false;
        }
      }

      /// 如果有网络数据或者本地数据小于20条，则拉取离线消息
    } else {
      final int diffValue = (lastGroupMsgSn ?? 0) - (firstGroupMsgSn ?? 0);

      LoggerManager().debug(
          'chat group controller load data diffValue: $diffValue lastGroupMsgSn: $lastGroupMsgSn firstGroupMsgSn: $firstGroupMsgSn');

      // final cacheMessages = await _repository.queryLocalMessages(
      //   _groupId,
      //   offset: offset,
      // );
      // final localMessages = await mapToMessages(
      //   cacheMessages,
      //   localMessage: true,
      // );
      //
      // final list = <Message>[];
      // list.addAll(localMessages);
      // LoggerManager().debug('chat group controller list size: ${list.length}');
      // list.sort((a, b) {
      //   int bGroupMsgSn = 0;
      //   if (null != b.remoteId) {
      //     bGroupMsgSn = int.parse(b.remoteId!);
      //   }
      //   int aGroupMsgSn = 0;
      //   if (null != a.remoteId) {
      //     aGroupMsgSn = int.parse(a.remoteId!);
      //   }
      //   if (aGroupMsgSn == 0) {
      //     return aGroupMsgSn.compareTo(bGroupMsgSn);
      //   }
      //   LoggerManager().debug('chat group controller list sort aGroupMsgSn:$aGroupMsgSn bGroupMsgSn:$bGroupMsgSn');
      //   return bGroupMsgSn.compareTo(aGroupMsgSn);
      // });
      //
      // for (var i = 0; i < list.length; i++) {
      //   final item = list[i];
      //   if (msgRecallMap.containsKey(item.id)) {
      //     final MsgRecallReq? req = msgRecallMap[item.id];
      //     if (null != req) {
      //       final changeMessageMap = await groupMessageChangeType(
      //         _groupId,
      //         item,
      //         MsgReceipt(
      //           state: _statusToState(item.status ?? types.Status.sent),
      //         ),
      //         types.MessageType.system,
      //         req.msgOwnerId,
      //       );
      //       types.Message changeMessage =
      //       types.Message.fromJson(changeMessageMap);
      //       list.removeAt(i);
      //       list.insert(i, changeMessage);
      //       msgRecallMap.remove(item.id);
      //     }
      //   }
      // }
      //
      // messageList.addAll(list);

      if (diffValue > 1) {
        List<GroupMsgModel> remoteMessages = await _loadRemote();
        final mapMessages = await mapToMessages(remoteMessages);
        if (mapMessages.isEmpty) {
          final cacheMessages = await _repository?.queryLocalMessages(
                _groupId,
                offset: offset,
              ) ??
              [];
          final localMessages = await mapToMessages(
            cacheMessages,
            localMessage: true,
          );
          mapMessages.addAll(localMessages);
        }
        mapMessages.sort((a, b) {
          int bGroupMsgSn = 0;
          if (null != b.remoteId) {
            bGroupMsgSn = int.parse(b.remoteId!);
          }
          int aGroupMsgSn = 0;
          if (null != a.remoteId) {
            aGroupMsgSn = int.parse(a.remoteId!);
          }
          if (aGroupMsgSn == 0) {
            return aGroupMsgSn.compareTo(bGroupMsgSn);
          }
          LoggerManager().debug(
              'chat group controller list sort aGroupMsgSn:$aGroupMsgSn bGroupMsgSn:$bGroupMsgSn');
          return bGroupMsgSn.compareTo(aGroupMsgSn);
        });

        for (var i = 0; i < mapMessages.length; i++) {
          final item = mapMessages[i];
          if (msgRecallMap.containsKey(item.id)) {
            final MsgRecallReq? req = msgRecallMap[item.id];
            if (null != req) {
              final changeMessageMap = await groupMessageChangeType(
                _groupId,
                item,
                MsgReceipt(
                  state: _statusToState(item.status ?? types.Status.sent),
                ),
                types.MessageType.system,
                req.msgOwnerId,
              );
              types.Message changeMessage =
                  types.Message.fromJson(changeMessageMap);
              mapMessages.removeAt(i);
              mapMessages.insert(i, changeMessage);
              msgRecallMap.remove(item.id);
            }
          }
        }

        messageList.addAll(mapMessages);
      } else {
        final cacheMessages = await _repository?.queryLocalMessages(
              _groupId,
              offset: offset,
            ) ??
            [];
        final localMessages = await mapToMessages(
          cacheMessages,
          localMessage: true,
        );
        localMessages.sort((a, b) {
          int bGroupMsgSn = 0;
          if (null != b.remoteId) {
            bGroupMsgSn = int.parse(b.remoteId!);
          }
          int aGroupMsgSn = 0;
          if (null != a.remoteId) {
            aGroupMsgSn = int.parse(a.remoteId!);
          }
          if (aGroupMsgSn == 0) {
            return aGroupMsgSn.compareTo(bGroupMsgSn);
          }
          LoggerManager().debug(
              'chat group controller list sort aGroupMsgSn:$aGroupMsgSn bGroupMsgSn:$bGroupMsgSn');
          return bGroupMsgSn.compareTo(aGroupMsgSn);
        });

        for (var i = 0; i < localMessages.length; i++) {
          final item = localMessages[i];
          if (msgRecallMap.containsKey(item.id)) {
            final MsgRecallReq? req = msgRecallMap[item.id];
            if (null != req) {
              final changeMessageMap = await groupMessageChangeType(
                _groupId,
                item,
                MsgReceipt(
                  state: _statusToState(item.status ?? types.Status.sent),
                ),
                types.MessageType.system,
                req.msgOwnerId,
              );
              types.Message changeMessage =
                  types.Message.fromJson(changeMessageMap);
              localMessages.removeAt(i);
              localMessages.insert(i, changeMessage);
              msgRecallMap.remove(item.id);
            }
          }
        }

        messageList.addAll(localMessages);
      }
    }
  }

  MSG_STATE _statusToState(types.Status status) {
    if (status == types.Status.error) {
      return MSG_STATE.FAULT;
    }
    return MSG_STATE.INIT;
  }

  Future<List<GroupMsgModel>> _loadRemote() async {
    /// 网络加载
    if (null == lastGroupMsgSn) {
      return [];
    }

    final remoteMessages = <GroupMsgModel>[];

    final remoteMessageList = await _repository?.queryRemoteMessages(
          _groupId,
          groupMsgSn: lastGroupMsgSn!,
        ) ??
        [];

    if (remoteMessageList.isEmpty) {
      return [];
    }

    // List<MsgRecallReq> msgRecallList = [];
    // List<GroupHistoryMsg> remoteMessageList = [];
    // if (dataMap.containsKey('msgList')) {
    //   remoteMessageList = dataMap['msgList'] as List<GroupHistoryMsg>;
    // }
    // if (dataMap.containsKey('msgRecallList')) {
    //   msgRecallList = dataMap['msgRecallList'] as List<MsgRecallReq>;
    // }
    //
    // for (final item in msgRecallList) {
    //   msgRecallMap['${item.msgSn.toInt()}'] = item;
    // }

    int index = 0;
    for (final item in remoteMessageList) {
      if (item.groupMsgSn != lastGroupMsgSn) {
        if (index == remoteMessageList.length - 1) {
          lastGroupMsgSn = item.groupMsgSn.toInt();
          LoggerManager().debug(
            'chatGroupController _lastGroupMsgSn: $lastGroupMsgSn',
          );
        }
        LoggerManager().debug(
          'chatGroupController load message history remote groupMsgSn: ${item.groupMsgSn}',
        );
        // final map = <String, dynamic>{};
        // map["groupId"] = item.groupId;
        // map["groupMsgSn"] = item.groupMsgSn;
        // map["msgSn"] = item.msgSn;
        // map["srcId"] = item.srcId;
        // map["pbName"] = item.pbName;
        // map["pbData"] = item.pbData;
        // map["msgStatus"] = item.msgStatus;
        // map["atUserReadStatus"] = item.atUserReadStatus;
        // map["createdAt"] = item.createdAt;
        // map["updateAt"] = item.updatedAt;
        // map["pbCommData"] = item.pbCommData;
        // map["type"] = 1;
        remoteMessages.add(item);
      } else {
        LoggerManager().debug(
          'chatGroupController load message history remote groupMsgSn: ${item.groupMsgSn} 相同，暂不插入',
        );
      }
      index++;
    }

    return remoteMessages;
  }

  Future<List<types.Message>> mapToMessages(
    List<GroupMsgModel> dataList, {
    bool localMessage = true,
  }) async {
    List<ChatGroupData> lsCPData = <ChatGroupData>[];
    List<types.Message> messageList = [];
    int index = 0;

    // final List<Map<String, dynamic>> newDataList = [];
    // for (final itemMap in dataList) {
    //   newDataList.add(itemMap);
    // }

    dataList.sort((a, b) {
      int bGroupMsgSn = b.groupMsgSn;
      int aGroupMsgSn = a.groupMsgSn;
      return bGroupMsgSn.compareTo(aGroupMsgSn);
    });

    for (var cpd in dataList) {
      // LoggerManager().debug(
      //     'chat group message msgSn =====> ${cpd['msgSn']} groupMsgSn ======> ${cpd['groupMsgSn']}');
      // LoggerManager().debug(
      //   'chatGroupController mapToMessages groupMsgSn: ${cpd['groupMsgSn']} localMessage: $localMessage',
      // );

      if (localMessage) {
        // LoggerManager().debug(
        //   'chatGroupController mapToMessages groupMsgSn: ${cpd['groupMsgSn']} localMessage: $localMessage index: $index',
        // );
        if (index == dataList.length - 1) {
          // if (cpd['groupMsgSn'] is Int64) {
          //   firstGroupMsgSn = (cpd['groupMsgSn'] as Int64).toInt();
          // } else {
          //   firstGroupMsgSn = cpd['groupMsgSn'];
          // }
          firstGroupMsgSn = cpd.groupMsgSn;
          // if (newDataList.length < 20) {
          //   lastGroupMsgSn = firstGroupMsgSn;
          //   firstGroupMsgSn = null;
          // }
          lastGroupMsgSn = firstGroupMsgSn;
          firstGroupMsgSn = null;
          LoggerManager().debug(
            'chatGroupController mapToMessages _firstGroupMsgSn: $firstGroupMsgSn',
          );
        }
      }

      index++;

      try {
        var d = ChatGroupData();
        // 等待加载用户信息
        await d.generate(cpd);
        // LoggerManager().error('generate msgType ======> ${d.msgType}');

        final messageMap = await changeToGroupMessageMap(d);
        lsCPData.insert(0, d);
        types.Message message = types.Message.fromJson(messageMap);
        if (!msgSnMessageMap.containsKey(message.id)) {
          msgSnMessageMap[message.id] = message;
          if (message.status == Status.sending) {
            final dateTime =
                DateTime.fromMillisecondsSinceEpoch(message.createdAt!);
            final nowDateTime = DateTime.now();
            final differenceDuration = nowDateTime.difference(dateTime);
            final differenceSeconds = differenceDuration.inSeconds;
            if (differenceSeconds > 300) {
              messageMap['status'] = 'error';
              message = types.Message.fromJson(messageMap);

              if (message is types.TextMessage) {
                LoggerManager().debug(
                    'mapToMessages message content ======> ${message.text}');
              }

              updateGroupMsgState1(
                _groupId,
                d.pbHeadMsg.pbCommData.msgSn,
                MSG_STATE.FAULT,
                EnMsgFrom.local,
              );
            }
          }
          messageList.add(message);

          /// 已读标志
          if (d.pbHeadMsg.pbCommData.srcId != AppUserInfo.instance.imId &&
              d.pbHeadMsg.pbName != pbNameMsgReceipt &&
              d.msgStatus.value < MSG_STATE.READ.value) {
            sendReceiptMsg(
              d.pbHeadMsg.pbCommData,
              state: MSG_STATE.READ,
              beginTime: Int64(),
            );
            updateGroupMsgState1(
              _groupId,
              d.pbHeadMsg.pbCommData.msgSn,
              MSG_STATE.READ,
              EnMsgFrom.local,
            );
          }
        }
      } catch (e) {
        LoggerManager().error(e.toString());
        continue;
      }
    }

    if (lsCPData.isNotEmpty) {
      lsCPData[lsCPData.length - 1].selected = true;
    }
    // groupInfo.value.lstMsg = lsCPData;

    return messageList;
  }

  ///获取群详情
  Future<void> fetchGroupInfoFromDB({
    bool loadMessage = true,
  }) async {
    final groupInfo = this.groupInfo.value;
    ImConversationRepository().getGroupInfo(groupId, callback: (result) async {
      if (null != result) {
        LoggerManager().error('result ===========> ${result.toString()}');
        this.groupInfo.value = result;
        if (null != result.notice && result.notice!.isNotEmpty) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          final localNoticeVersion = prefs.getInt(
            "notice${groupId.toInt()}_${result.noticeVersion}",
          );
          showGroupNotice.value = localNoticeVersion != result.noticeVersion;
        }
      }
    });

    // GroupInfo dbGroupInfo = GroupInfo();
    // await dbGroupInfo.fetchGroupData(groupId.toInt());
    // groupInfo.value = dbGroupInfo;
    // LoggerManager().error(
    //   'chat group page groupInfo -------> \n ${groupInfo.value.toString()}',
    // );
    // page = 1;
    // if (groupInfo.value.notice.isNotEmpty) {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   final localNoticeVersion = prefs.getInt(
    //     "notice${groupId.toInt()}_${groupInfo.value.noticeVersion}",
    //   );
    //   showGroupNotice.value =
    //       localNoticeVersion != groupInfo.value.noticeVersion;
    // }
    // if (Platform.isAndroid || Platform.isIOS) {
    // final dataMap = GlobalController.to.groupIdMsgSnMap;
    // if (dataMap.containsKey(_groupId)) {
    //   _loadRemoteHistoryMessages(dataMap[_groupId]!);
    // }
    // if (page <= 1) {
    //   final messages = await _groupMsgDao?.list(_groupId, offset: offset);
    //   if (null == messages || messages.isEmpty) {
    //     _loadRemoteHistoryMessages(0);
    //   }
    // } else {
    //   final dataMap = GlobalController.to.groupIdMsgSnMap;
    //   if (dataMap.containsKey(_groupId)) {
    //     _loadRemoteHistoryMessages(dataMap[_groupId]!);
    //   }
    // }
    // }
  }

  ///获取群历史消息

  Future<List<types.Message>> loadHistoryMsgList() async {
    if (page <= 1) {
      loading.value = true;
    }
    List<Map<String, dynamic>>? messages = [];

    // 查询本地数据库历史记录 大群小群都是这样的逻辑，不区分的，只是在UI那边有对勾的区分
    messages = await _groupMsgDao?.list(_groupId, offset: offset);
    LoggerManager().debug(
        'loadHistoryMsgList messages length =======> ${messages?.length}');

    //本地数据库查询不到直接走网络接口获取历史数据
    if (messages == null || messages.isEmpty) {
      loading.value = false;
      loadHistoryMsgLocList();
      return [];
    }

    // 构建消息列表
    List<ChatGroupData> lsCPData = <ChatGroupData>[];
    List<types.Message> messageList = [];
    for (var cpd in messages) {
      LoggerManager().debug('chat group message msgSn =====> ${cpd['msgSn']}');
      try {
        var d = ChatGroupData();
        // 等待加载用户信息
        await d.initWithMap(cpd);

        final messageMap = await changeToGroupMessageMap(d);
        if (messageMap.keys.contains('type')) {
          lsCPData.insert(0, d);
          types.Message message = types.Message.fromJson(messageMap);
          if (!msgSnMessageMap.containsKey(message.id)) {
            msgSnMessageMap[message.id] = message;
            if (message.status == Status.sending) {
              final dateTime =
                  DateTime.fromMillisecondsSinceEpoch(message.createdAt!);
              final nowDateTime = DateTime.now();
              final differenceDuration = nowDateTime.difference(dateTime);
              final differenceSeconds = differenceDuration.inSeconds;
              if (differenceSeconds > 300) {
                messageMap['status'] = 'error';
                message = types.Message.fromJson(messageMap);
                updateGroupMsgState1(
                  _groupId,
                  d.pbHeadMsg.pbCommData.msgSn,
                  MSG_STATE.FAULT,
                  EnMsgFrom.local,
                );
              }
            }
            messageList.add(message);
            // 已读标志
            if (d.pbHeadMsg.pbCommData.srcId != AppUserInfo.instance.imId &&
                d.pbHeadMsg.pbName != pbNameMsgReceipt &&
                d.msgStatus.value < MSG_STATE.READ.value) {
              sendReceiptMsg(
                d.pbHeadMsg.pbCommData,
                state: MSG_STATE.READ,
                beginTime: Int64(),
              );
              updateGroupMsgState1(
                _groupId,
                d.pbHeadMsg.pbCommData.msgSn,
                MSG_STATE.READ,
                EnMsgFrom.local,
              );
            }
          }
        }
      } catch (e) {
        e.printError();
        continue;
      }
    }

    if (lsCPData.isNotEmpty) {
      lsCPData[lsCPData.length - 1].selected = true;
    }
    // groupInfo.value.lstMsg = lsCPData;
    if (page <= 1) {
      this.messageList.clear();
    }
    this.messageList.addAll(messageList);
    loading.value = false;
    loadHistoryMsgLocList();
    // _loadRemoteHistoryMessages();
    return this.messageList;
  }

  Future<void> _loadRemoteHistoryMessages(
    int groupMsgSn,
  ) async {
    final List<Map<String, dynamic>> messages = [];

    /// 网络加载
    final remoteHistoryList = await GroupRepository().fetchHistoryByMsgSn(
      _groupId,
      groupMsgSn,
    );
    if (remoteHistoryList.isNotEmpty) {
      messages.clear();
    }

    int index = 0;
    for (final item in remoteHistoryList) {
      if (item.groupMsgSn != groupMsgSn) {
        if (index == 0) {
          lastGroupMsgSn = item.groupMsgSn.toInt();
        }
        final map = <String, dynamic>{};
        map["groupId"] = item.groupId;
        map["groupMsgSn"] = item.groupMsgSn;
        map["msgSn"] = item.msgSn;
        map["srcId"] = item.srcId;
        map["pbName"] = item.pbName;
        map["pbData"] = item.pbData;
        map["msgStatus"] = item.msgStatus;
        map["atUserReadStatus"] = item.atUserReadStatus;
        map["createdAt"] = item.createdAt;
        map["updateAt"] = item.updatedAt;
        map["pbCommData"] = item.pbCommData;
        map["type"] = 1;
        messages.add(map);
      } else {
        LoggerManager().debug(
          'chatGroupController load message history remote groupMsgSn: ${item.groupMsgSn} 相同，暂不插入',
        );
      }
      index++;
    }

    if (messages.isEmpty) {
      return;
    }

    /// 构建消息列表，并去重消息，再根据createdAt进行排序
    List<types.Message> messageList = [];
    for (var cpd in messages) {
      try {
        var d = ChatGroupData();
        // 等待加载用户信息
        await d.initWithMap(cpd);
        final messageMap = await changeToGroupMessageMap(d);
        if (messageMap.keys.contains('type')) {
          types.Message message = types.Message.fromJson(messageMap);
          if (!msgSnMessageMap.containsKey(message.id)) {
            msgSnMessageMap[message.id] = message;

            int index = this
                .messageList
                .indexWhere((element) => element.id == message.id);
            if (index == -1) {
              messageList.add(message);
            }

            // 已读标志
            if (d.pbHeadMsg.pbCommData.srcId != AppUserInfo.instance.imId &&
                d.pbHeadMsg.pbName != pbNameMsgReceipt &&
                d.msgStatus.value < MSG_STATE.READ.value) {
              sendReceiptMsg(
                d.pbHeadMsg.pbCommData,
                state: MSG_STATE.READ,
                beginTime: Int64(),
              );
              updateGroupMsgState1(
                _groupId,
                d.pbHeadMsg.pbCommData.msgSn,
                MSG_STATE.READ,
                EnMsgFrom.local,
              );
            }
          }
        }
      } catch (e) {
        continue;
      }
    }

    messageList.addAll(this.messageList);
    messageList.sort((a, b) {
      return b.createdAt!.compareTo(a.createdAt!);
    });
    this.messageList.clear();
    this.messageList.addAll(messageList);
  }

  ///判断是否走网络逻辑
  Future<void> loadHistoryMsgLocList() async {
    List<Map<String, dynamic>>? messages = [];
    var list = await _groupMsgDao?.list(_groupId, offset: offset);
    var load = false;
    if (list == null || list.isEmpty) {
      load = true;
    }
    //查询本地数据库历史记录 数据小于2条，或者数据的groupMsgSn不是连续的，说明本地数据库有缺少消息，就是load==true的时候走网络请求加载
    messages.addAll(list!.toList());

    final int idc = lastGroupMsgSn ?? 0 - (firstGroupMsgSn ?? 0);

    LoggerManager().debug(
      'chatGroupController load remote history groupId: ${groupInfo.value.groupId.toInt()} offset: $offset messages.length: ${messages.length} idc: $idc',
    );

    if (page <= 1) {
      if (load || idc != this.messageList.length - 1) {
        _loadRemoteHistoryMessages(0);
        return;
      }
    } else {
      /// 大群加载历史消息逻辑
      if (idc != this.messageList.length - 1) {
        _loadRemoteHistoryMessages(lastGroupMsgSn ?? 0);
      }
      return;
    }

    if (messages.length < 2) {
      load = true;
      if (load) {
        /// 网络加载
        final remoteHistoryList = await GroupRepository().fetchHistory(
          _groupId,
          offset,
        );
        if (remoteHistoryList.isNotEmpty) {
          messages.clear();
        }

        int index = 0;
        for (final item in remoteHistoryList) {
          LoggerManager().debug(
            'FetchGroupHistoryMsg groupMsgSn =====> ${item.groupMsgSn}',
          );
          if (index == 0) {
            lastGroupMsgSn = item.groupMsgSn.toInt();
          }
          var map = <String, dynamic>{};
          map["groupId"] = item.groupId;
          map["groupMsgSn"] = item.groupMsgSn;
          map["msgSn"] = item.msgSn;
          map["srcId"] = item.srcId;
          map["pbName"] = item.pbName;
          map["pbData"] = item.pbData;
          map["msgStatus"] = item.msgStatus;
          map["atUserReadStatus"] = item.atUserReadStatus;
          map["createdAt"] = item.createdAt;
          map["updateAt"] = item.updatedAt;
          map["pbCommData"] = item.pbCommData;
          map["type"] = 1;
          messages.add(map);

          index++;
        }
        loading.value = false;
      }
    }

    if (messages.isEmpty) {
      return;
    }

    // 构建消息列表，并去重消息，再根据createdAt进行排序
    List<types.Message> messageList = [];
    for (var cpd in messages) {
      try {
        var d = ChatGroupData();
        // 等待加载用户信息
        await d.initWithMap(cpd);

        final messageMap = await changeToGroupMessageMap(d);
        if (messageMap.keys.contains('type')) {
          types.Message message = types.Message.fromJson(messageMap);

          if (!msgSnMessageMap.containsKey(message.id)) {
            msgSnMessageMap[message.id] = message;

            int index = this
                .messageList
                .indexWhere((element) => element.id == message.id);
            if (index == -1) {
              messageList.add(message);
            }
            if (d.pbHeadMsg.pbCommData.srcId != AppUserInfo.instance.imId &&
                d.pbHeadMsg.pbName != pbNameMsgReceipt &&
                d.msgStatus.value < MSG_STATE.READ.value) {
              sendReceiptMsg(
                d.pbHeadMsg.pbCommData,
                state: MSG_STATE.READ,
                beginTime: Int64(),
              );
              updateGroupMsgState1(
                _groupId,
                d.pbHeadMsg.pbCommData.msgSn,
                MSG_STATE.READ,
                EnMsgFrom.local,
              );
            }
          }
        }
      } catch (e) {
        continue;
      }
    }

    messageList.addAll(this.messageList);
    messageList.sort((a, b) {
      return b.createdAt!.compareTo(a.createdAt!);
    });
    this.messageList.clear();
    this.messageList.addAll(messageList);
    // this.messageList.value = messageList;

    // if (!groupInfo.value.needReceip) {
    //   /// 大群加载历史消息逻辑
    //   final pbHeadMsgLast = PBMessage.fromBuffer(messages.last["pbData"]);
    //   final pbHeadMsgFirst = PBMessage.fromBuffer(messages.first["pbData"]);
    //
    //   lastGroupMsgSn = pbHeadMsgLast.pbCommData.groupMsgSn.toInt();
    //   firstGroupMsgSn = pbHeadMsgFirst.pbCommData.groupMsgSn.toInt();
    // }
  }

  /// 查找群聊申请的数量
  Future<void> fetchGroupApplyLists() async {
    http.Response response = await RpcCallImOuterApi(
            "/pb_grpc_group.Group/Applications",
            ApplicationsReq(),
            MakePBCommData(
                aimId: Int64(AppUserInfo().imId),
                groupId: Int64(groupId.toInt()),
                toService: Service.group))
        .catchError((err) {});
    if (response.statusCode == 500) {}
    if (response.statusCode == 200) {
      var rsp = ApplicationsRsp()..mergeFromBuffer(response.bodyBytes);
      LoggerManager().debug('applications count: ${rsp.applications.length}');
      int applySize = 0;
      if (rsp.applications.isNotEmpty) {
        for (final item in rsp.applications) {
          LoggerManager().debug('item status =========> ${item.status}');
          if (item.status == 0) {
            applySize++;
          }
        }
      }
      applyListsSize.value = applySize;
    }
  }

  Future<void> getRedPacketInfo(
    BuildContext context,
    int redPacketId,
    String messageId,
  ) async {
    final msgSn = int.parse(messageId);
    _redPacketRepository.getRedPacketInfo(
      redPacketId,
      callback: (value) async {
        // if (value.data.aimId.toInt() == AppUserInfo.instance.imId) {
        //   ReceiveRedPacketDialog.show(context);
        // }
        final isMeReceived = value.isMeReceived;
        final redPacketStatus = value.data.status;
        final redPacketId = value.data.redPacketId.toInt();
        if (isMeReceived) {
          Get.to(
            RedPacketRecordPage(redPacketId: redPacketId),
          );
        } else {
          if (redPacketStatus == RedPacketStatus.Going) {
            ReceiveRedPacketDialog.show(
              context,
              value.data,
              callback: (receivedValue) {
                Get.to(
                  RedPacketRecordPage(
                    redPacketId: redPacketId,
                    receivedValue: receivedValue,
                  ),
                );
                value.isMeReceived = true;
                updateRedPacketMessage(msgSn, value);
                MinePageController.to.getWalletInfo();
              },
            );
          } else if (redPacketStatus == RedPacketStatus.Completed) {
            /// 红包被抢完
            EmptyRedPacketDialog.show(
              context,
              value.data,
              onTap: () {
                Get.to(
                  RedPacketRecordPage(redPacketId: redPacketId),
                );
                EmptyRedPacketDialog.dismiss();
              },
            );
          } else if (redPacketStatus == RedPacketStatus.Overtime) {
            /// 超时
            TimeoutRedPacketDialog.show(context, value.data);
          }
        }

        if (redPacketStatus != RedPacketStatus.Going) {
          updateRedPacketMessage(msgSn, value);
        }
      },
    );
  }

  Future<void> updateRedPacketMessage(
    int msgSn,
    RedPacketInfoRsp value,
  ) async {
    final list = await _groupMsgDao?.singleByMsgSn(_groupId, msgSn) ?? [];
    if (list.isNotEmpty) {
      final messageMap = list.first;
      final groupChat = ChatGroupData();
      await groupChat.initWithMap(messageMap);
      final pbDataMsg = groupChat.pbDataMsg;
      final pbMessage = groupChat.pbHeadMsg;
      if (pbDataMsg is GroupChat) {
        pbDataMsg.data = value.writeToJson();
      }
      pbMessage.pbData = pbDataMsg.writeToBuffer();
      await _groupMsgDao?.updatePbData(
        groupId: _groupId,
        msgSn: msgSn,
        pbDataValue: pbMessage.writeToBuffer(),
      );
      eventBus.fire(
        UpdateRedPacketState(id: '$msgSn', data: value),
      );
    }
  }

  @override
  void onClose() {
    _repository = null;
    msgHandlerMgr.removeMsgHandler(ReadyForGroupsNewMsgInfoRsp());
    super.onClose();
  }
}
