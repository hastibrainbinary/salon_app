import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class CancelAppointmentScreen extends StatelessWidget {
  const CancelAppointmentScreen({Key? key}) : super(key: key);

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
                        Strings.cancelAppointment,
                        style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
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
                          itemCount: 5,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.toNamed(PageRes.adminStaffDetailsScreen);
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
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                Strings.time1,
                                                style: appTextStyle(
                                                    color: ColorRes.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10),
                                              ),
                                              Text(
                                                "9:00 AM",
                                                style: appTextStyle(
                                                    color: ColorRes.black
                                                        .withOpacity(0.6),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                Strings.services1,
                                                style: appTextStyle(
                                                    color: ColorRes.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10),
                                              ),
                                              Text(
                                                "Hair stylist ",
                                                style: appTextStyle(
                                                    color: ColorRes.black
                                                        .withOpacity(0.6),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                Strings.staff,
                                                style: appTextStyle(
                                                    color: ColorRes.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10),
                                              ),
                                              Text(
                                                "Jane Cooper ",
                                                style: appTextStyle(
                                                    color: ColorRes.black
                                                        .withOpacity(0.6),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                        ],
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
