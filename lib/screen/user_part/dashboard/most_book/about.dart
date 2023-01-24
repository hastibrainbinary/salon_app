import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

Widget about() {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              const Icon(
                Icons.access_time_rounded,
                size: 25,
                color: ColorRes.indicator,
              ),
              SizedBox(width: Get.width * 0.0266),
              Text(
                Strings.openingHours,
                style: appTextStyle(
                  color: ColorRes.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.0123),
        Padding(
          padding: const EdgeInsets.only(left: 67),
          child: Row(
            children: [
              Text(
                "Monday - Friday         ",
                style: appTextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorRes.black.withOpacity(0.50)),
              ),
              Text(
                "09:00 AM - 10:00 PM",
                style: appTextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorRes.black),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.0061),
        Padding(
          padding: const EdgeInsets.only(left: 67),
          child: Row(
            children: [
              Text(
                "Monday - Friday         ",
                style: appTextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorRes.black.withOpacity(0.50)),
              ),
              Text(
                "09:00 AM - 10:00 PM",
                style: appTextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorRes.black),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.0246),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                size: 25,
                color: ColorRes.indicator,
              ),
              SizedBox(width: Get.width * 0.0266),
              Text(
                Strings.location,
                style: appTextStyle(
                  color: ColorRes.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.0123),
        Container(
          margin: const EdgeInsets.only(left: 66),
          alignment: Alignment.centerLeft,
          child: Text(
            "1901 Thornridge Cir. Shiloh, Hawaii ",
            style: appTextStyle(
              color: ColorRes.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.0246),
        InkWell(
          onTap: () => Get.toNamed(PageRes.bookings),
          child: Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 40),
            child: Text(
              Strings.todayBookings,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.0246),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 40),
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
          margin: const EdgeInsets.only(left: 40),
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
          margin: const EdgeInsets.only(left: 40),
          child: Text(
            Strings.ourStaff,
            style: appTextStyle(
                color: ColorRes.black,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        ),
        SizedBox(height: Get.height * 0.0246),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: SizedBox(
            width: 320,
            height: 100,
            /* decoration: BoxDecoration(
                            color: ColorRes.black,
                          ),*/
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: ColorRes.white,
                      radius: 35,
                      child: Image(
                        image: AssetImage(AssetRes.staff),
                        height: 65,
                      ),
                    ),
                    Text(
                      "Robert Fox",
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
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 40),
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
          padding: const EdgeInsets.only(left: 37),
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
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ColorRes.indicator),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage(AssetRes.chat),
                  ),
                ),
              ),
              SizedBox(width: Get.width * 0.0533),
              InkWell(
                onTap: () => Get.toNamed(PageRes.bookAppointmentScreen),
                child: Container(
                  height: 50,
                  width: 245,
                  decoration: BoxDecoration(
                      color: ColorRes.indicator,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.bookAppointment,
                        style: appTextStyle(
                            color: ColorRes.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: Get.width * 0.0186),
                      const Image(
                        image: AssetImage(AssetRes.arrow),
                        height: 15,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.0246),
      ],
    ),
  );
}
