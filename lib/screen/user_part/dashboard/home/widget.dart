import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

Widget mostBook() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            Text(
              Strings.mostBookedSalons,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            const Spacer(),
            InkWell(
              onTap: () => Get.toNamed(PageRes.mostBook),
              child: Text(
                Strings.viewAll,
                style: appTextStyle(
                    color: ColorRes.indicator,
                    fontWeight: FontWeight.w500,
                    fontSize: 10),
              ),
            ),
            const SizedBox(width: 4)
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0123),
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  height: Get.height * 0.2,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                        ),
                        child: Stack(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.mostBook),
                            ),
                            Positioned(
                              top: 63,
                              left: 74,
                              child: Container(
                                height: 18,
                                width: 50,
                                padding:
                                    const EdgeInsets.only(left: 3, right: 5),
                                decoration: const BoxDecoration(
                                  color: ColorRes.indicator,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: ColorRes.indicator,
                                    ),
                                    Text(
                                      Strings.open,
                                      style: TextStyle(
                                          color: ColorRes.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0049),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 62,
                        ),
                        child: Text(
                          Strings.serenitySalon,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: [
                            const Image(
                                image: AssetImage(AssetRes.locationIcon),
                                color: ColorRes.black,
                                height: 9),
                            const SizedBox(width: 5),
                            Text(
                              "5 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                            const Icon(
                              Icons.star,
                              color: ColorRes.star,
                              size: 8,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "4.0",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: Get.width * 0.0533),
                Container(
                  height: Get.height * 0.2,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                        ),
                        child: Stack(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.mostBook),
                            ),
                            Positioned(
                              top: 63,
                              left: 74,
                              child: Container(
                                height: 18,
                                width: 50,
                                padding:
                                    const EdgeInsets.only(left: 3, right: 5),
                                decoration: const BoxDecoration(
                                  color: ColorRes.indicator,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: ColorRes.indicator,
                                    ),
                                    Text(
                                      Strings.open,
                                      style: TextStyle(
                                          color: ColorRes.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0049),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 62,
                        ),
                        child: Text(
                          Strings.serenitySalon,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: [
                            const Image(
                                image: AssetImage(AssetRes.locationIcon),
                                color: ColorRes.black,
                                height: 9),
                            const SizedBox(width: 5),
                            Text(
                              "5 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                            const Icon(
                              Icons.star,
                              color: ColorRes.star,
                              size: 8,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "4.0",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}

Widget nearbySalon() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            Text(
              Strings.nearbySalon,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            const Spacer(),
            Text(
              Strings.viewAll,
              style: appTextStyle(
                  color: ColorRes.indicator,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            ),
            const SizedBox(width: 4)
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0123),
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  height: Get.height * 0.2,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                        ),
                        child: Stack(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.nearbySalon),
                            ),
                            Positioned(
                              top: 63,
                              left: 74,
                              child: Container(
                                height: 18,
                                width: 50,
                                padding:
                                    const EdgeInsets.only(left: 3, right: 5),
                                decoration: const BoxDecoration(
                                  color: ColorRes.indicator,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: ColorRes.indicator,
                                    ),
                                    Text(
                                      Strings.open,
                                      style: TextStyle(
                                          color: ColorRes.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0049),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 62,
                        ),
                        child: Text(
                          Strings.serenitySalon,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: [
                            const Image(
                                image: AssetImage(AssetRes.locationIcon),
                                color: ColorRes.black,
                                height: 9),
                            const SizedBox(width: 5),
                            Text(
                              "5 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                            const Icon(
                              Icons.star,
                              color: ColorRes.star,
                              size: 8,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "4.0",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: Get.width * 0.0533),
                Container(
                  height: Get.height * 0.2,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                        ),
                        child: Stack(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.nearbySalon),
                            ),
                            Positioned(
                              top: 63,
                              left: 74,
                              child: Container(
                                height: 18,
                                width: 50,
                                padding:
                                    const EdgeInsets.only(left: 3, right: 5),
                                decoration: const BoxDecoration(
                                  color: ColorRes.indicator,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: ColorRes.indicator,
                                    ),
                                    Text(
                                      Strings.open,
                                      style: TextStyle(
                                          color: ColorRes.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0049),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 62,
                        ),
                        child: Text(
                          Strings.serenitySalon,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: [
                            const Image(
                                image: AssetImage(AssetRes.locationIcon),
                                color: ColorRes.black,
                                height: 9),
                            const SizedBox(width: 5),
                            Text(
                              "5 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                            const Icon(
                              Icons.star,
                              color: ColorRes.star,
                              size: 8,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "4.0",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}
