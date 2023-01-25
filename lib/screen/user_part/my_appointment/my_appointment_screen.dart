import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/my_appointment/my_appointment_controller.dart';
import 'package:salon_app/screen/user_part/my_appointment/widget.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class MyAppointmentScreen extends StatelessWidget {
  MyAppointmentScreen({Key? key}) : super(key: key);
  final MyAppointmentController myAppointmentController =
      Get.put(MyAppointmentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 160,
              width: Get.width,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.transparent)),
            ),
            const Image(
              image: AssetImage(AssetRes.mostBookBack),
            ),
            Positioned(
              top: 65,
              left: 100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      Strings.myAppointments,
                      style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.white),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.0246),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.0307),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  myAppointmentController.changeTitle(Strings.upcoming);
                },
                child: Container(
                  height: 25,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: myAppointmentController.isSelect.value ==
                                  Strings.upcoming
                              ? ColorRes.indicator
                              : Colors.transparent,
                          width: 2),
                    ),
                  ),
                  child: const Text(
                    Strings.upcoming,
                    style: TextStyle(
                      color: ColorRes.indicator,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(width: Get.width * 0.208),
              InkWell(
                onTap: () {
                  myAppointmentController.changeTitle(Strings.past);
                },
                child: Container(
                  height: 25,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: myAppointmentController.isSelect.value ==
                                  Strings.past
                              ? ColorRes.indicator
                              : Colors.transparent,
                          width: 2),
                    ),
                  ),
                  child: const Text(
                    Strings.past,
                    style: TextStyle(
                      color: ColorRes.indicator,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(width: Get.width * 0.208),
              InkWell(
                onTap: () {
                  myAppointmentController.changeTitle(Strings.cancelled);
                },
                child: Container(
                  height: 25,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: myAppointmentController.isSelect.value ==
                                  Strings.cancelled
                              ? ColorRes.indicator
                              : Colors.transparent,
                          width: 2),
                    ),
                  ),
                  child: const Text(
                    Strings.cancelled,
                    style: TextStyle(
                      color: ColorRes.indicator,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.0369),
        Obx(
          () => myAppointmentController.isSelect.value == Strings.upcoming
              ? Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return upComing(context: context);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 30);
                      },
                      itemCount: 3),
                )
              : myAppointmentController.isSelect.value == Strings.past
                  ? Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return past();
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 30);
                          },
                          itemCount: 3),
                    )
                  : Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return cancelled();
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 30);
                          },
                          itemCount: 3),
                    ),
        )
      ]),
    );
  }
}
