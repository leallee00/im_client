import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/modules/mine/repository/mine_repository.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class SigninTaskPageController extends GetxController {
  final refreshController = RefreshController();
  final Rx<LoadState> loadState = Rx(LoadState.loading);

  final RxList<SubTask> dataList = RxList();

  final _repository = MineRepository();

  @override
  void onReady() {
    super.onReady();
    onRefresh();
  }

  Future<void> onRefresh() async {
    await _repository.getSigninTaskInfo(
      callback: (data) {
        dataList.clear();
        dataList.addAll(data.task.subTask);
        if (dataList.isEmpty) {
          loadState.value = LoadState.empty;
        } else {
          loadState.value = LoadState.successful;
        }
        refreshController.refreshCompleted();
        update();
      },
      onError: () {
        loadState.value = LoadState.failed;
        update();
      },
    );
  }
}
