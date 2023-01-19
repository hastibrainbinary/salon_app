import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/introduction_screen/introduction_controller.dart';
import 'package:salon_app/utils/app_style.dart';

IntroductionController controller = Get.put(IntroductionController());
Widget indicator(bool isActive, Color activeIndicatorColor) {
  return SizedBox(
    width: 10,
    height: 5,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      width: 17,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isActive ? activeIndicatorColor : Colors.grey,
      ),
    ),
  );
}

Widget pageViewPart(BuildContext context,
    {required String image,
    required String title,
    required String description,
    required Color textColor}) {
  return Stack(
    children: [
      Image.asset(
        image,
        width: Get.width,
        height: Get.height,
        fit: BoxFit.cover,
      ),
      Positioned(
        top: 500,
        // left: 20,
        right: 20,
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: appTextStyle(
              fontSize: 26, fontWeight: FontWeight.w600, color: textColor),
        ),
      ),
      Positioned(
        top: 580,
        left: 15,
        right: 15,
        child: Text(description,
            style: appTextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: textColor),
            textAlign: TextAlign.center),
      ),
    ],
  );
}
