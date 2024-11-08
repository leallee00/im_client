import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/modules/red_packet/repository/red_packet_repository.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class BillPageController extends GetxController {
  static BillPageController get to => Get.find();

  final refreshController = RefreshController();
  final Rx<LoadState> loadState = Rx(LoadState.loading);

  int page = 0;
  bool hasNextPage = false;
  final RxList<WalletChangeFlowItem> dataList = RxList();

  final _repository = RedPacketRepository();

  bool get isRefresh => page == 1;

  @override
  void onReady() {
    super.onReady();
    onRefresh();
  }

  void onRefresh() async {
    page = 1;
    _getBillList();
  }

  void onLoad() async {
    if (hasNextPage) {
      page += 1;
      _getBillList();
    } else {
      refreshController.loadNoData();
    }
  }

  Future<void> _getBillList() async {
    await _repository.getBillList(
      page,
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
}
