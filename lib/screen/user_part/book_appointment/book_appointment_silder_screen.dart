import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:month_picker_dialog_2/month_picker_dialog_2.dart';
import 'package:salon_app/screen/user_part/book_appointment/book_appointment_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';
import 'package:status_change/status_change.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';
import 'package:intl/intl.dart';

class BookAppointmentSliderScreen extends StatelessWidget {
  BookAppointmentSliderScreen({Key? key}) : super(key: key);
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
                    bookAppointmentController.payment.value = true;
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Text(
                  Strings.selectTime,
                  style: appTextStyle(
                      color: ColorRes.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 240,
            child: Padding(
              padding: const EdgeInsets.only(left: 27, right: 25),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 3 / 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: 14,
                itemBuilder: (context, index) {
                  return Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorRes.indicator),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "09:00 AM ",
                        style: appTextStyle(
                            color: ColorRes.indicator,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Checkbox(
                  activeColor: ColorRes.indicator,
                  checkColor: ColorRes.white,
                  side: const BorderSide(width: 1, color: ColorRes.indicator),
                  value: bookAppointmentController.availableSlots.value,
                  onChanged: bookAppointmentController.onAvailableSlots,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Text(
                  Strings.availableSlots,
                  style: appTextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: ColorRes.indicator),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Text(
                  Strings.selectStaff,
                  style: appTextStyle(
                      color: ColorRes.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ],
          ),
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
                    bookAppointmentController.appointment.value = true;

                    Get.toNamed(PageRes.bookAppointmentSliderScree);
                  },
                  child: Container(
                    width: 153,
                    height: 45,
                    decoration: BoxDecoration(
                        color: ColorRes.indicator,
                        borderRadius: BorderRadius.circular(8)),
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
}

BookAppointmentController bookAppointmentController =
    Get.put(BookAppointmentController());

Widget bookAppointMentSlider({required BuildContext context}) {
  return Column(
    children: [
      /*  Stack(
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
                bookAppointmentController.payment.value = true;
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
                  color:
                      bookAppointmentController.ischooseServices.value == true
                          ? ColorRes.indicator
                          : ColorRes.gray,
                  fontWeight: FontWeight.w400,
                  fontSize: 10),
            ),
  
            Text(
              Strings.appointment,
              style: appTextStyle(
                  color: bookAppointmentController.isappointment.value == true
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
      SizedBox(height: Get.height * 0.0369), */
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 20),
        child: Row(
          children: [
            Text(
              Strings.selectDate,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            const Spacer(),
            InkWell(
              onTap: () async {
                var selected = await showMonthPicker(
                  context: context,
                  initialDate: DateTime.now(),
                  headerColor: Colors.transparent,
                  headerTextColor: Colors.transparent,
                );
                try {
                  bookAppointmentController.month.value = selected!;
                } catch (e) {
                  if (kDebugMode) {
                    print(e);
                  }
                }
              },
              child: Container(
                color: Colors.transparent,
                child: Row(children: [
                  Obx(
                    () => Text(
                      DateFormat.MMMM()
                          .format(bookAppointmentController.month.value)
                          .toString(),
                      style: appTextStyle(
                          color: ColorRes.indicator,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded, size: 15),
                ]),
              ),
            ),
            // SizedBox(
            //   width: 25,
            // )
          ],
        ),
      ),
      SizedBox(
        height: Get.height * 0.02,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25),
        child: WeeklyDatePicker(
            enableWeeknumberText: false,
            daysInWeek: 7,

            // weekdays: [],
            selectedBackgroundColor: ColorRes.white,
            selectedDigitColor: ColorRes.indicator,
            digitsColor: ColorRes.white,
            // backgroundColor: ColorRes.indicator,
            selectedDay: DateTime.now(), // DateTime
            changeDay: (value) {}),
      ),
      SizedBox(
        height: Get.height * 0.02,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              Strings.selectTime,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 240,
        child: Padding(
          padding: const EdgeInsets.only(left: 27, right: 25),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: 14,
            itemBuilder: (context, index) {
              return Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorRes.indicator),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "09:00 AM ",
                    style: appTextStyle(
                        color: ColorRes.indicator,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Checkbox(
              activeColor: ColorRes.indicator,
              checkColor: ColorRes.white,
              side: const BorderSide(width: 1, color: ColorRes.indicator),
              value: bookAppointmentController.availableSlots.value,
              onChanged: bookAppointmentController.onAvailableSlots,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Text(
              Strings.availableSlots,
              style: appTextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: ColorRes.indicator),
            )
          ],
        ),
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              Strings.selectStaff,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 35, top: 10, bottom: 10),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  4,
                  (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Stack(
                          alignment: Alignment(-1.2, 0),
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: 20),
                              height: 35,
                              width: 144,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == 0
                                    ? ColorRes.indicator
                                    : ColorRes.white,
                                border: index == 0
                                    ? Border.all(style: BorderStyle.none)
                                    : Border.all(color: ColorRes.indicator),
                              ),
                              child: Text(
                                "Robert Fox",
                                style: appTextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: index == 0
                                        ? ColorRes.white
                                        : ColorRes.black),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                AssetRes.adminProfilePic,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      )),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(22),
                shape: BoxShape.circle,
                border: Border.all(color: ColorRes.indicator),
              ),
              child: const Center(
                  child:
                      Icon(Icons.check, color: ColorRes.indicator, size: 15)),
            ),
            SizedBox(
              width: Get.width * 0.03,
            ),
            Text(
              "remind me 30 min in advance",
              style: appTextStyle(
                  color: ColorRes.indicator,
                  fontSize: 11,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
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
                bookAppointmentController.ischooseServices.value = false;
                bookAppointmentController.isappointment.value = false;
                bookAppointmentController.ispayment.value = true;
                bookAppointmentController.chooseServices.value = true;
                bookAppointmentController.appointment.value = true;
                bookAppointmentController.payment.value = true;
              },
              child: Container(
                width: 153,
                height: 45,
                decoration: BoxDecoration(
                    color: ColorRes.indicator,
                    borderRadius: BorderRadius.circular(8)),
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
  );
}
