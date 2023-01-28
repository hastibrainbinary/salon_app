import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_advertisement_post/add_advertisement_post_controller.dart';
import 'package:salon_app/screen/admin_part/commons/pick_img_dialogue.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class AddPostScreen extends StatelessWidget {
  AddPostScreen({Key? key}) : super(key: key);
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
                        Strings.service,
                        style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: EdgeInsets.only(
                    top: Get.height * 0.25, left: 25, right: 25),
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage(AssetRes.bener),
                    ),
                    SizedBox(height: Get.height * 0.0369),
                    InkWell(
                      onTap: () {
                        pickImgBottomSheet(context, ontapCamera: () {
                          addAdvertisementController.onTapCamera();
                        }, ontapGallery: () {
                          addAdvertisementController.onTapGallery();
                        });
                      },
                      child: Container(
                        height: 157,
                        width: 325,
                        decoration: BoxDecoration(
                          color: ColorRes.black.withOpacity(0.1),
                        ),
                        child: Icon(
                          Icons.add,
                          color: ColorRes.black.withOpacity(0.5),
                        ),
                      ),
                    )
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
