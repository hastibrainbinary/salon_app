import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/profile_user/payment/payment_controller.dart';
import 'package:salon_app/screen/user_part/profile_user/payment/payment_details_screen.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);
  final PaymentController paymentController = Get.put(PaymentController());

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
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Text(
                  Strings.myCard,
                  style: appTextStyle(
                    color: ColorRes.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (con) => PaymentDetailsScreen(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.add,
                    color: ColorRes.black,
                  ),
                )
              ],
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
        ],
      ),
    );
  }
}
