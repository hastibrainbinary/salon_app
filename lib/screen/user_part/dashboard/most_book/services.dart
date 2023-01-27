import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

Widget services() {
  return Column(
    children: [
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
                      color: ColorRes.white,
                      borderRadius: BorderRadius.circular(70),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff94674F).withOpacity(0.2),
                          offset: const Offset(0.0, 4),
                          blurRadius: 23.0,
                        ),
                      ]),
                  child: const Image(
                    image: AssetImage(AssetRes.hairCut),
                  ),
                ),

                /*  const CircleAvatar(
                  backgroundColor: ColorRes.white,
                  radius: 35,
                  child: Image(
                    image: AssetImage(AssetRes.hairCut),
                    height: 45,
                  ),
                ),*/
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
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView.separated(
          itemCount: 8,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Image(image: AssetImage(AssetRes.imageStyel)),
                ),
                SizedBox(width: Get.width * 0.0533),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hair Cut",
                      style: appTextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.black),
                    ),
                    Text(
                      "\$50.00",
                      style: appTextStyle(
                          color: ColorRes.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 15);
          },
        ),
      ),
      SizedBox(height: Get.height * 0.0369),
      Padding(
        padding: const EdgeInsets.only(left: 30),
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
            Container(
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
            )
          ],
        ),
      ),
    ],
  );
}
