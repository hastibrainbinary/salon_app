import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_advertisement_post/add_advertisement_post_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class AddAdvertisementPostScreen extends StatelessWidget {
   AddAdvertisementPostScreen({Key? key}) : super(key: key);
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
                        Strings.advertisementPost,
                        style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          showDialog(
                            barrierColor: ColorRes.black.withOpacity(0.8),
                            context: context,
                            builder: (context) => AlertDialog(
                              elevation: 0,
                              contentPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              insetPadding: EdgeInsets.only(
                                  bottom: Get.height * 0.75,
                                  left: Get.width * 0.6),
                              content: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                        top: 5, right: Get.width * 0.055),
                                    height: 74,
                                    width: 128,
                                    color: ColorRes.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.back();
                                            Get.toNamed(
                                                PageRes.addPostScreen);
                                          },
                                          child: Text(
                                            Strings.addPost,
                                            style: appTextStyle(
                                                color: ColorRes.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Get.toNamed(
                                                PageRes.deletePostScreen);

                                            if (kDebugMode) {
                                              print(
                                                  "_____________________DELETE POST -M______________________");
                                            }
                                          },
                                          child: Text(
                                            Strings.deletePost,
                                            style: appTextStyle(
                                                color: ColorRes.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Icon(Icons.more_vert,
                            color: ColorRes.white, size: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: Get.height * 0.25, left: 25, right: 25),
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
      ),
    );
  }
}
