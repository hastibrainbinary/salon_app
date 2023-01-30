import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog_2/month_picker_dialog_2.dart';
import 'package:salon_app/screen/admin_part/admin_appointment/admin_appointment_controller.dart';
import 'package:salon_app/screen/user_part/bookings/widget.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class AdminAppointmentScreen extends StatelessWidget {
  AdminAppointmentScreen({Key? key}) : super(key: key);
  final AdminAppointmentController adminAppointmentController =
      Get.put(AdminAppointmentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  // height:
                  //     Get.height > 800 ? Get.height * 0.3 : Get.height * 0.25,
                  width: Get.width,
                  child: const Image(
                    image: AssetImage(AssetRes.mostBookBack),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.width * 0.055, right: Get.width * 0.055),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text(
                        Strings.appointment,
                        style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: Get.height * 0.25,
              ),
              child: SizedBox(
                height: Get.height * 0.7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 20),
                        child: Row(
                          children: [
                            Text(
                              Strings.date,
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
                                  adminAppointmentController.month.value =
                                      selected!;
                                } catch (e) {
                                  print(e);
                                }
                              },
                              child: Container(
                                color: Colors.transparent,
                                child: Row(children: [
                                  Obx(
                                    () => Text(
                                      DateFormat.MMMM()
                                          .format(adminAppointmentController
                                              .month.value)
                                          .toString(),
                                      style: appTextStyle(
                                          color: ColorRes.indicator,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Icon(Icons.keyboard_arrow_down_rounded,
                                      size: 15),
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
                              Strings.timeSchedule,
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
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
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
                              side: const BorderSide(
                                  width: 1, color: ColorRes.indicator),
                              value: adminAppointmentController
                                  .availableSlots.value,
                              onChanged:
                                  adminAppointmentController.onAvailableSlots,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.bookingList,
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(height: Get.height * 0.0184),
                            ListView.separated(
                              itemCount: 8,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () =>
                                      Get.toNamed(PageRes.adminStaffDetailsScreen),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 20,
                                        child: Image(
                                          image: AssetImage(AssetRes.person),
                                        ),
                                      ),
                                      SizedBox(width: Get.width * 0.0533),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Esther Howard",
                                            style: appTextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: ColorRes.black),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Time :',
                                                  style: appTextStyle(
                                                    color: ColorRes.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '9:00 AM',
                                                  style: appTextStyle(
                                                    color: ColorRes.black
                                                        .withOpacity(0.6),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Service :',
                                                  style: appTextStyle(
                                                    color: ColorRes.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'Hair cutting',
                                                  style: appTextStyle(
                                                    color: ColorRes.black
                                                        .withOpacity(0.6),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Staff :',
                                                  style: appTextStyle(
                                                    color: ColorRes.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'Jane Cooper',
                                                  style: appTextStyle(
                                                    color: ColorRes.black
                                                        .withOpacity(0.6),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(height: 15);
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
