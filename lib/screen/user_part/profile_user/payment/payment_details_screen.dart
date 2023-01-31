import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/user_part/profile_user/payment/payment_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class PaymentDetailsScreen extends StatelessWidget {
  PaymentDetailsScreen({Key? key}) : super(key: key);
  final PaymentController paymentController = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    SizedBox(
                      width: Get.width * 0.2533,
                    ),
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
          SizedBox(height: Get.height * 0.0369),
          SizedBox(
            height: Get.height * 0.72,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                Center(
                  child: Text(
                    Strings.addNewCard,
                    style: appTextStyle(
                        color: ColorRes.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: Get.height * 0.0246),
                Container(
                  height: 204,
                  width: 327,
                  decoration: BoxDecoration(
                    color: ColorRes.indicator,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CREDIT CARD",
                          style: appTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.white),
                        ),
                        SizedBox(height: Get.height * 0.0123),
                        const Image(
                          image: AssetImage(AssetRes.card),
                          height: 40,
                        ),
                        SizedBox(height: Get.height * 0.0123),
                        Text(
                          "**** **** **** 3456",
                          style: appTextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.white),
                        ),
                        SizedBox(height: Get.height * 0.0123),
                        Text(
                          "7865",
                          style: appTextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.white),
                        ),
                        SizedBox(height: Get.height * 0.0123),
                        Row(
                          children: [
                            Text(
                              "ROHAN SURVE",
                              style: appTextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: ColorRes.white),
                            ),
                            SizedBox(width: Get.width * 0.2333),
                            Text(
                              "VALID \nTILL",
                              style: appTextStyle(
                                  fontSize: 6,
                                  fontWeight: FontWeight.w500,
                                  color: ColorRes.white),
                            ),
                            SizedBox(width: Get.width * 0.0266),
                            Text(
                              "06/30",
                              style: appTextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: ColorRes.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.0462),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.cardNumber,
                      style: appTextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: ColorRes.black.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0123),
                    Container(
                      height: 51,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorRes.indicator),
                      ),
                      child: Material(
                        shadowColor: ColorRes.indicator,
                        borderRadius: BorderRadius.circular(12),
                        child: TextFormField(
                          controller: paymentController.cardNumberController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '**** **** **** 3456',
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.cardHolderName,
                      style: appTextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: ColorRes.black.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0123),
                    Container(
                      height: 51,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorRes.indicator),
                      ),
                      child: Material(
                        shadowColor: ColorRes.indicator,
                        borderRadius: BorderRadius.circular(12),
                        child: TextFormField(
                          controller:
                              paymentController.cardHolderNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Rohan Surve',
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.0246),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.expirationDate,
                            style: appTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: ColorRes.black.withOpacity(0.75),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0123),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: ColorRes.white,
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: ColorRes.indicator),
                                ),
                                child: Material(
                                  shadowColor: ColorRes.indicator,
                                  borderRadius: BorderRadius.circular(3),
                                  child: TextFormField(
                                    controller:
                                        paymentController.monthController,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      isCollapsed: true,
                                      hintText: '06',
                                      fillColor: Colors.transparent,
                                      filled: true,
                                      hintStyle: appTextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: ColorRes.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: Get.width * 0.04),
                              const Image(
                                image: AssetImage(AssetRes.line),
                                height: 40,
                              ),
                              SizedBox(width: Get.width * 0.04),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: ColorRes.white,
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: ColorRes.indicator),
                                ),
                                child: Material(
                                  shadowColor: ColorRes.indicator,
                                  borderRadius: BorderRadius.circular(3),
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    controller:
                                        paymentController.dateController,
                                    decoration: InputDecoration(
                                      isCollapsed: true,
                                      border: InputBorder.none,
                                      hintText: '30',
                                      fillColor: Colors.transparent,
                                      filled: true,
                                      hintStyle: appTextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: ColorRes.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.cVV,
                            style: appTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: ColorRes.black.withOpacity(0.75),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0123),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                height: 40,
                                width: 86,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: ColorRes.indicator),
                                ),
                                child: Material(
                                  shadowColor: ColorRes.indicator,
                                  borderRadius: BorderRadius.circular(3),
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    controller: paymentController.cvvController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '7865',
                                      fillColor: Colors.transparent,
                                      filled: true,
                                      isCollapsed: true,
                                      constraints: BoxConstraints.loose(
                                          const Size(86, 40)),
                                      hintStyle: appTextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: ColorRes.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 20),
                  child: commonButton(
                      title: Strings.addNewCard,
                      textColor: ColorRes.white,
                      backgroundColor: ColorRes.indicator),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
