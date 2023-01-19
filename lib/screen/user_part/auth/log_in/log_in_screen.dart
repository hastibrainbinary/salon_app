import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/alert.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/user_part/auth/log_in/log_in_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

// ignore: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);
  LogInController controller = Get.put(LogInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.1071),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                Strings.logIn,
                style: appTextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: ColorRes.indicator,
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.0529),
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
                  controller: controller.emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Image(
                        image: AssetImage(AssetRes.email),
                        color: ColorRes.indicator,
                      ),
                    ),
                    hintText: 'Enter email ID',
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
              () => controller.emailError.value == ""
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
                            controller.emailError.value,
                            style: appTextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                                color: ColorRes.starColor),
                          ),
                        ],
                      ),
                    ),
            ),
            SizedBox(height: Get.height * 0.0184),
            Obx(
              () => Container(
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
                    controller: controller.passwordController,
                    obscureText: controller.show.value,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Image(
                          image: AssetImage(AssetRes.password),
                          color: ColorRes.indicator,
                        ),
                      ),
                      hintText: 'Password',
                      fillColor: Colors.transparent,
                      suffixIcon: IconButton(
                        icon: controller.show.value
                            ? const Icon(
                                Icons.visibility_off_outlined,
                                color: ColorRes.indicator,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: ColorRes.indicator,
                              ),
                        onPressed: controller.chang,
                      ),
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
            ),
            Obx(
              () => controller.passwordError.value == ""
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
                            controller.passwordError.value,
                            style: appTextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                                color: ColorRes.starColor),
                          ),
                        ],
                      ),
                    ),
            ),
            SizedBox(height: Get.height * 0.0369),
            commonButton(
                onTap: () {
                  if (controller.validator()) {
                    Get.toNamed(PageRes.dashBoardScreen);
                  }

                },
                title: Strings.logIn,
                textColor: ColorRes.white,
                backgroundColor: ColorRes.indicator),
            SizedBox(height: Get.height * 0.0184),
            InkWell(
              onTap: () {
                password(context);
              },
              child: const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.forgotPassword,
                  style: TextStyle(
                      color: ColorRes.indicator,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.0615),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: ColorRes.indicator,
            ),
            SizedBox(height: Get.height * 0.0307),
            Text(
              textAlign: TextAlign.center,
              Strings.orSignInWith,
              style: appTextStyle(
                  color: ColorRes.indicator,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: Get.height * 0.0246),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorRes.indicator),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image(
                        image: AssetImage(AssetRes.facebook),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorRes.indicator),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image(
                        image: AssetImage(AssetRes.google),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorRes.indicator),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image(
                        image: AssetImage(AssetRes.apple),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.2315),
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
                InkWell(
                  onTap: () => Get.toNamed(PageRes.signUpScreen),
                  child: Text(
                    Strings.signUp,
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
    );
  }
}
