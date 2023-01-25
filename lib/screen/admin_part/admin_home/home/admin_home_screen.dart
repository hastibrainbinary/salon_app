import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/admin_home_controller.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/widgets/commons.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminHomeScreen extends StatelessWidget {
  AdminHomeScreen({super.key, this.args});
  dynamic args;
  final AdminHomeController adminHomeController =
      Get.put(AdminHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Stack(
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
              Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.072,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        // left: 25, right: 25
                        left: Get.width * 0.055,
                        right: Get.width * 0.055),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            (args != "")
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(99),
                                    child: Container(
                                      height: 41,
                                      width: 41,
                                      decoration: const BoxDecoration(
                                          color: ColorRes.black,
                                          shape: BoxShape.circle),
                                      child: Image.file(File(args.toString()),
                                          fit: BoxFit.cover),
                                    ),
                                  )
                                : Container(
                                    height: 41,
                                    width: 41,
                                    decoration: const BoxDecoration(
                                        color: ColorRes.black,
                                        shape: BoxShape.circle),
                                    child:
                                        Image.asset(AssetRes.adminProfilePic),
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
                            GestureDetector(
                              onTap: () {
                                adminHomeController.onNotificationTap();
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorRes.white),
                                child: Transform.scale(
                                    scale: 0.4,
                                    child: Image.asset(
                                      AssetRes.notificationIcon,
                                    )),
                              ),
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
                                  Strings.time,
                                  style: appTextStyle(
                                      color: ColorRes.color94674F,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  width: 58,
                                ),
                                Text(
                                  Strings.appointments,
                                  style: appTextStyle(
                                      color: ColorRes.color94674F,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   // flex: 1,
                        //   height: 500,
                        //   // height: Get.height,
                        //   width: Get.width,
                        //   child: ListView.builder(
                        //       shrinkWrap: true,
                        //       physics: NeverScrollableScrollPhysics(),
                        //       itemCount: 10,
                        //       itemBuilder: (context, index) {
                        //         return Row(
                        //           children: [
                        //             Text("09:00 AM"),
                        //             VerticalDivider(
                        //               color: ColorRes.black,
                        //               thickness: 1,
                        //             ),
                        //             Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 Text("Rohan Surve"),
                        //                 Text("Service : Hair Cutting"),
                        //                 Text("Staff : Robert Fox"),
                        //               ],
                        //             )
                        //           ],
                        //         );
                        //       }),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
