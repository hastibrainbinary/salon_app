import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_your_bank_account/edit_account/edit_account_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

///_____________________________ TODO: CREATE EDIT ACCOUNT SCREEN ... ____________________________

class EditBankAccountScreen extends StatelessWidget {
  EditBankAccountScreen({super.key});

  final EditBankAccountController editYourBankAccountController =
      Get.put(EditBankAccountController());

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
                      Strings.editBankAccount,
                      style: appTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Visibility(
                      visible: false,
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
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
                          controller: editYourBankAccountController
                              .accountHolderNameController.value,
                          // obscureText: controller.show.value,
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
                    // controller.locationError.value == ""
                    //         ? SizedBox(height: Get.height * 0.0197)
                    //         : Container(
                    //             width: 350,
                    //             height: 28,
                    //             margin: const EdgeInsets.symmetric(vertical: 10),
                    //             decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(50),
                    //                 color: ColorRes.invalidColor),
                    //             padding: const EdgeInsets.only(left: 15),
                    //             child: Row(
                    //               mainAxisAlignment: MainAxisAlignment.start,
                    //               crossAxisAlignment: CrossAxisAlignment.center,
                    //               children: [
                    //                 const Image(
                    //                   image: AssetImage(
                    //                     AssetRes.invalid,
                    //                   ),
                    //                   height: 14,
                    //                 ),
                    //                 const SizedBox(width: 10),
                    //                 Text(
                    //                   controller.locationError.value,
                    //                   style: appTextStyle(
                    //                       fontSize: 9,
                    //                       fontWeight: FontWeight.w400,
                    //                       color: ColorRes.starColor),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
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
                          controller: editYourBankAccountController
                              .accountNumberController.value,
                          // obscureText: controller.show.value,
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
                          controller: editYourBankAccountController
                              .reEnterAccountNumberController.value,
                          // obscureText: controller.show.value,
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
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          Strings.businessBankAccount,
                          style: appTextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black),
                        ),
                        const Spacer(),
                        Transform.scale(
                          scale: 0.6,
                          child: CupertinoSwitch(
                            activeColor: ColorRes.color94674F,
                            value: editYourBankAccountController.isSwitch.value,
                            onChanged: (v) {
                              editYourBankAccountController.onSwitchChange(v);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.12,
                    ),
                    commonButton(
                        onTap: () {
                          Get.offAndToNamed(PageRes.adminDashBoardScreen);
                        },
                        title: Strings.submit,
                        textColor: ColorRes.white,
                        backgroundColor: ColorRes.indicator),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
