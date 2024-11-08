import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/db/friend.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';
import 'package:quliao/pb/pb_pub/service.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/avatar.dart';
import 'package:http/http.dart' as $http;
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;

class SearchFriend extends StatefulWidget {
  static const name = "SearchFriend";

  SearchFriend({super.key});

  @override
  SearchFriendState createState() => new SearchFriendState();
}

class SearchFriendState extends State<SearchFriend> {
  @override
  void initState() {
    super.initState();
    eventBus.on<ApplyAnswerEvent>().listen((event) {
      for (final item in lFriendInfo1) {
        if (item.friendId == event.userId) {
          item.applyAnswer = true;
        }
      }
      setState(() {});
    });
  }

  var tctl = TextEditingController();
  var lFriendInfo1 = <FriendInfo>[];
  var filtLFriendInfo = <FriendInfo>[];

  void Filt(String data) {
    log("filt:${lFriendInfo1.length} data:${data.trim().isEmpty}");
    if (data.trim().isEmpty) {
      filtLFriendInfo = lFriendInfo1;
      log("all in list");
      return;
    }
    filtLFriendInfo = <FriendInfo>[];
    log("list len -> ${lFriendInfo1.length}");
    for (var finfo in lFriendInfo1) {
      log("finfo:${finfo.userInfo.imId.toString()} data:${data} ---$finfo");
      if (finfo.userInfo.imId.toString().contains(data)) {
        filtLFriendInfo.add(finfo);
      } else if (finfo.userInfo.appUid != null &&
          finfo.userInfo.appUid.contains(data)) {
        filtLFriendInfo.add(finfo);
      } else {
        log("not add filt list");
      }
    }
    log("ok filtLFriendInfo.len:${filtLFriendInfo.length}");
  }

  bool isShow = false;

  Widget _optionButton(FriendInfo finfo) {
    if (finfo.applyAnswer) {
      return Text(
        '${finfo.nickname}通过了你的好友申请',
        style: TextStyle(
          fontSize: Dimens.font_sp13,
          color: Theme.of(context).colorScheme.primary,
        ),
      );
    }
    if (finfo.friendRelation == enFriendRelation.stranger) {
      return TextButton(
        child: Text(isShow ? '已发送请求' : '加为好友'),
        onPressed: () {
          if (isShow) {
            return;
          }
          log("添加他为好友");

          /// 发送添加好友申请
          var rsp = Client.instance.sendMsg(
              ApplyReq(),
              Int64(AppUserInfo.instance.imId),
              MakePBCommData(
                  aimId: Int64(finfo.userInfo.imId),
                  toService: Service.friend));
          if (rsp == null) {
            // 发送失败
            showToast('申请发送失败');
            return;
          }
          showToast('申请已发出，等待对方确认');
          isShow = true;
          // 添加到数据库 放到服务端添加返回消息更新状态
          // AddApplyFriend(finfo, "", AppUserInfo.instance.imId);
          setState(() {});
          Future.delayed(const Duration(seconds: 60)).then(
            (value) => isShow = false,
          );
        },
      );
    }

    if (finfo.friendRelation == enFriendRelation.friend) {
      return TextButton(
        child: Text(
          '发起会话',
          style: TextStyle(
            fontSize: Dimens.font_sp14,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext ctx) {
                return ChatPage(finfo: finfo);
              },
            ),
          );
        },
      );
    }

    if (finfo.friendRelation == enFriendRelation.black) {
      return Text(
        '黑名单',
        style: TextStyle(
          fontSize: Dimens.font_sp14,
          color: Theme.of(context).colorScheme.error,
        ),
      );
    }

    return Text(
      '未知',
      style: TextStyle(
        fontSize: Dimens.font_sp14,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }

  // button option

  ListTile _listViewBuilder(BuildContext context, int index) {
    final item = lFriendInfo1[index];
    return ListTile(
      leading: UserAvatar(
        size: Dimens.gap_dp40,
        avatar: item.userInfo.avatar,
        name: item.userInfo.nickName,
      ),
      title: Text(
        item.userInfo.nickName,
        style: TextStyle(
          fontSize: Dimens.font_sp16,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      subtitle: Text(
        'id：${item.userInfo.imId}',
        style: TextStyle(
          fontSize: Dimens.font_sp12,
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
        ),
      ),
      trailing: Container(
        child: _optionButton(item),
      ),
    );
  }

  AddToFriendList(FriendInfo value) {
    log("-------add ${value}=============================================================================");
    lFriendInfo1.clear();
    lFriendInfo1.add(value);
    setState(() {});
    // var needAdd = true;
    // for (var finfo in lFriendInfo1) {
    //   if (finfo.userInfo.imId == value.userInfo.imId) {
    //     // 已经有了
    //     log("已经在了,lFriendInfo1.length:${lFriendInfo1.length} ------- new finfo:${value.toString()}  old:${finfo}");
    //     needAdd = false;
    //   }
    // }
    // if (needAdd) {
    //   lFriendInfo1.add(value);
    // }
  }

  Future<void> _search(String keyword) async {
    $http.Response response = await RpcCallAppGateApi(
      "/pb_grpc_commim_uaa.UAA/FindUserInfoIntell",
      FindUserInfoIntellReq(param: keyword),
      MakePBCommData(
        aimId: Int64(AppUserInfo().imId),
        toService: Service.commim_uaa,
      ),
    ).catchError((err) {
      return $http.Response(err.toString(), 500);
    });

    if (response.statusCode == 500) {
      var status = $grpcStatus.Status();
      status.mergeFromBuffer(response.bodyBytes);

      /// var errMsg = "请求失败：code=${status.code} msg=${status.message}";
      if (status.code == 2) {
        showToast('没有找到该用户');
        return;
      }
    }

    if (response.statusCode == 200) {
      final UserInfoRsp userInfoRsp = UserInfoRsp();
      userInfoRsp.mergeFromBuffer(response.bodyBytes);
      final userInfo = userInfoRsp.info;
      if (userInfo.imId == AppUserInfo().imId) {
        showToast('不可添加自己为好友');
        return;
      }
      LoggerManager().debug(
        'imId: ${userInfo.imId} nickname: ${userInfo.nickname} avatar: ${userInfo.avatar} username: ${userInfo.username}',
      );
      GetFriendInfo(userInfo.imId.toInt()).then((value) {
        log("get friend ok ${value}");
        AddToFriendList(value);
      });
    }
  }

  Future<void> hideKeyboard(
    BuildContext context,
  ) async {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => hideKeyboard(context),
      child: Scaffold(
        appBar: CustomAppBar(
          titleSpacing: 0,
          title: SizedBox(
            width: 400,
            height: 40,
            child: Container(
              margin: EdgeInsets.all(Dimens.gap_dp2),

              /// 文本输入框
              child: TextField(
                controller: tctl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: Dimens.gap_dp1,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.gap_dp20),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp12,
                  ).copyWith(
                    bottom: Dimens.gap_dp4,
                  ),
                  hintText:
                      GlobalController.to.systemConfig.value?.emailLogin == true
                          ? '请输入账号、手机号或邮箱'
                          : '请输入账号、手机号',
                  hintStyle: TextStyle(
                    fontSize: Dimens.font_sp14,
                    color: const Color.fromRGBO(153, 153, 153, 1.0),
                  ),
                ),
                autofocus: true,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black87,
              ),
              splashRadius: Dimens.gap_dp20,
              onPressed: () {
                hideKeyboard(context);

                if (tctl.text.isEmpty) {
                  showToast("请输入用户id");
                  return;
                }
                tctl.text.trim();
                if (tctl.text.trim().isEmpty) {
                  if (GlobalController.to.systemConfig.value?.emailLogin ==
                      true) {
                    showToast('请输入账号、手机号或邮箱');
                  } else {
                    showToast('请输入账号、手机号');
                  }
                  return;
                }

                isShow = false;
                _search(tctl.text);
              },
            )
          ],
        ),
        // backgroundColor: Colors.white10,
        body: Column(
          children: [
            // Expanded(
            //   flex: 0,
            //   child: Visibility(
            //     visible: tctl.text.length > 0,
            //     child: Row(
            //       children: [
            //         const Icon(Icons.search),
            //         RichText(
            //           text: TextSpan(
            //             text: '搜索：',
            //             style: TextStyle(color: Colors.black),
            //             children: [
            //               TextSpan(
            //                 text: "${tctl.text}",
            //                 style: TextStyle(color: Colors.red),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            // 群列表
            Expanded(
              flex: 1,
              child: ListView.separated(
                itemCount: lFriendInfo1.length,
                itemBuilder: _listViewBuilder,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(color: Colors.grey);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
