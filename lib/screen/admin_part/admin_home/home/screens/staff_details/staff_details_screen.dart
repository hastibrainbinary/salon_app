import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
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
                                    height: 74,
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
                                          )
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Icon(Icons.more_vert,
                            color: ColorRes.white, size: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: Get.height * 0.25,
              ),
              child: SizedBox(
                height: Get.height * 0.8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount: 15,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.toNamed(PageRes.adminDetailsStaffScreen);
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image:
                                              AssetImage(AssetRes.imageStyel),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  SizedBox(width: Get.width * 0.04),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(height: 15);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
