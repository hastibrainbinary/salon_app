import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/color_res.dart';

Widget containerWithTitle(
    {required String title,
    required String icon,
    required VoidCallback onTap}) {
  return Container(
    height: 55,
    width: 325,
    padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.07),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorRes.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 2,
              spreadRadius: 1,
              color: Colors.grey.withOpacity(0.1)),
        ]),
    child: Row(children: [
      SizedBox(
          height: 25,
          width: 25,
          child: Image.asset(
            icon,
          )),
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
      InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.centerRight,
          color: Colors.transparent,
          height: 15,
          width: 15,
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 12,
          ),
        ),
      )
    ]),
  );
}
