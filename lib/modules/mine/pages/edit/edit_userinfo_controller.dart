import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pb/pb_pub/comm.pb.dart' hide UserInfo;
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/widgets/toast.dart';

import '../../../../pb/pb_pub/error_code.pbenum.dart';
import '../../../../pb/pb_pub/service.pbenum.dart';

class EditUserInfoController extends GetxController {
  static EditUserInfoController get to => Get.find();

  /// 编辑用户昵称
  void editUserNickname(
    BuildContext context,
    String value,
  ) async {
    /// 校验正确性
    if (value.length < 3 || value.length > 20) {
      showToast('名称长度应大于3小于20');
    } else {
      /// 修改名称
      final uInfo = UserInfo();
      uInfo.nickname = value;
      AppUserInfo.instance.ModifyField(uInfo, 'nickname').then(
        (_) {
          AppUserInfo.instance.nickName = value;
          Navigator.of(context).pop(value);
        },
      );
    }
  }

  /// 编辑用户性别
  Future<void> editUserGender(
    String value,
    Function(String) callback,
  ) async {
    int gender = 1;
    if (value == '男') {
      gender = 1;
    } else {
      gender = 2;
    }
    final uInfo = UserInfo();
    uInfo.gender = gender;

    AppUserInfo.instance.ModifyField(uInfo, 'gender').then((_) {
      AppUserInfo.instance.gender = gender;
      callback(value);
    });
  }

  /// 拍照
  Future<void> takePhoto(
    Function(String) callback,
  ) async {
    XFile? valuePath;
    if (WindowClient.instance.isPC()) {
      valuePath = await chooseLocalImage();
    } else {
      valuePath = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
    }
    if (valuePath == null || valuePath.path.isEmpty) {
      showToast('请选择图片');
      return;
    }

    int len = await valuePath.length();
    if (len < 3) {
      showToast('请选择图片');
      return;
    }

    final avatarUrl = await _uploadAvatar(
      valuePath.path,
    );
    if (null == avatarUrl || avatarUrl.isEmpty) {
      showToast('图片上传失败，请重试');
    } else {
      final uInfo = UserInfo();
      uInfo.avatar = avatarUrl;

      AppUserInfo.instance.ModifyField(uInfo, 'avatar').then((_) {
        AppUserInfo.instance.appAvatar = avatarUrl;
        callback(avatarUrl);
      });
    }
  }

  /// 从图库选择图片
  Future<void> pickImage(
    Function(String) callback,
  ) async {
    final value = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (value == null || value.path.length < 3) {
      showToast('请选择图片');
      return;
    }

    final avatarUrl = await _uploadAvatar(
      value.path,
    );
    if (null == avatarUrl || avatarUrl.isEmpty) {
      showToast('图片上传失败，请重试');
    } else {
      final uInfo = UserInfo();
      uInfo.avatar = avatarUrl;

      AppUserInfo.instance.ModifyField(uInfo, 'avatar').then((_) {
        // AppUserInfo.instance.appAvatar = avatarUrl;
        callback(avatarUrl);
        MinePageController.to.updateUserAvatar(avatarUrl);
      });
    }
  }

  /// 上传头像
  Future<String?> _uploadAvatar(String path) async {
    try {
      CustomToast.loading();
      final name = path.substring(path.lastIndexOf('/') + 1, path.length);
      final avatarUrl = await OssUtils.uploadFile(path, name: 'avatar/$name');
      CustomToast.dismiss();
      return avatarUrl;
    } catch (error) {
      CustomToast.dismiss();
      return null;
    }
  }

  Future<void> logOut(
    Function() callback,
  ) async {
    final pbCommData = MakePBCommData(
      aimId: Int64(AppUserInfo.instance.imId),
      toService: Service.commim_uaa,
    );

    final unregisterReq = UnregisterReq(
      account: AppUserInfo.instance.account,
    );

    RpcCallAppGateApi(
      '/pb_msg_commim_uaa.UAA/Unregister',
      unregisterReq,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = CommRsp()..mergeFromBuffer(value.bodyBytes);
        if (rsp.result == ErrCode.SUCCESS) {
          callback();
        }
      } else {}
    }).catchError((err) {
      LoggerManager().debug('$err');
    });
  }
}
