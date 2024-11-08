import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/db/obox/model/group_model.dart';
import 'package:quliao/modules/conversation/pages/chat/group/info/qrcode/controller.dart';
import 'package:quliao/pages/chat_private/chat.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/avatar.dart';
import 'package:quliao/widgets/button.dart';

class GroupQRCodePage extends StatefulWidget {
  const GroupQRCodePage({
    super.key,
    required this.groupInfo,
  });

  final GroupModel groupInfo;

  @override
  State<StatefulWidget> createState() => _GroupQRCodePageState();
}

class _GroupQRCodePageState extends State<GroupQRCodePage> {
  final _controller = Get.put(GroupQRCodeController());

  @override
  void initState() {
    super.initState();
    final dataMap = <String, dynamic>{
      'type': 1,
      'data': widget.groupInfo.groupId.toInt(),
      'scanCode': widget.groupInfo.scanCodeJoinGroup,
      'scanCodeKey': widget.groupInfo.scanCodeJoinGroupParam,
    };
    _controller.createQrCode(dataMap);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: const Text('群二维码'),
      ),
      body: Center(
        child: RepaintBoundary(
          key: _controller.qrCodeWidgetKey,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: Dimens.gap_dp40,
            ),
            padding: EdgeInsets.symmetric(
              vertical: Dimens.gap_dp20,
            ),
            clipBehavior: Clip.none,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.all(
                Radius.circular(Dimens.gap_dp6),
              ),
              border: Border.all(
                color: Theme.of(context).colorScheme.outline,
                width: Dimens.gap_dp1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow,
                  offset: Offset(0, Dimens.gap_dp20),
                  blurRadius: Dimens.gap_dp10,
                  spreadRadius: -Dimens.gap_dp10,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: Dimens.gap_dp10 * 22,
                  height: Dimens.gap_dp10 * 22,
                  child: Stack(
                    children: [
                      Image(
                        image: Images.imgQrCode,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Align(
                        child: Obx(
                          () {
                            debugPrint(
                              'qrCode value =====> ${_controller.qrCode.value}',
                            );
                            return QrImageView(
                              data: _controller.qrCode.value,
                              version: QrVersions.auto,
                              size: Dimens.gap_dp10 * 20,
                              backgroundColor: Colors.transparent,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Gaps.vGap10,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UserAvatar(
                      avatar: widget.groupInfo.avatar ?? '',
                      name: widget.groupInfo.name ?? '',
                    ),
                    Gaps.hGap10,
                    Text(
                      widget.groupInfo.name ?? '',
                      maxLines: 2,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp36,
                    vertical: Dimens.gap_dp12,
                  ),
                  child: CustomButton(
                    width: double.infinity,
                    height: Dimens.gap_dp40,
                    size: CustomButtonSize.medium,
                    shape: CustomButtonShape.stadium,
                    onPressed: () async {
                      await _controller.capturePng();
                    },
                    child: Text(
                      '保存二维码',
                      style: TextStyle(
                        fontSize: Dimens.font_sp14,
                      ),
                    ),
                  ),
                ),
                Text(
                  '使用uc扫描以上二维码，加入群聊',
                  style: TextStyle(
                    fontSize: Dimens.font_sp12,
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
