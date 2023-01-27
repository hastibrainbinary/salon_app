import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/book_appointment/book_appointment_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({Key? key}) : super(key: key);
  BookAppointmentController bookAppointmentController =
      Get.put(BookAppointmentController());

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
                    const SizedBox(width: 50),
                    Text(
                      Strings.payment,
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
                    color: bookAppointmentController.appointment.value == true
                        ? ColorRes.indicator
                        : ColorRes.gray,
                  ),
                ),
                InkWell(
                  onTap: () {
                    bookAppointmentController.appointment.value = true;
                    bookAppointmentController.isappointment.value = true;
                    bookAppointmentController.ischooseServices.value = true;
                    bookAppointmentController.ispayment.value = true;
                    bookAppointmentController.issummary.value = false;

                    Get.toNamed(PageRes.paymentMethodScreen);
                  },
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        color: bookAppointmentController.appointment.value
                            ? ColorRes.indicator
                            : ColorRes.gray,
                        borderRadius: BorderRadius.circular(16)),
                  ),
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
                InkWell(
                  onTap: () {
                    bookAppointmentController.isappointment.value = false;
                    bookAppointmentController.ischooseServices.value = false;
                    bookAppointmentController.ispayment.value = true;
                    bookAppointmentController.issummary.value = false;
                    bookAppointmentController.payment.value = true;
                  },
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        color: bookAppointmentController.payment.value
                            ? ColorRes.indicator
                            : ColorRes.gray,
                        borderRadius: BorderRadius.circular(16)),
                  ),
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
                InkWell(
                  onTap: () {
                    bookAppointmentController.summary.value = true;
                    bookAppointmentController.isappointment.value = false;
                    bookAppointmentController.ischooseServices.value = false;
                    bookAppointmentController.ispayment.value = false;
                    bookAppointmentController.issummary.value = true;
                  },
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        color: bookAppointmentController.summary.value
                            ? ColorRes.indicator
                            : ColorRes.gray,
                        borderRadius: BorderRadius.circular(16)),
                  ),
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
                      color: bookAppointmentController.ischooseServices.value ==
                              true
                          ? ColorRes.indicator
                          : ColorRes.gray,
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                ),

                Text(
                  Strings.appointment,
                  style: appTextStyle(
                      color:
                          bookAppointmentController.isappointment.value == true
                              ? ColorRes.indicator
                              : ColorRes.gray,
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                ),
                // SizedBox(width: Get.width * 0.072),
                Text(
                  Strings.payment,
                  style: appTextStyle(
                      color: bookAppointmentController.ispayment.value == true
                          ? ColorRes.indicator
                          : ColorRes.gray,
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                ),
                // SizedBox(width: Get.width * 0.096),
                Text(
                  Strings.summary,
                  style: appTextStyle(
                      color: bookAppointmentController.issummary.value == true
                          ? ColorRes.indicator
                          : ColorRes.gray,
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                ),
                SizedBox(width: Get.width * 0.055),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.0369),
        ],
      ),
    );
  }
}
