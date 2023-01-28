import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetRes.getStarted), fit: BoxFit.fill),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetRes.backImage), fit: BoxFit.fill),
            ),
          ),
          Column(
            children: [
              const Spacer(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    Strings.bookAnAppointmentForSalon,
                    style: appTextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: ColorRes.white),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              commonButton(
                  onTap: () => Get.toNamed(PageRes.signUpSignInScreen),
                  title: Strings.getStarted,
                  textColor: ColorRes.indicator,
                  backgroundColor: ColorRes.white),
              SizedBox(
                height: Get.height * 0.05,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
