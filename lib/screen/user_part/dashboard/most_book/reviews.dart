import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/dashboard/most_book/most_book_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

Widget reviews() {
  final MostBookController mostBookController = Get.put(MostBookController());
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 300,
          width: 315,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  height: 170,
                  width: 315,
                  decoration: BoxDecoration(color: ColorRes.white, boxShadow: [
                    BoxShadow(
                      color: const Color(0xff94674F).withOpacity(0.2),
                      offset: const Offset(0.0, 4),
                      blurRadius: 23.0,
                    ),
                  ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              child: Image(
                                image: AssetImage(AssetRes.person),
                              ),
                            ),
                            SizedBox(width: Get.width * 0.0533),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jane Cooper",
                                  style: appTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: ColorRes.black),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "October 25, 2022",
                                      style: appTextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: ColorRes.black),
                                    ),
                                    SizedBox(width: Get.width * 0.1866),
                                    const RatingStars(
                                      starSize: 9,
                                      value: 5,
                                      valueLabelVisibility: false,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 63, top: 18),
                        child: Text(
                          Strings.loremIpsum,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.heart),
                              height: 20,
                            ),
                            SizedBox(width: Get.width * 0.0266),
                            Text(
                              "18 Likes",
                              style: appTextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: ColorRes.like),
                            ),
                            SizedBox(width: Get.width * 0.08),
                            const Image(
                                image: AssetImage(AssetRes.reply), height: 20),
                            SizedBox(width: Get.width * 0.0266),
                            Text(
                              "Reply",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
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
        SizedBox(height: Get.height * 0.0369),
        Padding(
          padding: const EdgeInsets.only(left: 37),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 245,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: ColorRes.indicator),
                ),
                child: Material(
                  shadowColor: ColorRes.indicator,
                  borderRadius: BorderRadius.circular(8),
                  child: TextFormField(
                    controller: mostBookController.writeController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write a comment.....',
                      fillColor: Colors.transparent,
                      filled: true,
                      hintStyle: appTextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: ColorRes.black.withOpacity(0.15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: Get.width * 0.0533),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: ColorRes.indicator,
                    borderRadius: BorderRadius.circular(8)),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image(
                      image: AssetImage(AssetRes.chat), color: ColorRes.white),
                ),
              ),
              SizedBox(height: Get.width * 0.0369)
            ],
          ),
        ),
      ],
    ),
  );
}
