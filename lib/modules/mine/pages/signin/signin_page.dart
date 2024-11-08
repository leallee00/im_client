import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/modules/mine/pages/signin/task/signin_task_page.dart';
import 'package:quliao/modules/mine/widgets/signin_item_widget.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/utils/screen.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/keep_alive_widget.dart';

import 'signin_page_controller.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<StatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _controller = Get.put(SignInPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: Images.imgBgPage,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              automaticallyImplyLeading: true,
              backgroundColor: Colors.transparent,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ),
              child: Obx(
                    () {
                  final continueTimes =
                      _controller.signUpInfo.value?.continuTimes ?? 0;
                  return EasyRichText(
                    '已经连续签到$continueTimes天',
                    defaultStyle: TextStyle(
                      fontSize: Dimens.font_sp16,
                      color: const Color(0xFF2C3864),
                      fontWeight: FontWeight.w500,
                    ),
                    patternList: [
                      EasyRichTextPattern(
                        targetString: '${continueTimes}',
                        style: TextStyle(
                          fontSize: Dimens.font_sp18,
                          color: const Color(0xFF2C3864),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Obx(
                  () {
                final signInList =
                    _controller.signData.value?.task.subTask ?? [];
                final signInLog = _controller.signInLog;
                if (signInList.isEmpty) {
                  return Gaps.empty;
                }
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp16,
                  ),
                  margin: EdgeInsets.only(
                    top: Dimens.gap_dp12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: signInList.map(
                          (e) {
                        final index = signInList.indexOf(e);
                        SignUpLog? logData;
                        if (signInLog.isNotEmpty) {
                          logData = signInLog[index];
                        }
                        return SignInItemWidget(
                          data: e,
                          logData: logData,
                          onTap: () {
                            _controller.signUp(context, e, logData);
                          },
                        );
                      },
                    ).toList(),
                  ),
                );
              },
            ),
            Container(
              width: Screen.width,
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp20,
                vertical: Dimens.gap_dp12,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFD7FACF),
                    Color(0xFFC8F5E0),
                  ],
                ),
                borderRadius: BorderRadius.circular(
                  Dimens.gap_dp12,
                ),
              ),
              child: EasyRichText(
                '说明：\n1.刷新周期：每7天刷新\n2.刷新周期内无法重复领取任务奖励\n3.历史任务奖励见我的卡包列表',
                defaultStyle: TextStyle(
                  color: const Color(0xFF3C3C3C),
                  fontSize: Dimens.font_sp14,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
                patternList: [
                  EasyRichTextPattern(
                    targetString: '说明：',
                    style: TextStyle(
                      color: const Color(0xFF3C3C3C),
                      fontSize: Dimens.font_sp16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Gaps.vGap20,
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabBar(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp12,
                          ),
                          isScrollable: true,
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp48,
                          ),
                          indicatorPadding: EdgeInsets.symmetric(
                            horizontal: Dimens.gap_dp54,
                          ),
                          labelColor: Theme.of(context).colorScheme.primary,
                          indicatorColor:
                          Theme.of(context).colorScheme.primary,
                          unselectedLabelColor: const Color(0xFF757575),
                          labelStyle: TextStyle(
                            fontSize: Dimens.font_sp16,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontSize: Dimens.font_sp16,
                            color: const Color(0xFF757575),
                          ),
                          tabs: const [
                            Tab(text: '待完成'),
                            Tab(text: '已完成'),
                          ],
                        ),
                      ],
                    ),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          KeepAliveWidget(
                            child: SignInTaskPage(tag: 'toBeCompleted'),
                          ),
                          KeepAliveWidget(
                            child: SignInTaskPage(tag: 'completed'),
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

  // @override
  // void dispose() {
  //   super.dispose();
  //   if (!kIsWeb && Platform.isAndroid) {
  //     SystemChrome.setSystemUIOverlayStyle(
  //       const SystemUiOverlayStyle(
  //         statusBarColor: Colors.transparent,
  //         statusBarIconBrightness: Brightness.light,
  //       ),
  //     );
  //   }
  // }
}
