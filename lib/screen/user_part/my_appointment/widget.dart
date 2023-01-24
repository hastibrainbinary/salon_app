import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

Widget upComing() {
  return Padding(
    padding: const EdgeInsets.only(left: 25 ),
    child: Column(
      children: [
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 286,
                  height: 161,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff94674F).withOpacity(0.2),
                        offset: const Offset(0.0, 4),
                        blurRadius: 23.0,
                      )
                    ],
                    color: ColorRes.gray.withOpacity(0.39),
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 261,
                              height: 121,
                              decoration: BoxDecoration(
                                color: ColorRes.white,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80, top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Strings.serenitySalon,
                                      style: appTextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: ColorRes.black),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          Strings.barber,
                                          style: appTextStyle(
                                            color: ColorRes.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          Strings.rohan,
                                          style: appTextStyle(
                                            color: ColorRes.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 38.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hair cut and Beard trim",
                                            style: appTextStyle(
                                                color: ColorRes.black
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "July 3    04:00 PM",
                                            style: appTextStyle(
                                                color: ColorRes.black
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: Get.height * 0.0221),
                                    Row(
                                      children: [
                                        Text(
                                          Strings.cancel,
                                          style: appTextStyle(
                                              color: ColorRes.red,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: Get.width * 0.1813),
                                        const Image(
                                          image: AssetImage(AssetRes.msg),
                                          height: 20,
                                        ),
                                        SizedBox(width: Get.width * 0.0293),
                                        const Image(
                                          image: AssetImage(AssetRes.timer),
                                          height: 20,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: Get.height * 0.06,
              left: 0,
              child: Container(
                height: 78,
                width: 78,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(AssetRes.detailsScreen),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(78)),
              ),
            ),
            Positioned(
              top: 62,
              right: 47,
              child: InkWell(
                onTap: () => Get.toNamed(PageRes.appointmentBookingScreen),
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      color: ColorRes.indicator,
                      borderRadius: BorderRadius.circular(28)),
                  child: const Icon(Icons.arrow_forward_ios_rounded,
                      color: ColorRes.white, size: 15),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
Widget past() {
  return Padding(
    padding: const EdgeInsets.only(left: 25 ),
    child: Column(
      children: [
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 286,
                  height: 161,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff94674F).withOpacity(0.2),
                        offset: const Offset(0.0, 4),
                        blurRadius: 23.0,
                      )
                    ],
                    color: ColorRes.gray.withOpacity(0.39),
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 261,
                              height: 121,
                              decoration: BoxDecoration(
                                color: ColorRes.white,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80, top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Strings.serenitySalon,
                                      style: appTextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: ColorRes.black),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          Strings.barber,
                                          style: appTextStyle(
                                            color: ColorRes.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          Strings.rohan,
                                          style: appTextStyle(
                                            color: ColorRes.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 38.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hair cut and Beard trim",
                                            style: appTextStyle(
                                                color: ColorRes.black
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "July 3    04:00 PM",
                                            style: appTextStyle(
                                                color: ColorRes.black
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: Get.height * 0.0221),
                                    Row(
                                      children: [
                                        Text(
                                          Strings.book,
                                          style: appTextStyle(
                                              color: ColorRes.indicator,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: Get.width * 0.1813),
                                        const Image(
                                          image: AssetImage(AssetRes.msg),
                                          height: 20,
                                        ),
                                        SizedBox(width: Get.width * 0.0293),
                                        const Image(
                                          image: AssetImage(AssetRes.timer),
                                          height: 20,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: Get.height * 0.06,
              left: 0,
              child: Container(
                height: 78,
                width: 78,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(AssetRes.detailsScreen),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(78)),
              ),
            ),
            Positioned(
              top: 62,
              right: 47,
              child: InkWell(
                onTap: () => Get.toNamed(PageRes.appointmentBookingScreen),
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      color: ColorRes.indicator,
                      borderRadius: BorderRadius.circular(28)),
                  child: const Icon(Icons.arrow_forward_ios_rounded,
                      color: ColorRes.white, size: 15),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
Widget cancelled() {
  return Padding(
    padding: const EdgeInsets.only(left: 25 ),
    child: Column(
      children: [
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 286,
                  height: 161,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff94674F).withOpacity(0.2),
                        offset: const Offset(0.0, 4),
                        blurRadius: 23.0,
                      )
                    ],
                    color: ColorRes.gray.withOpacity(0.39),
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 261,
                              height: 121,
                              decoration: BoxDecoration(
                                color: ColorRes.white,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80, top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Strings.serenitySalon,
                                      style: appTextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: ColorRes.black),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          Strings.barber,
                                          style: appTextStyle(
                                            color: ColorRes.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          Strings.rohan,
                                          style: appTextStyle(
                                            color: ColorRes.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 38.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hair cut and Beard trim",
                                            style: appTextStyle(
                                                color: ColorRes.black
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "July 3    04:00 PM",
                                            style: appTextStyle(
                                                color: ColorRes.black
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: Get.height * 0.0221),
                                    Row(
                                      children: [
                                        Text(
                                          Strings.book,
                                          style: appTextStyle(
                                              color: ColorRes.indicator,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: Get.width * 0.1813),
                                        const Image(
                                          image: AssetImage(AssetRes.msg),
                                          height: 20,
                                        ),
                                        SizedBox(width: Get.width * 0.0293),
                                        const Image(
                                          image: AssetImage(AssetRes.timer),
                                          height: 20,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: Get.height * 0.06,
              left: 0,
              child: Container(
                height: 78,
                width: 78,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(AssetRes.detailsScreen),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(78)),
              ),
            ),
            Positioned(
              top: 62,
              right: 47,
              child: InkWell(
                onTap: () => Get.toNamed(PageRes.appointmentBookingScreen),
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      color: ColorRes.indicator,
                      borderRadius: BorderRadius.circular(28)),
                  child: const Icon(Icons.arrow_forward_ios_rounded,
                      color: ColorRes.white, size: 15),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
