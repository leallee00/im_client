import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/global/models/oss_config.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/widgets/toast.dart';
import 'dart:io';

class MyAvatar extends StatefulWidget {
  MyAvatar({super.key});

  @override
  MyAvatarState createState() => new MyAvatarState();
}

class MyAvatarState extends State<MyAvatar> {
  final GlobalRepository _repository = GlobalRepository();

  @override
  void initState() {
    super.initState();
  }

  Future<void> _uploadAvatar(String path) async {
    try {
      CustomToast.loading();
      // final response = await _repository.uploadFile(
      //   AppUserInfo().imId,
      //   path,
      //   ossDir: 'app-avatar',
      //   bucket: Config.ossBucketName,
      // );
      final name = path.substring(path.lastIndexOf("/") + 1, path.length);
      final avatarUrl = await OssUtils.uploadFile(path, name: 'avatar/$name');
      CustomToast.dismiss();
      if (avatarUrl?.isNotEmpty ?? false) {
        var userInfo = UserInfo()..avatar = avatarUrl!;
        AppUserInfo.instance.ModifyField(userInfo, "avatar").then((value) {
          setState(() {});
        });
      } else {
        showToast('图片上传失败，请重试');
      }
    } catch (error) {
      CustomToast.dismiss();
      showToast('图片上传失败，请重试');
    }
  }

  Future<void> _chooseDeskImage() async {
    XFile? imageFile = await chooseLocalImage();
    if (null == imageFile) {
      showToast('图片无效，请重新选择');
      return;
    }
    CustomToast.loading();
    try {
      final String? fileUrl = await OssUtils.uploadFile(
        imageFile.path,
        name: 'avatar/${imageFile.name}',
      );

      CustomToast.dismiss();

      if (TextUtil.isEmpty(fileUrl)) {
        showToast('头像上传失败，请重新选择并上传');
      } else {
        var userInfo = UserInfo()..avatar = fileUrl!;
        AppUserInfo.instance.ModifyField(userInfo, "avatar").then((value) {
          setState(() {});
        });
      }
    } catch (error) {
      CustomToast.dismiss();
      showToast('头像上传失败，请重新选择并上传');
    }
  }

  // final imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("个人头像"),
          actions: [
            (Platform.isMacOS || Platform.isWindows)
                ? PopupMenuButton(
                    icon: Icon(Icons.add),
                    onSelected: (value) {
                      _chooseDeskImage();
                    },
                    itemBuilder: (context) {
                      return <PopupMenuEntry<int>>[
                        PopupMenuItem<int>(
                          value: 0,
                          child: Row(
                            children: [
                              Icon(
                                Icons.chat_bubble,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              Text("从本地选择"),
                            ],
                          ), // Text('发起群聊'),
                        ),
                      ];
                    })
                : PopupMenuButton<int>(
                    icon: Icon(Icons.add),
                    onSelected: (int value) async {
                      log("select menu value:$value");
                      switch (value) {
                        case 0:
                          // 拍照
                          XFile? valuePath;
                          if (WindowClient.instance.isPC()) {
                            valuePath = await chooseLocalImage();
                          } else {
                            valuePath = await ImagePicker()
                                .pickImage(source: ImageSource.camera);
                          }
                          if (valuePath == null || valuePath.path == null) {
                            showToast("请选择图片");
                            return;
                          }

                          int len = await valuePath.length();
                          if (len < 3) {
                            showToast("请选择图片");
                            return;
                          }

                          _uploadAvatar(valuePath.path);
                          break;
                        case 1:
                          // 从相机选择
                          ImagePicker()
                              .pickImage(source: ImageSource.gallery)
                              .then((valuePath) async {
                            if (valuePath == null ||
                                valuePath.path == null ||
                                valuePath.path.length < 3) {
                              showToast("请选择图片");
                              return;
                            }

                            _uploadAvatar(valuePath.path);
                          });
                          break;
                        case 2:
                          // 重看上一张头像
                          break;
                        case 3:
                          // 保存图片
                          break;
                        case 4:
                          // 取消
                          break;
                        default:
                          break;
                      }
                    },
                    itemBuilder: (context) {
                      return <PopupMenuEntry<int>>[
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
                        PopupMenuItem<int>(
                          value: 2,
                          child: Row(
                            children: [
                              Icon(Icons.chat_bubble),
                              Text("查看上一张头像"),
                            ],
                          ), // Text('发起群聊'),
                        ),
                        PopupMenuItem<int>(
                          value: 3,
                          child: Row(
                            children: [
                              Icon(Icons.chat_bubble),
                              Text("保存图片"),
                            ],
                          ), // Text('发起群聊'),
                        ),
                        PopupMenuItem<int>(
                          value: 4,
                          child: Row(
                            children: [
                              Icon(Icons.chat_bubble),
                              Text("取消"),
                            ],
                          ), // Text('发起群聊'),
                        ),
                      ];
                    },
                  )
          ],
        ),
        // backgroundColor: Colors.white10,
        body: Container(
          alignment: Alignment.center,
          child: AppUserInfo.instance.appAvatar != ""
              ? Image.network(AppUserInfo.instance.appAvatar)
              : GestureDetector(
                  onTap: () {
                    ImagePicker()
                        .pickImage(source: ImageSource.gallery)
                        .then((valuePath) async {
                      if (valuePath == null ||
                          valuePath.path.length < 3) {
                        showToast("请选择图片");
                        return;
                      }

                      _uploadAvatar(valuePath.path);
                    });
                  },
                  child: SizedBox(
                    width: 120.w,
                    height: 120.h,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
        ));
  }
}
