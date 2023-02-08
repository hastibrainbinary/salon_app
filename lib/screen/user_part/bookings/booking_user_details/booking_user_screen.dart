import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/bookings/booking_user_details/booking_user_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class BookingUserDetails extends StatelessWidget {
  BookingUserDetails({Key? key}) : super(key: key);
  final BookingUserController bookingUserController =
      Get.put(BookingUserController());

  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage(AssetRes.bookingUser),
                  fit: BoxFit.fill,
                ),
              ),
              const Positioned(
                top: 40,
                left: 38,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: ColorRes.black,
                ),
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
                          SizedBox(height: Get.height * 0.0246),
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
                                            : const EdgeInsets.only(right: 12),
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Image.asset(AssetRes.personImg),
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
                                                    BorderRadius.circular(8),
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
                                  ),
                                ),
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
                            padding: const EdgeInsets.only(left: 30),
                            child: SizedBox(
                              height: 300,
                              width: 315,
                              child: ListView.separated(
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
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              height: 50,
                              width: 315,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: ColorRes.indicator),
                              ),
                              child: Material(
                                shadowColor: ColorRes.indicator,
                                borderRadius: BorderRadius.circular(8),
                                child: TextFormField(
                                  controller:
                                      bookingUserController.writeController,
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
