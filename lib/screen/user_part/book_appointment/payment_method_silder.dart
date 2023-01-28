import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/alert.dart';
import 'package:salon_app/common/common_btn.dart';
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

BookAppointmentController bookAppointmentController =
    Get.put(BookAppointmentController());

Widget paymentMethodSlider() {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              Strings.selectPayment,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Amount to pay :  \$ 100",
              style: appTextStyle(
                  color: ColorRes.black.withOpacity(0.65),
                  fontWeight: FontWeight.w400,
                  fontSize: 11),
            ),
          ),
        ],
      ),
      SizedBox(height: Get.height * 0.0246),
      InkWell(
        onTap: () {
          bookAppointmentController.ischooseServices.value = false;
          bookAppointmentController.isappointment.value = false;
          bookAppointmentController.ispayment.value = false;
          bookAppointmentController.issummary.value = true;
          bookAppointmentController.chooseServices.value = true;
          bookAppointmentController.appointment.value = true;
          bookAppointmentController.payment.value = true;
          bookAppointmentController.summary.value = true;
        },
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Image(image: AssetImage(AssetRes.payStore), height: 25),
            ),
            Text(
              "Pay at store",
              style: appTextStyle(
                  color: ColorRes.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0369),
      const Divider(color: ColorRes.gray, height: 2, endIndent: 20, indent: 20),
      SizedBox(height: Get.height * 0.0369),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              Strings.debitOrCreditCard,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ),
        ],
      ),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Image(
              image: AssetImage(AssetRes.dCard),
              height: 25,
            ),
          ),
          Text(
            "Add a card",
            style: appTextStyle(
                fontWeight: FontWeight.w400,
                color: ColorRes.black,
                fontSize: 15),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded,
              size: 11, color: ColorRes.black),
          SizedBox(width: Get.width * 0.0666),
        ],
      ),
      SizedBox(height: Get.height * 0.0369),
      const Divider(color: ColorRes.gray, height: 2, endIndent: 20, indent: 20),
      SizedBox(height: Get.height * 0.0369),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              Strings.uPI,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ),
        ],
      ),
      SizedBox(height: Get.height * 0.0246),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Image(
              image: AssetImage(AssetRes.gPay),
              height: 25,
            ),
          ),
          Text(
            "Google Pay",
            style: appTextStyle(
                fontWeight: FontWeight.w400,
                color: ColorRes.black,
                fontSize: 15),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded,
              size: 11, color: ColorRes.black),
          SizedBox(width: Get.width * 0.0666),
        ],
      ),
      SizedBox(height: Get.height * 0.0246),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Image(
              image: AssetImage(AssetRes.pe),
              height: 25,
            ),
          ),
          Text(
            "Phone Pe",
            style: appTextStyle(
                fontWeight: FontWeight.w400,
                color: ColorRes.black,
                fontSize: 15),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 11,
            color: ColorRes.black,
          ),
          SizedBox(width: Get.width * 0.0666),
        ],
      ),
      SizedBox(height: Get.height * 0.0246),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Image(
              image: AssetImage(AssetRes.payUpi),
              height: 25,
            ),
          ),
          Text(
            "Pay via another UPI ID",
            style: appTextStyle(
                fontWeight: FontWeight.w400,
                color: ColorRes.black,
                fontSize: 15),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 11,
            color: ColorRes.black,
          ),
          SizedBox(width: Get.width * 0.0666),
        ],
      ),
    ],
  );
}

Widget summarySlider(context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                Strings.reviewAndConfirm,
                style: appTextStyle(
                    color: ColorRes.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.0246),
        /*  Container(
          height: 240,
          width: 325,
          decoration: BoxDecoration(
            color: ColorRes.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0xff94674F).withOpacity(0.2),
                offset: const Offset(0.0, 4),
                blurRadius: 23.0,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(AssetRes.pTime),
                    height: 25,
                  ),
                  SizedBox(width: Get.width * 0.0213),
                  Text(
                    Strings.pickingTime,
                    style: appTextStyle(
                        color: ColorRes.indicator,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " 04:00 PM, 3 July 2023",
                    style: appTextStyle(
                        color: ColorRes.black.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(AssetRes.cutingK),
                    height: 25,
                  ),
                  SizedBox(width: Get.width * 0.0213),
                  Text(
                    Strings.barberShop,
                    style: appTextStyle(
                        color: ColorRes.indicator,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " Serenity salon",
                    style: appTextStyle(
                        color: ColorRes.black.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(AssetRes.cutH),
                    height: 25,
                  ),
                  SizedBox(width: Get.width * 0.0213),
                  Text(
                    Strings.service1,
                    style: appTextStyle(
                        color: ColorRes.indicator,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " Hair cut and Beard trim",
                    style: appTextStyle(
                        color: ColorRes.black.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(AssetRes.barber),
                    height: 25,
                  ),
                  SizedBox(width: Get.width * 0.0213),
                  Text(
                    Strings.barber1,
                    style: appTextStyle(
                        color: ColorRes.indicator,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " Robert Fox",
                    style: appTextStyle(
                        color: ColorRes.black.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(AssetRes.plocation),
                    height: 25,
                  ),
                  SizedBox(width: Get.width * 0.0213),
                  Text(
                    Strings.location1,
                    style: appTextStyle(
                        color: ColorRes.indicator,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "1901 Thornridge Cir. ",
                    style: appTextStyle(
                        color: ColorRes.black.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
          ]),
        ),
        SizedBox(height: Get.height * 0.0246),
        Container(
          height: 74,
          width: 325,
          decoration: BoxDecoration(
            color: ColorRes.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0xff94674F).withOpacity(0.2),
                offset: const Offset(0.0, 4),
                blurRadius: 23.0,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Row(
                  children: [
                    Text(
                      Strings.payment1,
                      style: appTextStyle(
                          color: ColorRes.indicator,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      " Pay at store \$100",
                      style: appTextStyle(
                          color: ColorRes.black.withOpacity(0.6),
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),*/

        SizedBox(height: Get.height * 0.0246),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                Strings.addBookingNotes,
                style: appTextStyle(
                    color: ColorRes.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Include comments or send hairstyle reference if you wish",
                style: appTextStyle(
                    color: ColorRes.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 11),
              ),
            ),
          ],
        ),
          SizedBox(height: Get.height * 0.0246),
        Container(
          height: 130,
          width: 325,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: ColorRes.indicator),
          ),
          child: Material(
            shadowColor: ColorRes.indicator,
            borderRadius: BorderRadius.circular(12),
            child: TextFormField(
              controller: bookAppointmentController.typeMsgController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type message....',
                fillColor: Colors.transparent,
                filled: true,
                hintStyle: appTextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorRes.indicator,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.0492),
        commonButton(
          onTap: (){
            bookingConfirmed(context);
          },
            title: Strings.confirm,
            textColor: ColorRes.white,
            backgroundColor: ColorRes.indicator),

      ],
    ),
  );
}
