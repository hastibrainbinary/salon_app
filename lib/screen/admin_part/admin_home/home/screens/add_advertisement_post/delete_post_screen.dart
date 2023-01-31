import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_advertisement_post/add_advertisement_post_controller.dart';
import 'package:salon_app/screen/admin_part/commons/pick_img_dialogue.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class DeletePostScreen extends StatelessWidget {
  DeletePostScreen({Key? key}) : super(key: key);

  final AddAdvertisementController addAdvertisementController =
      Get.put(AddAdvertisementController());

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
                      Strings.deletePost,
                      style: appTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.more_vert,
                        color: ColorRes.white, size: 20),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.only(
                  top: Get.height * 0.25,
                  left: Get.width * 0.055,
                  right: Get.width * 0.055),
              child: Obx(
                () => SizedBox(
                  height: Get.height * 0.78,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                          width: Get.width,
                          child: Row(
                            children: [
                              Container(
                                height: 157,
                                width: Get.width * 0.72,
                                color: ColorRes.black,
                                child: Image.asset(AssetRes.bener,
                                    fit: BoxFit.cover),
                              ),
                              Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  fillColor: MaterialStateProperty.all(
                                      ColorRes.indicator),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(99)),
                                  value: false,
                                  onChanged: (val) {}),
                            ],
                          ),
                        ),
                        SizedBox(height: Get.height * 0.0369),
                        (addAdvertisementController.posts.value.isEmpty)
                            ? const SizedBox()
                            : Column(
                                children: [
                                  ...List.generate(
                                      addAdvertisementController
                                          .posts.value.length, (index) {
                                    addAdvertisementController.isChecks.value =
                                        List.generate(
                                            addAdvertisementController
                                                .posts.value.length,
                                            (index) => false);
                                    return Row(
                                      children: [
                                        Container(
                                          height: 157,
                                          // width: 287,
                                          width: Get.width * 0.72,

                                          margin: EdgeInsets.only(
                                              bottom: Get.height * 0.0369),
                                          child: Image.file(
                                            File(addAdvertisementController
                                                .posts.value[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Obx(
                                          () => Checkbox(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              fillColor:
                                                  MaterialStateProperty.all(
                                                      ColorRes.indicator),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          99)),
                                              value: addAdvertisementController
                                                  .isChecks[index],
                                              onChanged: (val) {
                                                addAdvertisementController
                                                    .onTapCheck(index, val!);
                                              }),
                                        ),
                                      ],
                                    );
                                  }),
                                ],
                              ),
                        /* (addAdvertisementController.posts.value.isEmpty)
                            ? const SizedBox()
                            : */
                        InkWell(
                          onTap: () {
                            /*  pickImgBottomSheet(context, ontapCamera: () {
                                    addAdvertisementController.onTapCamera();
                                  }, ontapGallery: () {
                                    addAdvertisementController.onTapGallery();
                                  }); */

                            showDialog(
                              barrierDismissible: false,
                              barrierColor: ColorRes.black.withOpacity(0.8),
                              context: context,
                              builder: (context) => AlertDialog(
                                actionsPadding: const EdgeInsets.all(0),
                                contentPadding: const EdgeInsets.all(0),
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                content: Stack(
                                  alignment: const Alignment(1.2, -1.3),
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 194,
                                      // width: 301,
                                      decoration: BoxDecoration(
                                          color: ColorRes.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            Strings.cancelPostTxt,
                                            textAlign: TextAlign.center,
                                            style: appTextStyle(
                                                fontSize: 15,
                                                color: ColorRes.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: Get.height * 0.03,
                                          ),
                                          SizedBox(
                                            height: 45,
                                            width: 219,
                                            child: commonButton(
                                                onTap: () {
                                                  /*   addAdvertisementController
                                                      .posts
                                                      .remove(
                                                          addAdvertisementController
                                                              .posts
                                                              .value[index]); */
                                                },
                                                style: appTextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w600),
                                                title: Strings.yesDeletePost,
                                                textColor: ColorRes.white,
                                                backgroundColor:
                                                    ColorRes.indicator),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        if (kDebugMode) {
                                          print("tapped....");
                                        }
                                        Get.back();
                                      },
                                      child: Container(
                                        alignment: const Alignment(1, -1),
                                        height: 50,
                                        width: 50,
                                        color: Colors.transparent,
                                        child: Transform.scale(
                                          scale: 0.6,
                                          child: Image.asset(
                                            AssetRes.closeIcon,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 80),
                            alignment: Alignment.center,
                            height: 50,
                            width: 153,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ColorRes.indicator),
                            child: Text(
                              Strings.delete,
                              style: appTextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
