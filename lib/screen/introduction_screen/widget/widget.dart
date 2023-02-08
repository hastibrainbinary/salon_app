import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/introduction_screen/introduction_controller.dart';
import 'package:salon_app/utils/app_style.dart';

IntroductionController controller = Get.put(IntroductionController());
Widget indicator(bool isActive, Color activeIndicatorColor) {
  return SizedBox(
    width: isActive ? 15 : 10,
    height: 5,
    child: AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      duration: const Duration(milliseconds: 150),
      width: isActive ? 25 : 17,
      height: 5,
      decoration: isActive
          ? BoxDecoration(
              // shape: BoxShape.circle,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              color: isActive ? activeIndicatorColor : Colors.grey,
            )
          : BoxDecoration(
              shape: BoxShape.circle,
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
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        foregroundDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(.0),
              Colors.black.withOpacity(1),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
      Column(
        children: [
          const Spacer(),
          Text(
            textAlign: TextAlign.center,
            title,
            style: appTextStyle(
                fontSize: 26, fontWeight: FontWeight.w600, color: textColor),
          ),
          Text(description,
              style: appTextStyle(
                  fontSize: 13, fontWeight: FontWeight.w400, color: textColor),
              textAlign: TextAlign.center),
          SizedBox(
            height: Get.height * 0.12,
          )
        ],
      ),
    ],
  );
  /*Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Image.asset(
        image,
        width: Get.width,
        height: Get.height,
        fit: BoxFit.cover,
      ),
      Column(
        children: [
          const Spacer(),
          Text(
            textAlign: TextAlign.center,
            title,
            style: appTextStyle(
                fontSize: 26, fontWeight: FontWeight.w600, color: textColor),
          ),
          Text(description,
              style: appTextStyle(
                  fontSize: 13, fontWeight: FontWeight.w400, color: textColor),
              textAlign: TextAlign.center),
          SizedBox(
            height: Get.height * 0.12,
          )
        ],
      ),

      */
  /* Positioned(
        top: 500,
        // left: 20,
        right: 20,
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: appTextStyle(
              fontSize: 26, fontWeight: FontWeight.w600, color: textColor),
        ),
      ), */
  /*
      */
  /* Positioned(
        top: 580,
        left: 15,
        right: 15,
        child: Text(description,
            style: appTextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: textColor),
            textAlign: TextAlign.center),
      ), */
  /*
    ],
  )*/
}
