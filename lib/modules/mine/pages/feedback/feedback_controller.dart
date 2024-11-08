import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/modules/mine/repository/mine_repository.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class FeedbackController extends GetxController {
  final Rx<LoadState> loadState = Rx(LoadState.loading);

  final refreshController = RefreshController();

  int page = 0;
  bool hasNextPage = false;

  bool get isRefresh => page == 0;

  RxList<Suggest> dataList = RxList();

  final _repository = MineRepository();

  @override
  void onInit() {
    super.onInit();
    onRefresh();
  }

  void onRefresh() async {
    page = 0;
    fetchSuggestList();
  }

  void onLoad() async {
    if (hasNextPage) {
      page += 1;
      fetchSuggestList();
    } else {
      refreshController.loadNoData();
    }
  }

  void addSuggest(Suggest data) {
    dataList.insert(0, data);
  }

  void fetchSuggestList() async {
    final req = GetSuggestListReq(
      page: page,
    );
    await _repository.getSuggestList(
      req: req,
      callback: (value) {
        if (isRefresh) {
          dataList.clear();
          refreshController.refreshCompleted(
            resetFooterState: true,
          );
        }

        dataList.addAll(value);

        for (final item in dataList) {
          debugPrint('feedback  suggest: ${item.suggest} replyCount: ${item.replyCount} emergentLevel: ${item.emergentLevel}');
        }

        hasNextPage = value.length >= 10;

        if (value.isEmpty) {
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
}
