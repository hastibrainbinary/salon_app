import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

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
                                    height: 101,
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
                                                  PageRes.seviceAddScreen);
                                            },
                                            child: Text(
                                              Strings.addService,
                                              style: appTextStyle(
                                                  color: ColorRes.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.back();
                                              Get.toNamed(
                                                  PageRes.deleteServiceScreen);
                                            },
                                            child: Text(
                                              Strings.deleteService,
                                              style: appTextStyle(
                                                  color: ColorRes.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: (){
                                              Get.back();
                                              Get.toNamed(
                                                  PageRes.editServiceScreen);
                                            },
                                            child: Text(
                                              Strings.editService,
                                              style: appTextStyle(
                                                  color: ColorRes.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          )
                                        ]),
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
                padding: EdgeInsets.only(
                  top: Get.height * 0.25,
                ),
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: 320,
                      height: 100,
                      /*  decoration: BoxDecoration(
                         border: Border.all()
                        ),*/
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
                                        color: const Color(0xff94674F)
                                            .withOpacity(0.2),
                                        offset: const Offset(0.0, 4),
                                        blurRadius: 23.0,
                                      ),
                                    ]),
                                child: const Image(
                                  image: AssetImage(AssetRes.hairCut),
                                ),
                              ),

                              /*  const CircleAvatar(
                  backgroundColor: ColorRes.white,
                  radius: 35,
                  child: Image(
                    image: AssetImage(AssetRes.hairCut),
                    height: 45,
                  ),
                ),*/
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
                      child: SizedBox(
                        height: Get.height * 0.56,
                        width: Get.width,
                        child: ListView.separated(
                          itemCount: 8,
                          // shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
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
                                      image: AssetImage(AssetRes.imageStyel)),
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
                                )
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(height: 15);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0369),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
