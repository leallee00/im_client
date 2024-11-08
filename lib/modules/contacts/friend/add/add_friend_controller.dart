import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pub/func.dart';

import '../../../../models/user/friendInfo.dart';
import '../../../../net/socket.dart';
import '../../../../pb/pb_msg/friend/friend.pb.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';

class AddFriendController extends GetxController {
  Future<void> qrCallback(String? code) async {
    if (null == code) {
      return;
    }

    int targetId = 0;

    final data = jsonDecode(code) as Map<String, dynamic>;
    if (data['type'] == 0) {
      targetId = data['data'] as int;
    }

    if (targetId == AppUserInfo.instance.imId) {
      showToast('不能加自己为好友');
      return;
    }

    GetFriendInfo(targetId).then(
      (value) {
        Client.instance.sendMsg(
          ApplyReq(),
          Int64(AppUserInfo.instance.imId),
          MakePBCommData(
            aimId: Int64(value.userInfo.imId),
            toService: Service.friend,
          ),
        );
        showToast('申请已发出，等待对方确认');
      },
    );
  }
}
