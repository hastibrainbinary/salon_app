import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AppointmentBookingScreen extends StatelessWidget {
  const AppointmentBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      SizedBox(width: Get.width * 0.1466),
                      Text(
                        Strings.bookingDetails,
                        style: appTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: ColorRes.white),
                      ),
                      SizedBox(width: Get.width * 0.21),
                      InkWell(
                        onTap: () {

                        },
                        child: const Image(
                          image: AssetImage(AssetRes.menuIcon),
                          height: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.0615),
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
            SizedBox(height: Get.height * 0.0246),
          ],
        ),
      ),
    );
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
}
