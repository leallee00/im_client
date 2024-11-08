import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/repository/mine_repository.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pbserver.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:grpc/src/generated/google/rpc/status.pb.dart' as $grpcStatus;
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart' as $uaa;
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/widgets/countdown/countdown.dart';

class BindMobilePageController extends GetxController {
  final phoneCtl = TextEditingController();
  final codeCtl = TextEditingController();

  final _repository = MineRepository();

  Future<void> sendPhoneCode(
    CountdownCubit cubit,
  ) async {
    if (phoneCtl.text.isEmpty) {
      showToast('请输入手机号码');
      return;
    }
    cubit.startCountdown();
    final sendPhoneCodeReq = SendPhoneCodeReq(
      phoneNo: phoneCtl.text,
    );
    await _repository.sendPhoneCode(
      sendPhoneCodeReq,
      onError: () {
        cubit.cancel();
      },
    );
  }

  Future<void> bindMobile() async {
    var uinfo = $uaa.UserInfo();
    uinfo.code = codeCtl.text;
    uinfo.phone = phoneCtl.text;
    UpdateUserInfoReq req = $uaa.UpdateUserInfoReq()
      ..userId = AppUserInfo.instance.appUid
      ..info = uinfo;
    req.keys.add('phone');
    await RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/UpdateUserInfo',
      req,
      MakePBCommData(
        aimId: Int64(AppUserInfo.instance.imId),
        toService: Service.commim_uaa,
      ),
      showToast: true,
      loading: true,
    ).then((value) {
      if (value.statusCode != 200) {
        var status = $grpcStatus.Status();
        status.mergeFromBuffer(value.bodyBytes);
        showToast(status.message);
      } else {
        var rsp = $uaa.UpdateUserInfoRsp()..mergeFromBuffer(value.bodyBytes);
        AppUserInfo.instance.userSourceVersion = rsp.userSourceNewVersion;
        AppUserInfo.instance.phone = phoneCtl.text;

        showToast('绑定成功');

        Get.back();
        AppUserInfo.instance.saveToSp();
        eventBus.fire(UserSourceVersionChanged());
      }
    }).catchError((err) {
      showToast('绑定失败，请重试');
    });
  }
}
