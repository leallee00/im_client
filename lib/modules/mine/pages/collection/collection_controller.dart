import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/models/msg_struct.dart';
import 'package:quliao/pages/chat_group/flyer_chat/chat_group_change_to_message.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/widgets/dialog/manager.dart';

import '../../../../pages/chat_private/flyer_chat/chat_private_change_to_message.dart';
import '../../../../pb/pb_pub/comm.pb.dart';

class CollectionController extends GetxController {
  final Rx<LoadState> loadState = Rx(LoadState.loading);

  final refreshController = RefreshController();

  int page = 1;
  int pageSize = 20;
  bool hasNextPage = false;

  bool get isRefresh => page == 1;

  RxList<types.Message> dataList = RxList();

  int get offset => (page - 1) * pageSize;

  void onRefresh() async {
    page = 1;
    await loadData();
    refreshController.refreshCompleted(
      resetFooterState: true,
    );
  }

  void onLoad() async {
    page += 1;
    await loadData();
  }

  Future<void> loadData() async {
    final dataMap = await AppDatabase().collectionsDao?.query(offset: 0) ?? [];

    final List<types.Message> list = [];

    for (final map in dataMap) {
      final msgSn = map['msgSn'] as int;
      final groupId = map['groupId'];
      debugPrint('groupId =======> $groupId');
      if (null != groupId) {
        List<ChatGroupData> lsCPData = <ChatGroupData>[];

        try {
          var d = ChatGroupData();

          /// 等待加载用户信息
          await d.initWithMap(map);

          final messageMap = await changeToGroupMessageMap(d);
          if (messageMap.keys.contains('type')) {
            lsCPData.insert(0, d);
            types.Message message = types.Message.fromJson(messageMap);
            list.add(message);
          }
        } catch (e) {
          e.printError();
          continue;
        }

      } else {
        final d = ChatPrivateData()..initWithMap(map);

        final messageMap = await changeToMessageMap(d);
        if (!messageMap.keys.contains('type')) {
          continue;
        }
        types.Message message = types.Message.fromJson(messageMap);
        list.add(message);
      }
    }

    if (isRefresh) {
      dataList.clear();
      refreshController.refreshCompleted(
        resetFooterState: true,
      );
    }

    dataList.addAll(list);

    hasNextPage = list.length >= 10;

    if (list.isEmpty) {
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
  }

  void delete(
    BuildContext context,
    int msgSn,
  ) async {
    DialogManager.showDeleteCollectionsDialog(
      context,
      onConfirm: () async {
        await AppDatabase().collectionsDao?.delete(msgSn: msgSn);
        dataList.removeWhere((element) => int.parse(element.id) == msgSn);
        if (dataList.isEmpty) {
          loadState.value = LoadState.empty;
        }
        update();
      },
    );
  }
}
