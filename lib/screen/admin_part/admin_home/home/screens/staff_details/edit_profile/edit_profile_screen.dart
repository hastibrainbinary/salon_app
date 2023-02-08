import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/staff_details/edit_profile/edit_profile_controller.dart';
import 'package:salon_app/screen/admin_part/commons/pick_img_dialogue.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminStaffEditProfileScreen extends StatelessWidget {
  AdminStaffEditProfileScreen({super.key});

  final AdminStaffEditProfileController editProfileController =
      Get.put(AdminStaffEditProfileController());

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
                SizedBox(
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
                        Strings.editProfile,
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
                        child: Stack(
                          alignment: const Alignment(1.1, 1.1),
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 210,
                                width: 210,
                                decoration: BoxDecoration(
                                  color: ColorRes.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  AssetRes.bookingUser,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                pickImgBottomSheet(
                                  context,
                                  onTapCamera: () {
                                    editProfileController.onTapCamera();
                                  },
                                  onTapGallery: () {
                                    editProfileController.onTapGallery();
                                  },
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorRes.indicator,
                                ),
                                child: Transform.scale(
                                  scale: 0.5,
                                  child: Image.asset(AssetRes.adminPhotoIcon),
                                ),
                              ),
                            ),
                          ],
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
                            controller: editProfileController.nameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Robert Fox",
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
                                editProfileController.salonNameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Serenity salon",
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
                                editProfileController.experienceController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "5+ year experience",
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
                                editProfileController.specialistController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Hair Stylist",
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
                            controller: editProfileController.aboutController,
                            decoration: InputDecoration(
                              isCollapsed: true,
                              border: InputBorder.none,
                              hintText: "Lorem ipsum dolore.....",
                              fillColor: Colors.transparent,
                              filled: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 15, top: 10),
                              hintStyle: appTextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorRes.indicator,
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
                              pickImgBottomSheet(
                                context,
                                onTapCamera: () {
                                  editProfileController.onTapCamera();
                                },
                                onTapGallery: () {
                                  editProfileController.onTapGallery();
                                },
                              );
                            },
                            child: const Icon(
                              Icons.add,
                              size: 15,
                              color: ColorRes.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height * 0.0246),
                      Row(
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
                      SizedBox(height: Get.height * 0.0246),
                      Row(
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
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Image.asset(AssetRes.personImg),
                                      ),
                                      (index == 3)
                                          ? Container(
                                              alignment: Alignment.center,
                                              margin: (index == 3)
                                                  ? EdgeInsets.zero
                                                  : const EdgeInsets.only(
                                                      right: 12),
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: ColorRes.black
                                                    .withOpacity(0.6),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                "+10",
                                                style: appTextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            )
                                          : const SizedBox(),
                                    ],
                                  )),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: commonButton(
                            title: Strings.editProfile,
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
