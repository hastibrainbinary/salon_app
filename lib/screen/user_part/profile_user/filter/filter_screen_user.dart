import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class FilterScreenUser extends StatelessWidget {
  const FilterScreenUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage(AssetRes.mostBookBack),
              ),
              Positioned(
                top: 60,
                left: 15,
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back_ios_new_rounded,
                        color: ColorRes.white),
                    SizedBox(
                      width: Get.width * 0.3466,
                    ),
                    Text(
                      Strings.filter,
                      style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
           height:560 ,
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  color: ColorRes.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: Get.height * 0.0369),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        textAlign: TextAlign.start,
                        Strings.category,
                        style: appTextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: ColorRes.black),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0184),
                    Container(
                      width: 320,
                      height: 100,
                      /*  decoration: BoxDecoration(
                         border: Border.all()
                        ),*/
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    border: Border.all(color: ColorRes.indicator),
                                    color: ColorRes.white,
                                    borderRadius: BorderRadius.circular(70),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xff94674F)
                                            .withOpacity(0.2),
                                        offset: const Offset(0.0, 4),
                                        blurRadius: 23.0,
                                      )
                                    ]),
                                child: const Image(
                                  image: AssetImage(AssetRes.hairCut),
                                ),
                              ),
                              Text(
                                "Hair cut",
                                style: appTextStyle(
                                    color: ColorRes.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 12);
                        },
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0369),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        textAlign: TextAlign.start,
                        Strings.ratting,
                        style: appTextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: ColorRes.black),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0184),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 75,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.star,
                                    size: 22, color: ColorRes.star),
                                Text(
                                  "All",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: Get.width * 0.0266),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 75,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.star,
                                    size: 22, color: ColorRes.star),
                                Text(
                                  "5",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: Get.width * 0.0266),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 75,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.star,
                                    size: 22, color: ColorRes.star),
                                Text(
                                  "4",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: Get.width * 0.0266),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 75,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.star,
                                    size: 22, color: ColorRes.star),
                                Text(
                                  "3",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0184),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        textAlign: TextAlign.start,
                        Strings.distance,
                        style: appTextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: ColorRes.black),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0184),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.location_on_outlined,
                                    size: 22, color: ColorRes.indicator),
                                Text(
                                  "2-5 km",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: Get.width * 0.0266),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.location_on_outlined,
                                    size: 22, color: ColorRes.indicator),
                                Text(
                                  "5-10 km",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: Get.width * 0.0266),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.location_on_outlined,
                                    size: 22, color: ColorRes.indicator),
                                Text(
                                  "10-15 km",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          /*  Container(
                      height: 250,
                      decoration: BoxDecoration(color: ColorRes.green),
                    )*/
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0184),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        textAlign: TextAlign.start,
                        Strings.gender,
                        style: appTextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: ColorRes.black),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0184),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Image(
                                    image: AssetImage(AssetRes.female), height: 20),
                                SizedBox(width: Get.width * 0.032),
                                Text(
                                  Strings.female,
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: Get.width * 0.0266),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Image(
                                    image: AssetImage(AssetRes.male), height: 20),
                                SizedBox(width: Get.width * 0.032),
                                Text(
                                  Strings.male,
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: Get.width * 0.0266),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              border: Border.all(color: ColorRes.indicator),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    "Both",
                                    style: appTextStyle(
                                        color: ColorRes.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0492),
                    Container(
                      height: 50,
                      width: 260,
                      decoration: BoxDecoration(
                        color: ColorRes.indicator,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          Strings.applyFilter,
                          style: appTextStyle(
                              color: ColorRes.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0123),
                    Text(
                      textAlign: TextAlign.start,
                      Strings.resetFilter,
                      style: appTextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: ColorRes.black.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0492),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
