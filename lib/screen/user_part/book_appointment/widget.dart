import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/book_appointment/book_appointment_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

BookAppointmentController bookAppointmentController =
    Get.put(BookAppointmentController());

Widget bookServices() {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      children: [
        Container(
          width: 320,
          height: 100,
          /*  decoration: BoxDecoration(
                           border: Border.all()
                          ),*/
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: ColorRes.white,
                      borderRadius: BorderRadius.circular(70),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff94674F).withOpacity(0.2),
                          offset: const Offset(0.0, 4),
                          blurRadius: 23.0,
                        )
                      ],
                    ),
                    child: const Image(
                      image: AssetImage(AssetRes.hairCut),
                    ),
                  ),
                  Text(
                    "Hair cut",
                    style: appTextStyle(
                        color: ColorRes.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 12);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Image(image: AssetImage(AssetRes.imageStyel)),
                  ),
                  SizedBox(width: Get.width * 0.0533),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hair Cut",
                        style: appTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: ColorRes.black),
                      ),
                      Text(
                        "\$50.00",
                        style: appTextStyle(
                            color: ColorRes.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(width: Get.width - 216),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: ColorRes.indicator),
                    ),
                    child: const Center(
                        child: Icon(Icons.check,
                            color: ColorRes.indicator, size: 15)),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 15);
            },
          ),
        ),
        SizedBox(height: Get.height * 0.0369),
        Container(
          width: Get.width,
          height: 88,
          decoration: BoxDecoration(
            color: ColorRes.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0xff94674F).withOpacity(0.2),
                offset: const Offset(0.0, 4),
                blurRadius: 23.0,
              )
            ],
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2 Service",
                      style: appTextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.black),
                    ),
                    Text(
                      "\$ 100",
                      style: appTextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.black),
                    ),
                  ],
                ),
              ),
              SizedBox(width: Get.width * 0.2666),
              InkWell(
                onTap: () {
                  bookAppointmentController.ischooseServices.value = true;
                  bookAppointmentController.isappointment.value = true;
                  bookAppointmentController.ispayment.value = false;
                  bookAppointmentController.issummary.value = false;

                  bookAppointmentController.chooseServices.value = true;
                  bookAppointmentController.appointment.value = true;
                  // bookAppointmentController.isServiceNext.value = true;
                  // Get.toNamed(PageRes.bookAppointmentSliderScree);
                },
                child: Container(
                  width: 153,
                  height: 45,
                  decoration: BoxDecoration(
                    color: ColorRes.indicator,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.next,
                        style: appTextStyle(
                            color: ColorRes.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(width: Get.width * 0.0186),
                      const Image(
                        image: AssetImage(AssetRes.arrow),
                        height: 12,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
