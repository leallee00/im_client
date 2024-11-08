import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/modules/red_packet/repository/red_packet_repository.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart'
    hide FriendInfo;

import '../../../models/user/friendInfo.dart';

class RedPacketRecordPageController extends GetxController {
  final refreshController = RefreshController();
  final Rx<LoadState> loadState = Rx(LoadState.loading);
  final Rx<RedPacketInfo?> redPacketInfo = Rx(null);
  final Rx<FriendInfo?> targetInfo = Rx(null);

  int page = 0;
  bool hasNextPage = false;
  final RxList<RedPacketFlowItem> dataList = RxList();

  final _repository = RedPacketRepository();

  bool get isRefresh => page == 1;

  late int redPacketId;

  Future<void> loadData(
    int redPacketId,
  ) async {
    this.redPacketId = redPacketId;
    getRedPacketInfo();
    onRefresh();
  }

  void onRefresh() async {
    page = 1;
    _getRedPacketReceivedList();
  }

  void onLoad() async {
    if (hasNextPage) {
      page += 1;
      _getRedPacketReceivedList();
    } else {
      refreshController.loadNoData();
    }
  }

  Future<void> _getRedPacketReceivedList() async {
    final req = RedPacketCurFlowReq(
      page: page,
      redPacketId: Int64(redPacketId),
    );
    await _repository.getRedPacketReceivedList(
      req,
      callback: (list) {
        if (isRefresh) {
          dataList.clear();
        }
        dataList.addAll(list);

        hasNextPage = list.length >= 10;

        if (isRefresh) {
          if (dataList.isEmpty) {
            loadState.value = LoadState.empty;
          } else {
            loadState.value = LoadState.successful;
          }
          refreshController.refreshCompleted(
            resetFooterState: true,
          );
          if (hasNextPage) {
            refreshController.loadComplete();
          } else {
            refreshController.loadNoData();
          }
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
          if (dataList.isEmpty) {
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

  Future<void> getRedPacketInfo() async {
    _repository.getRedPacketInfo(
      redPacketId,
      callback: (value) {
        redPacketInfo.value = value.data;
        _getTargetInfo(value.data.grantUserId.toInt());
      },
    );
  }

  Future<void> _getTargetInfo(int target) async {
    final friendInfo = FriendInfo();
    await friendInfo.LoadFriendData(target);
    targetInfo.value = friendInfo;
  }
}
