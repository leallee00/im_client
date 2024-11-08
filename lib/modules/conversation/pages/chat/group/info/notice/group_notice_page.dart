import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/modules/conversation/pages/chat/group/info/notice/controller.dart';
import 'package:quliao/net/socket.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';
import 'package:quliao/pb/pb_pub/service.pbenum.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/input.dart';
import 'package:quliao/widgets/loading.dart';

class GroupNoticePage extends StatefulWidget {
  const GroupNoticePage({
    super.key,
    required this.groupId,
    this.notice,
    this.hasAdminRights = false,
  });

  final int groupId;
  final String? notice;
  final bool hasAdminRights;

  @override
  State<StatefulWidget> createState() => _GroupNoticePageState();
}

class _GroupNoticePageState extends State<GroupNoticePage> {
  final GroupNoticeController _controller = GroupNoticeController();

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Get.put(_controller);
    _controller.editingController.text = widget.notice ?? '';
    if (widget.hasAdminRights) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _focusNode.requestFocus();
      });

      eventBus.on<EventOnNetMsg>().listen((event) async {
        LoggerManager()
            .debug('group notice page pbName =======> ${event.pbMsg.pbName}');
        if (event.pbMsg.pbName.contains('NoticeChangeNotify')) {
          NoticeChangeNotify rsp = NoticeChangeNotify()
            ..mergeFromBuffer(event.pbMsg.pbData);
          LoadingDialog.dismiss();
          Navigator.pop(context, rsp.notice);
          showToast('群公告已更新');
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black87,
          ),
          titleSpacing: 0,
          elevation: 0,
          title: Text(
            '群公告',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black87,
            ),
          ),
          actions: widget.hasAdminRights
              ? [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h),
              child: TextButton(
                onPressed: () {
                  LoadingDialog.show();
                  Client.instance.sendMsg(
                    EditNoticeReq()
                      ..notice = _controller.editingController.text,
                    Int64(widget.groupId),
                    MakePBCommData(
                      aimId: Int64(widget.groupId),
                      groupId: Int64(widget.groupId),
                      toService: Service.group,
                    ),
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                  ),
                ),
                child: Text(
                  '保存',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          ]
              : null,
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding: EdgeInsets.all(12.w),
              child: widget.hasAdminRights
                  ? TextField(
                controller: _controller.editingController,
                keyboardType: TextInputType.text,
                maxLines: 6,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: '请输入',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: Dimens.font_sp14,
                    textBaseline: TextBaseline.ideographic,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: Dimens.gap_dp1 / 2,
                    ),
                  ),
                ),
              )
                  : Text(
                widget.notice ?? '',
                style: TextStyle(
                  fontFamily: 'Sans',
                  fontSize: 14.sp,
                  height: 1.3,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
