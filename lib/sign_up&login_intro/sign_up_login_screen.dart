import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class SignUpLogIngScreen extends StatelessWidget {
  const SignUpLogIngScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: Get.height * 0.0738),
          Container(
            margin: const EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.close,
              color: ColorRes.indicator,
              size: 17.5,
            ),
          ),
          SizedBox(height: Get.height * 0.0985),
          const Center(
            child: Image(
              image: AssetImage(AssetRes.logo1),
              width: 137,
              height: 72,
            ),
          ),
          SizedBox(height: Get.height * 0.0960),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                const Image(
                  image: AssetImage(AssetRes.calImage),
                  height: 32,
                  width: 35,
                ),
                SizedBox(width: Get.height * 0.032),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      Strings.skipTheFrontDesk,
                      style: TextStyle(
                          color: ColorRes.indicator,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: Get.height * 0.0012),
                    Text(
                      Strings.bookBeautyAppointmentsInstantly,
                      style: TextStyle(
                          color: ColorRes.black.withOpacity(0.5),
                          fontSize: 10,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.0369),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                const Image(
                  image: AssetImage(AssetRes.phone),
                  width: 32,
                  height: 35,
                ),
                SizedBox(width: Get.height * 0.032),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      Strings.payWithYourPhone,
                      style: TextStyle(
                          color: ColorRes.indicator,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: Get.height * 0.0012),
                    Text(
                      Strings.noAwkwardTipMoment,
                      style: TextStyle(
                          color: ColorRes.black.withOpacity(0.5),
                          fontSize: 10,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.0369),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                const Image(
                  image: AssetImage(AssetRes.bookmark),
                  width: 32,
                  height: 35,
                ),
                SizedBox(width: Get.height * 0.032),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      Strings.bookmarkYour,
                      style: TextStyle(
                          color: ColorRes.indicator,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: Get.height * 0.0012),
                    Text(
                      Strings.bookWithOver,
                      style: TextStyle(
                          color: ColorRes.black.withOpacity(0.5),
                          fontSize: 10,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.0369),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                const Image(
                  image: AssetImage(AssetRes.crown),
                  width: 32,
                  height: 35,
                ),
                SizedBox(width: Get.height * 0.032),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      Strings.alwaysLookGood,
                      style: TextStyle(
                          color: ColorRes.indicator,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: Get.height * 0.0012),
                    Text(
                      Strings.lasMinuteAppointments,
                      style: TextStyle(
                          color: ColorRes.black.withOpacity(0.5),
                          fontSize: 10,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.0677),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => Get.toNamed(PageRes.signUpMobileScreen),
                child: Container(
                  height: 45,
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorRes.indicator),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      Strings.signUp,
                      style: appTextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: ColorRes.white),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.toNamed(PageRes.logInScreen),
                child: Container(
                  height: 45,
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorRes.indicator),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      Strings.logIn,
                      style: appTextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: ColorRes.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.0246),
          const Center(
            child: Text(
              textAlign: TextAlign.center,
              Strings.skip,
              style: TextStyle(
                  color: ColorRes.indicator,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
