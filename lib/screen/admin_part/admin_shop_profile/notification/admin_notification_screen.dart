import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_shop_profile/notification/admin_notification_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminNotificationScreen extends StatelessWidget {
  AdminNotificationScreen({Key? key}) : super(key: key);
final  AdminNotificationUserController adminNotificationUserController =
  Get.put(AdminNotificationUserController());
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
                    const Icon(Icons.arrow_back_ios_new_rounded,
                        color: ColorRes.white),
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
                        value: adminNotificationUserController
                            .isSwitchedGeneralNotification.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) => adminNotificationUserController
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
                        value: adminNotificationUserController.isSwitchedSound.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) =>
                            adminNotificationUserController.onchangeSound(value),
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
                        adminNotificationUserController.isSwitchedVibrate.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) =>
                            adminNotificationUserController.onchangeVibrate(value),
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
                        value: adminNotificationUserController
                            .isSwitchedSpecialOffers.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) => adminNotificationUserController
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
                        value: adminNotificationUserController
                            .isSwitchedAppUpdates.value,
                        activeColor: ColorRes.indicator,
                        toggleSize: 16,
                        onToggle: (value) => adminNotificationUserController
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
