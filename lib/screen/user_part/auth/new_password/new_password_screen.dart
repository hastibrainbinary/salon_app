import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/alert.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';
import 'new_password_controller.dart';

// ignore: must_be_immutable
class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({Key? key}) : super(key: key);
  NewPassWordController controller = Get.put(NewPassWordController());
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
              SizedBox(height: Get.height * 0.1071),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.newPassword,
                  style: appTextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: ColorRes.indicator),
                ),
              ),
              SizedBox(height: Get.height * 0.0529),
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
                () => controller.newPasswordError.value == ""
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
                              controller.newPasswordError.value,
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
                      controller: controller.confirmPasswordController,
                      obscureText: controller.confirm.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Image(
                            image: AssetImage(AssetRes.password),
                            color: ColorRes.indicator,
                          ),
                        ),
                        hintText: 'Confirm password',
                        fillColor: Colors.transparent,
                        suffixIcon: IconButton(
                          icon: controller.confirm.value
                              ? const Icon(Icons.visibility_off_outlined,
                                  color: ColorRes.indicator)
                              : const Icon(Icons.visibility,
                                  color: ColorRes.indicator),
                          onPressed: controller.reChange,
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
                () => controller.confirmPasswordError.value == ""
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
                              controller.confirmPasswordError.value,
                              style: appTextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  color: ColorRes.starColor),
                            ),
                          ],
                        ),
                      ),
              ),
              SizedBox(height: Get.height * 0.0615),
              commonButton(
                  onTap: () {
                    if (controller.validator()) {
                      reset(context);
                    }
                  },
                  title: Strings.Continue,
                  textColor: ColorRes.white,
                  backgroundColor: ColorRes.indicator)
            ],
          ),
        ),
      ),
    );
  }
}
