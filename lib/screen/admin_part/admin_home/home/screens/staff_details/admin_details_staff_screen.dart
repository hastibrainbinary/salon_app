import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminDetailsStaffScreen extends StatelessWidget {
  const AdminDetailsStaffScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              Stack(
                alignment: const Alignment(0, -0.85),
                children: [
                  Container(
                    // height:
                    //     Get.height > 800 ? Get.height * 0.3 : Get.height * 0.25,
                    width: Get.width,
                    child: const Image(
                      image: AssetImage(AssetRes.bookingUser),
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
                              color: ColorRes.black, size: 20),
                        ),
                        const Spacer(),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            showDialog(
                              barrierColor: ColorRes.black.withOpacity(0.8),
                              context: context,
                              builder: (context) => AlertDialog(
                                elevation: 0,
                                contentPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                insetPadding: EdgeInsets.only(
                                    bottom: Get.height * 0.75,
                                    left: Get.width * 0.6),
                                content: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(
                                          top: 5, right: Get.width * 0.055),
                                      height: 101,
                                      width: 128,
                                      color: ColorRes.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Get.back();
                                              Get.toNamed(
                                                  PageRes.addProfileScreen);
                                            },
                                            child: Text(
                                              Strings.addProfile,
                                              style: appTextStyle(
                                                  color: ColorRes.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.back();
                                              showDialog(
                                                barrierDismissible: false,
                                                barrierColor: ColorRes.black
                                                    .withOpacity(0.8),
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                  actionsPadding:
                                                      const EdgeInsets.all(0),
                                                  contentPadding:
                                                      const EdgeInsets.all(0),
                                                  elevation: 0,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  content: Stack(
                                                    alignment: const Alignment(
                                                        1.2, -1.3),
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 194,
                                                        // width: 301,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                ColorRes.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              Strings
                                                                  .areYouSureDeleteProfile,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
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
                                                                  Get.height *
                                                                      0.03,
                                                            ),
                                                            SizedBox(
                                                              height: 45,
                                                              width: 219,
                                                              child:
                                                                  commonButton(
                                                                      onTap:
                                                                          () {
                                                                        Get.back();
                                                                        Get.offNamed(
                                                                          PageRes
                                                                              .staffDetailsScreen,
                                                                        );
                                                                      },
                                                                      style: appTextStyle(
                                                                          fontSize:
                                                                              11,
                                                                          fontWeight: FontWeight
                                                                              .w600),
                                                                      title: Strings
                                                                          .yesDeletePost,
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
                                                          color: Colors
                                                              .transparent,
                                                          child:
                                                              Transform.scale(
                                                            scale: 0.6,
                                                            child: Image.asset(
                                                              AssetRes
                                                                  .closeIcon,
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
                                              Strings.deleteProfile,
                                              style: appTextStyle(
                                                  color: ColorRes.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.back();
                                              Get.toNamed(PageRes
                                                  .adminStaffEditProfileScreen);
                                            },
                                            child: Text(
                                              Strings.editProfile,
                                              style: appTextStyle(
                                                  color: ColorRes.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.more_vert,
                            color: ColorRes.black,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: Get.height * 0.3189),
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
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Robert Fox",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Serenity salon",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Text(
                                  "5+ year experience",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Text(
                                  "Hair Stylist",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0246),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 30),
                            child: Text(
                              Strings.about,
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.01),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 30),
                            child: Text(
                              Strings.lorem,
                              style: appTextStyle(
                                  color: ColorRes.black.withOpacity(0.75),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0246),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 30),
                            child: Text(
                              Strings.images,
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0246),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                Container(
                                  height: 147,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(AssetRes.imageStyel),
                                    ),
                                  ),
                                ),
                                SizedBox(width: Get.width * 0.04),
                                Container(
                                  height: 147,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(AssetRes.imageStyel),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0246),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                ...List.generate(
                                    4,
                                    (index) => Stack(
                                          children: [
                                            Container(
                                              margin: (index == 3)
                                                  ? EdgeInsets.zero
                                                  : const EdgeInsets.only(
                                                      right: 12),
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Image.asset(
                                                  AssetRes.personImg),
                                            ),
                                            (index == 3)
                                                ? Container(
                                                    alignment: Alignment.center,
                                                    margin: (index == 3)
                                                        ? EdgeInsets.zero
                                                        : const EdgeInsets.only(
                                                            right: 12),
                                                    height: 70,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                      color: ColorRes.black
                                                          .withOpacity(0.6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Text(
                                                      "+10",
                                                      style: appTextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  )
                                                : const SizedBox(),
                                          ],
                                        )),
                              ],
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0246),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              Strings.reviews,
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              // height: 300,
                              width: Get.width,
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: 170,
                                      width: 315,
                                      decoration: BoxDecoration(
                                          color: ColorRes.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0xff94674F)
                                                  .withOpacity(0.2),
                                              offset: const Offset(0.0, 4),
                                              blurRadius: 23.0,
                                            ),
                                          ]),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, left: 20),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const CircleAvatar(
                                                  radius: 20,
                                                  child: Image(
                                                    image: AssetImage(
                                                        AssetRes.person),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: Get.width * 0.0533),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Jane Cooper",
                                                      style: appTextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              ColorRes.black),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "October 25, 2022",
                                                          style: appTextStyle(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: ColorRes
                                                                  .black),
                                                        ),
                                                        SizedBox(
                                                            width: Get.width *
                                                                0.1866),
                                                        const RatingStars(
                                                          starSize: 9,
                                                          value: 5,
                                                          valueLabelVisibility:
                                                              false,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 63, top: 18),
                                            child: Text(
                                              Strings.loremIpsum,
                                              style: appTextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: ColorRes.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15, left: 20),
                                            child: Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      AssetRes.heart),
                                                  height: 20,
                                                ),
                                                SizedBox(
                                                    width: Get.width * 0.0266),
                                                Text(
                                                  "18 Likes",
                                                  style: appTextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: ColorRes.like),
                                                ),
                                                SizedBox(
                                                    width: Get.width * 0.08),
                                                const Image(
                                                    image: AssetImage(
                                                        AssetRes.reply),
                                                    height: 20),
                                                SizedBox(
                                                    width: Get.width * 0.0266),
                                                Text(
                                                  "Reply",
                                                  style: appTextStyle(
                                                      color: ColorRes.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(height: 25);
                                  },
                                  itemCount: 2),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0246),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
