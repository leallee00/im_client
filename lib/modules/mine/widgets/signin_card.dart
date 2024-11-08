import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

import '../pages/signin/signin_page.dart';

class SignInCard extends StatelessWidget {
  const SignInCard({
    super.key,
    this.data,
  });

  final TaskSignUpStatusRsp? data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.gap_dp1 * 70,
      child: Container(
        width: double.infinity,
        height: Dimens.gap_dp1 * 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Dimens.gap_dp10,
          ),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFF38A68),
              Color(0x99EDF12C),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '已经连续签到',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimens.font_sp14,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimens.gap_dp2),
                    child: Text(
                      '${data?.continuTimes ?? 0}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF6B3400),
                        fontSize: Dimens.font_sp18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    '天',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimens.font_sp14,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const SignInPage());
              },
              child: Text(
                '去签到',
                style: TextStyle(
                  color: const Color(0xFFF14646),
                  fontSize: Dimens.font_sp16,
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
