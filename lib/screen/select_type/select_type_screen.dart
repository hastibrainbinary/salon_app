import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/alert.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class SelectTypeScreen extends StatelessWidget {
  const SelectTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetRes.selectImage),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetRes.selectBack),
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  top: 510,
                  left: 29,
                  right: 29,
                  child: commonButton(
                    onTap: () {
                      alert(context);
                    },
                    title: Strings.discoverServices,
                    backgroundColor: ColorRes.white,
                    textColor: ColorRes.indicator,
                  ),
                ),
                Positioned(
                  top: 580,
                  left: 29,
                  right: 29,
                  child: commonButton(
                    onTap: () {

                      Get.offAndToNamed(PageRes.adminSignUpMobileScreen);
                    },
                    title: Strings.setUpYourBusiness,
                    backgroundColor: ColorRes.white,
                    textColor: ColorRes.indicator,
                  ),
                ),
                Positioned(
                  top: 650,
                  left: 29,
                  right: 29,
                  child: commonButton(
                    onTap: () {
                      Get.offAndToNamed(PageRes.logInScreen);
                    },
                    title: Strings.logIn,
                    backgroundColor: ColorRes.white,
                    textColor: ColorRes.indicator,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
