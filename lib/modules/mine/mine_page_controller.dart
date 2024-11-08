import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/db/database.dart';
import 'package:quliao/db/db.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/unread_message_controller.dart';
import 'package:quliao/global/models/font_size_model.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/repository/mine_repository.dart';
import 'package:quliao/mywedgits/badger/badger.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/flyer_chat/test_page.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;
import 'package:quliao/utils/log/manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/user/friendInfo.dart';
import '../../pb/pb_pub/service.pbenum.dart';

class MinePageController extends GetxController {
  static MinePageController get to => Get.find(tag: 'mine_page');
  final Rx<AppUserInfo> userInfo = Rx(AppUserInfo.instance);
  final Rx<TaskSignUpStatusRsp?> signUpInfo = Rx(null);
  final Rx<Wallet?> walletValue = Rx(null);
  final RxBool hasPayPassword = RxBool(false);
  final _repository = MineRepository();

  @override
  void onReady() {
    super.onReady();
    fetchUserInfo();
    // getWalletInfo();
    // getSignStatus();
    fetchUserAddress();
  }

  Future<void> updateUserAvatar(
    String value,
  ) async {
    AppUserInfo.instance.appAvatar = value;
    userInfo.value = AppUserInfo.instance;
    update();
    final userModel = await AppDatabase().objectBox.getUser(
          AppUserInfo.instance.imId.toInt(),
        );
    if (null != userModel) {
      userModel.avatar = value;
      AppDatabase().objectBox.addUser(userModel);
    }
  }

  Future<void> getWalletInfo() async {
    await _repository.getWalletInfo(
      callback: (value) {
        hasPayPassword.value = value.hasePassWorld;
        if (value.wallet.isNotEmpty) {
          walletValue.value = value.wallet.singleWhere(
            (element) => element.walletType == 0,
          );
        } else {
          walletValue.value = null;
        }
        update();
      },
    );
  }

  Future<void> getSignStatus() async {
    await _repository.getSignInStatus(
      callback: (value) {
        signUpInfo.value = value;
      },
    );
  }

  Future<void> fetchUserAddress() async {
    _repository.fetchDefaultAddress(
      callback: (userAddress) {
        LoggerManager().debug(
          'userAddress: ${userAddress.contacts} detailAddress: ${userAddress.detailAddress}',
        );
        AppUserInfo().userAddress =
            '${userAddress.area}${userAddress.detailAddress}';
        AppUserInfo.instance.saveToSp();
        userInfo.value = AppUserInfo.instance;
      },
    );
  }

  Future<void> fetchUserInfo() async {
    var req = $uaa.UserInfoReq();
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/UserInfo',
      req,
      MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId),
        toService: Service.commim_uaa,
      ),
    ).then(
      (value) async {
        var rsp = $uaa.UserInfoRsp()..mergeFromBuffer(value.bodyBytes);
        LoggerManager().error(
          'userinfo =========> $rsp',
        );
        AppUserInfo().freeAddMeFriend = rsp.info.freeAddMeFriend;
        AppUserInfo.instance.saveToSp();
        userInfo.value = AppUserInfo.instance;
        final info = rsp.info;
        final userModel =
            await AppDatabase().objectBox.getUser(info.imId.toInt());
        if (null != userModel) {
          userModel.avatar = info.avatar;
          userModel.nickName = info.nickname;
          userModel.gender = info.gender;
          AppDatabase().objectBox.addUser(userModel);
        }
      },
    );
  }

  Future<void> freeAddMeFriend(bool value) async {
    final freeAddMeFriend = !value;
    var userInfo1 = $uaa.UserInfo()..freeAddMeFriend = freeAddMeFriend;
    userInfo.value.ModifyField(userInfo1, 'freeAddMeFriend').then((value) {
      update();
    });
  }

  Future<void> clear() async {
    showToast('清理数据...');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    AppUserInfo.instance.saveToSp();
    GlobalController.to.chatFontSize.value = FontSizeModel();
    resetDb().then((value) {
      showToast('清理完成');
      eventBus.fire(ReloadChatListData());
      UnReadMessageController.to.clearUnReadMsgCount(
        type: ENMsgCountType.totalMsg,
      );
    });
  }

  Future<void> openCustomService(
    BuildContext context,
  ) async {
    final friendInfo = FriendInfo();
    await friendInfo.LoadFriendData(10001);

    if (context.mounted) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext ctx) {
            return ChatPage(finfo: friendInfo);
          },
        ),
      );
    }
  }
}
