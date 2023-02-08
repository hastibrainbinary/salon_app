import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

Widget about() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 29),
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
            const Image(
                image: AssetImage(AssetRes.location),
                color: ColorRes.indicator,
                height: 17),
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
        child: const Text(
          "1901 Thornridge Cir. Shiloh, Hawaii ",
          style: TextStyle(
            decoration: TextDecoration.underline,
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
          margin: const EdgeInsets.only(left: 37),
          child: Text(
            Strings.todayBookings,
            style: appTextStyle(
                color: ColorRes.black,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        ),
      ),
      SizedBox(height: Get.height * 0.0123),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            Stack(
              alignment: const Alignment(-1, 0),
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: ColorRes.black),
                  child: Image.asset(AssetRes.adminProfilePic),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: Image.asset(AssetRes.staff),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Image.asset(AssetRes.adminProfilePic),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 60),
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: ColorRes.indicator),
                  child: Text(
                    "+3",
                    style:
                        appTextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 38),
        child: Text(
          Strings.about,
          style: appTextStyle(
              color: ColorRes.black, fontWeight: FontWeight.w500, fontSize: 15),
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
        margin: const EdgeInsets.only(left: 38),
        child: Text(
          Strings.ourStaff,
          style: appTextStyle(
              color: ColorRes.black, fontWeight: FontWeight.w500, fontSize: 15),
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
        margin: const EdgeInsets.only(left: 38),
        child: Text(
          Strings.images,
          style: appTextStyle(
              color: ColorRes.black, fontWeight: FontWeight.w500, fontSize: 15),
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
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(AssetRes.personImg),
                  ),
                  (index == 3)
                      ? Container(
                          alignment: Alignment.center,
                          margin: (index == 3)
                              ? EdgeInsets.zero
                              : const EdgeInsets.only(right: 12),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: ColorRes.black.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "+10",
                            style: appTextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
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
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            InkWell(
              onTap: () => Get.toNamed(PageRes.messagesScreen),
              child: Container(
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
  );
}
