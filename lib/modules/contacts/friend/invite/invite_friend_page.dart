import 'dart:async';
import 'dart:io';

import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group.dart';
import 'package:quliao/pages/chat_index/conversation_controller.dart';
import 'package:quliao/pages/friend_list/contact_item.dart';
import 'package:quliao/pb/pb_pub/error_code.pbenum.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/contact_utils.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/screen.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';

import '../../../../models/user/friendInfo.dart';
import '../../../../pb/pb_msg/group/group.pb.dart';
import '../../../../pb/pb_pub/comm.pb.dart';
import 'invite_friend_controller.dart';

/// 邀请好友进群、创建群聊
class InviteFriendPage extends StatefulWidget {
  const InviteFriendPage({
    super.key,
    this.memberList,
    this.groupId,
  });

  final List<FriendInfo>? memberList;
  final int? groupId;

  @override
  State<StatefulWidget> createState() => _InviteFriendPageState();
}

class _InviteFriendPageState extends State<InviteFriendPage> {
  final _controller = Get.put(InviteFriendController());

  final msgHandlerMgr = MsgHandlerMgr();
  StreamSubscription<EventOnNetMsg>? msgStreamSub;

  void handleMsg() {
    msgStreamSub = eventBus.on<EventOnNetMsg>().listen(
      (event) {
        if (event.pbMsg.errCode != ErrCode.SUCCESS.value) {
          showToast(event.pbMsg.errDesc);
          LoggerManager().debug(
            'get a err msg ${event.pbMsg.pbName} ${event.pbMsg.errCode} ${event.pbMsg.errDesc}',
          );
          return;
        }
        if (event.pbMsg.pbName != 'pb_pub.HeartBeat') {
          LoggerManager().debug('get a msg ${event.pbMsg.pbName}');
          msgHandlerMgr.onMsg(event.pbMsg, event.enMsgFrom);
        }
      },
    );

    msgHandlerMgr.RegMsgHandler(
      CreateGroupRsp(),
      (
        GeneratedMessage msg,
        PBMessage pbMessage,
        EnMsgFrom enMsgFrom,
      ) {
        LoggerManager().debug('获取消息 CreateGroupRsp $pbMessage');
        if (msg is CreateGroupRsp) {
          Get.put(
            ConversationController(),
            tag: 'conversation_${msg.groupId}',
          );
          // 创建成功，跳转到群聊
          // Navigator.popAndPushNamed(context, "ChatGroup", arguments: msg.groupId);
          if (Platform.isMacOS || Platform.isWindows) {
            _createConversation(msg.groupId.toInt(), context);
          } else {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext ctx) {
                  return ChatGroupPage(
                    groupId: msg.groupId,
                  );
                },
              ),
            );
          }
        }
        return true;
      },
    );
  }

  Future<void> _createConversation(
    int groupId,
    BuildContext context,
  ) async {
    await ImController.to.insertEmpty(
      groupId,
      dataMap: <String, dynamic>{
        'chatId': groupId,
        'chatType': CHAT_TYPE.GROUP.index,
        'newMsgCount': 0,
        'msgTips': '',
        'msgSn': 0,
        'msgTime': DateTime.now().toString(),
        'createTime': DateTime.now().toString(),
      },
      conversationType: CHAT_TYPE.GROUP,
    );
    eventBus.fire(
      ReloadChatListData(chatId: groupId),
    );
    if (context.mounted) {
      Navigator.pop(context);
    }
  }

  @override
  void initState() {
    super.initState();
    handleMsg();
    _controller.loadContacts(
      widget.memberList ?? [],
      groupId: widget.groupId,
    );
  }

  @override
  void dispose() {
    super.dispose();
    msgStreamSub?.cancel();
    _controller.onClose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          '选择联系人',
          style: TextStyle(
            fontSize: Dimens.font_sp18,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        actionPadding: EdgeInsets.only(
          right: Dimens.gap_dp6,
        ),
        actions: [
          Obx(
            () {
              return CustomTextButton(
                text: _controller.isCheckAll.value ? '取消全选' : '全选',
                onTap: () {
                  _controller.checkAll();
                },
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Obx(
            () {
              final contactList = _controller.dataList;
              return AzListView(
                data: contactList,
                itemCount: contactList.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final model = contactList[index];
                  return Obx(
                    () {
                      return _ItemWidget(
                        data: model.data!,
                        isGroupTitle: false,
                        checked: _controller.groupMemberMap
                                .containsKey(model.data!.userInfo.imId) ||
                            _controller.selectedMemberMap
                                .containsKey(model.data!.userInfo.imId),
                        callback: () {
                          _controller.selectContact(model.data!);
                        },
                      );
                    },
                  );
                },
                susItemBuilder: (BuildContext context, int index) {
                  final model = contactList[index];
                  if ('↑' == model.getSuspensionTag()) {
                    return Container();
                  }
                  return ContactUtils.getSusItem(
                    context,
                    model.getSuspensionTag(),
                  );
                },
                indexBarData: const ['↑', ...kIndexBarData],
                indexBarOptions: IndexBarOptions(
                  needRebuild: true,
                  ignoreDragCancel: true,
                  downTextStyle: TextStyle(
                    fontSize: Dimens.font_sp12,
                    color: Colors.black,
                  ),
                  downItemDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  indexHintWidth: 120 / 2,
                  indexHintHeight: 100 / 2,
                  indexHintDecoration: const BoxDecoration(
                    image: DecorationImage(
                      image: Images.iconIndexBarBubbleGray,
                      fit: BoxFit.contain,
                    ),
                  ),
                  indexHintAlignment: Alignment.centerRight,
                  indexHintChildAlignment: const Alignment(-0.25, 0.0),
                  indexHintOffset: const Offset(-20, 0),
                ),
              );
            },
          ),
          // Obx(
          //   () {
          //     LoggerManager().debug(
          //       'selectedMemberMap ======> ${_controller.selectedMemberMap}',
          //     );
          //     return Align(
          //       child: ListView.builder(
          //         controller: _controller.scrollController,
          //         itemBuilder: (BuildContext context, int index) {
          //           bool isGroupTitle = true;
          //           FriendInfo contact = _controller.contacts[index];
          //           if (index >= 1 &&
          //               contact.nameIndex ==
          //                   _controller.contacts[index - 1].nameIndex) {
          //             isGroupTitle = false;
          //           }
          //           final isGroupMember =
          //               _controller.groupMemberMap.containsKey(
          //             contact.userInfo.imId,
          //           );
          //           LoggerManager().debug(
          //             'index: $index _isGroupTitle: $isGroupTitle friendId: ${contact.userInfo.imId}',
          //           );
          //           return Obx(
          //             () {
          //               return _ItemWidget(
          //                 data: contact,
          //                 isGroupTitle: isGroupTitle,
          //                 checked: _controller.groupMemberMap
          //                         .containsKey(contact.userInfo.imId) ||
          //                     _controller.selectedMemberMap
          //                         .containsKey(contact.userInfo.imId),
          //                 callback: isGroupMember
          //                     ? null
          //                     : () {
          //                         _controller.selectContact(contact);
          //                       },
          //               );
          //             },
          //           );
          //         },
          //         itemCount: _controller.contacts.length,
          //       ),
          //     );
          //   },
          // ),

          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 20.0,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp24,
              ),
              child: Obx(
                () {
                  return CustomButton(
                    width: double.infinity,
                    height: Dimens.gap_dp46,
                    size: CustomButtonSize.medium,
                    shape: CustomButtonShape.stadium,
                    backgroundColor: _controller.enable.value
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.7),
                    onPressed: _controller.enable.value
                        ? () {
                            if (null != widget.groupId) {
                              _controller.inviteToGroup(
                                context,
                                groupId: widget.groupId!,
                              );
                            } else {
                              /// 创建群聊
                              _controller.createGroupChat(context);
                            }
                          }
                        : null,
                    child: Text(
                      null == widget.groupId ? '创建群聊' : '邀请加入',
                      style: TextStyle(
                        fontSize: Dimens.font_sp14,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  const _ItemWidget({
    Key? key,
    required this.data,
    this.checked = false,
    this.isGroupTitle = false,
    this.callback,
  });

  final FriendInfo data;
  final bool checked;
  final bool isGroupTitle;
  final Function()? callback;

  @override
  Widget build(BuildContext context) {
    debugPrint('isGroupTitle ======> $isGroupTitle checked ======> $checked');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        isGroupTitle
            ? Container(
                height: Dimens.gap_dp34,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.gap_dp16,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffebebeb),
                  border: Border(
                    top: BorderSide(color: Colors.grey, width: 0.2),
                    bottom: BorderSide(color: Colors.grey, width: 0.2),
                  ),
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  data.nameIndex ?? '',
                  style: TextStyle(
                    fontSize: Dimens.font_sp14,
                    color: const Color(0xff888888),
                  ),
                ),
              )
            : Gaps.empty,
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: callback,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ),
              child: Row(
                children: [
                  Image(
                    image: checked
                        ? Images.iconCheckboxSelected
                        : Images.iconCheckboxUnselected,
                    width: Dimens.gap_dp14,
                    height: Dimens.gap_dp14,
                    color: null == callback
                        ? Theme.of(context).colorScheme.primary.withOpacity(0.5)
                        : checked
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                  ),
                  ContactItem(data: data),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
