import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminLanguageScreen extends StatelessWidget {
  const AdminLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
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
                      width: Get.width * 0.2533,
                    ),
                    Text(
                      Strings.language,
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
          SizedBox(height: Get.height * 0.0369),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.0369),
                Row(
                  children: [
                    Text(
                      Strings.suggested,
                      style: appTextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.black),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.englishUs,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.englishUk,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0369),
                Row(
                  children: [
                    Text(
                      Strings.suggested,
                      style: appTextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.black),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.arabic,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.bengali,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.chinese,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.englishUs,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.englishUk,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.french,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.german,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.hindi,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.spain,
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        border: Border.all(color: ColorRes.indicator),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      /*       child: Container(
                      margin: const EdgeInsets.all(3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: ColorRes.indicator),
                    ),*/
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
