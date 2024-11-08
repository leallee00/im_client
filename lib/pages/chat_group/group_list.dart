import 'dart:async';
import 'dart:io';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group.dart';
import 'package:quliao/pages/chat_index/group_name_widget.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/widgets/avatar.dart';

import '../chat_index/conversation_avatar.dart';
import '../home/home_page.dart';
import 'controller/group_list_controller.dart';

class GroupListPage extends StatefulWidget {
  static const name = "GroupListPage";

  const GroupListPage({super.key});

  @override
  GroupListPageState createState() => GroupListPageState();
}

class GroupListPageState extends State<GroupListPage> {
  @override
  void initState() {
    super.initState();
    GroupListController.to.HandleMsg();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "群聊列表",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Column(
          children: [
            // 群列表
            Expanded(
              flex: 1,
              child: ListView.separated(
                itemCount: GroupListController.to.lGroupList.length,
                itemBuilder: ListBuilder,
                //分割器构造器
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    height: Dimens.gap_dp1 / 2,
                    color: Theme.of(context).dividerColor,
                    margin: EdgeInsets.only(left: Dimens.gap_dp20),
                  );
                },
              ),
            ),
          ],
        )));
  }

  static const loadingTag = "##loading##"; //表尾标记
  Widget ListBuilder(BuildContext context, int index) {
    var item = GroupListController.to.lGroupList[index];

    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: Dimens.gap_dp4,
        horizontal: Dimens.gap_dp20,
      ),
      leading: UserAvatar(
        size: Dimens.gap_dp40,
        avatar: item.avatar,
        name: item.name,
      ),
      title: Row(
        children: [
          const Icon(
            Icons.group,
            size: 20,
            color: Colors.orange,
          ),
          Gaps.hGap4,
          Expanded(
            child: GroupNameWidget(
              groupId: item.groupId.toInt(),
              groupDetails: GroupDetailRsp(
                name: item.name,
                remark: item.remark,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
      onTap: () async {
        // // 进入群聊
        toMainPage.value = toMainPage.value++;
        if (Platform.isMacOS || Platform.isWindows) {
          final conversation = await ImController.to.getConversationById(
            item.groupId.toInt(),
          );
          if (null == conversation) {
            await ImController.to.insertEmpty(
              item.groupId.toInt(),
              dataMap: <String, dynamic>{
                'chatId': item.groupId.toInt(),
                'chatType': CHAT_TYPE.GROUP.index,
                'newMsgCount': 0,
                'msgTips': '',
                'msgSn': 0,
                'msgTime': DateTime.now().toString(),
                'createTime': DateTime.now().toString(),
              },
              conversationType: CHAT_TYPE.GROUP,
            );
          }
          eventBus.fire(
            ReloadChatListData(chatId: item.groupId.toInt()),
          );
          if (context.mounted) {
            Navigator.pop(context);
          }
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext ctx) {
                return ChatGroupPage(
                  groupId: item.groupId,
                  name: item.remark.isEmpty ? item.name : item.remark,
                );
              },
            ),
          );
        }
      },
    );
  }
}
