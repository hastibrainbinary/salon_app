import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class RemindScreen extends StatelessWidget {
  const RemindScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Column(
            children: [
              Center(
                child: Text.rich(
                  TextSpan(
                      text: Strings.lO,
                      style: appTextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: ColorRes.black),
                      children:[
                        TextSpan(
                          text: Strings.go,
                          style: appTextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 40,
                              color: ColorRes.indicator),

                        )
                      ]
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.0603),
              Center(
                child: Text(
                  "3:30 PM",
                  style: appTextStyle(
                    color: ColorRes.indicator,
                    fontSize: 37,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Tuesday, 3 July",
                  style: appTextStyle(
                    color: ColorRes.black.withOpacity(0.65),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.0369),
              Center(
                child: DottedBorder(
                  borderType: BorderType.Circle,
                  dashPattern: const [10, 6, 10, 6, 10, 6],
                  color: ColorRes.indicator,
                  child: Container(
                    width: 340,
                    height: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(340),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(23),
                      height: 295,
                      width: 295,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(295),
                        border: Border.all(color: ColorRes.indicator),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(26),
                        height: 242,
                        width: 242,
                        decoration: BoxDecoration(
                          color: ColorRes.indicator,
                          borderRadius: BorderRadius.circular(242),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 160,
                                height: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorRes.white),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 14, right: 12, left: 12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "hi rohan",
                                        style: appTextStyle(
                                            color: ColorRes.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                      Text(
                                        "This is a reminder of \nyour appointment at the serenity salon.",
                                        style: appTextStyle(
                                            color: ColorRes.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                      SizedBox(height: Get.height*0.0061),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "30 ",
                                            style: appTextStyle(
                                                color: ColorRes.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 23),
                                          ),
                                          Text(

                                            "min left",
                                            style: appTextStyle(
                                                color: ColorRes.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.0652),
              Transform.rotate(
                angle:1.6,
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: ColorRes.indicator,
                  size: 30,
                ),
              ),
              Text(Strings.swipeUpToTurnOff,style: appTextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,color: ColorRes.indicator
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
