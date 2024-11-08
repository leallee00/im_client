import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/red_packet/bill/bill_page.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/keep_alive_widget.dart';

import '../red_packet_controller.dart';
import 'average_red_packet_page.dart';
import 'lucky_red_packet_page.dart';

/// 群聊发红包
class GroupChatRedPacketPage extends StatefulWidget {
  const GroupChatRedPacketPage({
    super.key,
    required this.targetId,
    this.groupName,
  });

  final int targetId;
  final String? groupName;

  @override
  State<StatefulWidget> createState() => _GroupChatRedPacketPageState();
}

class _GroupChatRedPacketPageState extends State<GroupChatRedPacketPage> {
  final _controller = Get.put(RedPacketController());

  @override
  void initState() {
    super.initState();
    _controller.initGroupId(widget.targetId);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F7F7),
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: const Text('发红包'),
          backgroundColor: const Color(0xFFF7F7F7),
          actionPadding: EdgeInsets.only(
            right: Dimens.gap_dp6,
          ),
          actions: [
            CustomTextButton(
              text: '查账单',
              onTap: () {
                Get.to(const BillPage());
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gaps.vGap20,
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TabBar(
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimens.gap_dp12,
                            ),
                            isScrollable: false,
                            labelPadding: EdgeInsets.symmetric(
                              horizontal: Dimens.gap_dp12,
                            ),
                            indicatorPadding: EdgeInsets.symmetric(
                              horizontal: Dimens.gap_dp1 * 72,
                            ),
                            enableFeedback: false,
                            labelColor: const Color(0xFFFF0016),
                            indicatorColor: const Color(0xFFFF3355),
                            unselectedLabelColor: const Color(0xFF757575),
                            labelStyle: TextStyle(
                              fontSize: Dimens.font_sp16,
                              color: const Color(0xFFFF0016),
                              fontWeight: FontWeight.bold,
                            ),
                            unselectedLabelStyle: TextStyle(
                              fontSize: Dimens.font_sp16,
                              color: const Color(0xFF757575),
                            ),
                            tabs: const [
                              Tab(text: '拼手气'),
                              Tab(text: '平均分'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          KeepAliveWidget(
                            child: LuckyRedPacketPage(
                              groupName: widget.groupName,
                            ),
                          ),
                          KeepAliveWidget(
                            child: AverageRedPacketPage(
                              groupName: widget.groupName,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
