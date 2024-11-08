import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/black_list/blackList.pb.dart' as blackListPb;
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/toast/toast.dart';
import 'package:quliao/widgets/dialog/manager.dart';

import '../../../../models/user/friendInfo.dart';
import '../../../../pb/pb_msg/friend/friend.pb.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';

class BlackListController extends GetxController {
  final RxList<FriendInfo> blackList = RxList();
  final Rx<LoadState> loadState = Rx(LoadState.loading);
  final refreshController = RefreshController();

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    final req = ReadBlackListReq();

    try {
      final response = await RpcCallImOuterApi(
        '/pb_grpc_friend.Friend/ReadBlackList',
        req,
        MakePBCommData(
          aimId: Int64(AppUserInfo().imId),
          toService: Service.friend,
        ),
      );

      refreshController.refreshCompleted(
        resetFooterState: true,
      );

      if (response.statusCode == 200) {
        blackList.clear();

        final rsp = ReadBlackListRsp()..mergeFromBuffer(response.bodyBytes);
        for (final value in rsp.blackUserId) {
          final friendInfo = FriendInfo();
          await friendInfo.LoadFriendData(
            value.toInt(),
          );
          blackList.add(friendInfo);
        }
        if (rsp.blackUserId.isEmpty) {
          loadState.value = LoadState.empty;
        } else {
          loadState.value = LoadState.successful;
        }
        update();
      }
    } catch (error) {
      debugPrint('error =======> $error');
    }
  }

  Future<void> remove(
    BuildContext context,
    FriendInfo data,
  ) async {
    DialogManager.showRemoveBlackListDialog(
      context,
      onConfirm: () async {
        final req = blackListPb.DeleteBlackListReq(
          srcUserid: Int64(AppUserInfo().imId),
          aimUserid: Int64(data.friendId),
        );

        final response = await RpcCallImOuterApi(
          '/pb_grpc_friend.Friend/DeleteBlackList',
          req,
          MakePBCommData(
            aimId: Int64(data.friendId),
            toService: Service.friend,
          ),
        );

        if (response.statusCode == 200) {
          ToastUtil.show('移除成功');
          if (data.friendRelation == enFriendRelation.friend) {
            data.UpdateField(
              'blocked',
              false,
              Friend()..blocked = false,
            );
          }
          blackList.removeWhere((element) => element.friendId == data.friendId);
          if (blackList.isEmpty) {
            loadState.value = LoadState.empty;
          }
          update();
        }
      },
    );
  }
}
