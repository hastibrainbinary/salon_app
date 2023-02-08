import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/user_part/auth/sign_up_mobile/sign_up_phone_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

// ignore: must_be_immutable
class SignUpMobileNumberScreen extends StatelessWidget {
  SignUpMobileNumberScreen({Key? key}) : super(key: key);
  SignUpMobileNumberController controller =
      Get.put(SignUpMobileNumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.1157),
              Center(
                child: Text.rich(
                  TextSpan(
                      text: Strings.lO,
                      style: appTextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,

                          color: ColorRes.black),
                      children:[
                        TextSpan(
                          text: Strings.go,
                          style: appTextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: ColorRes.indicator),

                        )
                      ]
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.0615),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.signUp,
                  style: appTextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                      color: ColorRes.indicator),
                ),
              ),
              SizedBox(height: Get.height * 0.0615),
              Container(
                height: 51,
                width: 325,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: ColorRes.indicator),
                ),
                child: Material(
                  shadowColor: ColorRes.indicator,
                  borderRadius: BorderRadius.circular(12),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: controller.phoneController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Image(
                            image: AssetImage(AssetRes.phoneIcon),

                            color: ColorRes.indicator,
                          ),
                        ),
                      ),
                      hintText: 'Enter mobile number',
                      fillColor: Colors.transparent,
                      filled: true,
                      hintStyle: appTextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: ColorRes.black.withOpacity(0.15),
                      ),
                    ),
                  ),
                ),
              ),
              Obx(
                () => controller.phoneError.value == ""
                    ? SizedBox(height: Get.height * 0.0197)
                    : Container(
                        width: 350,
                        height: 28,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: ColorRes.invalidColor),
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Image(
                              image: AssetImage(
                                AssetRes.invalid,
                              ),
                              height: 14,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              controller.phoneError.value,
                              style: appTextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  color: ColorRes.starColor),
                            ),
                          ],
                        ),
                      ),
              ),
              SizedBox(height: Get.height * 0.0800),
              commonButton(
                  onTap: () {
                    if (controller.validator()) {
                      Get.toNamed(PageRes.phoneOtpScreen);
                    }
                  },
                  title: Strings.Continue,
                  textColor: ColorRes.white,
                  backgroundColor: ColorRes.indicator),
              SizedBox(height: Get.height * 0.3854),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.alreadyHaveAccount,
                    style: appTextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: const Color(0xff555555)),
                  ),
                  SizedBox(width: Get.width*0.0133),
                  InkWell(
                    onTap: () => Get.offAllNamed(PageRes.logInScreen),
                    child: Text(
                      Strings.signIn,
                      style: appTextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: ColorRes.indicator),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.0369),
            ],
          ),
        ),
      ),
    );
  }
}
