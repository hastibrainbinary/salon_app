import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/widgets/commons.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminHomeScreen extends StatelessWidget {
  AdminHomeScreen({super.key});

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
              Column(
                children: [
                  SizedBox(
                    height:
                        // 55
                        Get.height * 0.072,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        // left: 25, right: 25
                        left: Get.width * 0.055,
                        right: Get.width * 0.055),
                    child: Row(
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
                        GestureDetector(
                          onTap: () {
                            adminHomeController.onNotificationTap();
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: ColorRes.white),
                            child: Transform.scale(
                                scale: 0.4,
                                child: Image.asset(
                                  AssetRes.notificationIcon,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.085,
                  ),
                  Obx(
                    () => Column(
                      children: [
                        containerWithTitle(
                            title: Strings.addyourBankaccount,
                            icon: AssetRes.addBankAccountIcon,
                            onTap: () {
                              adminHomeController.onAddYourBankAccountTap();
                            }),
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
                        Padding(
                          padding: EdgeInsets.only(
                              // left: 25, right: 25
                              left: Get.width * 0.055,
                              right: Get.width * 0.055),
                          child: Row(
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
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              // left: 25, right: 25
                              left: Get.width * 0.055,
                              right: Get.width * 0.055),
                          child: Row(
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
                        ),

                        ...List.generate(
                            (adminHomeController.isViewMore.value == true)
                                ? 10
                                : 5,
                            (index) => Container(
                                  padding: EdgeInsets.only(
                                      // left: 25, right: 25
                                      left: Get.width * 0.055,
                                      right: Get.width * 0.055),
                                  color: (index == 3)
                                      ? ColorRes.color94674F.withOpacity(0.2)
                                      : Colors.transparent,
                                  child: Row(
                                    children: [
                                      Text(
                                        "09:00 AM",
                                        style: appTextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: (index == 2)
                                                ? ColorRes.red
                                                : (index > 2)
                                                    ? ColorRes.black
                                                    : ColorRes.black
                                                        .withOpacity(0.5)),
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.05,
                                      ),
                                      (index > 2)
                                          ? Container(
                                              height: 78,
                                              width: Get.width * 0.002,
                                              color: ColorRes.black
                                                  .withOpacity(0.3),
                                            )
                                          : Dash(
                                              direction: Axis.vertical,
                                              length: 75,
                                              dashLength: 3,
                                              dashColor: (index == 2)
                                                  ? Colors.red
                                                  : ColorRes.black
                                                      .withOpacity(0.5)),
                                      SizedBox(
                                        width: Get.width * 0.05,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Rohan Surve",
                                                style: appTextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: (index == 2)
                                                        ? ColorRes.red
                                                        : (index > 2)
                                                            ? ColorRes.black
                                                            : ColorRes.black
                                                                .withOpacity(
                                                                    0.5))),
                                            (index > 2)
                                                ? Row(
                                                    children: [
                                                      Text("Service : ",
                                                          style: appTextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: ColorRes
                                                                  .black)),
                                                      Text("Hair Cutting",
                                                          style: appTextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: ColorRes
                                                                  .black
                                                                  .withOpacity(
                                                                      0.5))),
                                                    ],
                                                  )
                                                : Text("Service : Hair Cutting",
                                                    style: appTextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: (index == 2)
                                                            ? ColorRes.red
                                                            : ColorRes.black
                                                                .withOpacity(
                                                                    0.5))),
                                            (index > 2)
                                                ? Row(
                                                    children: [
                                                      Text("Staff : ",
                                                          style: appTextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: ColorRes
                                                                  .black)),
                                                      Text("Robert Fox",
                                                          style: appTextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: ColorRes
                                                                  .black
                                                                  .withOpacity(
                                                                      0.5))),
                                                    ],
                                                  )
                                                : Text("Staff : Robert Fox",
                                                    style: appTextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: (index == 2)
                                                            ? ColorRes.red
                                                            : ColorRes.black
                                                                .withOpacity(
                                                                    0.5))),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        InkWell(
                            onTap: () {
                              adminHomeController.onTapViewMore();
                            },
                            child: (adminHomeController.isViewMore.value ==
                                    true)
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        Strings.viewLess,
                                        style: appTextStyle(
                                          color: ColorRes.color94674F,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.005,
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_up_rounded,
                                        color: ColorRes.color94674F,
                                        size: 10,
                                      )
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        Strings.viewMore,
                                        style: appTextStyle(
                                          color: ColorRes.color94674F,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.005,
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: ColorRes.color94674F,
                                        size: 10,
                                      )
                                    ],
                                  )),
                        SizedBox(
                          height: Get.height * 0.02,
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
