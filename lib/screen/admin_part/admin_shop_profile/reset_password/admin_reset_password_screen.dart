import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/alert.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/admin_part/admin_shop_profile/reset_password/admin_reset_password_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminResetPasswordsScreen extends StatelessWidget {
  AdminResetPasswordsScreen({Key? key}) : super(key: key);
  final AdminResetPasswordController adminResetPasswordController =
  Get.put(AdminResetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage(AssetRes.mostBookBack),
              ),
              Positioned(
                top: 60,
                left: 15,
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back_ios_new_rounded,
                        color: ColorRes.white),
                    SizedBox(
                      width: Get.width * 0.2,
                    ),
                    Text(
                      Strings.resetPassword,
                      style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.0369),
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
                  controller: adminResetPasswordController.currentPasswordController,
                  obscureText: adminResetPasswordController.confirm.value,
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
                      icon: adminResetPasswordController.confirm.value
                          ? const Icon(
                        Icons.visibility_off_outlined,
                        color: ColorRes.indicator,
                        size: 13,
                      )
                          : const Icon(
                        Icons.visibility,
                        color: ColorRes.indicator,
                        size: 13,
                      ),
                      onPressed: adminResetPasswordController.reChange,
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
          SizedBox(height: Get.height * 0.0246),
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
                  controller: adminResetPasswordController.newPasswordController,
                  obscureText: adminResetPasswordController.confirm.value,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Image(
                        image: AssetImage(AssetRes.password),
                        color: ColorRes.indicator,
                      ),
                    ),
                    hintText: 'New password',
                    fillColor: Colors.transparent,
                    suffixIcon: IconButton(
                      icon: adminResetPasswordController.confirm.value
                          ? const Icon(
                        Icons.visibility_off_outlined,
                        color: ColorRes.indicator,
                        size: 13,
                      )
                          : const Icon(
                        Icons.visibility,
                        color: ColorRes.indicator,
                        size: 13,
                      ),
                      onPressed: adminResetPasswordController.reChange,
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
          SizedBox(height: Get.height * 0.0246),
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
                  controller:
                  adminResetPasswordController.confirmNewPasswordController,
                  obscureText: adminResetPasswordController.confirm.value,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Image(
                        image: AssetImage(AssetRes.password),
                        color: ColorRes.indicator,
                      ),
                    ),
                    hintText: 'Confirm new password',
                    fillColor: Colors.transparent,
                    suffixIcon: IconButton(
                      icon: adminResetPasswordController.confirm.value
                          ? const Icon(
                        Icons.visibility_off_outlined,
                        color: ColorRes.indicator,
                        size: 13,
                      )
                          : const Icon(
                        Icons.visibility,
                        color: ColorRes.indicator,
                        size: 13,
                      ),
                      onPressed: adminResetPasswordController.reChange,
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
          SizedBox(height: Get.height * 0.1231),
          commonButton(
              onTap: () {
                resetPassword(context);
              },
              title: Strings.updatePassword,
              textColor: ColorRes.white,
              backgroundColor: ColorRes.indicator)
        ],
      ),
    );
  }
}
