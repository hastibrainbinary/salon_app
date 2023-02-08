import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_service/screens/edit_service/edit_service_open_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class EditOpenScreen extends StatelessWidget {
  EditOpenScreen({Key? key}) : super(key: key);
  final EditOpenController editOpenController = Get.put(EditOpenController());

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
              padding: EdgeInsets.only(top: Get.height * 0.25, left: 30),
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
                                    color: ColorRes.indicator.withOpacity(0.2),
                                    offset: const Offset(0.0, 4),
                                    blurRadius: 23.0,
                                    spreadRadius: 0
                                  ),
                                ],
                              ),
                              child: const Image(
                                image: AssetImage(AssetRes.hairCut),
                              ),
                            ),
                            SizedBox(height: Get.height*0.0123),
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
                  SizedBox(height: Get.height * 0.0369),
                  Stack(
                    children: [
                      Container(
                        height: 160,
                        width: 160,
                        padding: const EdgeInsets.only(bottom: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: ColorRes.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            AssetRes.imageStyel,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: ColorRes.indicator,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(AssetRes.photo),
                                color: ColorRes.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.0123),
                  Row(
                    children: [
                      Text(
                        "${Strings.serviceName} :",
                        style: appTextStyle(
                            color: ColorRes.black.withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.0123),
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Container(
                      height: 45,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                            color: ColorRes.indicator.withOpacity(0.8)),
                      ),
                      child: TextFormField(
                        controller: editOpenController.serviceNameController,
                        // obscureText: controller.show.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Facials',
                          fillColor: Colors.transparent,
                          filled: true,
                          hintStyle: appTextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: ColorRes.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.0246),
                  Row(
                    children: [
                      Text(
                        "${Strings.price} :",
                        style: appTextStyle(
                            color: ColorRes.black.withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.0123),
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Container(
                      height: 45,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                            color: ColorRes.indicator.withOpacity(0.8)),
                      ),
                      child: TextFormField(
                        controller: editOpenController.priceController,
                        // obscureText: controller.show.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '\$ 65',
                          fillColor: Colors.transparent,
                          filled: true,
                          hintStyle: appTextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: ColorRes.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.0369),
                  commonButton(
                      onTap: () {},
                      title: Strings.update,
                      textColor: ColorRes.white,
                      backgroundColor: ColorRes.indicator)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
