import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/contacts/models/application_model.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/sugget/gripesugget_data.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/loading.dart';

import '../../../../db/friend.dart';
import '../../../../models/user/friendInfo.dart';
import '../../../../models/user/userinfo.dart';
import '../../../../pb/pb_msg/gate/gate.pb.dart';
import '../../../../pb/pb_pub/comm.pb.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pb/pb_msg/friend/friend.pb.dart';

class NewFriendController extends GetxController {
  final Rx<LoadState> loadState = Rx(LoadState.loading);
  final RxList<ApplicationModel> applications = RxList();
  final RxList<ApplicationModel> applications1 = RxList();

  final RefreshController refreshController = RefreshController();

  int page = 0;
  bool hasNextPage = false;

  bool get isRefresh => page == 0;

  @override
  void onReady() {
    super.onReady();
    onRefresh();
    UnReadMessageController.to.clearUnReadMsgCount(
      type: ENMsgCountType.friendList,
    );
  }

  void onRefresh() async {
    page = 0;
    getApplications();
  }

  void onLoad() async {
    if (hasNextPage) {
      page += 1;
      getApplications();
    } else {
      refreshController.loadNoData();
    }
  }

  Future<void> getApplications() async {
    fetchData(
      callback: (value, value1) {
        if (isRefresh) {
          applications.clear();
          applications1.clear();
          refreshController.refreshCompleted(
            resetFooterState: true,
          );
        }

        applications.addAll(value);
        applications1.addAll(value1);

        hasNextPage = (applications.length + applications1.length) >= 10;

        final dataList = [];
        dataList.addAll(applications);
        dataList.addAll(applications1);

        if (dataList.isEmpty) {
          if (isRefresh) {
            loadState.value = LoadState.empty;
          } else {
            loadState.value = LoadState.successful;
          }
          refreshController.loadNoData();
        } else {
          loadState.value = LoadState.successful;
          if (hasNextPage) {
            refreshController.loadComplete();
          } else {
            refreshController.loadNoData();
          }
        }
        update();
      },
      onError: () {
        if (isRefresh) {
          refreshController.refreshFailed();
          if (applications.isEmpty) {
            loadState.value = LoadState.failed;
          }
        } else {
          page -= 1;
          refreshController.loadFailed();
        }
        update();
      },
    );
  }

  Future<void> fetchData({
    Function(List<ApplicationModel>, List<ApplicationModel>)? callback,
    Function()? onError,
  }) async {
    final req = ApplicationsReq(
      page: Int64(page),
      pageSize: Int64(10),
    );

    RpcCallImOuterApi(
      '/pb_grpc_friend.Friend/Applications',
      req,
      MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId),
        toService: Service.friend,
      ),
    ).then((value) async {
      if (value.statusCode == 200) {
        final rsp = ApplicationsRsp()..mergeFromBuffer(value.bodyBytes);

        final list = <ApplicationModel>[];
        final list1 = <ApplicationModel>[];

        if (rsp.applications.isNotEmpty) {
          for (Application element in rsp.applications) {
            debugPrint(
              '申请者 id：${element.applicantId} 应答者 id：${element.respondentId} 打招呼内容：${element.msg} status：${element.status}',
            );

            /// 去重
            var friendId = AppUserInfo().imId == element.applicantId.toInt()
                ? element.respondentId.toInt()
                : element.applicantId.toInt();

            // for (FriendApply fa in dataList) {
            //   if (fa.friendId == friendId &&
            //       fa.applyId == element.applicantId.toInt()) {
            //     needInsert = false;
            //     break;
            //   }
            // }
            // if (!needInsert) continue;

            final friendUserInfo = await GetUserInfo(friendId);
            var friend = FriendApply()
              ..applyId = element.applicantId.toInt()
              ..friendId = friendId
              ..applyState = FRIEND_APPLY_STATE.values[element.status]
              ..nick = friendUserInfo.nickName
              ..avatar = friendUserInfo.avatar
              ..applyMsg = AppUserInfo().imId == element.applicantId.toInt()
                  ? '您申请加${friendUserInfo.signName}-ID$friendId为好友'
                  : '${friendUserInfo.signName}-ID$friendId申请加您为好友';

            final applicationModel = ApplicationModel(
              data: friend,
              createAt: element.createAt.toInt(),
            );

            final dateTime = timestampToDate(element.createAt.toString());

            final dateValue = DateTime.fromMillisecondsSinceEpoch(
              element.createAt.toInt() * 1000,
            );
            final currentDate = DateTime.now();
            final duration = currentDate.difference(dateValue);

            if (duration.inDays > 3) {
              list1.add(applicationModel);
            } else {
              list.add(applicationModel);
            }

            /// 更新到db， 从网上获取的状态更新
            AddApplyFriend(
              FriendInfo()..userInfo = friendUserInfo,
              friend.applyMsg,
              friend.applyId,
              friend.applyState,
            );
          }
        }

        if (null != callback) {
          callback(list, list1);
        }
      } else {
        if (null != onError) {
          onError();
        }
      }
    }).catchError(
      (err) {
        if (null != onError) {
          onError();
        }
      },
    );
  }

  Future<void> agree(
    FriendApply data, {
    Function()? callback,
  }) async {
    final req = ApplyAnswerReq(
      agree: true,
    );
    RpcCallImOuterApi(
      '/pb_grpc_friend.Friend/ApplyAnswer',
      req,
      MakePBCommData(
        aimId: Int64(data.friendId),
        toService: Service.friend,
      ),
      showToast: true,
      loading: true,
    ).then((value) async {
      if (value.statusCode == 200) {
        final rsp = ApplyAnswerRsp()..mergeFromBuffer(value.bodyBytes);
        callback?.call();
        updateApplyFriendState(data);

        GetUserInfo(data.friendId).then((value) {
          showToast("您通过了 ${value.nickName} 的好友申请");

          var tmsg = PBMessage();
          var chatMsg = ChatText()
            ..text = "我通过了你的朋友验证请求，现在我们可以开始聊天了"
            ..chatType = TextChatType.TEXT;
          tmsg.pbCommData = MakePBCommData(
            aimId: Int64(data.friendId),
            toService: Service.friend,
          )..serviceType = Service.gate;
          tmsg.pbData = chatMsg.writeToBuffer();
          tmsg.pbName = chatMsg.info_.qualifiedMessageName;

          /// 派发处理
          Client().onNetMsg(tmsg, EnMsgFrom.local);
        });
      }
    }).catchError((error) {
      ToastUtil.show('操作失败，请重试');
    });
  }

  Future<void> updateApplyFriendState(
    FriendApply data,
  ) async {
    for (final item in applications) {
      if (null != item.data && item.data!.friendId == data.friendId) {
        item.data!.applyState = FRIEND_APPLY_STATE.Agree;
        AddFriendToDB(data.friendId, enFriendRelation.friend);
        UpdateApplyFriendState(
          data.friendId,
          FRIEND_APPLY_STATE.Agree,
        );
        update();
      }
    }
    for (final item in applications1) {
      if (null != item.data && item.data!.friendId == data.friendId) {
        item.data!.applyState = FRIEND_APPLY_STATE.Agree;
        AddFriendToDB(data.friendId, enFriendRelation.friend);
        UpdateApplyFriendState(
          data.friendId,
          FRIEND_APPLY_STATE.Agree,
        );
        update();
      }
    }
  }
}
