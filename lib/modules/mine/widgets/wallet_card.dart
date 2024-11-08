import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/config/images.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/modules/red_packet/bill/bill_page.dart';
import 'package:quliao/modules/red_packet/password/modify/modify_pay_password_page.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/widgets/rh_extended_image.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    super.key,
    this.data,
    this.hasPayPassword = false,
  });

  final Wallet? data;
  final bool hasPayPassword;

  @override
  Widget build(BuildContext context) {
    final balance = data?.value ?? Int64(0);
    return SizedBox(
      height: Dimens.gap_dp1 * 70,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              Images.imgMineWalletCard.assetName,
              color: const Color(0x1A715716),
            ),
          ),
          Container(
            width: double.infinity,
            height: Dimens.gap_dp1 * 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Dimens.gap_dp10,
              ),
              gradient: const LinearGradient(
                colors: [
                  Color(0x66E3F142),
                  Color(0x4081EB40),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp16,
                  ),
                  child: Row(
                    children: [
                      Text(
                        '钱包余额',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Dimens.font_sp14,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '${balance.toInt() / 100}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF206201),
                            fontSize: Dimens.font_sp18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        '元',
                        style: TextStyle(
                          color: const Color(0xFF444444),
                          fontSize: Dimens.font_sp18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp6,
                  ),
                  child: Row(
                    children: [
                      // hasPayPassword
                      //     ? GestureDetector(
                      //         onTap: () {
                      //           Get.to(
                      //             const ModifyPayPasswordPage(),
                      //           );
                      //         },
                      //         child: Padding(
                      //           padding: EdgeInsets.symmetric(
                      //             horizontal: Dimens.gap_dp4,
                      //           ),
                      //           child: Text(
                      //             '支付密码修改',
                      //             style: TextStyle(
                      //               color: const Color(0xFF58D82B),
                      //               fontSize: Dimens.font_sp12,
                      //             ),
                      //           ),
                      //         ),
                      //       )
                      //     : Gaps.empty,
                      Expanded(
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                MinePageController.to
                                    .openCustomService(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimens.gap_dp2,
                                ),
                                child: Text(
                                  '提现',
                                  style: TextStyle(
                                    color: const Color(0xFF58D82B),
                                    fontSize: Dimens.font_sp12,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                MinePageController.to
                                    .openCustomService(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimens.gap_dp2,
                                ),
                                child: Text(
                                  '充值',
                                  style: TextStyle(
                                    color: const Color(0xFF58D82B),
                                    fontSize: Dimens.font_sp12,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(const BillPage());
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimens.gap_dp2,
                                ),
                                child: Text(
                                  '账单',
                                  style: TextStyle(
                                    color: const Color(0xFF58D82B),
                                    fontSize: Dimens.font_sp12,
                                  ),
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
        ],
      ),
    );
  }
}
