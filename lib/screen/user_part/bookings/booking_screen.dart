import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/bookings/booking_controller.dart';
import 'package:salon_app/screen/user_part/bookings/widget.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({Key? key}) : super(key: key);
  final BookingController bookingController = Get.put(BookingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                        Strings.todayBookings,
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
            Padding(
              padding: const EdgeInsets.only(top: 35, right: 180),
              child: Text(
                Strings.timeSchedule,
                style: appTextStyle(
                    color: ColorRes.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            SizedBox(height: Get.height * 0.0123),
            SizedBox(
              height: 270,
              child: Padding(
                padding: const EdgeInsets.only(left: 27,right: 25),
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
                    value: bookingController.availableSlots.value,
                    onChanged: bookingController.onAvailableSlots,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Text(Strings.availableSlots,
                      style: appTextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: ColorRes.indicator))
                ],
              ),
            ),

            bookingList(),
          ],
        ),
      ),
    );
  }
}
