import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/profile_user/notificationU/notification_user_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class NotificationUserScreen extends StatelessWidget {
  NotificationUserScreen({Key? key}) : super(key: key);
  final NotificationUserController notificationUserController =
      Get.put(NotificationUserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_ios_new_rounded,
                          color: ColorRes.white),
                    ),
                    SizedBox(
                      width: Get.width * 0.2666,
                    ),
                    Text(
                      Strings.notification,
                      style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.0369),
                Row(
                  children: [
                    Text(
                      Strings.generalNotification,
                      style: appTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.black),
                    ),
                    const Spacer(),
                    Obx(
                      () => FlutterSwitch(
                        height: 22,
                        width: 38,
                        value: notificationUserController
                            .isSwitchedGeneralNotification.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) => notificationUserController
                            .onchangeGeneralNotification(value),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.sound,
                      style: appTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.black),
                    ),
                    const Spacer(),
                    Obx(
                      () => FlutterSwitch(
                        height: 22,
                        width: 38,
                        value: notificationUserController.isSwitchedSound.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) =>
                            notificationUserController.onchangeSound(value),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.vibrate,
                      style: appTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.black),
                    ),
                    const Spacer(),
                    Obx(
                      () => FlutterSwitch(
                        height: 22,
                        width: 38,
                        value:
                            notificationUserController.isSwitchedVibrate.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) =>
                            notificationUserController.onchangeVibrate(value),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.specialOffers,
                      style: appTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.black),
                    ),
                    const Spacer(),
                    Obx(
                      () => FlutterSwitch(
                        height: 22,
                        width: 38,
                        value: notificationUserController
                            .isSwitchedSpecialOffers.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) => notificationUserController
                            .onchangeSpecialOffers(value),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Row(
                  children: [
                    Text(
                      Strings.appUpdates,
                      style: appTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.black),
                    ),
                    const Spacer(),
                    Obx(
                      () => FlutterSwitch(
                        height: 22,
                        width: 38,
                        value: notificationUserController
                            .isSwitchedAppUpdates.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) => notificationUserController
                            .onchangeAppUpdates(value),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
