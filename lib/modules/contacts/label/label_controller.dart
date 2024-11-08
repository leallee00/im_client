import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/modules/contacts/repository/contacts_repository.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/utils/log/manager.dart';

class LabelController extends GetxController {
  final _repository = ContactsRepository();

  final Rx<LoadState> loadState = Rx(LoadState.loading);

  final refreshController = RefreshController();

  int page = 0;
  bool hasNextPage = false;

  bool get isRefresh => page == 0;

  RxList<CategorizeTag> dataList = RxList();

  @override
  void onInit() {
    super.onInit();
    onRefresh();
  }

  void onRefresh() async {
    page = 0;
    fetchCategoryList();
  }

  void onLoad() async {
    if (hasNextPage) {
      page += 1;
      fetchCategoryList();
    } else {
      refreshController.loadNoData();
    }
  }

  void addCategory(
    AddCategorizeTagRsp rsp,
  ) {
    rsp.tag.memberCount = Int64(rsp.member.length);
    dataList.insert(0, rsp.tag);
    loadState.value = LoadState.successful;
    update();
  }

  void delCategory(
    CategorizeTag data,
  ) async {
    dataList.removeWhere((element) => element.id == data.id);
    if (dataList.isEmpty) {
      loadState.value = LoadState.empty;
    } else {
      loadState.value = LoadState.successful;
    }
    update();
  }

  void fetchCategoryList() async {
    await _repository.fetchCategoryList(
      page: page,
      callback: (value) {
        if (isRefresh) {
          dataList.clear();
          refreshController.refreshCompleted(
            resetFooterState: true,
          );
        }

        dataList.addAll(value);

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
