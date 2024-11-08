import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/modules/index/pages/signup/signup_controller.dart';
import 'package:quliao/themes/theme.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/checkbox.dart';
import 'package:quliao/widgets/keep_alive_widget.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

import 'account.dart';
import 'email.dart';

/// 注册页
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<StatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with TickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? animationController;

  final _controller = Get.put(SignUpController());

  final List<AssetImage> bannerList = [
    Images.imgLoginBanner1,
    Images.imgLoginBanner2,
    Images.imgLoginBanner3,
  ];

  @override
  void initState() {
    super.initState();
    _controller.onInit();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController!,
        curve: const Interval(
          0,
          1.0,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    animationController?.forward();
  }

  @override
  void dispose() {
    _controller.onClose();
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _controller.hideKeyboard(context),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: CustomAppBar(
          automaticallyImplyLeading: false,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
        ),
        body: Row(
          children: [
            Dimens.isDesktop()
                ? Expanded(
                    flex: 4,
                    child: Container(
                      color: Theme.of(context).colorScheme.primary,
                      child: RHExtendedImage.asset(
                        Images.imgWebInterFace.assetName,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  )
                : Gaps.empty,
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: SizedBox(
                            width: double.infinity,
                            height: Dimens.gap_dp10 * 30,
                            child: Swiper(
                              autoplay: true,
                              autoplayDelay: 2000,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                final assetImage = bannerList[index];
                                return RHExtendedImage.asset(
                                  assetImage.assetName,
                                  width: double.infinity,
                                  height: double.infinity,
                                );
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: double.infinity,
                            margin: EdgeInsets.only(
                              top: Dimens.isDesktop()
                                  ? Dimens.gap_dp10 * 20
                                  : Dimens.gap_dp10 * 28,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(Dimens.gap_dp16),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: SizedBox(
                                    height: Dimens.gap_dp10 * 10,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              top: Dimens.gap_dp36,
                                              left: Dimens.gap_dp16,
                                            ),
                                            child: RichText(
                                              textAlign: TextAlign.start,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '账号密码注册',
                                                    style: TextStyle(
                                                      fontSize:
                                                          Dimens.font_sp22,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onBackground,
                                                    ),
                                                  ),
                                                  // TextSpan(
                                                  //   text: '有事常来往，没事常联系',
                                                  //   style: TextStyle(
                                                  //     height: 2.2,
                                                  //     fontSize:
                                                  //         Dimens.font_sp12,
                                                  //     color: Theme.of(context)
                                                  //         .colorScheme
                                                  //         .primary,
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: Dimens.gap_dp16,
                                            right: Dimens.gap_dp16,
                                          ),
                                          child: ScaleTransition(
                                            alignment: Alignment.center,
                                            scale: CurvedAnimation(
                                              parent: animationController!,
                                              curve: Curves.fastOutSlowIn,
                                            ),
                                            child: SizedBox(
                                              width: Dimens.gap_dp10 * 8,
                                              height: Dimens.gap_dp10 * 8,
                                              child: const Center(
                                                child: Image(
                                                  image: Images.iconLogo,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: double.infinity,
                                    margin: EdgeInsets.only(
                                      top: Dimens.gap_dp10 * 8,
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Obx(() {
                                            return Container(
                                              height: _controller
                                                              .systemConfig
                                                              .value
                                                              ?.showInvite ==
                                                          false &&
                                                      _controller.currentIndex
                                                              .value ==
                                                          0
                                                  ? Dimens.gap_dp10 * 32
                                                  : Dimens.gap_dp10 * 28,
                                              alignment: Alignment.topCenter,
                                              child: PageView(
                                                controller:
                                                    _controller.pageController,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                children: const [
                                                  KeepAliveWidget(
                                                    child:
                                                        AccountSignUpWidget(),
                                                  ),
                                                  KeepAliveWidget(
                                                    child: EmailSignUpWidget(),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                          Obx(
                                            () {
                                              final currentIndex = _controller
                                                  .currentIndex.value;
                                              if (currentIndex == 0) {
                                                return Gaps.empty;
                                              }
                                              return Container(
                                                margin: EdgeInsets.symmetric(
                                                  horizontal: Dimens.gap_dp36,
                                                ).copyWith(top: Dimens.gap_dp8),
                                                child: CustomButton(
                                                  width: double.infinity,
                                                  height: Dimens.gap_dp48,
                                                  size: CustomButtonSize.large,
                                                  shape:
                                                      CustomButtonShape.stadium,
                                                  onPressed: () {
                                                    _controller.signUp(context);
                                                  },
                                                  child: Text(
                                                    '注册',
                                                    style: TextStyle(
                                                      fontSize:
                                                          Dimens.font_sp16,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          Obx(
                                            () {
                                              final currentIndex = _controller
                                                  .currentIndex.value;
                                              return Container(
                                                margin: EdgeInsets.symmetric(
                                                  horizontal: Dimens.gap_dp36,
                                                ).copyWith(top: Dimens.gap_dp8),
                                                child: CustomButton(
                                                  width: double.infinity,
                                                  height: Dimens.gap_dp48,
                                                  size: CustomButtonSize.large,
                                                  shape:
                                                      CustomButtonShape.stadium,
                                                  backgroundColor:
                                                      currentIndex == 0
                                                          ? Theme.of(context)
                                                              .colorScheme
                                                              .primary
                                                          : Theme.of(context)
                                                              .colorScheme
                                                              .onBackground,
                                                  onPressed: () {
                                                    if (currentIndex == 0) {
                                                      _controller.next(context);
                                                    } else {
                                                      _controller.pre(context);
                                                    }
                                                  },
                                                  child: Text(
                                                    currentIndex == 0
                                                        ? '下一步'
                                                        : '上一步',
                                                    style: TextStyle(
                                                      fontSize:
                                                          Dimens.font_sp16,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: AppTheme.margin,
                                            ).copyWith(top: Dimens.gap_dp12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Obx(() {
                                                  return XCheckBox(
                                                    value: _controller
                                                        .checkboxSelected.value,
                                                    onChanged: (value) {
                                                      _controller
                                                              .checkboxSelected
                                                              .value =
                                                          !_controller
                                                              .checkboxSelected
                                                              .value;
                                                    },
                                                  );
                                                }),
                                                RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '注册登录即代表同意',
                                                        style: TextStyle(
                                                          fontSize:
                                                              Dimens.font_sp12,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onBackground,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '《用户协议》',
                                                        style: TextStyle(
                                                          fontSize:
                                                              Dimens.font_sp12,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                        ),
                                                        recognizer:
                                                            TapGestureRecognizer()
                                                              ..onTap = () {
                                                                /// 查看用户协议
                                                                _controller
                                                                    .checkUserAgreement(
                                                                        context);
                                                              },
                                                      ),
                                                      TextSpan(
                                                        text: '和',
                                                        style: TextStyle(
                                                          fontSize:
                                                              Dimens.font_sp12,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onBackground,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '《隐私协议》',
                                                        style: TextStyle(
                                                          fontSize:
                                                              Dimens.font_sp12,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                        ),
                                                        recognizer:
                                                            TapGestureRecognizer()
                                                              ..onTap = () {
                                                                /// 查看隐私协议
                                                                _controller
                                                                    .checkPrivacyAgreement(
                                                                        context);
                                                              },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (Dimens.isDesktop()) Gaps.vGap20,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
