import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminStaffDetailsScreen extends StatelessWidget {
  const AdminStaffDetailsScreen({Key? key}) : super(key: key);

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
                height: Get.height * 0.4559,
                width: Get.width,
                child: const Image(
                  image: AssetImage(AssetRes.adminBack),
                  fit: BoxFit.fill,
                ),
              ),
          Positioned(
                top: 40,
                left: 38,
                child: InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: ColorRes.black,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: Get.height * 0.4189),
                  Container(
                    height: Get.height - (Get.height * 0.4189),
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
                                Row(
                                  children: [
                                    Text(
                                      "Robert Fox",
                                      style: appTextStyle(
                                          color: ColorRes.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(width: 140),
                                    const Image(
                                        image: AssetImage(AssetRes.chat),
                                        height: 15),
                                    const SizedBox(width: 23),
                                    const Image(
                                        image: AssetImage(AssetRes.phoneBoder),
                                        height: 15),
                                  ],
                                ),
                                Text(
                                  "rohansurve63@gmail.com",
                                  style: appTextStyle(
                                      color: ColorRes.black.withOpacity(0.65),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Text(
                                  "2464 Royal Ln. Mesa, New Jersey 45463",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: ColorRes.black.withOpacity(0.65),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                SizedBox(height: Get.height * 0.0369),
                                Text(
                                  Strings.appointmentDetails,
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                SizedBox(height: Get.height * 0.0123),
                                Row(
                                  children: [
                                    Text(
                                      " ${Strings.bookingId} :",
                                      style: appTextStyle(
                                          color: ColorRes.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "5486",
                                      style: appTextStyle(
                                        color: ColorRes.black.withOpacity(0.6),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: Get.height * 0.0123),
                                Row(
                                  children: [
                                    Text(
                                     " ${Strings.date} :",
                                      style: appTextStyle(
                                          color: ColorRes.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "3 July 2023",
                                      style: appTextStyle(
                                        color: ColorRes.black.withOpacity(0.6),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: Get.height * 0.0123),
                                Row(
                                  children: [
                                    Text(
                                      "${Strings.time} : ",
                                      style: appTextStyle(
                                          color: ColorRes.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "9:00 AM",
                                      style: appTextStyle(
                                        color: ColorRes.black.withOpacity(0.6),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: Get.height * 0.0123),
                                Row(
                                  children: [
                                    Text(
                                      " ${Strings.services1} :",
                                      style: appTextStyle(
                                          color: ColorRes.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "Hair Cutting",
                                      style: appTextStyle(
                                        color: ColorRes.black.withOpacity(0.6),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: Get.height * 0.0123),
                                Row(
                                  children: [
                                    Text(
                                      Strings.staff,
                                      style: appTextStyle(
                                          color: ColorRes.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "Jane Cooper",
                                      style: appTextStyle(
                                        color: ColorRes.black.withOpacity(0.6),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: Get.height * 0.0123),
                                Row(
                                  children: [
                                    Text(
                                      Strings.totalCharge,
                                      style: appTextStyle(
                                          color: ColorRes.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "\$ 100",
                                      style: appTextStyle(
                                        color: ColorRes.black.withOpacity(0.6),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: Get.height * 0.0123),
                                Row(
                                  children: [
                                    Text(
                                      " ${Strings.payment} :",
                                      style: appTextStyle(
                                          color: ColorRes.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "Pay at store",
                                      style: appTextStyle(
                                        color: ColorRes.black.withOpacity(0.6),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
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
