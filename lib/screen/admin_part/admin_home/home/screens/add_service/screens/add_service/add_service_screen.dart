import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_service/screens/add_service/add_service_controller.dart';
import 'package:salon_app/screen/admin_part/commons/pick_img_dialogue.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class AddServiceScreen extends StatelessWidget {
  AddServiceScreen({super.key});

  final AddServiceController addServiceController =
      Get.put(AddServiceController());

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
                        Strings.addService,
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
                  top: Get.height * 0.25,
                  left: Get.width * 0.055,
                  right: Get.width * 0.055,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.transparent,
                        width: 320,
                        height: 100,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      color: ColorRes.white,
                                      borderRadius: BorderRadius.circular(70),
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorRes.indicator
                                              .withOpacity(0.2),
                                          offset: const Offset(0.0, 4),
                                          blurRadius: 23.0,
                                        ),
                                      ]),
                                  child: const Image(
                                    image: AssetImage(AssetRes.hairCut),
                                  ),
                                ),
                                Text(
                                  "Hair cut",
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
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Obx(
                        () => (addServiceController.imgPath.value != "")
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  child: Image.file(
                                    File(addServiceController.imgPath.value),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : InkWell(
                                onTap: () async {
                                  await pickImgBottomSheet(context,
                                      ontapCamera: () {
                                    addServiceController.onTapCamera();
                                  }, ontapGallery: () {
                                    addServiceController.onTapGallery();
                                  });
                                },
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: ColorRes.black.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Transform.scale(
                                    scale: 0.4,
                                    child: Image.asset(
                                      AssetRes.plusIcon,
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      Row(
                        children: [
                          Text(
                            "${Strings.serviceName} :",
                            style: appTextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                        height: 45,
                        width: 325,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                              color: ColorRes.indicator.withOpacity(0.8)),
                        ),
                        child: TextFormField(
                          controller:
                              addServiceController.serviceNameController,
                          // obscureText: controller.show.value,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'service name',
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorRes.black.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Row(
                        children: [
                          Text(
                            "${Strings.price} :",
                            style: appTextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                        height: 45,
                        width: 325,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                              color: ColorRes.indicator.withOpacity(0.8)),
                        ),
                        child: TextFormField(
                          controller: addServiceController.priceController,
                          // obscureText: controller.show.value,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'price',
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: appTextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorRes.black.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      Obx(
                        () => (addServiceController.imgPath.value == "")
                            ? const SizedBox()
                            : commonButton(
                                onTap: () {
                                  Get.back();
                                },
                                title: Strings.addService,
                                textColor: ColorRes.white,
                                backgroundColor: ColorRes.indicator),
                      ),
                      SizedBox(
                        height: Get.height * 0.05,
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
