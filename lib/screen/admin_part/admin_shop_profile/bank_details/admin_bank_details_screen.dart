import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_shop_profile/bank_details/admin_bank_details_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminBankDetailsScreen extends StatelessWidget {
  AdminBankDetailsScreen({Key? key}) : super(key: key);
  final AdminBankDetailsController adminBankDetailsController =
      Get.put(AdminBankDetailsController());

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
                      width: Get.width * 0.2026,
                    ),
                    Text(
                      Strings.bankDetails,
                      style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.white),
                    ),
                    SizedBox(
                      width: Get.width * 0.2533,
                    ),
                    InkWell(onTap: (){
                      Get.toNamed(PageRes.editBankAccountScreen);
                    },
                        child: const Image(image: AssetImage(AssetRes.bankIcon),height: 25)),

                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.0369),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  Strings.accountHolder,
                  style: appTextStyle(
                      color: ColorRes.black.withOpacity(0.6),
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
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
                controller: adminBankDetailsController.accountHolderController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Albert Flores',
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
          SizedBox(height: Get.height * 0.0246),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  Strings.accountNumber,
                  style: appTextStyle(
                      color: ColorRes.black.withOpacity(0.6),
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
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
                controller: adminBankDetailsController.accountNumberController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '1234 5678 9012 3456',
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
          SizedBox(height: Get.height * 0.0246),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  Strings.reEnterAccountNumber,
                  style: appTextStyle(
                      color: ColorRes.black.withOpacity(0.6),
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
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
                    adminBankDetailsController.reAccountNumberController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '1234 5678 9012 3456',
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
          SizedBox(height: Get.height * 0.0369),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  Strings.businessBank,
                  style: appTextStyle(
                      color: ColorRes.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
             SizedBox(width: Get.width*0.208),
              Obx(
                () => FlutterSwitch(
                  height: 22,
                  width: 38,
                  value: adminBankDetailsController.isAccount.value,
                  activeColor: ColorRes.indicator,
                  toggleSize: 16,
                  onToggle: (value) =>
                      adminBankDetailsController.onchangeAccount(value),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
