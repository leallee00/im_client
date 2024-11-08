import 'dart:io';

import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/modules/contacts/widgets/contact_item.dart';
import 'package:quliao/pages/chat_group/controller/group_list_controller.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group.dart';
import 'package:quliao/pages/chat_index/group_name_widget.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/contact_utils.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/screen.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/avatar.dart';

import '../../../pb/pb_msg/group/group.pb.dart';
import 'group_item.dart';
import 'groups_controller.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});

  @override
  State<StatefulWidget> createState() => _GroupListPageState();
}

class _GroupListPageState extends State<GroupsPage> {
  final _controller = Get.put(GroupsController());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      GroupListController.to.HandleMsg();
    });
  }

  @override
  void dispose() {
    super.dispose();
    Get.delete<GroupsController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('群聊列表'),
      ),
      body: Obx(
        () {
          final groupList = _controller.dataList;
          return AzListView(
            data: groupList,
            itemCount: groupList.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final data = groupList[index].groupInfo!;
              return ListTile(
                contentPadding: EdgeInsets.symmetric(
                  vertical: Dimens.gap_dp4,
                  horizontal: Dimens.gap_dp20,
                ),
                leading: UserAvatar(
                  size: Dimens.gap_dp40,
                  avatar: data.avatar,
                  name: data.name,
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
                        groupId: data.groupId.toInt(),
                        groupDetails: GroupDetailRsp(
                          name: data.name,
                          remark: data.remark,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                onTap: () async {
                  /// 进入群聊
                  toMainPage.value = toMainPage.value++;
                  if (Platform.isMacOS || Platform.isWindows) {
                    final conversation =
                        await ImController.to.getConversationById(
                      data.groupId.toInt(),
                    );
                    if (null == conversation) {
                      await ImController.to.insertEmpty(
                        data.groupId.toInt(),
                        dataMap: <String, dynamic>{
                          'chatId': data.groupId.toInt(),
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
                      ReloadChatListData(chatId: data.groupId.toInt()),
                    );
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext ctx) {
                          return ChatGroupPage(
                            groupId: data.groupId,
                            name: data.remark.isEmpty ? data.name : data.remark,
                          );
                        },
                      ),
                    );
                  }
                },
              );
            },
            susItemBuilder: (BuildContext context, int index) {
              final model = groupList[index];
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
      // body: Stack(
      //   children: [
      //     Obx(
      //       () {
      //         return Align(
      //           child: ListView.builder(
      //             controller: _controller.scrollController,
      //             itemBuilder: (BuildContext context, int index) {
      //               final contactIndex = index;
      //
      //               bool isGroupTitle = true;
      //               GroupInfo contact = _controller.groups[contactIndex];
      //               if (contactIndex >= 1 &&
      //                   contact.nameIndex ==
      //                       _controller.groups[contactIndex - 1].nameIndex) {
      //                 isGroupTitle = false;
      //               }
      //               LoggerManager().debug(
      //                 'index: $contactIndex _isGroupTitle: $isGroupTitle',
      //               );
      //               if (contact.name !=
      //                   _controller
      //                       .groups[_controller.groups.length - 1].name) {
      //                 return GroupItemWidget(
      //                   data: contact,
      //                   isGroupTitle: isGroupTitle,
      //                   callback: () async {
      //                     /// 进入群聊
      //                     toMainPage.value = toMainPage.value++;
      //                     if (Platform.isMacOS || Platform.isWindows) {
      //                       final conversation =
      //                           await ImController.to.getConversationById(
      //                         contact.groupId.toInt(),
      //                       );
      //                       if (null == conversation) {
      //                         await ImController.to.insertEmpty(
      //                           contact.groupId.toInt(),
      //                           dataMap: <String, dynamic>{
      //                             'chatId': contact.groupId.toInt(),
      //                             'chatType': CHAT_TYPE.GROUP.index,
      //                             'newMsgCount': 0,
      //                             'msgTips': '',
      //                             'msgSn': 0,
      //                             'msgTime': DateTime.now().toString(),
      //                             'createTime': DateTime.now().toString(),
      //                           },
      //                           conversationType: CHAT_TYPE.GROUP,
      //                         );
      //                       }
      //                       eventBus.fire(
      //                         ReloadChatListData(
      //                             chatId: contact.groupId.toInt()),
      //                       );
      //                       if (context.mounted) {
      //                         Navigator.pop(context);
      //                       }
      //                     } else {
      //                       Navigator.of(context).push(
      //                         MaterialPageRoute(
      //                           builder: (BuildContext ctx) {
      //                             return ChatGroupPage(
      //                               groupId: contact.groupId,
      //                               name: contact.remark.isEmpty
      //                                   ? contact.name
      //                                   : contact.remark,
      //                             );
      //                           },
      //                         ),
      //                       );
      //                     }
      //                   },
      //                 );
      //               } else {
      //                 return Column(
      //                   children: <Widget>[
      //                     GroupItemWidget(
      //                       data: contact,
      //                       isGroupTitle: isGroupTitle,
      //                       callback: () async {
      //                         /// 进入群聊
      //                         toMainPage.value = toMainPage.value++;
      //                         if (Platform.isMacOS || Platform.isWindows) {
      //                           final conversation =
      //                               await ImController.to.getConversationById(
      //                             contact.groupId.toInt(),
      //                           );
      //                           if (null == conversation) {
      //                             await ImController.to.insertEmpty(
      //                               contact.groupId.toInt(),
      //                               dataMap: <String, dynamic>{
      //                                 'chatId': contact.groupId.toInt(),
      //                                 'chatType': CHAT_TYPE.GROUP.index,
      //                                 'newMsgCount': 0,
      //                                 'msgTips': '',
      //                                 'msgSn': 0,
      //                                 'msgTime': DateTime.now().toString(),
      //                                 'createTime': DateTime.now().toString(),
      //                               },
      //                               conversationType: CHAT_TYPE.GROUP,
      //                             );
      //                           }
      //                           eventBus.fire(
      //                             ReloadChatListData(
      //                                 chatId: contact.groupId.toInt()),
      //                           );
      //                           if (context.mounted) {
      //                             Navigator.pop(context);
      //                           }
      //                         } else {
      //                           Navigator.of(context).push(
      //                             MaterialPageRoute(
      //                               builder: (BuildContext ctx) {
      //                                 return ChatGroupPage(
      //                                   groupId: contact.groupId,
      //                                   name: contact.remark.isEmpty
      //                                       ? contact.name
      //                                       : contact.remark,
      //                                 );
      //                               },
      //                             ),
      //                           );
      //                         }
      //                       },
      //                     ),
      //                     // new HorizontalLine(),
      //                     Container(
      //                       padding: const EdgeInsets.symmetric(vertical: 10.0),
      //                       child: Text(
      //                         '${_controller.groups.length}个群组',
      //                         style: TextStyle(
      //                           color: const Color.fromRGBO(115, 115, 115, 1.0),
      //                           fontSize: Dimens.font_sp14,
      //                         ),
      //                       ),
      //                     )
      //                   ],
      //                 );
      //               }
      //             },
      //             itemCount: _controller.groups.length,
      //           ),
      //         );
      //       },
      //     ),
      //     Positioned(
      //       width: 24.0,
      //       right: 0.0,
      //       top: 120.0,
      //       bottom: 120.0,
      //       child: Obx(
      //         () {
      //           return Container(
      //             color: _controller.indexBarBg.value,
      //             child: LayoutBuilder(builder: _buildIndexBar),
      //           );
      //         },
      //       ),
      //     ),
      //     Obx(
      //       () {
      //         final currentLetter = _controller.currentLetter.value ?? '';
      //         LoggerManager()
      //             .debug('currentLetter ============> $currentLetter');
      //         Widget child = Gaps.empty;
      //         if (currentLetter.isNotEmpty) {
      //           child = SizedBox(
      //             width: Screen.width,
      //             height: Screen.height,
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Container(
      //                   width: 64,
      //                   height: 64,
      //                   alignment: Alignment.center,
      //                   decoration: const BoxDecoration(
      //                     color: Colors.black45,
      //                     borderRadius: BorderRadius.all(
      //                       Radius.circular(32),
      //                     ),
      //                   ),
      //                   child: Text(
      //                     _controller.currentLetter.value ?? '',
      //                     style: TextStyle(
      //                       fontSize: Dimens.font_sp1 * 32,
      //                       color: Theme.of(context).colorScheme.surface,
      //                     ),
      //                   ),
      //                 ),
      //                 const Icon(Icons.arrow_right),
      //                 const SizedBox(width: 50),
      //               ],
      //             ),
      //           );
      //         }
      //         return Align(
      //           alignment: Alignment.centerRight,
      //           child: child,
      //         );
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}
