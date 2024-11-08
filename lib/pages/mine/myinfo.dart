import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/pages/edit/edit_avatar_page.dart';
import 'package:quliao/modules/mine/pages/edit/edit_nickname_page.dart';
import 'package:quliao/modules/mine/pages/edit/edit_userinfo_controller.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/mine/avatar.dart';
import 'package:quliao/pages/mine/click_item.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart' as $serviceName;
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/avatar.dart';
import 'package:quliao/widgets/custom_bottom_sheet.dart';

import '../../config/dimens.dart';
import 'edit_password_page.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  MyInfoState createState() => new MyInfoState();
}

class MyInfoState extends State<MyInfo> {
  final genderList = ['男', '女'];
  final _controller = Get.put(EditUserInfoController());

  @override
  void initState() {
    super.initState();
    _fetchUserInfo();
  }

  Future<void> _fetchUserInfo() async {
    await $locUinfo.forceFetchUserInfo(AppUserInfo.instance.imId.toInt());
    setState(() {});
  }

  @override
  void reassemble() {
    super.reassemble();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('个人信息'),
      ),
      backgroundColor: const Color(0xFFF4F4F4),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 10),
          ClickItem(
            title: '账号',
            trailing: Text(AppUserInfo.instance.userName),
          ),
          ClickItem(
            title: '头像',
            height: Dimens.gap_dp10 * 7,
            trailing: UserAvatar(
              avatar: AppUserInfo.instance.appAvatar,
              name: AppUserInfo().nickName,
              size: Dimens.gap_dp50,
            ),
            onTap: () async {
              // 进入编辑头像页面
              var result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const EditAvatarPage();
                  },
                ),
              );
              setState(() {});
            },
          ),
          ClickItem(
            title: 'IMID',
            trailing: Text(
              "${AppUserInfo.instance.imId}",
              style: const TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          ClickItem(
            title: '昵称',
            trailing: Text(AppUserInfo.instance.nickName),
            onTap: () async {
              final value = await Navigator.push(
                context,
                MaterialPageRoute<String>(
                  builder: (context) {
                    return const EditNicknamePage();
                  },
                ),
              );
              if (null != value && value.isNotEmpty) {
                setState(() {});
              }
            },
          ),
          ClickItem(
            title: '性别',
            trailing: Text(
              AppUserInfo.instance.gender == 1 ? '男' : '女',
            ),
            onTap: () async {
              final value = AppUserInfo.instance.gender == 1 ? '男' : '女';
              final result = await CustomBottomSheet.showPicker<String>(
                context: context,
                items: genderList,
                title: '修改性别',
                selectedIndex: genderList.indexOf(value),
                builder: (value) => Text(value),
              );
              if (null != result && value != result) {
                await _controller.editUserGender(result, (value) {
                  setState(() {});
                });
              }
            },
          ),
          if (GlobalController.to.systemConfig.value?.hideUserSign == false)
            ClickItem(
              title: '签名',
              trailing: Text(AppUserInfo.instance.sign),
              onTap: () {
                // 修改个性签名
                var tctl = TextEditingController();
                tctl.text = AppUserInfo.instance.sign;
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      // title: Text('Tips'),
                      content: SizedBox(
                          width: 400,
                          height: 40,
                          child: Container(
                            // color: Colors.white24,
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.white, width: 0.5),
                                color: Colors.white24,
                                borderRadius:
                                    new BorderRadius.circular((10.0))),

                            ///距离顶部
                            margin: EdgeInsets.only(top: 1),
                            padding: EdgeInsets.all(1),

                            ///Alignment 用来对齐 Widget
                            alignment: Alignment(0, 0),

                            ///文本输入框
                            child: TextField(
                              controller: tctl,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              )),
                              // onChanged: (value){
                              //   // setState(() {
                              //   //   Filt(value);
                              //   // });
                              // },
                              autofocus: true,
                            ),
                          )),
                      actions: <Widget>[
                        TextButton(
                          child: Text('确定'),
                          onPressed: () {
                            log("onPress 确定");
                            var name = tctl.text;
                            // 校验正确性
                            name = name.trim();
                            {
                              // 修改名称
                              AppUserInfo.instance
                                  .ModifyField(UserInfo()..sign = name, "sign")
                                  .then((value) {
                                if (value == true) {
                                  setState(() {
                                    AppUserInfo.instance.sign = name;
                                    Navigator.of(context).pop();
                                  });
                                }
                              });
                            }
                          },
                        ),
                        TextButton(
                          child: Text('取消'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          if (GlobalController.to.systemConfig.value?.emailLogin == true)
            ClickItem(
              title: '邮箱',
              trailing: Text(AppUserInfo.instance.email),
              onTap: () {
                Get.to(const EditPasswordPage(type: 1))!.then(
                  (value) => setState(() {}),
                );
              },
            ),
          ClickItem(
            title: '电话',
            trailing: Text(AppUserInfo.instance.phone),
            onTap: () {
              Get.to(const EditPasswordPage(type: 2))!
                  .then((value) => setState(() {}));
            },
          ),
          ClickItem(
            title: '修改密码',
            onTap: () {
              if (AppUserInfo.instance.phone.isEmpty &&
                  AppUserInfo.instance.email.isEmpty) {
                showToast("当前未绑定邮箱和手机号码，请先绑定");
                return;
              }

              Get.to(const EditPasswordPage(type: 0))!
                  .then((value) => setState(() {}));
            },
          ),
          ClickItem(
            title: '当前等级',
            trailing: Text("LV${AppUserInfo.instance.level}"),
            showDivider: false,
          ),
        ],
      ),
    );
  }
}
