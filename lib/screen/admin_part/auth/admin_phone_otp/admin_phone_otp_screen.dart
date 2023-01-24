import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:salon_app/screen/admin_part/auth/admin_phone_otp/admin_phone_otp_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminPhoneOtpScreen extends StatelessWidget {
  AdminPhoneOtpScreen({Key? key}) : super(key: key);
  final AdminPhoneOtpController controller = Get.put(AdminPhoneOtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Get.height * 0.1564),
          Obx(
            () => Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "00",
                  style: appTextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.indicator),
                ),
                const SizedBox(width: 10),
                Text(
                  ":",
                  style: appTextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.indicator),
                ),
                const SizedBox(width: 10),
                Text(
                  controller.seconds.value.toString(),
                  style: appTextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.indicator),
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.0098),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                textAlign: TextAlign.center,
                Strings.typeTheVerification,
                style: appTextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: ColorRes.black.withOpacity(0.75),
                ),
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.0431),
          Pinput(
            autofocus: true,
            keyboardType: TextInputType.number,
            length: 4,
            showCursor: true,
            closeKeyboardWhenCompleted: true,
            submittedPinTheme: controller.defaultTheme.copyDecorationWith(
              borderRadius: BorderRadius.circular(8),
            ),
            defaultPinTheme: controller.defaultTheme
                .copyDecorationWith(color: ColorRes.white),
            focusedPinTheme: controller.defaultTheme.copyDecorationWith(
                borderRadius: BorderRadius.circular(8), color: ColorRes.white),
            onCompleted: (pin) => Get.offAndToNamed(PageRes.adminSignUpScreen),
          ),
          SizedBox(height: Get.height * 0.0431),
          Text(
            Strings.didReceive,
            style: appTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorRes.black),
          ),
          SizedBox(height: Get.height * 0.0036),
          const Text(
            Strings.resend,
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorRes.indicator),
          ),
        ],
      ),
    );
  }
}
