import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

Widget upComing({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(left: 25),
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
                              padding: const EdgeInsets.only(left: 60, top: 10),
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
                                        " ${Strings.barber} : ",
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
                                      InkWell(
                                        onTap: () {
                                          showDialog(
                                            barrierDismissible: false,
                                            barrierColor:
                                                ColorRes.black.withOpacity(0.8),
                                            context: context,
                                            builder: (context) => AlertDialog(
                                              actionsPadding:
                                                  const EdgeInsets.all(0),
                                              contentPadding:
                                                  const EdgeInsets.all(0),
                                              elevation: 0,
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Stack(
                                                alignment:
                                                    const Alignment(1.2, -1.3),
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 194,
                                                    // width: 301,
                                                    decoration: BoxDecoration(
                                                        color: ColorRes.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          Strings
                                                              .cancelAppointmentTxt,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: appTextStyle(
                                                              fontSize: 15,
                                                              color: ColorRes
                                                                  .black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              Get.height * 0.03,
                                                        ),
                                                        SizedBox(
                                                          height: 45,
                                                          width: 219,
                                                          child: commonButton(
                                                              style: appTextStyle(
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                              title: Strings
                                                                  .yesCancelAppointment,
                                                              textColor:
                                                                  ColorRes
                                                                      .white,
                                                              backgroundColor:
                                                                  ColorRes
                                                                      .indicator),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      if (kDebugMode) {
                                                        print("tapped....");
                                                      }
                                                      Get.back();
                                                    },
                                                    child: Container(
                                                      alignment:
                                                          const Alignment(
                                                              1, -1),
                                                      height: 50,
                                                      width: 50,
                                                      color: Colors.transparent,
                                                      child: Transform.scale(
                                                        scale: 0.6,
                                                        child: Image.asset(
                                                          AssetRes.closeIcon,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          Strings.cancel,
                                          style: appTextStyle(
                                              color: ColorRes.red,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(width: Get.width * 0.1813),
                                      const Image(
                                        image: AssetImage(AssetRes.msg),
                                        height: 22,
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
                            ),
                          )
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
              right: 40,
              child: InkWell(
                onTap: () => Get.toNamed(PageRes.detailsScreen),
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
    padding: const EdgeInsets.only(left: 25),
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
                              padding: const EdgeInsets.only(left: 60, top: 10),
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
                                       " ${Strings.barber} : ",
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
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed(
                                              PageRes.bookAppointmentScreen);
                                        },
                                        child: Text(
                                          Strings.book,
                                          style: appTextStyle(
                                              color: ColorRes.indicator,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        ),
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
                            ),
                          )
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
              right: 40,
              child: InkWell(
                onTap: () => Get.toNamed(PageRes.detailsScreen),
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
    padding: const EdgeInsets.only(left: 25),
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
                              padding: const EdgeInsets.only(left: 60, top: 10),
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
                                       " ${Strings.barber} : ",
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
                            ),
                          )
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
                  borderRadius: BorderRadius.circular(78),
                ),
              ),
            ),
            Positioned(
              top: 62,
              right: 40,
              child: InkWell(
                onTap: () => Get.toNamed(PageRes.detailsScreen),
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
