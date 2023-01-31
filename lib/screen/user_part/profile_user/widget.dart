import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/color_res.dart';

Widget containerWithTitleProfile(
    {required String title,
    required String icon,
      String? language,
    required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 55,
      margin: EdgeInsets.only(left: Get.width * 0.055, right: Get.width * 0.055),
      padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.07),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorRes.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 4),
                color: ColorRes.indicator.withOpacity(0.15)),
          ]),
      child: Row(children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Image.asset(
            icon,
            color: ColorRes.black,
          ),
        ),
        SizedBox(
          width: Get.width * 0.05,
        ),
        Text(
          title,
          style: appTextStyle(
            color: ColorRes.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            language==null?const SizedBox():
            Text(language, style: appTextStyle(
                color: ColorRes.black,
                fontSize: 12,
                fontWeight: FontWeight.w500)),
            Container(
              alignment: Alignment.centerRight,
              color: Colors.transparent,
              height: 15,
              width: 15,
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 12,
              ),
            ),
          ],
        )
      ]),
    ),
  );
}
