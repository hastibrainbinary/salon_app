import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/admin_part/profile/profile_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminProfileScreen extends StatelessWidget {
  AdminProfileScreen({Key? key}) : super(key: key);
  final AdminProfileController profileController =
      Get.put(AdminProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.0738),
            Obx(
              () => (profileController.imgPath.value != "")
                  ? const SizedBox()
                  : const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Icon(
                        Icons.close,
                        color: ColorRes.indicator,
                        size: 20,
                      ),
                    ),
            ),
            SizedBox(height: Get.height * 0.0985),
            Center(
              child: Text.rich(
                TextSpan(
                    text: Strings.lO,
                    style: appTextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 40,
                        color: ColorRes.black),
                    children: [
                      TextSpan(
                        text: Strings.go,
                        style: appTextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            color: ColorRes.indicator),
                      )
                    ]),
              ),
            ),
            SizedBox(height: Get.height * 0.0738),
            Center(
              child: Text(
                Strings.profilePhoto,
                style: appTextStyle(
                    color: ColorRes.indicator,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
            ),
            Center(
              child: Text(
                Strings.addYourProfilePhoto,
                style: appTextStyle(
                    color: ColorRes.black.withOpacity(0.5),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            ),
            SizedBox(height: Get.height * 0.0591),
            Center(
              child: DottedBorder(
                borderType: BorderType.Circle,
                dashPattern: const [10, 6, 10, 6, 10, 6],
                color: ColorRes.indicator,
                child: Obx(
                  () => (profileController.imgPath.value != "")
                      ? Padding(
                          padding: const EdgeInsets.all(21),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(226),
                            child: Container(
                              height: 226,
                              width: 226,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(247),
                              ),
                              child: Image.file(
                                File(profileController.imgPath.value),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          height: 247,
                          width: 247,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(247),
                          ),
                          child: Center(
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(21),
                              height: 205,
                              width: 205,
                              decoration: BoxDecoration(
                                color: ColorRes.gray,
                                borderRadius: BorderRadius.circular(205),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image(
                                    image: const AssetImage(AssetRes.userIcon),
                                    color: ColorRes.black.withOpacity(0.21),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.0591),
            Obx(
              () => (profileController.imgPath.value != "")
                  ? Center(
                      child: commonButton(
                          onTap: () => Get.offAndToNamed(
                              PageRes.adminDashBoardScreen,
                              arguments: profileController.imgPath.value),
                          title: Strings.Continue,
                          textColor: ColorRes.white,
                          backgroundColor: ColorRes.indicator),
                    )
                  : Center(
                      child: commonButton(
                          onTap: () {
                            settingModalBottomSheet(context);
                          },
                          title: Strings.addProfilePhoto,
                          textColor: ColorRes.white,
                          backgroundColor: ColorRes.indicator),
                    ),
            ),
            SizedBox(height: Get.height * 0.0184),
            Obx(
              () => (profileController.imgPath.value != "")
                  ? const SizedBox()
                  : InkWell(
                      onTap: () => Get.offAndToNamed(
                          PageRes.adminDashBoardScreen,
                          arguments: profileController.imgPath.value),
                      child: Center(
                        child: Text(
                          Strings.skip,
                          style: appTextStyle(
                              color: ColorRes.black.withOpacity(0.5),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

Future settingModalBottomSheet(context) {
  final AdminProfileController profileController =
      Get.put(AdminProfileController());
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (BuildContext bc) {
      return Container(
        height: 406,
        decoration: const BoxDecoration(
          color: ColorRes.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40, top: 40),
              child: Icon(
                Icons.close,
                color: ColorRes.indicator,
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Text(
                Strings.addPhoto,
                style: appTextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: ColorRes.indicator),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 2),
              child: Text(
                Strings.selectAContent,
                style: appTextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: ColorRes.black.withOpacity(0.75),
                ),
              ),
            ),
            SizedBox(height: Get.height * .0492),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () => profileController.onTapCamera(),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: ColorRes.indicator,
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: ColorRes.white,
                          size: 35,
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    Center(
                      child: Text(
                        Strings.captureFromCamera,
                        style: appTextStyle(
                            color: ColorRes.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                SizedBox(width: Get.width * 0.2933),
                Column(
                  children: [
                    InkWell(
                      onTap: () => profileController.onTapGallery(),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: ColorRes.indicator,
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(18),
                          child: /*profileController.image!.path.isEmpty?*/
                              Image(
                            image: AssetImage(AssetRes.gallery),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    Center(
                      child: Text(
                        Strings.uploadFromGallery,
                        style: appTextStyle(
                            color: ColorRes.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
