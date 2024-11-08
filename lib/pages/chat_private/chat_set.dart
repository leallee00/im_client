import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/flutter_chat_ui/flutter_chat_ui.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/modules/contacts/friend/invite/invite_friend_page.dart';
import 'package:quliao/modules/conversation/pages/chat/private/background/private_backgroud_page.dart';
import 'package:quliao/modules/conversation/pages/chat/search/search_message_page.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/pages/chat_group/group_create.dart';
import 'package:quliao/pages/chat_index/user_nickname_widget.dart';
import 'package:quliao/pages/friend/friend_info.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:quliao/widgets/toast.dart';

import '../../pub/pub-def.dart';
import 'flyer_chat/chat_test_controller.dart';
import 'package:quliao/widgets/avatar.dart' as avatar;
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart' as $pbfriend;

class ChatSet extends StatefulWidget {
  ChatSet({required this.finfo});

  final FriendInfo finfo;

  @override
  ChatSetState createState() => new ChatSetState();
}

class ChatSetState extends State<ChatSet> {
  // final imagePicker = ImagePicker();
  late ChatTestController c;

  @override
  void initState() {
    super.initState();
    c = ChatTestController.to(widget.finfo.friendId.toString());

    ever(c.friendInfo, (callback) {
      widget.finfo.blocked = callback.blocked;
    });

    eventBus.on<UpdatePrivateChatBackground>().listen((event) {
      final friendId = event.friendId;
      if (friendId == widget.finfo.friendId) {
        widget.finfo.fpMsgSet.backPic = event.data.imageUrl;
        widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
        FriendInfo info = c.friendInfo.value;
        info.fpMsgSet.backPic = event.data.imageUrl;
        c.friendInfo.value = info;
        setState(() {});
      }
    });

    eventBus.on<DelPrivateChatBackground>().listen((event) {
      final friendId = event.friendId;
      if (friendId == widget.finfo.friendId) {
        widget.finfo.fpMsgSet.backPic = '';
        widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
        FriendInfo info = c.friendInfo.value;
        info.fpMsgSet.backPic = '';
        c.friendInfo.value = info;
        setState(() {});
      }
    });
  }

  void _editTopStatus() async {
    final pinned = widget.finfo.top == 1;
    FriendInfo friendInfo = FriendInfo();
    friendInfo.friendId = widget.finfo.friendId;
    final friend = $pbfriend.Friend();
    friend.top = !pinned;

    await friendInfo.UpdateField('top', !pinned, friend);

    final pinnedValue = friend.top ? 1 : 0;
    await ImController.to.updateConversationPinnedStatus(
      widget.finfo.friendId,
      pinnedValue,
    );
    widget.finfo.top = pinnedValue;
    setState(() {});
  }

  void _editGroupDisturbStatus() async {
    /// 是否免打扰
    final noDisturb = widget.finfo.noDisturb == 1;
    await AppDatabase().friendInfoDao?.update(
      userId: widget.finfo.friendId,
      dataMap: <String, dynamic>{
        'noDisturb': !noDisturb,
      },
    );
    final noDisturbValue = noDisturb ? 0 : 1;
    await ImController.to.updateConversationDisturbStatus(
      widget.finfo.friendId,
      noDisturbValue,
    );
    widget.finfo.noDisturb = noDisturbValue;
    setState(() {});
  }

  Widget build(BuildContext context) {
    // var fpMsgSet = widget.finfo.userInfo.fpMsgSet;
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: CustomAppBar(
        title: const Text('聊天详情'),
      ),
      body: ListView(
        children: [
          // Divider(color: Colors.green),
          const Divider(
            color: Color(0x28808080),
            height: 0.5,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp10,
            ),
            color: Theme.of(context).colorScheme.surface,
            child: Row(
              children: [
                InkWell(
                  child: Container(
                    // height: 70,
                    // width: 50,
                    padding: EdgeInsets.fromLTRB(10, 2, 5, 2),
                    // margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        // Expanded(
                        //   flex: 1,
                        //   child: Image.network(element.avatar, fit: BoxFit.cover,),
                        // ),
                        // Expanded(
                        //   flex: 1,
                        //   child:  Text(element.name,),
                        // ),
                        // Container(
                        //   width: 50,
                        //   height: 50,
                        //   child: Image.network(
                        //     widget.finfo.userInfo.avatar,
                        //     fit: BoxFit.fitHeight,
                        //   ),
                        // ),
                        avatar.UserAvatar(
                          size: 50,
                          avatar: widget.finfo.userInfo.avatar,
                          name: widget.finfo.userInfo.nickName,
                        ),
                        // SizedBox(width: 10,),
                        Gaps.vGap4,
                        UserNicknameWidget(
                          friendInfo: widget.finfo,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    if (Platform.isMacOS || Platform.isWindows) {
                      MyAlertDialog().show(
                        child: FriendInfoV(finfo: widget.finfo),
                      );
                      return;
                    }
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return FriendInfoV(finfo: widget.finfo);
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(Dimens.gap_dp8),
                  dashPattern: const [6, 3],
                  color: Colors.black12,
                  child: SizedBox(
                    width: Dimens.gap_dp10 * 5,
                    height: Dimens.gap_dp10 * 5,
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        size: Dimens.gap_dp30,
                        color: Colors.black26,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext ctx) {
                              // return GroupCreate(
                              //   memberList: [widget.finfo],
                              //   groupId: 0,
                              // );
                              return InviteFriendPage(
                                memberList: [widget.finfo],
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Container(
              height: 10,
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: ListTile(
              title: const Text('查找聊天内容'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                if (Platform.isWindows || Platform.isMacOS) {
                  final value = await MyAlertDialog().show<String>(
                    child: SearchMessagePage(
                      conversationId: widget.finfo.friendId,
                    ),
                  );
                  if (null != value) {
                    eventBus.fire(ScrollToMessage(messageId: value));
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  }
                  return;
                }
                Navigator.of(context)
                    .push(
                  MaterialPageRoute(
                    builder: (context) => SearchMessagePage(
                      conversationId: widget.finfo.friendId,
                    ),
                  ),
                )
                    .then(
                  (value) {
                    LoggerManager().debug(
                      'chat details info value ======> $value',
                    );
                    eventBus.fire(ScrollToMessage(messageId: value));
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
          SizedBox(
            child: Container(
              height: 10,
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: ListTile(
              title: Text('消息免打扰'),
              onTap: () {
                _editGroupDisturbStatus();
              },
              trailing: Switch(
                value: widget.finfo.noDisturb == 1,
                onChanged: (value) {
                  _editGroupDisturbStatus();
                },
              ),
            ),
          ),

          const Divider(
            color: Color(0x28808080),
            height: 0.5,
          ),
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: ListTile(
              title: Text('置顶对话'),
              onTap: () {
                _editTopStatus();
              },
              trailing: Switch(
                value: widget.finfo.top == 1,
                onChanged: (value) {
                  _editTopStatus();
                },
              ),
            ),
          ),
          // Divider(
          //   color: Color(0x28808080),
          //   height: 0.5,
          // ),
          // ListTile(
          //   title: Text("提醒"),
          //   onTap: () {
          //     if (widget.finfo.fpMsgSet.attention == 1) {
          //       widget.finfo.fpMsgSet.attention = 0;
          //     } else {
          //       widget.finfo.fpMsgSet.attention = 1;
          //     }
          //     widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
          //     setState(() {});
          //   },
          //   trailing: Switch(
          //     value: widget.finfo.fpMsgSet.attention == 1,
          //     onChanged: (value) {
          //       widget.finfo.fpMsgSet.attention = value ? 1 : 0;
          //       widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
          //       setState(() {});
          //     },
          //   ),
          // ),
          SizedBox(
            child: Container(
              height: 10,
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: ListTile(
              title: const Text('设置当前聊天背景'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // pickerPic();
                Get.to(
                  PrivateBackgroudPage(friendInfo: widget.finfo),
                );
              },
            ),
          ),
          SizedBox(
            child: Container(
              height: 10,
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: ListTile(
              title: const Text('清空聊天记录'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                clearMsg();
              },
            ),
          ),
          SizedBox(
            child: Container(
              height: 10,
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: ListTile(
              title: const Text('投诉'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                DialogManager.showReportUserDialog(
                  context,
                  onConfirm: () {
                    final req = AddSuggestReq(
                      type: 0,
                      kind: 1,
                    );
                    GlobalRepository().report(
                      req: req,
                      callback: () {
                        ToastUtil.show('已投诉');
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void pickerPic() {
    // 拍照
    //   imagePicker.getImage(source: ImageSource.camera).then((value)async{
    //     if (value==null || value.path == null || value.path.length < 3){
    //       showToast("请选择图片");
    //       return ;
    //     }
    //
    //     widget.finfo.userInfo.widget.finfo.fpMsgSet.backPic = value.path;
    //     widget.finfo.userInfo.widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
    //     setState(() {
    //
    //     });
    //   });
    //
    // // 从相机选择
    if (WindowClient.instance.isPC()) {
      chooseLocalImage().then((value) async {
        if (value == null || value.path == null || value.path.length < 3) {
          showToast("请选择图片");
          return;
        }

        final imageUrl = await _uploadImage(value.path);
        if (null == imageUrl || imageUrl.isEmpty) {
          showToast('请重新上传');
          return;
        }

        widget.finfo.fpMsgSet.backPic = imageUrl;
        widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);
        FriendInfo info = c.friendInfo.value;
        info.fpMsgSet.backPic = imageUrl;
        c.friendInfo.value = info;
        setState(() {});
      });
    } else {
      ImagePicker().getImage(source: ImageSource.gallery).then((value) async {
        if (value == null || value.path.length < 3) {
          showToast("请选择图片");
          return;
        }

        final imageUrl = await _uploadImage(value.path);
        if (null == imageUrl || imageUrl.isEmpty) {
          showToast('请重新上传');
          return;
        }

        widget.finfo.fpMsgSet.backPic = imageUrl;
        widget.finfo.fpMsgSet.saveToDb(widget.finfo.userInfo.imId);

        FriendInfo info = c.friendInfo.value;
        info.fpMsgSet.backPic = imageUrl;
        c.friendInfo.value = info;
        setState(() {});
      });
    }
  }

  Future<String?> _uploadImage(String path) async {
    try {
      CustomToast.loading();
      final name = path.substring(path.lastIndexOf('/') + 1, path.length);
      final avatarUrl =
          await OssUtils.uploadFile(path, name: 'conversationBg/$name');
      CustomToast.dismiss();
      return avatarUrl;
    } catch (error) {
      CustomToast.dismiss();
      return null;
    }
  }

  void clearMsg() {
    DialogManager.showClearChatHistoryDialog(
      context,
      '您确定要清除与 ${widget.finfo.userInfo.nickName} 的所有聊天记录吗？',
      onConfirm: () async {
        await dbDelChat(
          widget.finfo.friendId,
          CHAT_TYPE.PRIVATE,
        );
        ImController.to.updateConversationMsgTips(
          widget.finfo.friendId,
          '',
        );
        ImConversationRepository().clearSessionMsg(
          getSessionId(widget.finfo.friendId),
          aimId: widget.finfo.friendId,
        );
        setState(() {
          Navigator.of(context).pop();
        });
      },
    );
  }
}
