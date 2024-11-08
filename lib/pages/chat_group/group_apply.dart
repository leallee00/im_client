import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/flutter_chat_ui/flutter_chat_ui.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/msg_handler_mgr.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_group/controller/chat_group_controller.dart';
import 'package:quliao/pb/pb_msg/group/group.pbserver.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/custom_alert.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pub/log.dart';
import 'package:http/http.dart' as $http;
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/avatar.dart' as avatar;

class GroupApplyInfo {
  FriendInfo finfo = FriendInfo();
  int userId = 0;
  // int64 userId = 1;
  // int64 groupId = 2;
  // int64 approverId = 3; // 批准人ID,无人批准时为空
  // int32 status = 4; // 申请状态。0：等待中，1：已同意，2：已拒绝，3：已取消

  Application application = Application();
}

class GroupApplyPage extends StatefulWidget {
  final int groupId;
  const GroupApplyPage({
    super.key,
    required this.groupId,
  });

  @override
  GroupApplyPageState createState() => GroupApplyPageState();
}

// Widget
class GroupApplyPageState extends State<GroupApplyPage> {
  List<GroupApplyInfo> applyLists = [];

  @override
  void initState() {
    super.initState();

    // 获取入群申请列表
    fetchGroupApplyLists();
  }

  Future<void> fetchGroupApplyLists() async {
    $http.Response response = await RpcCallImOuterApi(
            "/pb_grpc_group.Group/Applications",
            ApplicationsReq(),
            MakePBCommData(
                aimId: Int64(AppUserInfo().imId),
                groupId: Int64(widget.groupId),
                toService: Service.friend))
        .catchError((err) {
      log("---err:${err}");
    });
    if (response.statusCode == 500) {
      // 业务错误
      //return null;
    }
    log("ApplicationsRsp");
    if (response.statusCode == 200) {
      var rsp = ApplicationsRsp()..mergeFromBuffer(response.bodyBytes);
      List<GroupApplyInfo> lists = [];
      if (rsp.applications.isNotEmpty) {
        for (var element in rsp.applications) {
          GroupApplyInfo info = GroupApplyInfo();
          info.application = element;
          info.userId = element.userId.toInt();

          // FriendInfo finInfo = FriendInfo();
          // await finInfo.LoadFriendData(element.userId.toInt());
          // info.finfo = finInfo;

          lists.add(info);
        }
      }
      applyLists = lists;

      int applySize = 0;
      if (rsp.applications.isNotEmpty) {
        for (final item in rsp.applications) {
          LoggerManager().debug('item status =========> ${item.status}');
          if (item.status == 0) {
            applySize++;
          }
        }
      }

      ChatGroupController.to(widget.groupId.toString()).applyListsSize.value=applySize;
      if (mounted) {
        setState(() {});
      }

      _asyncUserInfo();
    }
  }

  Future<void> _asyncUserInfo() async {
    for (final item in applyLists) {
      FriendInfo finInfo = FriendInfo();
      await finInfo.LoadFriendData(item.userId);
      item.finfo = finInfo;
    }
    setState(() {

    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "入群申请列表",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 10),
                color: const Color.fromRGBO(244, 244, 244, 1),
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 10, right: 0),
                child: Text(
                  "入群申请人员(${applyLists.length})",
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                )),
            // 群成员列表
            Expanded(
              child: applyLists.isNotEmpty
                  ? ListView.separated(
                      itemCount: applyLists.length,
                      itemBuilder: listBuilder,
                      //分割器构造器
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(height: 0.5, color: Colors.grey);
                      },
                    )
                  : const Center(
                      child: Text("暂无入群申请"),
                    ),
            ),
            const SizedBox(height: 20),
          ],
        ));
  }

  Future<void> updateItem() async {
    for (final item in applyLists) {

    }
  }

  Widget listBuilder(BuildContext context, int index) {
    var item = applyLists[index];
    List<Widget> items = [
      Row(
        children: [
          InkWell(
            onTap: () {
              // 头像点击跳转用户主页
              Navigator.pushNamed(context, "FriendInfoV",
                  arguments: item.finfo);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              child: avatar.UserAvatar(
                avatar: item.finfo.userInfo.avatar,
                size: Dimens.gap_dp40,
                name: item.finfo.userInfo.nickName,
              ),
              // child: ClipOval(
              //   child: Image.network(
              //     item.finfo.userInfo.avatar,
              //     fit: BoxFit.cover,
              //     width: 40,
              //     height: 40,
              //   ),
              // ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 1, left: 10),
            child: Text(
              (item.finfo.userInfo.nickName.isNotEmpty
                  ? item.finfo.userInfo.nickName
                  : "${item.finfo.userInfo.imId}"),
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    ];

    // int32 status = 4; // 申请状态。0：等待中，1：已同意，2：已拒绝，3：已取消
    String showStatus = "";
    if (item.application.status == 0) {
      showStatus = "同意";
    } else if (item.application.status == 1) {
      showStatus = "已同意";
    } else if (item.application.status == 2) {
      showStatus = "已拒绝";
    } else {
      showStatus = "已过期";
    }

    if (item.application.status == 0) {
      items = [
        ...items,
        ...[
          Row(
            children: [
              InkWell(
                onTap: () {
                  showAlertView(
                    "提示",
                    "是否拒绝${(item.finfo.userInfo.nickName.isNotEmpty ? item.finfo.userInfo.nickName : "${item.finfo.userInfo.imId}")}入群申请",
                    context,
                    callBack: (index) {
                      if (index == 1) {
                        ApplyAnswerReq req = ApplyAnswerReq();
                        req.agree = false;
                        Client.instance.sendMsg(
                          req,
                          Int64(widget.groupId),
                          MakePBCommData(
                            aimId: item.application.userId,
                            groupId: Int64(widget.groupId),
                            toService: Service.group,
                          ),
                        );
                        showToast(
                            "已拒绝${(item.finfo.userInfo.nickName.isNotEmpty ? item.finfo.userInfo.nickName : "${item.finfo.userInfo.imId}")}入群申请");
                        item.application.status = 2;
                        setState(() {

                        });
                        // fetchGroupApplyLists();
                        // Get.back();
                      }
                    },
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  margin: const EdgeInsets.only(bottom: 10, top: 10),
                  height: 40,
                  child: const Text(
                    "拒绝",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showAlertView(
                    "提示",
                    "是否同意${(item.finfo.userInfo.nickName.isNotEmpty ? item.finfo.userInfo.nickName : "${item.finfo.userInfo.imId}")}入群申请",
                    context,
                    callBack: (index) {
                      if (index == 1) {
                        ApplyAnswerReq req = ApplyAnswerReq();
                        req.agree = true;
                        Client.instance.sendMsg(
                          req,
                          Int64(widget.groupId),
                          MakePBCommData(
                            aimId: item.application.userId,
                            groupId: Int64(widget.groupId),
                            toService: Service.group,
                          ),
                        );
                        showToast(
                            "已同意${(item.finfo.userInfo.nickName.isNotEmpty ? item.finfo.userInfo.nickName : "${item.finfo.userInfo.imId}")}入群申请");
                        item.application.status = 1;
                        setState(() {

                        });
                        // fetchGroupApplyLists();
                        // Get.back();
                      }
                    },
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
                  height: 40,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    showStatus,
                    style: const TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ],
      ];
    } else {
      items.add(
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
          height: 40,
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            showStatus,
            style: const TextStyle(fontSize: 14, color: Colors.blue),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items,
    );
  }
}
