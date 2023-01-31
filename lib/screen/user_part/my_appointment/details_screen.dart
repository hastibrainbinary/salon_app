import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

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
                SizedBox(
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
                        Strings.bookingDetails,
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
                                    height: 36,
                                    width: 137,
                                    color: ColorRes.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            showDialog(
                                              barrierDismissible: false,
                                              barrierColor: ColorRes.black
                                                  .withOpacity(0.8),
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
                                                  alignment: const Alignment(
                                                      1.2, -1.3),
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 194,
                                                      decoration: BoxDecoration(
                                                        color: ColorRes.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            Strings
                                                                .cancelAppointmentTxt,
                                                            textAlign: TextAlign
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
                                                            height: Get.height *
                                                                0.03,
                                                          ),
                                                          SizedBox(
                                                            height: 45,
                                                            width: 219,
                                                            child: commonButton(
                                                                style: appTextStyle(
                                                                    fontSize:
                                                                        11,
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
                                                        color:
                                                            Colors.transparent,
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
                                            Strings.cancelAppointment,
                                            style: appTextStyle(
                                                color: ColorRes.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
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
              padding: EdgeInsets.only(top: Get.height * 0.25, left: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    bookAppointment("Booking ID :", " 5486"),
                    SizedBox(height: Get.height * 0.0246),
                    bookAppointment("Salon Name :", " Serenity salon"),
                    SizedBox(height: Get.height * 0.0246),
                    bookAppointment("Appointment Date :", " 3 July 2023"),
                    SizedBox(height: Get.height * 0.0246),
                    bookAppointment("Appointment Time :", " 04:00 PM"),
                    SizedBox(height: Get.height * 0.0246),
                    bookAppointment("Service :", " Hair cut & Beard trim"),
                    SizedBox(height: Get.height * 0.0246),
                    bookAppointment("Location :", " 1901 Thornier Cir.,"),
                    SizedBox(height: Get.height * 0.0246),
                    bookAppointment("Payment :", "  Pay at store\n  \$ 100"),
                    SizedBox(height: Get.height * 0.0492),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget bookAppointment(String? title, String? value) {
  return Container(
    padding: const EdgeInsets.all(15),
    width: 325,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: const Color(0xff94674F).withOpacity(0.2),
          offset: const Offset(0.0, 4),
          blurRadius: 42.0,
        ),
      ],
      color: ColorRes.white,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        Text(
          title!,
          style: appTextStyle(
              color: ColorRes.indicator,
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
        Text(
          value!,
          style: appTextStyle(
              color: ColorRes.black.withOpacity(0.5),
              fontWeight: FontWeight.w400,
              fontSize: 15),
        )
      ]),
    ),
  );
}
