import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/modules/mine/pages/blacklist/blacklist_page.dart';
import 'package:quliao/modules/mine/pages/card/card_page.dart';
import 'package:quliao/modules/mine/pages/feedback/feedback_page.dart';
import 'package:quliao/modules/mine/widgets/signin_card.dart';
import 'package:quliao/modules/mine/widgets/wallet_card.dart';
import 'package:quliao/modules/red_packet/password/modify/modify_pay_password_page.dart';
import 'package:quliao/modules/red_packet/password/pay_password_dialog.dart';
import 'package:quliao/net/net_state_view.dart';
import 'dart:math' as math;

import 'package:quliao/pages/chat_index/conversation_avatar.dart';
import 'package:quliao/pages/mine/my_qrcode.dart';
import 'package:quliao/pages/mine/myinfo.dart';
import 'package:quliao/pages/sugget/gripesugget_list.dart';
import 'package:quliao/pages/windows/comm_dialog.dart';
import 'package:quliao/widgets/dialog/manager.dart';

import 'pages/collection/collection_page.dart';
import 'pages/qrcode/mine_qrcode_page.dart';
import 'pages/settings_page.dart';
import 'pages/userinfo_page.dart';
import 'widgets/signin_success_dialog.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  State<StatefulWidget> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  static const _imgHeight = 80.0;
  static const _expandedHeight = 110.0;

  final _controller = Get.put(MinePageController(), tag: 'mine_page');

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GetBuilder<MinePageController>(
      init: _controller,
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: EasyRefresh(
                      header: BuilderHeader(
                        clamping: false,
                        position: IndicatorPosition.locator,
                        triggerOffset: 100000,
                        notifyWhenInvisible: true,
                        builder: (context, state) {
                          const expandedExtent =
                              _expandedHeight - kToolbarHeight;
                          final pixels = state.notifier.position.pixels;
                          final height = state.offset + _imgHeight;
                          final clipEndHeight = pixels < expandedExtent
                              ? _imgHeight
                              : math.max(
                                  0.0, _imgHeight - pixels + expandedExtent);
                          final imgHeight = pixels < expandedExtent
                              ? _imgHeight
                              : math.max(
                                  0.0, _imgHeight - (pixels - expandedExtent));
                          return Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none,
                            children: [
                              ClipPath(
                                clipper: _TrapezoidClipper(
                                  height: height,
                                  clipStartHeight: 0.0,
                                  clipEndHeight: clipEndHeight,
                                ),
                                child: Container(
                                  height: height,
                                  width: double.infinity,
                                  color: colorScheme.primary,
                                ),
                              ),
                              Positioned(
                                top: -1,
                                left: 0,
                                right: 0,
                                child: ClipPath(
                                  clipper: _FillLineClipper(imgHeight),
                                  child: Container(
                                    height: Dimens.gap_dp2,
                                    width: double.infinity,
                                    color: colorScheme.primary,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: GestureDetector(
                                  onTap: () async {
                                    if (Dimens.isDesktop()) {
                                      MyAlertDialog().show(
                                        child: const UserInfoPage(),
                                      );
                                      return;
                                    }

                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) {
                                          return const UserInfoPage();
                                        },
                                      ),
                                    );

                                    controller.update();
                                  },
                                  child: SizedBox(
                                    width: Dimens.gap_dp10 * 7,
                                    height: Dimens.gap_dp10 * 7,
                                    child: Stack(
                                      children: [
                                        ConversationAvatar(
                                          size: Dimens.gap_dp10 * 7,
                                          url: controller
                                              .userInfo.value.appAvatar,
                                          name: controller.userInfo.value
                                                  .nickName.isNotEmpty
                                              ? controller
                                                  .userInfo.value.nickName
                                              : '${controller.userInfo.value.imId}',
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Container(
                                            padding: EdgeInsets.all(
                                              Dimens.gap_dp4,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimens.gap_dp10),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                            child: Icon(
                                              Icons.edit,
                                              size: Dimens.gap_dp12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      onRefresh: () {},
                      child: CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            backgroundColor: colorScheme.primary,
                            foregroundColor: colorScheme.onPrimary,
                            expandedHeight: _expandedHeight,
                            pinned: true,
                            // actions: [
                            //   IconButton(
                            //     splashRadius: Dimens.gap_dp20,
                            //     onPressed: () async {
                            //       await Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //           builder: (BuildContext context) {
                            //             return const SettingsPage();
                            //           },
                            //         ),
                            //       );
                            //       controller.update();
                            //     },
                            //     icon: Icon(
                            //       Icons.settings,
                            //       color: Theme.of(context).colorScheme.surface,
                            //     ),
                            //   ),
                            // ],
                            flexibleSpace: FlexibleSpaceBar(
                              title: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.userInfo.value.nickName,
                                    style: TextStyle(
                                      color: colorScheme.onPrimary,
                                      fontSize: Dimens.font_sp18,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '账号: ${controller.userInfo.value.userName}',
                                        style: TextStyle(
                                          fontSize: Dimens.font_sp11,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface
                                              .withOpacity(0.8),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              centerTitle: true,
                            ),
                          ),
                          const HeaderLocator.sliver(paintExtent: 80),
                          // SliverToBoxAdapter(
                          //   child: Container(
                          //     height: Dimens.gap_dp1 * 70,
                          //     margin: EdgeInsets.symmetric(
                          //       horizontal: Dimens.gap_dp16,
                          //     ).copyWith(top: Dimens.gap_dp20),
                          //     child: Row(
                          //       children: [
                          //         Expanded(
                          //           flex: 5,
                          //           child: Obx(
                          //             () => WalletCard(
                          //               data: controller.walletValue.value,
                          //               hasPayPassword:
                          //                   controller.hasPayPassword.value,
                          //             ),
                          //           ),
                          //         ),
                          //         Gaps.hGap12,
                          //         Expanded(
                          //           flex: 4,
                          //           child: Obx(
                          //             () {
                          //               return SignInCard(
                          //                 data: controller.signUpInfo.value,
                          //               );
                          //             },
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          SliverToBoxAdapter(
                            child: Container(
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
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimens.gap_dp10,
                              ).copyWith(bottom: Dimens.gap_dp10),
                              margin: EdgeInsets.symmetric(
                                horizontal: Dimens.gap_dp16,
                              ).copyWith(top: Dimens.gap_dp20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  // const Divider(
                                  //     color: Color(0XFFF5F5F5), height: 0.5),
                                  // ListTile(
                                  //   title: Text(
                                  //     '投诉建议',
                                  //     style: TextStyle(
                                  //       fontSize: Dimens.font_sp1 * 15,
                                  //     ),
                                  //   ),
                                  //   trailing: const Icon(Icons.chevron_right),
                                  //   onTap: () {
                                  //     if (Dimens.isDesktop()) {
                                  //       MyAlertDialog().show(
                                  //         child: const FeedbackPage(),
                                  //       );
                                  //       return;
                                  //     }
                                  //     Navigator.pushNamed(
                                  //       context,
                                  //       ComplaintSuggetPage.name,
                                  //     );
                                  //   },
                                  //   contentPadding: EdgeInsets.symmetric(
                                  //     vertical: Dimens.gap_dp2,
                                  //   ),
                                  // ),
                                  // const Divider(
                                  //     color: Color(0XFFF5F5F5), height: 0.5),
                                  // ListTile(
                                  //   title: Text(
                                  //     '我的收藏',
                                  //     style: TextStyle(
                                  //       fontSize: Dimens.font_sp1 * 15,
                                  //     ),
                                  //   ),
                                  //   trailing: const Icon(Icons.chevron_right),
                                  //   onTap: () {
                                  //     if (Dimens.isDesktop()) {
                                  //       MyAlertDialog().show(
                                  //         child: const CollectionPage(),
                                  //       );
                                  //       return;
                                  //     }
                                  //     Get.to(CollectionPage());
                                  //   },
                                  //   contentPadding: EdgeInsets.symmetric(
                                  //     vertical: Dimens.gap_dp2,
                                  //   ),
                                  // ),
                                  // ),
                                  // const Divider(
                                  //     color: Color(0XFFF5F5F5), height: 0.5),
                                  // ListTile(
                                  //   title: Text(
                                  //     '我的黑名单',
                                  //     style: TextStyle(
                                  //       fontSize: Dimens.font_sp1 * 15,
                                  //     ),
                                  //   ),
                                  //   trailing: const Icon(Icons.chevron_right),
                                  //   onTap: () {
                                  //     if (Dimens.isDesktop()) {
                                  //       MyAlertDialog().show(
                                  //         child: const BlackListPage(),
                                  //       );
                                  //       return;
                                  //     }
                                  //     Get.to(const BlackListPage());
                                  //   },
                                  //   contentPadding: EdgeInsets.symmetric(
                                  //     vertical: Dimens.gap_dp2,
                                  //   ),
                                  // ),
                                  const Divider(
                                      color: Color(0XFFF5F5F5), height: 0.5),
                                  ListTile(
                                    title: Text(
                                      '我的二维码',
                                      style: TextStyle(
                                        fontSize: Dimens.font_sp1 * 15,
                                      ),
                                    ),
                                    trailing: const Icon(Icons.chevron_right),
                                    onTap: () {
                                      if (Dimens.isDesktop()) {
                                        MyAlertDialog().show(
                                            child: const MineQRCodePage());
                                        return;
                                      }
                                      Navigator.pushNamed(
                                          context, MyQRCode.name);
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: Dimens.gap_dp2,
                                    ),
                                  ),
                                  const Divider(
                                    color: Color(0XFFF5F5F5),
                                    height: 0.5,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        title: Text(
                                          '是否开启好友验证',
                                          style: TextStyle(
                                            fontSize: Dimens.font_sp1 * 15,
                                          ),
                                        ),
                                        trailing: SizedBox(
                                          width: Dimens.gap_dp40,
                                          height: Dimens.gap_dp22,
                                          child: FlutterSwitch(
                                            value: !controller
                                                .userInfo.value.freeAddMeFriend,
                                            width: Dimens.gap_dp40,
                                            height: Dimens.gap_dp22,
                                            borderRadius: Dimens.gap_dp20,
                                            toggleSize: Dimens.gap_dp20,
                                            padding: Dimens.gap_dp2,
                                            onToggle: (value) {
                                              controller.freeAddMeFriend(value);
                                            },
                                            activeColor: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            inactiveColor: Theme.of(context)
                                                .colorScheme
                                                .primary
                                                .withOpacity(0.3),
                                          ),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: Dimens.gap_dp2,
                                          // horizontal: Dimens.gap_dp20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          bottom: Dimens.gap_dp1 * 15,
                                        ),
                                        child: Text(
                                          controller.userInfo.value
                                                  .freeAddMeFriend
                                              ? '已关闭好友申请验证'
                                              : '已开启好友申请验证',
                                          style: const TextStyle(
                                              color: Colors.red, fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0XFFF5F5F5),
                                    height: 0.5,
                                  ),
                                  ListTile(
                                    title: Text(
                                      '卡包',
                                      style: TextStyle(
                                        fontSize: Dimens.font_sp1 * 15,
                                      ),
                                    ),
                                    trailing: const Icon(Icons.chevron_right),
                                    onTap: () {
                                      Get.to(const CardPage());
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: Dimens.gap_dp2,
                                    ),
                                  ),
                                  // Obx(() {
                                  //   final hasPayPassword = controller.hasPayPassword.value;
                                  //   if (hasPayPassword) {
                                  //     return Column(
                                  //       mainAxisSize: MainAxisSize.min,
                                  //       children: [
                                  //         const Divider(
                                  //           color: Color(0XFFF5F5F5),
                                  //           height: 0.5,
                                  //         ),
                                  //         ListTile(
                                  //           title: Text(
                                  //             '支付密码修改',
                                  //             style: TextStyle(
                                  //               fontSize: Dimens.font_sp1 * 15,
                                  //             ),
                                  //           ),
                                  //           trailing: const Icon(Icons.chevron_right),
                                  //           onTap: () {
                                  //             Get.to(const ModifyPayPasswordPage());
                                  //           },
                                  //           contentPadding: EdgeInsets.symmetric(
                                  //             vertical: Dimens.gap_dp2,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     );
                                  //   } else {
                                  //     return const SizedBox.shrink();
                                  //   }
                                  // },),
                                  // if (_controller.hasPayPassword.value)
                                  //   const Divider(
                                  //     color: Color(0XFFF5F5F5),
                                  //     height: 0.5,
                                  //   ),
                                  // if (_controller.hasPayPassword.value)
                                  //   ListTile(
                                  //     title: Text(
                                  //       '支付密码修改',
                                  //       style: TextStyle(
                                  //         fontSize: Dimens.font_sp1 * 15,
                                  //       ),
                                  //     ),
                                  //     trailing: const Icon(Icons.chevron_right),
                                  //     onTap: () {
                                  //       Get.to(const ModifyPayPasswordPage());
                                  //     },
                                  //     contentPadding: EdgeInsets.symmetric(
                                  //       vertical: Dimens.gap_dp2,
                                  //     ),
                                  //   ),
                                  const Divider(
                                    color: Color(0XFFF5F5F5),
                                    height: 0.5,
                                  ),
                                  ListTile(
                                    title: Text(
                                      '设置',
                                      style: TextStyle(
                                        fontSize: Dimens.font_sp1 * 15,
                                      ),
                                    ),
                                    trailing: const Icon(Icons.chevron_right),
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                            return const SettingsPage();
                                          },
                                        ),
                                      );
                                      controller.update();
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: Dimens.gap_dp2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: SizedBox(
                              height: Dimens.gap_dp10 * 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  left: Dimens.gap_dp20,
                  top: Dimens.gap_dp10,
                ),
                height: Dimens.gap_dp10 * 10,
                child: NetStateViewPage(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TrapezoidClipper extends CustomClipper<Path> {
  final double height;
  final double clipStartHeight;
  final double clipEndHeight;

  _TrapezoidClipper({
    required this.height,
    required this.clipStartHeight,
    required this.clipEndHeight,
  });

  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(width, 0);
    path.lineTo(width, height - clipEndHeight);
    path.lineTo(0, height - clipStartHeight);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(_TrapezoidClipper oldClipper) {
    return oldClipper.height != height ||
        oldClipper.clipStartHeight != clipStartHeight ||
        oldClipper.clipEndHeight != clipEndHeight;
  }
}

class _FillLineClipper extends CustomClipper<Path> {
  final double imgHeight;

  _FillLineClipper(this.imgHeight);

  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(width, 0);
    path.lineTo(width, height / 2);
    path.lineTo(0, height / 2 + imgHeight / 2);
    path.lineTo(0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant _FillLineClipper oldClipper) {
    return oldClipper.imgHeight != imgHeight;
  }
}
