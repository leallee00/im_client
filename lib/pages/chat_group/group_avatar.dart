import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/conversation/repository/im_conversation_repository.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/widgets/toast.dart';

class GroupAvatarPage extends StatefulWidget {
  final GroupModel ginfo;

  const GroupAvatarPage({super.key, required this.ginfo});

  @override
  GroupAvatarPageState createState() => GroupAvatarPageState();
}

class GroupAvatarPageState extends State<GroupAvatarPage> {
  @override
  Widget build(BuildContext context) {
    List<PopupMenuEntry<int>> actionsMenu = [];
    if (WindowClient.instance.isPC()) {
      actionsMenu = [
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Icon(Icons.chat_bubble),
              Text("从本地上传"),
            ],
          ), // Text('发起群聊'),
        ),
      ];
    } else {
      actionsMenu = [
        PopupMenuItem<int>(
          value: 0,
          child: Row(
            children: [
              Icon(Icons.chat_bubble),
              Text("拍照"),
            ],
          ), // Text('发起群聊'),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Icon(Icons.chat_bubble),
              Text("从手机相册选择"),
            ],
          ), // Text('发起群聊'),
        ),
      ];
    }

    actionsMenu = [
      ...actionsMenu,
      ...<PopupMenuEntry<int>>[
        PopupMenuItem<int>(
          value: 2,
          child: Row(
            children: [
              Icon(Icons.chat_bubble),
              Text("保存图片"),
            ],
          ), // Text('发起群聊'),
        ),
        PopupMenuItem<int>(
          value: 3,
          child: Row(
            children: [
              Icon(Icons.chat_bubble),
              Text("取消"),
            ],
          ), // Text('发起群聊'),
        ),
      ],
    ];

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "群头像",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        actions: [
          PopupMenuButton<int>(
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            onSelected: (int value) async {
              log("select menu value:$value");
              int showValue = value;
              if (WindowClient.instance.isPC()) {
                showValue += 1;
              }
              switch (showValue) {
                case 0:
                  // 拍照
                  ImagePicker()
                      .pickImage(source: ImageSource.camera)
                      .then((valuePath) async {
                    if (valuePath == null || valuePath.path == null) {
                      showToast("请选择图片");
                      return;
                    }

                    int len = await valuePath.length();
                    if (len < 3) {
                      showToast("请选择图片");
                      return;
                    }

                    CustomToast.loading();

                    final path = valuePath.path;
                    final name =
                        path.substring(path.lastIndexOf("/") + 1, path.length);

                    final avatarUrl = await OssUtils.uploadFile(
                      path,
                      name: 'group_avatar/$name',
                    );

                    CustomToast.dismiss();

                    if (null != avatarUrl) {
                      widget.ginfo.avatar = avatarUrl;
                      final result =
                          await ImConversationRepository().updateGroupAvatar(
                        widget.ginfo.groupId,
                        avatarUrl,
                      );
                      if (result) {
                        widget.ginfo.avatar = avatarUrl;
                        if (result) {
                          showToast("群头像更新成功");
                          final groupModel =
                              await AppDatabase().objectBox.getGroup(
                                    widget.ginfo.groupId,
                                  );
                          if (null != groupModel) {
                            groupModel.avatar = avatarUrl;
                            AppDatabase().objectBox.addGroup(groupModel);
                          }
                          final conversationModel =
                              await AppDatabase().objectBox.getConversation(
                                    widget.ginfo.groupId,
                                  );
                          if (null != conversationModel) {
                            conversationModel.groupInfo?.avatar = avatarUrl;
                            AppDatabase()
                                .objectBox
                                .addConversation(conversationModel);
                            ImController.to.conversationListener
                                ?.onConversationUpdated(conversationModel);
                          }
                        } else {
                          showToast("群头像更新失败");
                        }
                        setState(() {});
                      }
                      // widget.ginfo.updateAvatarAction(avatarUrl).then((value) {
                      //   if (value) {
                      //     showToast("群头像更新成功");
                      //   } else {
                      //     showToast("群头像更新失败");
                      //   }
                      //   setState(() {});
                      // });
                    } else {
                      showToast('头像上传失败，请重试');
                    }
                  });

                  break;
                case 1:
                  {
                    XFile? valuePath;
                    if (WindowClient.instance.isPC()) {
                      valuePath = await chooseLocalImage();
                    } else {}
                    // 从相机选择
                    valuePath = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);

                    if (valuePath == null ||
                        valuePath.path == null ||
                        valuePath.path.length < 3) {
                      showToast("请选择图片");
                      return;
                    }

                    CustomToast.loading();

                    final path = valuePath.path;
                    final name =
                        path.substring(path.lastIndexOf("/") + 1, path.length);

                    final avatarUrl = await OssUtils.uploadFile(
                      path,
                      name: 'group_avatar/$name',
                    );

                    CustomToast.dismiss();

                    if (null != avatarUrl) {
                      widget.ginfo.avatar = avatarUrl;
                      final result =
                          await ImConversationRepository().updateGroupAvatar(
                        widget.ginfo.groupId,
                        avatarUrl,
                      );
                      if (result) {
                        widget.ginfo.avatar = avatarUrl;
                        if (result) {
                          showToast("群头像更新成功");
                          final groupModel =
                              await AppDatabase().objectBox.getGroup(
                                    widget.ginfo.groupId,
                                  );
                          if (null != groupModel) {
                            groupModel.avatar = avatarUrl;
                            AppDatabase().objectBox.addGroup(groupModel);
                          }
                          final conversationModel =
                              await AppDatabase().objectBox.getConversation(
                                    widget.ginfo.groupId,
                                  );
                          if (null != conversationModel) {
                            conversationModel.groupInfo?.avatar = avatarUrl;
                            AppDatabase()
                                .objectBox
                                .addConversation(conversationModel);
                            ImController.to.conversationListener
                                ?.onConversationUpdated(conversationModel);
                          }
                        } else {
                          showToast("群头像更新失败");
                        }
                        setState(() {});
                      }
                    } else {
                      showToast('头像上传失败，请重试');
                    }
                  }
                  break;
                case 2:
                  // 保存图片
                  break;
                case 3:
                  // 取消
                  break;
                default:
                  break;
              }
            },
            itemBuilder: (context) {
              return actionsMenu;
            },
          )
        ],
      ),
      // backgroundColor: Colors.white10,
      body: Container(
        alignment: Alignment.center,
        child: avatar(
          widget.ginfo.avatar ?? '',
          (MediaQuery.of(context).size.width) - 40,
          (MediaQuery.of(context).size.width) - 40,
          nick: widget.ginfo.name ?? '',
        ),
      ),
    );
  }
}
