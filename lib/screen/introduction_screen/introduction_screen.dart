import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/introduction_screen/introduction_controller.dart';
import 'package:salon_app/screen/introduction_screen/widget/widget.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class IntroductionScreen extends StatelessWidget {
  IntroductionScreen({Key? key}) : super(key: key);
  final IntroductionController controller = Get.put(IntroductionController());

  @override
  Widget build(BuildContext context) {
    controller.init();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorRes.darkBlack,
                  ColorRes.black,
                ],
              ),
            ),
            height: Get.height,
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                PageView.builder(
                  controller: controller.pageController,
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return Obx(
                      () => controller.currentPage.value == 0
                          ? pageViewPart(
                              image: AssetRes.introduction1,
                              title: Strings.findNearBySalonsBookServices,
                              description: Strings.loremIpsumDolorSitAmet,
                              textColor: (Theme.of(context).brightness ==
                                      Brightness.dark)
                                  ? ColorRes.black
                                  : ColorRes.white,
                              context)
                          : controller.currentPage.value == 1
                              ? pageViewPart(
                                  image: AssetRes.introduction2,
                                  title: Strings.styleThatFitYourDailyLifeStyle,
                                  description: Strings.loremIpsumDolorSitAmet,
                                  textColor: (Theme.of(context).brightness ==
                                          Brightness.dark)
                                      ? ColorRes.black
                                      : ColorRes.white,
                                  context)
                              : pageViewPart(
                                  image: AssetRes.introduction3,
                                  title: Strings
                                      .theProfessionalSpecialistsInNearBy,
                                  description: Strings.loremIpsumDolorSitAmet,
                                  textColor: (Theme.of(context).brightness ==
                                          Brightness.dark)
                                      ? ColorRes.black
                                      : ColorRes.white,
                                  context),
                    );
                  },
                  onPageChanged: (val) {
                    controller.selectIndicator.value = val;
                    controller.onChangedValues(val);
                  },
                ),
                Positioned(
                  bottom: Get.height * 0.91,
                  left: 310,
                  child: InkWell(
                    onTap: () => Get.offAndToNamed(PageRes.selectTypeScreen),
                    child: Text(
                      Strings.skip,
                      style: appTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color:
                              (Theme.of(context).brightness == Brightness.dark)
                                  ? ColorRes.black
                                  : ColorRes.white),
                    ),
                  ),
                ),
                Obx(
                  () => Padding(
                    padding: EdgeInsets.only(bottom: Get.height * 0.08),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                        3,
                        (index) {
                          return AnimatedContainer(
                            duration: const Duration(microseconds: 500),
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, right: 1, left: 1),
                            height: 2,
                            width: 18,
                            decoration: BoxDecoration(
                                color: index == controller.currentPage.value
                                    ? ColorRes.indicator
                                    : ColorRes.introLine,
                                borderRadius: BorderRadius.circular(4)),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
