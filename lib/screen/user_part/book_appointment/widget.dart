import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/book_appointment/book_appointment_controller.dart';
import 'package:salon_app/screen/user_part/dashboard/most_book/most_book_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

BookAppointmentController bookAppointmentController =
    Get.put(BookAppointmentController());

Widget bookServices() {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      children: [
        SizedBox(
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
                          color: const Color(0xff94674F).withOpacity(0.09),
                          offset: const Offset(0.0, 4),
                          blurRadius: 23.0,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: const Image(
                      image: AssetImage(AssetRes.hairCut),
                    ),
                  ),
                  SizedBox(height: Get.height*0.0123),
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
                  bookAppointmentController.isChooseServices.value = false;
                  bookAppointmentController.isAppointment.value = true;
                  bookAppointmentController.isPayment.value = false;
                  bookAppointmentController.isSummary.value = false;
                  bookAppointmentController.chooseServices.value = true;
                  bookAppointmentController.appointment.value = true;
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

Widget reviews() {
  final MostBookController mostBookController = Get.put(MostBookController());
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 300,
          width: 315,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  height: 170,
                  width: 315,
                  decoration: BoxDecoration(color: ColorRes.white, boxShadow: [
                    BoxShadow(
                      color: const Color(0xff94674F).withOpacity(0.2),
                      offset: const Offset(0.0, 4),
                      blurRadius: 23.0,
                    ),
                  ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              child: Image(
                                image: AssetImage(AssetRes.person),
                              ),
                            ),
                            SizedBox(width: Get.width * 0.0533),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jane Cooper",
                                  style: appTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: ColorRes.black),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "October 25, 2022",
                                      style: appTextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: ColorRes.black),
                                    ),
                                    SizedBox(width: Get.width * 0.1866),
                                    const RatingStars(
                                      starSize: 9,
                                      value: 5,
                                      valueLabelVisibility: false,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 63, top: 18),
                        child: Text(
                          Strings.loremIpsum,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.heart),
                              height: 20,
                            ),
                            SizedBox(width: Get.width * 0.0266),
                            Text(
                              "18 Likes",
                              style: appTextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: ColorRes.like),
                            ),
                            SizedBox(width: Get.width * 0.08),
                            const Image(
                                image: AssetImage(AssetRes.reply), height: 20),
                            SizedBox(width: Get.width * 0.0266),
                            Text(
                              "Reply",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 25);
              },
              itemCount: 2),
        ),
        SizedBox(height: Get.height * 0.0369),
        Padding(
          padding: const EdgeInsets.only(left: 37),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 245,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: ColorRes.indicator),
                ),
                child: Material(
                  shadowColor: ColorRes.indicator,
                  borderRadius: BorderRadius.circular(8),
                  child: TextFormField(
                    controller: mostBookController.writeController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write a comment.....',
                      fillColor: Colors.transparent,
                      filled: true,
                      hintStyle: appTextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: ColorRes.black.withOpacity(0.15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: Get.width * 0.0533),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: ColorRes.indicator,
                    borderRadius: BorderRadius.circular(8)),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image(
                      image: AssetImage(AssetRes.chat), color: ColorRes.white),
                ),
              ),
              SizedBox(height: Get.width * 0.0369)
            ],
          ),
        ),
      ],
    ),
  );
}

Widget about() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            const Icon(
              Icons.access_time_rounded,
              size: 25,
              color: ColorRes.indicator,
            ),
            SizedBox(width: Get.width * 0.0266),
            Text(
              Strings.openingHours,
              style: appTextStyle(
                color: ColorRes.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0123),
      Padding(
        padding: const EdgeInsets.only(left: 67),
        child: Row(
          children: [
            Text(
              "Monday - Friday         ",
              style: appTextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: ColorRes.black.withOpacity(0.50)),
            ),
            Text(
              "09:00 AM - 10:00 PM",
              style: appTextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: ColorRes.black),
            ),
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0061),
      Padding(
        padding: const EdgeInsets.only(left: 67),
        child: Row(
          children: [
            Text(
              "Monday - Friday         ",
              style: appTextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: ColorRes.black.withOpacity(0.50)),
            ),
            Text(
              "09:00 AM - 10:00 PM",
              style: appTextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: ColorRes.black),
            ),
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            const Icon(
              Icons.location_on,
              size: 25,
              color: ColorRes.indicator,
            ),
            SizedBox(width: Get.width * 0.0266),
            Text(
              Strings.location,
              style: appTextStyle(
                color: ColorRes.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0123),
      Container(
        margin: const EdgeInsets.only(left: 66),
        alignment: Alignment.centerLeft,
        child: Text(
          "1901 Thornier Cir. Shiloh, Hawaii ",
          style: appTextStyle(
            color: ColorRes.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      InkWell(
        onTap: () => Get.toNamed(PageRes.bookings),
        child: Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 40),
          child: Text(
            Strings.todayBookings,
            style: appTextStyle(
                color: ColorRes.black,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            Stack(
              alignment: const Alignment(-1, 0),
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: ColorRes.black),
                  child: Image.asset(AssetRes.adminProfilePic),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: Image.asset(AssetRes.staff),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Image.asset(AssetRes.adminProfilePic),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 60),
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: ColorRes.indicator),
                  child: Text(
                    "+3",
                    style:
                        appTextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 40),
        child: Text(
          Strings.about,
          style: appTextStyle(
              color: ColorRes.black, fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 40),
        child: Text(
          Strings.lorem,
          style: appTextStyle(
              color: ColorRes.black.withOpacity(0.75),
              fontWeight: FontWeight.w400,
              fontSize: 13),
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 40),
        child: Text(
          Strings.ourStaff,
          style: appTextStyle(
              color: ColorRes.black, fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      Padding(
        padding: const EdgeInsets.only(left: 35),
        child: SizedBox(
          width: 320,
          height: 100,
          /* decoration: BoxDecoration(
                          color: ColorRes.black,
                        ),*/
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: ColorRes.white,
                    radius: 35,
                    child: Image(
                      image: AssetImage(AssetRes.staff),
                      height: 65,
                    ),
                  ),
                  Text(
                    "Robert Fox",
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
      ),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 40),
        child: Text(
          Strings.images,
          style: appTextStyle(
              color: ColorRes.black, fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      Padding(
        padding: const EdgeInsets.only(left: 37),
        child: Row(
          children: [
            Container(
              height: 147,
              width: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetRes.imageStyel),
                ),
              ),
            ),
            SizedBox(width: Get.width * 0.04),
            Container(
              height: 147,
              width: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetRes.imageStyel),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            ...List.generate(
                4,
                (index) => Stack(
                      children: [
                        Container(
                          margin: (index == 3)
                              ? EdgeInsets.zero
                              : const EdgeInsets.only(right: 12),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(AssetRes.personImg),
                        ),
                        (index == 3)
                            ? Container(
                                alignment: Alignment.center,
                                margin: (index == 3)
                                    ? EdgeInsets.zero
                                    : const EdgeInsets.only(right: 12),
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: ColorRes.black.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  "+10",
                                  style: appTextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    )),
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            InkWell(
              onTap: () => Get.toNamed(PageRes.messagesScreen),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ColorRes.indicator),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage(AssetRes.chat),
                  ),
                ),
              ),
            ),
            SizedBox(width: Get.width * 0.0533),
            InkWell(
              onTap: () => Get.toNamed(PageRes.bookAppointmentScreen),
              child: Container(
                height: 50,
                width: 245,
                decoration: BoxDecoration(
                    color: ColorRes.indicator,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.bookAppointment,
                      style: appTextStyle(
                          color: ColorRes.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: Get.width * 0.0186),
                    const Image(
                      image: AssetImage(AssetRes.arrow),
                      height: 15,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0246),
    ],
  );
}
