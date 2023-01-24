import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
              Container(
                height:
                    Get.height > 800 ? Get.height * 0.3 : Get.height * 0.289,
                width: Get.width,
                child: const Image(
                  image: AssetImage(AssetRes.homeDesign),
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
                      Strings.notification,
                      style: appTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    const Visibility(
                      visible: false,
                      maintainSize: true,
                      maintainState: true,
                      maintainAnimation: true,
                      child: Icon(Icons.arrow_back_ios_new_rounded,
                          color: ColorRes.white, size: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.3,
            ),
            child: ListView.builder(
                itemCount: 7,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return (index == 0)
                      ? Padding(
                          padding: EdgeInsets.only(
                              left: Get.width * 0.055,
                              bottom: Get.height * 0.02),
                          child: Text(
                            "Today",
                            style: appTextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: ColorRes.black),
                          ),
                        )
                      : (index == 3)
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: Get.width * 0.055,
                                  bottom: Get.height * 0.02),
                              child: Text(
                                "Yesterday",
                                style: appTextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: ColorRes.black),
                              ),
                            )
                          : Container(
                              height: Get.height * 0.12,
                              width: Get.width,
                              margin: EdgeInsets.only(
                                  left: Get.width * 0.055,
                                  right: Get.width * 0.055,
                                  bottom: Get.height * 0.02),
                              padding: EdgeInsets.only(
                                left: Get.width * 0.055,
                                right: Get.width * 0.055,
                              ),
                              decoration: BoxDecoration(
                                  color: ColorRes.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        color: Colors.grey.withOpacity(0.1))
                                  ]),
                              child: Row(children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                    (index == 4)
                                        ? AssetRes.cancelAppointment
                                        : AssetRes.bookAppointment,
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * 0.03,
                                ),
                                Text(
                                  (index == 4)
                                      ? Strings.cancelAppointmentNotification
                                      : Strings.bookAppointmentNotification,
                                  style: appTextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: ColorRes.black),
                                ),
                              ]),
                            );
                }),
          ),
        ],
      ),
    ));
  }
}
