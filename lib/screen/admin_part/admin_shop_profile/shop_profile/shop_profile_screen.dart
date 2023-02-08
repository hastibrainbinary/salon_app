import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/alert.dart';
import 'package:salon_app/screen/user_part/profile_user/widget.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class ShopProfileScreen extends StatelessWidget {
  const ShopProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Stack(
              alignment: Alignment(-0.015, Get.height * 0.0075),
              children: [
                const Image(
                  image: AssetImage(AssetRes.profileBack),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.profile,
                      style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.white),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Container(
                      height: 121,
                      width: 121,
                      decoration: BoxDecoration(
                        color: ColorRes.gray,
                        border: Border.all(color: ColorRes.white, width: 2.5),
                        image: const DecorationImage(
                            image: AssetImage(AssetRes.imageStyel),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(121),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.1),
            Text(
              "Rohan survey",
              style: appTextStyle(
                  color: ColorRes.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Get.height * 0.48,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.editProfile,
                      icon: AssetRes.userL,
                      onTap: () => Get.toNamed(PageRes.adminEditProfileScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.notification,
                      icon: AssetRes.notification,
                      onTap: () => Get.toNamed(PageRes.adminNotificationScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.bankDetails,
                      icon: AssetRes.payment,
                      onTap: () => Get.toNamed(PageRes.adminBankDetailsScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.resetPassword,
                      icon: AssetRes.resetPassword,
                      onTap: () =>
                          Get.toNamed(PageRes.adminResetPasswordsScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      language: "English (US)",
                      title: Strings.language,
                      icon: AssetRes.language,
                      onTap: () => Get.toNamed(PageRes.adminLanguageScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.privacyPolicy,
                      icon: AssetRes.privacyPolice,
                      onTap: () =>
                          Get.toNamed(PageRes.adminPrivacyPoliceScreen),
                    ),
                    SizedBox(height: Get.height * 0.0369),
                    InkWell(
                      onTap: () {
                        logout(context);
                      },
                      child: Container(
                        width: 176,
                        height: 40,
                        decoration: BoxDecoration(
                            color: ColorRes.indicator,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.logout),
                              height: 20,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              Strings.logout,
                              style: appTextStyle(
                                  color: ColorRes.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            )
                          ],
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
    );
  }
}
