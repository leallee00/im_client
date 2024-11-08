import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/im_grpc_opt.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/oss_utils.dart';
import 'package:quliao/widgets/toast.dart';

import '../../../../../../../pb/pb_pub/service.pbenum.dart';

class GroupBackgroundController extends GetxController {
  final RxList<BackgroundImageInfo> dataList = RxList();
  final Rx<String?> currentBackground = Rx(null);

  late GroupModel groupValue;

  void init(
    GroupModel groupInfo,
  ) {
    groupValue = groupInfo;
    currentBackground.value = groupInfo.backPic;
    fetchBackgroundList();
  }

  /// 拍照
  Future<void> takePhoto() async {
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

    CustomToast.loading();
    final avatarUrl = await _uploadImage(
      valuePath.path,
    );
    if (null != avatarUrl && avatarUrl.isNotEmpty) {}
    if (null == avatarUrl || avatarUrl.isEmpty) {
      showToast('图片上传失败，请重试');
    } else {
      addBackgroundImageInfo(avatarUrl);
    }
  }

  /// 从图库选择图片
  Future<void> pickImage() async {
    final value = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (value == null || value.path.length < 3) {
      showToast('请选择图片');
      return;
    }

    CustomToast.loading();

    final avatarUrl = await _uploadImage(
      value.path,
    );
    if (null == avatarUrl || avatarUrl.isEmpty) {
      showToast('图片上传失败，请重试');
      CustomToast.dismiss();
    } else {
      addBackgroundImageInfo(avatarUrl);
    }
  }

  Future<String?> _uploadImage(String path) async {
    try {
      final name = path.substring(path.lastIndexOf('/') + 1, path.length);
      final avatarUrl =
          await OssUtils.uploadFile(path, name: 'conversationBg/$name');
      return avatarUrl;
    } catch (error) {
      CustomToast.dismiss();
      return null;
    }
  }

  Future<void> addBackgroundImageInfo(
    String imageUrl,
  ) async {
    final pbCommData = MakePBCommData(
      toService: Service.commim_uaa,
    );

    final backgroundImageInfo = BackgroundImageInfo(
      imageUrl: imageUrl,
      id: Int64(groupValue.groupId),
      userId: Int64(AppUserInfo().imId),
      createdAt: Int64(DateTime.now().millisecondsSinceEpoch),
      modelType: ENBackgroundImageModelType.ENBackgroundImageModelChat,
    );

    final req = AddBackgroundReq(imageInfo: backgroundImageInfo);
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/AddBackgroundPic',
      req,
      pbCommData,
    ).then((value) {
      CustomToast.dismiss();
      if (value.statusCode == 200) {
        final rsp = AddBackgroundRsp()..mergeFromBuffer(value.bodyBytes);
        currentBackground.value = rsp.imageInfo.imageUrl;
        dataList.insert(0, rsp.imageInfo);
        eventBus.fire(
          UpdateGroupChatBackground(
            groupId: groupValue.groupId.toInt(),
            data: rsp.imageInfo,
          ),
        );
      }
    }).catchError((err) {
      CustomToast.dismiss();
      LoggerManager().debug('$err');
    });
  }

  Future<void> fetchBackgroundList() async {
    final pbCommData = MakePBCommData(
      toService: Service.commim_uaa,
    );

    final backgroundImageInfo = BackgroundImageInfo(
      id: Int64(groupValue.groupId),
      userId: Int64(AppUserInfo().imId),
      modelType: ENBackgroundImageModelType.ENBackgroundImageModelChat,
    );

    final req = FetchBackgroundPicListReq(
      imageInfo: backgroundImageInfo,
    );
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/FetchBackgroundPicList',
      req,
      pbCommData,
    ).then((value) {
      if (value.statusCode == 200) {
        final rsp = FetchBackgroundPicListRsp()
          ..mergeFromBuffer(value.bodyBytes);
        for (final item in rsp.imageInfoList) {
          debugPrint(
            'fetchBackgroundList item id: ${item.id} imageUrl: ${item.imageUrl}',
          );
        }
        dataList.clear();
        dataList.value = rsp.imageInfoList;
      }
    }).catchError((err) {
      LoggerManager().debug('$err');
    });
  }

  Future<void> deleteBackgroundImageInfo(
    BuildContext context,
    BackgroundImageInfo data,
  ) async {
    CustomToast.loading();
    final pbCommData = MakePBCommData(
      toService: Service.commim_uaa,
    );

    final backgroundImageInfo = BackgroundImageInfo(
      id: data.id,
      userId: Int64(AppUserInfo().imId),
      modelType: ENBackgroundImageModelType.ENBackgroundImageModelChat,
    );

    final req = DelBackgroundPicReq(imageInfo: backgroundImageInfo);
    RpcCallAppGateApi(
      '/pb_grpc_commim_uaa.UAA/DelBackgroundPic',
      req,
      pbCommData,
    ).then((value) {
      CustomToast.dismiss();
      if (value.statusCode == 200) {
        final deleteModel = dataList.firstWhere(
          (element) => element.id == backgroundImageInfo.id,
        );
        dataList.removeWhere(
          (element) => element.id == backgroundImageInfo.id,
        );
        if (deleteModel.id == backgroundImageInfo.id) {
          eventBus.fire(
            DelGroupChatBackground(
              groupId: groupValue.groupId.toInt(),
              data: deleteModel,
            ),
          );
          currentBackground.value = null;
        }
      }
    }).catchError((err) {
      CustomToast.dismiss();
      LoggerManager().debug('$err');
    });
  }

  Future<void> setBackground(
    BackgroundImageInfo data,
  ) async {
    currentBackground.value = data.imageUrl;
    eventBus.fire(
      UpdateGroupChatBackground(
        groupId: groupValue.groupId.toInt(),
        data: data,
      ),
    );
  }
}
