import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

Widget messages() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            Stack(children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(AssetRes.detailsScreen),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50)),
              ),
              Positioned(
                left: 42,
                bottom: 8,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: ColorRes.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )
            ]),
            SizedBox(width: Get.width * 0.04),
            Column(
              children: [
                Text(
                  Strings.serenitySalon,
                  style: appTextStyle(
                      color: ColorRes.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Text(
                  "lorem ipsum door....",
                  style: appTextStyle(
                      color: ColorRes.black.withOpacity(0.42),
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                )
              ],
            ),
            const Spacer(),
            Text(
              Strings.now,
              style: appTextStyle(
                  color: ColorRes.indicator,
                  fontWeight: FontWeight.w500,
                  fontSize: 11),
            )
          ],
        ),
      )
    ],
  );
}

Widget call() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(AssetRes.detailsScreen),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(50)),
            ),
            SizedBox(width: Get.width * 0.04),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.serenitySalon,
                  style: appTextStyle(
                      color: ColorRes.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Text(
                  "Incoming",
                  style: appTextStyle(
                      color: ColorRes.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                )
              ],
            ),
            const Spacer(),
            Text(
              Strings.now,
              style: appTextStyle(
                  color: ColorRes.indicator,
                  fontWeight: FontWeight.w500,
                  fontSize: 11),
            )
          ],
        ),
      )
    ],
  );
}
