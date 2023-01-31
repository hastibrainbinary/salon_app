import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_shop_profile/edit_profile/admin_edit_profile_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminEditProfileScreen extends StatelessWidget {
  AdminEditProfileScreen({Key? key}) : super(key: key);
  final AdminEditProfileController adminEditProfileController =
      Get.put(AdminEditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Column(
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
                            Strings.editProfile,
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
                Stack(
                  children: [
                    Container(
                      height: 121,
                      width: 121,
                      decoration: BoxDecoration(
                          color: ColorRes.gray,
                          // border: Border.all(color: ColorRes.white, width: 2.5),
                          image: const DecorationImage(
                              image: AssetImage(AssetRes.imageStyel),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(121)),
                    ),
                    Positioned(
                      bottom: 3,
                      left: 90,
                      child: Container(
                        height: 31,
                        width: 31,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          borderRadius: BorderRadius.circular(31),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage(AssetRes.photo),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.58,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: Get.height * 0.0246),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            Strings.name,
                            style: appTextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black.withOpacity(0.6),
                            ),
                          )
                        ],
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
                          controller: adminEditProfileController.nameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Rohan Surve",
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            Strings.emailID1,
                            style: appTextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: ColorRes.black.withOpacity(0.6)),
                          )
                        ],
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
                              adminEditProfileController.emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "serenitysalon@gmail.com",
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            Strings.mobileNumber,
                            style: appTextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: ColorRes.black.withOpacity(0.6)),
                          )
                        ],
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
                              adminEditProfileController.phoneNumberController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "+91 96325 85763 ",
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            Strings.location2,
                            style: appTextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: ColorRes.black.withOpacity(0.6)),
                          )
                        ],
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
                              adminEditProfileController.locationController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "+91 96325 85763 ",
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            Strings.openingHours,
                            style: appTextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: ColorRes.black.withOpacity(0.6)),
                          )
                        ],
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
                              adminEditProfileController.openingHoursController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Monday - Friday : 09:00 AM - 10:00 PM  ",
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            Strings.about1,
                            style: appTextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: ColorRes.black.withOpacity(0.6)),
                          )
                        ],
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
                              adminEditProfileController.aboutController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Monday - Friday : 09:00 AM - 10:00 PM  ",
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: ColorRes.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
