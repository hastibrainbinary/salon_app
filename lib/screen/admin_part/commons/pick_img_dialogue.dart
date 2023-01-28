import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

Future pickImgBottomSheet(context,
    {required VoidCallback ontapCamera, required VoidCallback ontapGallery}) {
  return showModalBottomSheet(
    context: context,
    barrierColor: ColorRes.black.withOpacity(0.8),
    backgroundColor: Colors.transparent,
    builder: (BuildContext bc) {
      return Container(
        height: 406,
        decoration: const BoxDecoration(
          color: ColorRes.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40, top: 40),
              child: Icon(
                Icons.close,
                color: ColorRes.indicator,
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Text(
                Strings.addPhoto,
                style: appTextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: ColorRes.indicator),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 2),
              child: Text(
                Strings.selectAContent,
                style: appTextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: ColorRes.black.withOpacity(0.75),
                ),
              ),
            ),
            SizedBox(height: Get.height * .0492),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: ontapCamera,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: ColorRes.indicator,
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: ColorRes.white,
                          size: 35,
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    Center(
                      child: Text(
                        Strings.captureFromCamera,
                        style: appTextStyle(
                            color: ColorRes.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                SizedBox(width: Get.width * 0.2933),
                Column(
                  children: [
                    InkWell(
                      onTap: ontapGallery,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: ColorRes.indicator,
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(18),
                          child: /*profileController.image!.path.isEmpty?*/
                              Image(
                            image: AssetImage(AssetRes.gallery),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0307),
                    Center(
                      child: Text(
                        Strings.uploadFromGallery,
                        style: appTextStyle(
                            color: ColorRes.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
