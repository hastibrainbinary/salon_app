import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

Widget mostBookDetails() {
  return Scaffold(
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
            Column(
              children: [
                SizedBox(
                  height: Get.height * 0.3189,
                ),
                Container(
                  height: Get.height - (Get.height * 0.3189),
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
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
                      )
                    ],
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
