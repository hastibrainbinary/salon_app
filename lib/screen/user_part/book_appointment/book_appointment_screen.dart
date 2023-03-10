import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/book_appointment/book_appointment_controller.dart';
import 'package:salon_app/screen/user_part/book_appointment/book_appointment_silder_screen.dart';
import 'package:salon_app/screen/user_part/book_appointment/payment_method_silder.dart';
import 'package:salon_app/screen/user_part/book_appointment/widget.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';

import 'package:salon_app/utils/string.dart';

class BookAppointmentScreen extends StatelessWidget {
  BookAppointmentScreen({Key? key}) : super(key: key);
  final BookAppointmentController bookAppointmentController =
      Get.put(BookAppointmentController());

  @override
  Widget build(BuildContext context) {
    bookAppointmentController.ischooseServices.value = true;
    bookAppointmentController.isappointment.value = false;
    bookAppointmentController.ispayment.value = false;
    bookAppointmentController.issummary.value = false;
    bookAppointmentController.appointment.value = false;

    return Scaffold(
      body: Column(
        children: [
          Column(
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
                            bookAppointmentController.chooseServices.value =
                                true;
                            bookAppointmentController.appointment.value = false;
                            bookAppointmentController.payment.value = false;
                            bookAppointmentController.summary.value = false;
                            bookAppointmentController.ischooseServices.value =
                                false;
                            bookAppointmentController.isappointment.value =
                                false;
                            bookAppointmentController.ispayment.value = false;
                            bookAppointmentController.issummary.value = false;
                          },
                          child: const Icon(Icons.arrow_back_ios_new_rounded,
                              color: ColorRes.white),
                        ),
                        const SizedBox(width: 50),
                        Text(
                          Strings.bookAppointment,
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
              SizedBox(height: Get.height * 0.0431),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: ColorRes.indicator,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    Container(
                      width: 69,
                      height: 4,
                      decoration: BoxDecoration(
                        color:
                            bookAppointmentController.appointment.value == true
                                ? ColorRes.indicator
                                : ColorRes.gray,
                      ),
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: bookAppointmentController.appointment.value ==
                                  true
                              ? ColorRes.indicator
                              : ColorRes.gray,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    Container(
                      width: 69,
                      height: 4,
                      decoration: BoxDecoration(
                        color: bookAppointmentController.payment.value == true
                            ? ColorRes.indicator
                            : ColorRes.gray,
                      ),
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: bookAppointmentController.payment.value == true
                              ? ColorRes.indicator
                              : ColorRes.gray,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    Container(
                      width: 69,
                      height: 4,
                      decoration: BoxDecoration(
                        color: bookAppointmentController.summary.value == true
                            ? ColorRes.indicator
                            : ColorRes.gray,
                      ),
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: bookAppointmentController.summary.value == true
                              ? ColorRes.indicator
                              : ColorRes.gray,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.0123),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: Get.width * 0.055),
                    Text(
                      Strings.chooseService,
                      style: appTextStyle(
                          color: bookAppointmentController
                                      .ischooseServices.value ==
                                  true
                              ? ColorRes.indicator
                              : ColorRes.gray,
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                    // SizedBox(width: Get.width * 0.0293),
                    Text(
                      Strings.appointment,
                      style: appTextStyle(
                          color:
                              bookAppointmentController.isappointment.value ==
                                      true
                                  ? ColorRes.indicator
                                  : ColorRes.gray,
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                    // SizedBox(width: Get.width * 0.072),
                    Text(
                      Strings.payment,
                      style: appTextStyle(
                          color:
                              bookAppointmentController.ispayment.value == true
                                  ? ColorRes.indicator
                                  : ColorRes.gray,
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                    // SizedBox(width: Get.width * 0.096),
                    Text(
                      Strings.summary,
                      style: appTextStyle(
                          color:
                              bookAppointmentController.issummary.value == true
                                  ? ColorRes.indicator
                                  : ColorRes.gray,
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                    SizedBox(width: Get.width * 0.055),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.0431),
            ],
          ),
          SizedBox(
            height: Get.height * 0.6,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Obx(
                () => (bookAppointmentController.issummary.value == true)
                    ? summarySlider(context)
                    : (bookAppointmentController.ispayment.value == true)
                        ? paymentMethodSlider()
                        : (bookAppointmentController.isappointment.value ==
                                true)
                            ? bookAppointMentSlider(context: context)
                            : ((bookAppointmentController
                                        .ischooseServices.value ==
                                    true))
                                ? Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            Strings.serenitySalon,
                                            style: appTextStyle(
                                                color: ColorRes.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20),
                                          ),
                                          SizedBox(width: Get.width * 0.312),
                                          const Icon(
                                            Icons.circle,
                                            size: 8,
                                            color: ColorRes.green,
                                          ),
                                          SizedBox(width: Get.width * 0.0133),
                                          Text(
                                            Strings.open,
                                            style: appTextStyle(
                                                color: ColorRes.green,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: Get.height * 0.0246),
                                      Container(
                                        height:
                                            Get.height - (Get.height * 0.45),
                                        width: Get.width,
                                        decoration: const BoxDecoration(
                                          color: ColorRes.white,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20),
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                  height: Get.height * .0369),
                                              Obx(
                                                () => Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        bookAppointmentController
                                                            .changeTitle(
                                                                Strings.about);
                                                      },
                                                      child: Container(
                                                        height: 25,
                                                        alignment:
                                                            Alignment.topCenter,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                                color: bookAppointmentController
                                                                            .isSelect
                                                                            .value ==
                                                                        Strings
                                                                            .about
                                                                    ? ColorRes
                                                                        .indicator
                                                                    : Colors
                                                                        .transparent,
                                                                width: 2),
                                                          ),
                                                        ),
                                                        child: const Text(
                                                          Strings.about,
                                                          style: TextStyle(
                                                            color: ColorRes
                                                                .indicator,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        width:
                                                            Get.width * 0.208),
                                                    InkWell(
                                                      onTap: () {
                                                        bookAppointmentController
                                                            .changeTitle(Strings
                                                                .services);
                                                      },
                                                      child: Container(
                                                        height: 25,
                                                        alignment:
                                                            Alignment.topCenter,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                                color: bookAppointmentController
                                                                            .isSelect
                                                                            .value ==
                                                                        Strings
                                                                            .services
                                                                    ? ColorRes
                                                                        .indicator
                                                                    : Colors
                                                                        .transparent,
                                                                width: 2),
                                                          ),
                                                        ),
                                                        child: const Text(
                                                          Strings.services,
                                                          style: TextStyle(
                                                            color: ColorRes
                                                                .indicator,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        width:
                                                            Get.width * 0.208),
                                                    InkWell(
                                                      onTap: () {
                                                        bookAppointmentController
                                                            .changeTitle(Strings
                                                                .reviews);
                                                      },
                                                      child: Container(
                                                        height: 25,
                                                        alignment:
                                                            Alignment.topCenter,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                                color: bookAppointmentController
                                                                            .isSelect
                                                                            .value ==
                                                                        Strings
                                                                            .reviews
                                                                    ? ColorRes
                                                                        .indicator
                                                                    : Colors
                                                                        .transparent,
                                                                width: 2),
                                                          ),
                                                        ),
                                                        child: const Text(
                                                          Strings.reviews,
                                                          style: TextStyle(
                                                            color: ColorRes
                                                                .indicator,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  height: Get.height * 0.0369),
                                              Obx(
                                                () => bookAppointmentController
                                                            .isSelect.value ==
                                                        Strings.about
                                                    ? const Text("about")
                                                    : bookAppointmentController
                                                                .isSelect
                                                                .value ==
                                                            Strings.services
                                                        ? bookServices()
                                                        : const Text("reviews"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : const SizedBox(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
