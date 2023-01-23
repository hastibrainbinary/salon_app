import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/dashboard/most_book/most_book_controller.dart';
import 'package:salon_app/screen/user_part/dashboard/most_book/reviews.dart';
import 'package:salon_app/screen/user_part/dashboard/most_book/services.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';
import 'about.dart';

class MostBookDetailsScreen extends StatelessWidget {
  MostBookDetailsScreen({Key? key}) : super(key: key);
  final MostBookController mostBookController = Get.put(MostBookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              SizedBox(
                height: Get.height * 0.3559,
                width: Get.width,
                child: const Image(
                  image: AssetImage(AssetRes.detailsScreen),
                  fit: BoxFit.fill,
                ),
              ),
              const Positioned(
                top: 40,
                left: 38,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: ColorRes.black,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.3189,
                  ),
                  Container
                    (
                    height: Get.height - (Get.height * 0.3189),
                    width: Get.width,
                    decoration: const BoxDecoration(
                      color: ColorRes.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, right: 30, left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Strings.serenitySalon,
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                SizedBox(width: Get.width * 0.312),
                                const Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: ColorRes.green,
                                ),
                                SizedBox(width: Get.width * 0.0133),
                                Text(
                                  Strings.open,
                                  style: appTextStyle(
                                      color: ColorRes.green,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0307),
                          Obx(
                            () => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    mostBookController.changeTitle(Strings.about);
                                  },
                                  child: Container(
                                    height: 25,
                                    alignment: Alignment.topCenter,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: mostBookController
                                                        .isSelect.value ==
                                                    Strings.about
                                                ? ColorRes.indicator
                                                : Colors.transparent,
                                            width: 2),
                                      ),
                                    ),
                                    child: const Text(
                                      Strings.about,
                                      style: TextStyle(
                                        color: ColorRes.indicator,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: Get.width * 0.208),
                                InkWell(
                                  onTap: () {
                                    mostBookController
                                        .changeTitle(Strings.services);
                                  },
                                  child: Container(
                                    height: 25,
                                    alignment: Alignment.topCenter,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: mostBookController
                                                        .isSelect.value ==
                                                    Strings.services
                                                ? ColorRes.indicator
                                                : Colors.transparent,
                                            width: 2),
                                      ),
                                    ),
                                    child: const Text(
                                      Strings.services,
                                      style: TextStyle(
                                        color: ColorRes.indicator,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: Get.width * 0.208),
                                InkWell(
                                  onTap: () {
                                    mostBookController
                                        .changeTitle(Strings.reviews);
                                  },
                                  child: Container(
                                    height: 25,
                                    alignment: Alignment.topCenter,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: mostBookController
                                                        .isSelect.value ==
                                                    Strings.reviews
                                                ? ColorRes.indicator
                                                : Colors.transparent,
                                            width: 2),
                                      ),
                                    ),
                                    child: const Text(
                                      Strings.reviews,
                                      style: TextStyle(
                                        color: ColorRes.indicator,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0369),
                          Obx(
                            () =>
                                mostBookController.isSelect.value == Strings.about
                                    ? about()
                                    : mostBookController.isSelect.value ==
                                            Strings.services
                                        ? services()
                                        : reviews(),

                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
