import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class StaffDetailsScreen extends StatelessWidget {
  const StaffDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  // height:
                  //     Get.height > 800 ? Get.height * 0.3 : Get.height * 0.25,
                  width: Get.width,
                  child: const Image(
                    image: AssetImage(AssetRes.mostBookBack),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.width * 0.055, right: Get.width * 0.055),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back_ios_new_rounded,
                            color: ColorRes.white, size: 20),
                      ),
                      const Spacer(),
                      Text(
                        Strings.staffDetails,
                        style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.more_vert,
                          color: ColorRes.white, size: 20),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: Get.height * 0.25, left: 25, right: 25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(AssetRes.detailsScreen),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        SizedBox(width: Get.width * 0.04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Robert Fox",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            Text(
                              "Hair stylist ",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
