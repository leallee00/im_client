import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pb/pb_msg/user_center/userCenter.pb.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class RedPacketMessage extends StatefulWidget {
  const RedPacketMessage({
    super.key,
    required this.message,
    required this.messageWidth,
    this.onTap,
  });

  /// [types.CustomMessage].
  final types.CustomMessage message;

  /// Maximum message width.
  final int messageWidth;
  final Function()? onTap;

  @override
  State<StatefulWidget> createState() => _RedPacketMessageState();
}

class _RedPacketMessageState extends State<RedPacketMessage> {
  RedPacketInfoRsp? rsp;
  bool isPrivate = false;

  @override
  void initState() {
    super.initState();
    if (null != widget.message.metadata) {
      final json = widget.message.metadata!['data'];
      final chatType = widget.message.metadata!['chatType'];
      if (mounted) {
        setState(() {
          isPrivate = chatType == 'private';
          rsp = RedPacketInfoRsp.fromJson(json);
          LoggerManager().error(
            'RedPacketMessage message data ========> ${rsp.toString()} \n chatType ========> $chatType',
          );
        });
      }
    }
    eventBus.on<UpdateRedPacketState>().listen((event) {
      if (event.id == widget.message.id) {
        if (null != widget.message.metadata) {
          widget.message.metadata!['data'] = event.data.writeToJson();
        }
        if (mounted) {
          setState(() {
            rsp = event.data;
          });
        }
      }
    });
  }

  String getStatusValue() {
    /// 先判断是否已领取
    /// 如果未领取，则判断红包状态
    /// Going：待领取
    final isReceived = rsp?.isMeReceived ?? false;
    final redPacketStatus = rsp?.data.status;
    if (isReceived) {
      return '已领取';
    } else {
      if (redPacketStatus == RedPacketStatus.Going) {
        return '待领取';
      } else if (redPacketStatus == RedPacketStatus.Completed) {
        if (isPrivate) {
          return '已被领取';
        }
        return '已被抢完';
      } else if (redPacketStatus == RedPacketStatus.Overtime) {
        return '已超时';
      } else {
        return '未知状态';
      }
    }
  }

  bool enabled() {
    final isReceived = rsp?.isMeReceived ?? false;
    final redPacketStatus = rsp?.data.status;
    return !isReceived && redPacketStatus == RedPacketStatus.Going;
  }

  @override
  Widget build(BuildContext context) {
    final currentUserIsAuthor =
        '${AppUserInfo().imId}' == widget.message.author.id;

    final description = rsp?.data.description ?? '';
    final content = description.isEmpty ? '恭喜发财，大吉大利' : description;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: Dimens.gap_dp10 * 10,
        constraints: BoxConstraints(
          maxWidth: widget.messageWidth.toDouble() - Dimens.gap_dp10 * 5,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Images.imgBgRedPacketLeft,
            fit: BoxFit.cover,
            colorFilter: enabled()
                ? null
                : ColorFilter.mode(
                    Colors.white.withOpacity(0.5),
                    BlendMode.srcOver,
                  ),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RHExtendedImage.asset(
                Images.iconRedPacketSmall.assetName,
                width: Dimens.gap_dp52,
                height: Dimens.gap_dp1 * 68,
              ),
              Gaps.hGap10,
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: Dimens.gap_dp14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          content,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            // color: const Color(0xFFCD1805),
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: Dimens.font_sp1 * 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        getStatusValue(),
                        style: TextStyle(
                          // color: const Color(0xFFCD1805),
                          color: Theme.of(context).colorScheme.surface,
                          fontSize: Dimens.font_sp12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
