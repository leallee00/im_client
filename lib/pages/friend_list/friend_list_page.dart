import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/dao/chat_list.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/pages/chat_index/msg_badger_widget.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pages/friend_list/contact_item.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/pub/pub-def.dart';
import 'package:quliao/widgets/empty.dart';

import '../../event/event_bus.dart';
import '../../event/event_modul.dart';
import '../../models/user/friendInfo.dart';
import '../../mywedgits/badger/badger.dart';
import '../chat_group/controller/group_list_controller.dart';
import '../chat_group/group_list.dart';
import '../community/member/new_friend.dart';
import '../friend/add_friend.dart';
import '../home/home_page.dart';
import '../windows/comm_dialog.dart';

class FriendListPage extends StatefulWidget {
  static const name = "FriendListPageState";

  const FriendListPage({Key? key}) : super(key: key);

  @override
  FriendListPageStateState createState() => FriendListPageStateState();
}

class FriendListPageStateState extends State<FriendListPage>
    with AutomaticKeepAliveClientMixin {
  late StreamSubscription<FriendDbChangeNotify> msgStreamSub;
  late StreamSubscription<DeleteFriendEvent> deleteFriendStreamSub;

  @override
  void initState() {
    super.initState();
    Get.put(GroupListController());
    updataListData(isFirst: true);
    msgStreamSub = eventBus.on<FriendDbChangeNotify>().listen((event) {
      // 收到这个消息后直接刷新页面
      updataListData();
    });
    deleteFriendStreamSub =
        eventBus.on<DeleteFriendEvent>().listen((event) async {
          if (null != event.userId) {
            lfInfo.removeWhere((element) => element.friendId == event.userId);
            if (context.mounted) {
              setState(() {

              });
            }
          }
    });
  }

  @override
  void dispose() {
    super.dispose();
    msgStreamSub.cancel();
    deleteFriendStreamSub.cancel();
  }

  @override
  void reassemble() {
    log("life reassemble --------------------");
    super.reassemble();
    updataListData();
  }

  void updataListData({bool isFirst = false}) {
    GetFriends(isFirst: isFirst).then((value) {
      log("GetFriends:${value}");
      GroupListController.to.HandleMsg();
      if (value.isNotEmpty) {
        lfInfo = value;
        if (mounted) {
          setState(() {});
        }
      }
    });
  }

  /// 消息数量
  int msgCount = 0;
  int limit = 100;
  int offSet = 0;
  List<FriendInfo> lfInfo = <FriendInfo>[];

  var textSearch = "";

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Widget listBuilder(BuildContext context, int index) {
      var item = lfInfo[index];
      if (textSearch.isNotEmpty &&
          (!item.userInfo.nickName.contains(textSearch) &&
              !item.userInfo.imId.toString().contains(textSearch))) {
        return Container();
      }
      return ContactItem(
        data: item,
        callback: () async {
          toMainPage.value = toMainPage.value++;
          if (Platform.isMacOS || Platform.isWindows) {
            final conversation = await ImController.to.getConversationById(
              item.friendId,
            );
            if (null == conversation) {
              await ImController.to.insertEmpty(
                item.friendId,
                dataMap: <String, dynamic>{
                  'chatId': item.friendId,
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
              ReloadChatListData(chatId: item.friendId),
            );
          } else {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext ctx) {
                  return ChatPage(
                    finfo: item,
                  );
                },
              ),
            );
          }
        },
      );
    }

    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              '通讯录(${lfInfo.length + GroupListController.to.lGroupList.length})',
              style: const TextStyle(color: Colors.black),
            ),
            actions: [
              GetBuilder<GlobalController>(
                init: GlobalController.to,
                builder: (controller) {
                  return controller.systemConfig.value?.canAddFriend ?? false
                      ? IconButton(
                          icon: const Icon(
                            Icons.person_add,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            if (Dimens.isDesktop()) {
                              MyAlertDialog().show(child: AddFriend());
                              return;
                            }
                            // 打开添加朋友页面
                            Navigator.pushNamed(context, "AddFriend");
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
                onPressed: () {
                  if (Dimens.isDesktop()) {
                    MyAlertDialog().show(child: AddFriend());
                    return;
                  }
                  // 打开添加朋友页面
                  Navigator.pushNamed(context, "AddFriend");
                },
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                flex: 0,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "请输入用户昵称",
                    hintStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      size: Dimens.gap_dp20,
                    ),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    textSearch = value;
                    setState(() {});
                  },
                ),
              ),
              Container(
                height: Dimens.gap_dp1 / 2,
                color: Theme.of(context).dividerColor,
              ),
              if (textSearch.isEmpty)
                Expanded(
                  flex: 0,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Material(
                        color: Theme.of(context).colorScheme.surface,
                        child: InkWell(
                          onTap: () {
                            if (Dimens.isDesktop()) {
                              MyAlertDialog().show(child: NewFriend());
                              return;
                            }
                            Navigator.pushNamed(context, "NewFriend");
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimens.gap_dp20,
                              vertical: Dimens.gap_dp10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: Dimens.gap_dp1 * 36,
                                  height: Dimens.gap_dp1 * 36,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        BorderRadius.circular(Dimens.gap_dp4),
                                  ),
                                  child: Icon(
                                    Icons.group_add,
                                    color: Colors.white,
                                    size: Dimens.gap_dp22,
                                  ),
                                ),
                                Gaps.hGap14,
                                const Expanded(
                                  child: Text('新的朋友'),
                                ),
                                const MsgBadgerWidget(
                                  type: ENMsgCountType.friendList,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: Dimens.gap_dp1 / 2,
                        color: Theme.of(context).dividerColor,
                        margin: EdgeInsets.only(left: Dimens.gap_dp10 * 7),
                      ),
                      Material(
                        color: Theme.of(context).colorScheme.surface,
                        child: InkWell(
                          onTap: () {
                            if (Dimens.isDesktop()) {
                              MyAlertDialog()
                                  .show(child: const GroupListPage());
                              return;
                            }
                            Navigator.pushNamed(context, "GroupListPage");
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimens.gap_dp20,
                              vertical: Dimens.gap_dp10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: Dimens.gap_dp1 * 36,
                                  height: Dimens.gap_dp1 * 36,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius:
                                        BorderRadius.circular(Dimens.gap_dp4),
                                  ),
                                  child: Icon(
                                    Icons.question_answer,
                                    color: Colors.white,
                                    size: Dimens.gap_dp22,
                                  ),
                                ),
                                Gaps.hGap14,
                                Expanded(
                                  child: Text(
                                      '群(${GroupListController.to.lGroupList.length})'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // const Divider(color: Colors.grey),
                      Container(
                        height: Dimens.gap_dp1 / 2,
                        color: Theme.of(context).dividerColor,
                        margin: EdgeInsets.only(left: Dimens.gap_dp10 * 7),
                      ),
                    ],
                  ),
                ),
              Expanded(
                flex: 1,
                child: lfInfo.isEmpty
                    ? const Center(child: Empty())
                    : ListView.separated(
                        itemCount: lfInfo.length,
                        itemBuilder: listBuilder,
                        //分割器构造器
                        separatorBuilder: (BuildContext context, int index) {
                          return Container(
                            height: Dimens.gap_dp1 / 2,
                            color: Theme.of(context).dividerColor,
                            margin: EdgeInsets.only(left: Dimens.gap_dp10 * 7),
                          );
                        },
                      ),
              )
            ],
          ));
    });
  }

  @override
  bool get wantKeepAlive => true;
}
