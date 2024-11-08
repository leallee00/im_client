import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';

class PicPicker extends StatefulWidget {
  PicPicker({super.key});
  @override
  PicPickerState createState() => new PicPickerState();
}

class PicPickerState extends State<PicPicker> {
  @override
  void initState() {}
  // final imagePicker = ImagePicker();

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
          centerTitle: true,
          title: Text("个人头像"),
          actions: [
            PopupMenuButton<int>(
              icon: Icon(Icons.add),
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
                        .getImage(source: ImageSource.camera)
                        .then((value) async {
                      if (value == null ||
                          value.path == null ||
                          value.path.length < 3) {
                        showToast("请选择图片");
                        return;
                      }

                      // 上传图片
                      var result = await UpLoadImageWithLocalPath(
                          value.path, "app-avatar");
                      log("get image of path ${value.path}");
                      if (result.statusCode != 200) {
                        showToast("图片上传失败！！${result.statusCode}");
                        return;
                      }

                      var userInfo = UserInfo()
                        ..avatar = result.data["data"]["url"];
                      AppUserInfo.instance
                          .ModifyField(userInfo, "avatar")
                          .then((value) {
                        setState(() {});
                      });
                    });

                    break;
                  case 1:
                    // 从相机选择
                    XFile? value;
                    if (WindowClient.instance.isPC()) {
                      value = await chooseLocalImage();
                    } else {}
                    // 从相机选择
                    value = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);

                    if (value == null ||
                        value.path == null ||
                        value.path.length < 3) {
                      showToast("请选择图片");
                      return;
                    }

                    // 上传图片
                    var result = await UpLoadImageWithLocalPath(
                        value.path, "app-avatar");
                    log("get image of path ${value.path}");
                    if (result.statusCode != 200) {
                      showToast("图片上传失败！！${result.statusCode}");
                      return;
                    }

                    var userInfo = UserInfo()
                      ..avatar = result.data["data"]["url"];
                    AppUserInfo.instance.ModifyField(userInfo, "avatar");
                    setState(() {});
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
                return actionsMenu;
              },
            )
          ],
        ),
        // backgroundColor: Colors.white10,
        body: Container(
          alignment: Alignment.center,
          child: AppUserInfo.instance.appAvatar != ""
              ? Image.network(AppUserInfo.instance.appAvatar)
              : Text("还没有上传头像"),
        ));
  }
}
