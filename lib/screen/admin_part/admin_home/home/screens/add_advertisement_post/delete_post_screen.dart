import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class DeletePostScreen extends StatelessWidget {
  const DeletePostScreen({Key? key}) : super(key: key);

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
            padding:
                EdgeInsets.only(top: Get.height * 0.25, left: 25, right: 63),
            child: Column(
              children: const [
                Image(
                  image: AssetImage(AssetRes.bener),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}