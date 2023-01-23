import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

Widget mostBook() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            Text(
              Strings.mostBookedSalons,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            SizedBox(width: Get.width * 0.3466),
            InkWell(
              onTap: () => Get.toNamed(PageRes.mostBook),
              child: Text(
                Strings.viewAll,
                style: appTextStyle(
                    color: ColorRes.indicator,
                    fontWeight: FontWeight.w500,
                    fontSize: 10),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0123),
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  height: 139,
                  width: 155,
                  decoration: BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                        ),
                        child: Stack(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.mostBook),
                            ),
                            Positioned(
                              top: 70,
                              left: 85,
                              child: Container(
                                height: 18,
                                width: 50,
                                padding:
                                    const EdgeInsets.only(left: 3, right: 5),
                                decoration: const BoxDecoration(
                                  color: ColorRes.indicator,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8)),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: ColorRes.indicator,
                                    ),
                                    Text(
                                      "Open",
                                      style: TextStyle(
                                          color: ColorRes.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0049),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 62,
                        ),
                        child: Text(
                          Strings.serenitySalon,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: ColorRes.black,
                              size: 15,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "5 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                            const Icon(
                              Icons.star,
                              color: ColorRes.star,
                              size: 8,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "4.0",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: Get.width * 0.0533),
                Container(
                  height: 139,
                  width: 155,
                  decoration: BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                        ),
                        child: Stack(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.mostBook),
                            ),
                            Positioned(
                              top: 70,
                              left: 85,
                              child: Container(
                                height: 18,
                                width: 50,
                                padding:
                                    const EdgeInsets.only(left: 3, right: 5),
                                decoration: const BoxDecoration(
                                  color: ColorRes.indicator,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8)),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: ColorRes.indicator,
                                    ),
                                    Text(
                                      "Open",
                                      style: TextStyle(
                                          color: ColorRes.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0049),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 62,
                        ),
                        child: Text(
                          Strings.serenitySalon,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: ColorRes.black,
                              size: 15,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "5 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                            const Icon(
                              Icons.star,
                              color: ColorRes.star,
                              size: 8,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "4.0",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}

Widget nearbySalon() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            Text(
              Strings.nearbySalon,
              style: appTextStyle(
                  color: ColorRes.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            SizedBox(width: Get.width * 0.4746),
            Text(
              Strings.viewAll,
              style: appTextStyle(
                  color: ColorRes.indicator,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            ),
          ],
        ),
      ),
      SizedBox(height: Get.height * 0.0123),
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  height: 139,
                  width: 155,
                  decoration: BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                        ),
                        child: Stack(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.nearbySalon),
                            ),
                            Positioned(
                              top: 70,
                              left: 85,
                              child: Container(
                                height: 18,
                                width: 50,
                                padding:
                                    const EdgeInsets.only(left: 3, right: 5),
                                decoration: const BoxDecoration(
                                  color: ColorRes.indicator,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8)),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: ColorRes.indicator,
                                    ),
                                    Text(
                                      Strings.open,
                                      style: TextStyle(
                                          color: ColorRes.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0049),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 62,
                        ),
                        child: Text(
                          Strings.serenitySalon,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: ColorRes.black,
                              size: 15,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "5 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                            const Icon(
                              Icons.star,
                              color: ColorRes.star,
                              size: 8,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "4.0",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: Get.width * 0.0533),
                Container(
                  height: 139,
                  width: 155,
                  decoration: BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                        ),
                        child: Stack(
                          children: [
                            const Image(
                              image: AssetImage(AssetRes.nearbySalon),
                            ),
                            Positioned(
                              top: 70,
                              left: 85,
                              child: Container(
                                height: 18,
                                width: 50,
                                padding:
                                    const EdgeInsets.only(left: 3, right: 5),
                                decoration: const BoxDecoration(
                                  color: ColorRes.indicator,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8)),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: ColorRes.indicator,
                                    ),
                                    Text(
                                      "Open",
                                      style: TextStyle(
                                          color: ColorRes.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0049),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 62,
                        ),
                        child: Text(
                          Strings.serenitySalon,
                          style: appTextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: ColorRes.black,
                              size: 15,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "5 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                            const Icon(
                              Icons.star,
                              color: ColorRes.star,
                              size: 8,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "4.0",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}

Future settingModalBottomSheet(context) {
  return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bc) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Container(
            decoration: const BoxDecoration(
              color: ColorRes.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.0480),
                Text(
                  Strings.filter,
                  style: appTextStyle(
                      color: ColorRes.indicator,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                SizedBox(height: Get.height * 0.0246),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    textAlign: TextAlign.start,
                    Strings.category,
                    style: appTextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: ColorRes.black),
                  ),
                ),
                SizedBox(height: Get.height * 0.0184),
                Container(
                  width: 320,
                  height: 100,
                  /*  decoration: BoxDecoration(
                           border: Border.all()
                          ),*/
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
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
                                border: Border.all(color: ColorRes.indicator),
                                color: ColorRes.white,
                                borderRadius: BorderRadius.circular(70),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff94674F)
                                        .withOpacity(0.2),
                                    offset: const Offset(0.0, 4),
                                    blurRadius: 23.0,
                                  )
                                ]),
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
                SizedBox(height: Get.height * 0.0369),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    textAlign: TextAlign.start,
                    Strings.ratting,
                    style: appTextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: ColorRes.black),
                  ),
                ),
                SizedBox(height: Get.height * 0.0184),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          border: Border.all(color: ColorRes.indicator),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.star,
                                size: 22, color: ColorRes.star),
                            Text(
                              "All",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: Get.width * 0.0266),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          border: Border.all(color: ColorRes.indicator),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.star,
                                size: 22, color: ColorRes.star),
                            Text(
                              "5",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: Get.width * 0.0266),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          border: Border.all(color: ColorRes.indicator),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.star,
                                size: 22, color: ColorRes.star),
                            Text(
                              "4",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: Get.width * 0.0266),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          border: Border.all(color: ColorRes.indicator),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.star,
                                size: 22, color: ColorRes.star),
                            Text(
                              "3",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.0184),
                /*    Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    textAlign: TextAlign.start,
                    Strings.distance,
                    style: appTextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: ColorRes.black),
                  ),
                ),
                SizedBox(height: Get.height * 0.0184),
            */ /*    Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        width: 101,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          border: Border.all(color: ColorRes.indicator),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on_outlined,
                                size: 22, color: ColorRes.indicator),
                            Text(
                              "2-5 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: Get.width * 0.0266),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        width: 101,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          border: Border.all(color: ColorRes.indicator),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on_outlined,
                                size: 22, color: ColorRes.indicator),
                            Text(
                              "5-10 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: Get.width * 0.0266),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          border: Border.all(color: ColorRes.indicator),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on_outlined,
                                size: 22, color: ColorRes.indicator),
                            Text(
                              "10-15 km",
                              style: appTextStyle(
                                  color: ColorRes.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),*/
              ],
            ),
          ),
        );
      });
}
/*Widget filtter(){
  return    DraggableScrollableSheet(
    initialChildSize: 0.99,
    minChildSize: 0.95,
    maxChildSize: 0.99,
    builder: (context, scrollController) => GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: EdgeInsets.only(
              top: Get.height * 0.1169,
              left: Get.width * 0.0853,
              right: Get.width * 0.0853),
          child: Column(
            children: [
              Text(
                "Confirm Advertisement Details And Pay",
                style: gilroySemiBoldTextStyle(
                  fontSize: 24,
                  color: ColorRes.black,
                ),
              ),
              SizedBox(
                height: Get.height * 0.03078,
              ),
              Container(
                width: Get.width * 0.8293,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorRes.color_50369C,
                      ColorRes.color_50369C,
                      ColorRes.colorD18EEE,
                      ColorRes.colorD18EEE,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.0666),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.0320,
                      ),
                      Text(
                        "You have to pay",
                        style: gilroySemiBoldTextStyle(fontSize: 12),
                      ),
                      // SizedBox(
                      //   height: Get.height * 0.0320,
                      // ),
                      Row(
                        children: [
                          GetBuilder<RenewAdSetupDateController>(
                            id:"select",
                            builder: (controller) {
                              return  (controller.totalAmount == null || controller.totalAmount == 0)
                                  ?Text(
                                "£10",
                                style: poppinsSemiBold(fontSize: 64),
                              ):Text(
                                "£${controller.totalAmount}",
                                style: poppinsSemiBold(fontSize: 64),
                              );
                            },
                          ),*/ /*Padding(padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                      "00USD",
                                      style: poppinsSemiBold(fontSize: 12 ),
                                    ),
                                  ),*/ /*
                        ],
                      ),
                      */ /* Text(
                                renewAdSetupDateController
                                    .amountController.text,
                                style: poppinsSemiBold(fontSize: 24),
                              ),*/ /*
                      // RichText(
                      //   text: TextSpan(children: [
                      //     TextSpan(
                      //       text: amount,
                      //       style: poppinsSemiBold(fontSize: 64),
                      //     ),
                      //     TextSpan(
                      //       text: setupDateController.amountController.text,
                      //       style: poppinsSemiBold(fontSize: 24),
                      //     )
                      //   ]),
                      // ),

                      Divider(
                        color: ColorRes.black.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: Get.height * 0.036,
                      ),
                      Text(
                        "Payer’s Name",
                        style: poppinsRegularBold(fontSize: 12),
                      ),
                      SizedBox(
                        height: Get.height * 0.007389,
                      ),
                      Text(
                        adHomeController.viewAdvertiserModel.data?.fullName ?? "",
                        style: poppinsMediumBold(fontSize: 14),
                      ),
                      SizedBox(
                        height: Get.height * 0.0209,
                      ),
                      */ /*Text(
                                "Transaction Number",
                                style: poppinsRegularBold(fontSize: 12),
                              ),
                              SizedBox(
                                height: Get.height * 0.007389,
                              ),
                              Text(
                                "122900083HN",
                                style: poppinsMediumBold(fontSize: 14),
                              ),
                              SizedBox(
                                height: Get.height * 0.0209,
                              ),*/ /*
                      Text(
                        "Service",
                        style: poppinsRegularBold(fontSize: 12),
                      ),
                      SizedBox(
                        height: Get.height * 0.007389,
                      ),
                      Text(
                        "Post Ads",
                        style: poppinsMediumBold(fontSize: 14),
                      ),
                      SizedBox(
                        height: Get.height * 0.0209,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.0665,
              ),
              SubmitButton(
                onTap: () async{

                  renewAdSetupDateController.renewAdAPI(id: id);



                  // createAdvertisementController.loader.value = false;

                  //Get.to(() => PaymentSuccessfulScreen());
                  */ /* setupDateController.boostAdvertisementApi();*/ /*
                },
                child: Text(
                  */ /*"Pay ${setupDateController.amountController.text}",*/ /*
                  "Pay £$amount",
                  style: gilroyBoldTextStyle(
                    fontSize: 16,
                    color: ColorRes.black,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.0246,
              ),
              SubmitButton(
                onTap: () {
                  Get.to(() => PaymentFailedScreen());
                },
                child: Text(
                  "Cancel",
                  style: gilroySemiBoldTextStyle(fontSize: 16),
                ),
                colors: const [
                  ColorRes.colorF86666,
                  ColorRes.colorF82222,
                ],
              ),
              SizedBox(
                height: Get.height * 0.0320,
              ),
            ],
          ),
        ),
      ),
    ),
  ),
  renewAdSetupDateController.loader.value == true
  ? const FullScreenLoader()
      : const SizedBox(),

}*/
