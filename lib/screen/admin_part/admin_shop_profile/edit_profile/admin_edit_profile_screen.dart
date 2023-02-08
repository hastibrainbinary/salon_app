import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/admin_part/admin_shop_profile/edit_profile/admin_edit_profile_controller.dart';
import 'package:salon_app/screen/admin_part/commons/pick_img_dialogue.dart';
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
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(Icons.arrow_back_ios_new_rounded,
                                color: ColorRes.white),
                          ),
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
                        image: const DecorationImage(
                            image: AssetImage(AssetRes.imageStyel),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(121),
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      left: 90,
                      child: InkWell(
                        onTap: () {
                          pickImgBottomSheet(context, onTapCamera: () {
                            adminEditProfileController.onTapCamera();
                          }, onTapGallery: () {
                            adminEditProfileController.onTapGallery();
                          });
                        },
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
                            hintText: "Rohan Survey",
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
                            " ${Strings.location}   :",
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
                          keyboardType: TextInputType.multiline,
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
                         "${Strings.about}  :",
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
                          keyboardType: TextInputType.multiline,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            " ${Strings.staff}",
                            style: appTextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: ColorRes.black.withOpacity(0.6)),
                          ),
                          SizedBox(width: Get.width * 0.6),
                          Text(
                            Strings.addStaff,
                            style: appTextStyle(
                                fontSize: 10,
                                color: ColorRes.indicator,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
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
                    SizedBox(height: Get.height * 0.0246),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            " ${Strings.images} :",
                            style: appTextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(width: Get.width * 0.5333),
                          Text(
                            Strings.addImage,
                            style: appTextStyle(
                                fontSize: 10,
                                color: ColorRes.indicator,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0123),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
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
                      padding: const EdgeInsets.only(left: 30),
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
                                          color:
                                              ColorRes.black.withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0369),
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
      ),
    );
  }
}
