import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_your_bank_account/add_your_bank_account_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class AddYourBankAccountScreen extends StatelessWidget {
  AddYourBankAccountScreen({super.key});

  final AddYourBankAccountController addYourBankAccountController =
      Get.put(AddYourBankAccountController());

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
                //     Get.height > 800 ? Get.height * 0.3 : Get.height * 0.289,
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
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_ios_new_rounded,
                          color: ColorRes.white, size: 20),
                    ),
                    const Spacer(),
                    Text(
                      Strings.bankAccount,
                      style: appTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.toNamed(PageRes.editBankAccountScreen);
                      },
                      child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            AssetRes.editIcon,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                top: Get.height * 0.25,
                left: Get.width * 0.055,
                right: Get.width * 0.055,
              ),
              child: Obx(
                () => Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          Strings.accountHoldersName,
                          style: appTextStyle(
                            color: ColorRes.black.withOpacity(0.6),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.008,
                    ),
                    Container(
                      height: 45,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorRes.indicator),
                      ),
                      child: Material(
                        shadowColor: ColorRes.indicator,
                        borderRadius: BorderRadius.circular(12),
                        child: TextFormField(
                          controller: addYourBankAccountController
                              .accountHolderNameController.value,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Albert Flores',
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          Strings.accountNumber,
                          style: appTextStyle(
                            color: ColorRes.black.withOpacity(0.6),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.008,
                    ),
                    Container(
                      height: 45,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorRes.indicator),
                      ),
                      child: Material(
                        shadowColor: ColorRes.indicator,
                        borderRadius: BorderRadius.circular(12),
                        child: TextFormField(
                          controller: addYourBankAccountController
                              .accountNumberController.value,

                          decoration: InputDecoration(
                            border: InputBorder.none,

                            hintText: '1234 5678 9012 3456',
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          Strings.reEnterAccountNumber,
                          style: appTextStyle(
                            color: ColorRes.black.withOpacity(0.6),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.008,
                    ),
                    Container(
                      height: 45,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorRes.indicator),
                      ),
                      child: Material(
                        shadowColor: ColorRes.indicator,
                        borderRadius: BorderRadius.circular(12),
                        child: TextFormField(
                          controller: addYourBankAccountController
                              .reEnterAccountNumberController.value,
                          // obscureText: controller.show.value,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // prefixIcon: const Padding(
                            //   padding: EdgeInsets.all(14.0),
                            //   child: Image(
                            //     image: AssetImage(AssetRes.locationIcon),
                            //     color: ColorRes.indicator,
                            //   ),
                            // ),
                            hintText: '1234 5678 9012 3456',
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            Strings.businessBank,
                            style: appTextStyle(
                                color: ColorRes.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(width: Get.width * 0.208),
                        Obx(
                          () => FlutterSwitch(
                            height: 23,
                            width: 39,
                            value: addYourBankAccountController.isAccount.value,
                            activeColor: ColorRes.indicator,
                            toggleSize: 16,
                            onToggle: (value) => addYourBankAccountController
                                .onchangeAccount(value),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
