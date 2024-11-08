import 'dart:io';

import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/widgets/state_widget.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/modules/contacts/contacts_page_controller.dart';
import 'package:quliao/modules/contacts/friend/add/add_friend_page.dart';
import 'package:quliao/modules/contacts/friend/new/new_friend_page.dart';
import 'package:quliao/modules/contacts/label/label_page.dart';
import 'package:quliao/modules/contacts/pages/groups_page.dart';
import 'package:quliao/modules/contacts/widgets/contact_item.dart';
import 'package:quliao/pages/chat_group/controller/group_list_controller.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pages/friend_list/contact_item.dart';
import 'package:quliao/pages/home/home_page.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/utils/contact_utils.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/app_bar.dart';

/// 通讯录
class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<StatefulWidget> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final _controller = Get.put(
    ContactsPageController(),
    tag: 'contacts_page',
  );

  @override
  void initState() {
    super.initState();
    Get.put(GroupListController());
    GroupListController.to.HandleMsg();
  }

  @override
  void dispose() {
    super.dispose();
    Get.delete<ContactsPageController>(
      tag: 'contacts_page',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: false,
        title: Text(
          '通讯录',
          style: TextStyle(
            fontSize: Dimens.font_sp18,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        actionPadding: EdgeInsets.zero,
        actions: [
          GetBuilder<GlobalController>(
            init: GlobalController.to,
            builder: (controller) {
              return controller.systemConfig.value?.canAddFriend ?? false
                  ? IconButton(
                      icon: Icon(
                        Icons.person_add,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      onPressed: () {
                        if (Dimens.isDesktop()) {
                          MyAlertDialog().show(child: AddFriendPage());
                          return;
                        }
                        // 打开添加朋友页面
                        Navigator.pushNamed(context, 'AddFriend');
                      },
                    )
                  : Gaps.empty;
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.person_add,
              color: Colors.black54,
            ),
            splashRadius: Dimens.gap_dp20,
            onPressed: () {
              if (Dimens.isDesktop()) {
                MyAlertDialog().show(
                  child: const AddFriendPage(),
                );
                return;
              }

              /// 打开添加朋友页面
              Navigator.pushNamed(context, 'AddFriend');
            },
          )
        ],
      ),
      body: GetBuilder<ContactsPageController>(
        init: _controller,
        builder: (controller) {
          final contactList = controller.dataList;
          return StateWidget(
            state: controller.loadState.value,
            child: AzListView(
              data: contactList,
              itemCount: contactList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final model = contactList[index];
                if (model.id == '1') {
                  return ContactItemWidget(
                    data: FriendInfo(),
                    type: 1,
                    callback: () {
                      /// 新的朋友
                      if (Dimens.isDesktop()) {
                        MyAlertDialog().show(
                          child: const NewFriendPage(),
                        );
                        return;
                      }
                      Get.to(const NewFriendPage());
                    },
                  );
                } else if (model.id == '2') {
                  return ContactItemWidget(
                    data: FriendInfo(),
                    type: 2,
                    callback: () {
                      /// 群聊
                      if (Dimens.isDesktop()) {
                        MyAlertDialog().show(
                          child: const GroupsPage(),
                        );
                        return;
                      }
                      Get.to(const GroupsPage());
                    },
                  );
                } else if (model.id == '3') {
                  return ContactItemWidget(
                    data: FriendInfo(),
                    type: 3,
                    callback: () {
                      /// 标签
                      if (Dimens.isDesktop()) {
                        MyAlertDialog().show(
                          child: const LabelPage(),
                        );
                        return;
                      }
                      Get.to(const LabelPage());
                    },
                  );
                }
                final contact = model.data!;
                return ContactItem(
                  data: model.data!,
                  callback: () async {
                    toMainPage.value = toMainPage.value++;
                    if (Platform.isMacOS || Platform.isWindows) {
                      final conversation =
                          await ImController.to.getConversationById(
                        contact.friendId,
                      );
                      if (null == conversation) {
                        await ImController.to.insertEmpty(
                          contact.friendId,
                          dataMap: <String, dynamic>{
                            'chatId': contact.friendId,
                            'chatType': CHAT_TYPE.PRIVATE.index,
                            'newMsgCount': 0,
                            'msgTips': '',
                            'msgSn': 0,
                            'msgTime': DateTime.now().toString(),
                            'createTime': DateTime.now().toString(),
                          },
                        );
                      }
                      eventBus.fire(
                        ReloadChatListData(
                          chatId: contact.friendId,
                        ),
                      );
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext ctx) {
                            return ChatPage(finfo: contact);
                          },
                        ),
                      );
                    }
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
      //               if (index == 0) {
      //                 return ContactItemWidget(
      //                   data: FriendInfo(),
      //                   type: 1,
      //                   callback: () {
      //                     /// 新的朋友
      //                     if (Dimens.isDesktop()) {
      //                       MyAlertDialog().show(
      //                         child: const NewFriendPage(),
      //                       );
      //                       return;
      //                     }
      //                     Get.to(const NewFriendPage());
      //                   },
      //                 );
      //               } else if (index == 1) {
      //                 return ContactItemWidget(
      //                   data: FriendInfo(),
      //                   type: 2,
      //                   callback: () {
      //                     /// 群聊
      //                     if (Dimens.isDesktop()) {
      //                       MyAlertDialog().show(
      //                         child: const GroupsPage(),
      //                       );
      //                       return;
      //                     }
      //                     // Navigator.pushNamed(context, 'GroupListPage');
      //                     Navigator.of(context)
      //                         .push(MaterialPageRoute(builder: (context) {
      //                       return GroupsPage();
      //                     }));
      //                   },
      //                 );
      //               } else if (index == 2) {
      //                 return ContactItemWidget(
      //                   data: FriendInfo(),
      //                   type: 3,
      //                   callback: () {
      //                     /// 创建标签
      //                     if (Dimens.isDesktop()) {
      //                       MyAlertDialog().show(
      //                         child: const LabelPage(),
      //                       );
      //                       return;
      //                     }
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                         builder: (context) {
      //                           return const LabelPage();
      //                         },
      //                       ),
      //                     );
      //                   },
      //                 );
      //               } else {
      //                 final contactIndex = index - 3;
      //
      //                 bool isGroupTitle = true;
      //                 FriendInfo contact = _controller.contacts[contactIndex];
      //                 if (contactIndex >= 1 &&
      //                     contact.nameIndex ==
      //                         _controller
      //                             .contacts[contactIndex - 1].nameIndex) {
      //                   isGroupTitle = false;
      //                 }
      //                 // LoggerManager().debug(
      //                 //   'index: $contactIndex _isGroupTitle: $isGroupTitle',
      //                 // );
      //                 if (contact.nickname !=
      //                     _controller.contacts[_controller.contacts.length - 1]
      //                         .nickname) {
      //                   return ContactItemWidget(
      //                     data: contact,
      //                     isGroupTitle: isGroupTitle,
      //                     callback: () async {
      //                       toMainPage.value = toMainPage.value++;
      //                       if (Platform.isMacOS || Platform.isWindows) {
      //                         final conversation =
      //                             await ImController.to.getConversationById(
      //                           contact.friendId,
      //                         );
      //                         if (null == conversation) {
      //                           await ImController.to.insertEmpty(
      //                             contact.friendId,
      //                             dataMap: <String, dynamic>{
      //                               'chatId': contact.friendId,
      //                               'chatType': CHAT_TYPE.PRIVATE.index,
      //                               'newMsgCount': 0,
      //                               'msgTips': '',
      //                               'msgSn': 0,
      //                               'msgTime': DateTime.now().toString(),
      //                               'createTime': DateTime.now().toString(),
      //                             },
      //                           );
      //                         }
      //                         eventBus.fire(
      //                           ReloadChatListData(
      //                             chatId: contact.friendId,
      //                           ),
      //                         );
      //                       } else {
      //                         Navigator.of(context).push(
      //                           MaterialPageRoute(
      //                             builder: (BuildContext ctx) {
      //                               return ChatPage(finfo: contact);
      //                             },
      //                           ),
      //                         );
      //                       }
      //                     },
      //                   );
      //                 } else {
      //                   return Column(
      //                     children: <Widget>[
      //                       ContactItemWidget(
      //                         data: contact,
      //                         isGroupTitle: isGroupTitle,
      //                         callback: () async {
      //                           toMainPage.value = toMainPage.value++;
      //                           if (Platform.isMacOS || Platform.isWindows) {
      //                             final conversation =
      //                                 await ImController.to.getConversationById(
      //                               contact.friendId,
      //                             );
      //                             if (null == conversation) {
      //                               await ImController.to.insertEmpty(
      //                                 contact.friendId,
      //                                 dataMap: <String, dynamic>{
      //                                   'chatId': contact.friendId,
      //                                   'chatType': CHAT_TYPE.PRIVATE.index,
      //                                   'newMsgCount': 0,
      //                                   'msgTips': '',
      //                                   'msgSn': 0,
      //                                   'msgTime': DateTime.now().toString(),
      //                                   'createTime': DateTime.now().toString(),
      //                                 },
      //                               );
      //                             }
      //                             eventBus.fire(
      //                               ReloadChatListData(
      //                                 chatId: contact.friendId,
      //                               ),
      //                             );
      //                           } else {
      //                             Navigator.of(context).push(
      //                               MaterialPageRoute(
      //                                 builder: (BuildContext ctx) {
      //                                   return ChatPage(finfo: contact);
      //                                 },
      //                               ),
      //                             );
      //                           }
      //                         },
      //                       ),
      //                       // new HorizontalLine(),
      //                       Container(
      //                         padding:
      //                             const EdgeInsets.symmetric(vertical: 10.0),
      //                         child: Text(
      //                           '${_controller.contacts.length}位联系人',
      //                           style: TextStyle(
      //                             color:
      //                                 const Color.fromRGBO(115, 115, 115, 1.0),
      //                             fontSize: Dimens.font_sp14,
      //                           ),
      //                         ),
      //                       )
      //                     ],
      //                   );
      //                 }
      //               }
      //             },
      //             itemCount: _controller.contacts.length + 3,
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
      //         // LoggerManager()
      //         //     .debug('currentLetter ============> $currentLetter');
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
