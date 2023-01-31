import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/staff_details/add_profile/add_profile_controller.dart';
import 'package:salon_app/screen/admin_part/commons/pick_img_dialogue.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AddProfileScreen extends StatelessWidget {
  AddProfileScreen({super.key});

  final AddProfileController addProfileController =
      Get.put(AddProfileController());

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
                  //     Get.height > 800 ? Get.height * 0.3 : Get.height * 0.25,
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
                        Strings.addProfile,
                        style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Visibility(
                        visible: false,
                        maintainAnimation: true,
                        maintainSize: true,
                        maintainState: true,
                        child: InkWell(
                          child: Icon(Icons.more_vert,
                              color: ColorRes.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: Get.height * 0.28,
                  left: Get.width * 0.055,
                  right: Get.width * 0.055,
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {
                            pickImgBottomSheet(
                              context,
                              ontapCamera: () {},
                              ontapGallery: () {},
                            );
                          },
                          child: Container(
                            height: 210,
                            width: 210,
                            decoration: BoxDecoration(
                              color: ColorRes.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Transform.scale(
                                scale: 0.4,
                                child: Image.asset(AssetRes.plusIcon)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        "${Strings.nameM} :",
                        style: appTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorRes.black.withOpacity(0.6)),
                      ),
                      const SizedBox(
                        height: 10,
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
                            controller: addProfileController.nameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: Strings.nameM.toLowerCase(),
                              fillColor: Colors.transparent,
                              filled: true,
                              hintStyle: appTextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorRes.black.withOpacity(0.9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${Strings.slonName} :",
                        style: appTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorRes.black.withOpacity(0.6)),
                      ),
                      const SizedBox(
                        height: 10,
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
                            controller:
                                addProfileController.salonNameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: Strings.slonName.toLowerCase(),
                              fillColor: Colors.transparent,
                              filled: true,
                              hintStyle: appTextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorRes.black.withOpacity(0.9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${Strings.experience} :",
                        style: appTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorRes.black.withOpacity(0.6)),
                      ),
                      const SizedBox(
                        height: 10,
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
                            controller:
                                addProfileController.experienceController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: Strings.experience.toLowerCase(),
                              fillColor: Colors.transparent,
                              filled: true,
                              hintStyle: appTextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorRes.black.withOpacity(0.9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${Strings.specialist} :",
                        style: appTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorRes.black.withOpacity(0.6)),
                      ),
                      const SizedBox(
                        height: 10,
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
                            controller:
                                addProfileController.specialistController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: Strings.specialist.toLowerCase(),
                              fillColor: Colors.transparent,
                              filled: true,
                              hintStyle: appTextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorRes.black.withOpacity(0.9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${Strings.about} :",
                        style: appTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorRes.black.withOpacity(0.6)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 224,
                        width: 325,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: ColorRes.indicator),
                        ),
                        child: Material(
                          shadowColor: ColorRes.indicator,
                          borderRadius: BorderRadius.circular(12),
                          child: TextFormField(
                            controller: addProfileController.aboutController,
                            decoration: InputDecoration(
                              isCollapsed: true,
                              border: InputBorder.none,
                              hintText: "about......",
                              fillColor: Colors.transparent,
                              filled: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 15, top: 10),
                              hintStyle: appTextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorRes.black.withOpacity(0.9),
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
                            Strings.images,
                            style: appTextStyle(
                              color: ColorRes.black.withOpacity(0.6),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              pickImgBottomSheet(context,
                                  ontapCamera: () {}, ontapGallery: () {});
                            },
                            child: const Icon(
                              Icons.add,
                              size: 15,
                              color: ColorRes.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: commonButton(
                            title: Strings.addProfile,
                            textColor: ColorRes.white,
                            backgroundColor: ColorRes.indicator),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
