import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/widgets/commons.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            // alignment: Alignment.topCenter,
            children: [
              // ignore: sized_box_for_whitespace
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
                padding: const EdgeInsets.only(left: 25, right: 25
                    // left: Get.width * 0.05, right: Get.width * 0.05
                    ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 55 /* Get.height * 0.065 */,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 41,
                          width: 41,
                          decoration: const BoxDecoration(
                              color: ColorRes.black, shape: BoxShape.circle),
                          child: Image.asset(AssetRes.adminProfilePic),
                        ),
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Serenity Salon",
                              style: appTextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "united states",
                              style: appTextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: ColorRes.white),
                          child: Transform.scale(
                              scale: 0.4,
                              child: Image.asset(
                                AssetRes.notificationIcon,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.09,
                    ),
                    containerWithTitle(
                        title: Strings.addyourBankaccount,
                        icon: AssetRes.addBankAccountIcon,
                        onTap: () {}),
                    const SizedBox(
                      height: 20,
                      // Get.height * 0.02,
                    ),
                    containerWithTitle(
                        title: Strings.addService,
                        icon: AssetRes.addServiceIcon,
                        onTap: () {}),
                    const SizedBox(
                      height: 20,
                      // Get.height * 0.02,
                    ),
                    containerWithTitle(
                        title: Strings.addAdvertisementPost,
                        icon: AssetRes.addAdvertisementPostIcon,
                        onTap: () {}),
                    const SizedBox(
                      height: 20,
                      // Get.height * 0.02,
                    ),
                    containerWithTitle(
                        title: Strings.staffDetails,
                        icon: AssetRes.staffDetailIcon,
                        onTap: () {}),
                    const SizedBox(
                      height: 20,
                      // Get.height * 0.02,
                    ),
                    containerWithTitle(
                        title: Strings.cancelAppointmentDetails,
                        icon: AssetRes.cancelAppointmentIcon,
                        onTap: () {}),
                    const SizedBox(
                      height: 25,
                      // Get.height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          Strings.todaySchedule,
                          style: appTextStyle(
                            color: ColorRes.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "${Strings.time}",
                              style: appTextStyle(
                                  color: ColorRes.color94674F,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 58,
                            ),
                            Text(
                              "${Strings.appointments}",
                              style: appTextStyle(
                                  color: ColorRes.color94674F,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}