import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/user_part/profile_user/edit_profile/edit_profile_contoller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);
  final EditProfileController editProfileController =
      Get.put(EditProfileController());

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
          SizedBox(
            height: 420,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.0369),
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
                        controller: editProfileController.nameController,
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
                        controller: editProfileController.emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "rohansurve63@gmail.com",
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
                        controller: editProfileController.addressController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2464 Royal Ln. Mesa, New Jersey 45463",
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
                  Container(
                    height: 51,
                    width: 325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ColorRes.indicator),
                    ),
                    child: Obx(
                      () => DropdownButton(
                          isExpanded: true,
                          value: editProfileController.dropDownValue.value,
                          iconSize: 25.0,
                          iconEnabledColor: ColorRes.black.withOpacity(0.7),
                          iconDisabledColor: ColorRes.black.withOpacity(0.7),
                          underline: Container(),
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          items: editProfileController.items.obs.value.map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(val),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (String? val) {
                            editProfileController.changeDropDown(val: val!);
                          }),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.0246),
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
                        controller: editProfileController.dateOfBirthController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "22 / 02 / 1998",
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
                        controller: editProfileController.phoneNumberController,
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
                  SizedBox(height: Get.height * 0.0492),
                  commonButton(
                      title: Strings.update,
                      textColor: ColorRes.white,
                      backgroundColor: ColorRes.indicator)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
