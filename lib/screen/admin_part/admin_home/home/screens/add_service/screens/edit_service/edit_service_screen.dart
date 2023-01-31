import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class EditServiceScreen extends StatelessWidget {
  const EditServiceScreen({Key? key}) : super(key: key);

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
                        Strings.editService,
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
              padding: EdgeInsets.only(
                top: Get.height * 0.25,
                // left: Get.width * 0.055,
                // right: Get.width * 0.055,
              ),
              child: SizedBox(
                height: Get.height * 0.8,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Image(
                                    image: AssetImage(AssetRes.imageStyel),
                                  ),
                                ),
                                SizedBox(width: Get.width * 0.0533),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hair Cut",
                                      style: appTextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: ColorRes.black),
                                    ),
                                    Text(
                                      "\$50.00",
                                      style: appTextStyle(
                                          color: ColorRes.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                SizedBox(width: Get.width - 216),
                                Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    border:
                                        Border.all(color: ColorRes.indicator),
                                  ),
                                  child: const Center(
                                      child: Icon(Icons.check,
                                          color: ColorRes.indicator, size: 15)),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(height: 15);
                          },
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0369),
                      Container(
                        width: 153,
                        height: 45,
                        decoration: BoxDecoration(
                          color: ColorRes.indicator,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            Strings.open,
                            style: appTextStyle(
                                color: ColorRes.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0369),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
