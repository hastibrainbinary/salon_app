import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/alert.dart';
import 'package:salon_app/screen/user_part/profile_user/profile_user_controller.dart';
import 'package:salon_app/screen/user_part/profile_user/widget.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class ProfileUserScreen extends StatelessWidget {
  ProfileUserScreen({Key? key}) : super(key: key);
  final ProfileUserController profileUserController =
      Get.put(ProfileUserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              height: Get.height * 0.5,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.editProfile,
                      icon: AssetRes.userL,
                      onTap: () => Get.toNamed(PageRes.editProfileScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.notification,
                      icon: AssetRes.notification,
                      onTap: () => Get.toNamed(PageRes.notificationUserScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.filter,
                      icon: AssetRes.filterU,
                      onTap: () => Get.toNamed(PageRes.filterScreenUser),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.payment,
                      icon: AssetRes.payment,
                      onTap: () => Get.toNamed(PageRes.paymentScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.resetPassword,
                      icon: AssetRes.resetPassword,
                      onTap: () => Get.toNamed(PageRes.resetPasswordsScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      language: "English (US)",
                      title: Strings.language,
                      icon: AssetRes.language,
                      onTap: () => Get.toNamed(PageRes.languageScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.privacyPolicy,
                      icon: AssetRes.userL,
                      onTap: () => Get.toNamed(PageRes.privacyPolicyScreen),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    containerWithTitleProfile(
                      title: Strings.inviteFriends,
                      icon: AssetRes.inviteFriend,
                      onTap: () => Get.toNamed(PageRes.inviteFriendScreen),
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
