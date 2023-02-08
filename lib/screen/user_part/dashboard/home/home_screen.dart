import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/introduction_screen/widget/widget.dart';
import 'package:salon_app/screen/user_part/dashboard/home/home_controller.dart';
import 'package:salon_app/screen/user_part/dashboard/home/widget.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());
  PageController homePageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  image: AssetImage(AssetRes.homeDesign),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: Get.width * 0.055, right: Get.width * 0.055),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 28,
                            child: Image(
                              image: AssetImage(AssetRes.person),
                            ),
                          ),
                          SizedBox(width: Get.width * 0.04),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Strings.rohan,
                                style: appTextStyle(
                                    color: ColorRes.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: Get.height * 0.0026),
                              Text(
                                Strings.unitedStates,
                                style: appTextStyle(
                                    color: ColorRes.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () => Get.toNamed(PageRes.filterScreen),
                            child: const CircleAvatar(
                              backgroundColor: ColorRes.white,
                              radius: 25,
                              child: Image(
                                image: AssetImage(AssetRes.filter),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Container(
                      height: 40,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 190,
                            child: TextFormField(
                              controller: homeController.searchController,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                hintText: 'search for services...',
                                fillColor: Colors.white,
                                filled: true,
                                hintStyle: appTextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: ColorRes.indicator,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: ColorRes.black.withOpacity(0.2),
                                  blurRadius: 6.0,
                                  spreadRadius: 1.0,
                                  /*offset: Offset(0.0, 0.0),*/
                                )
                              ],
                            ),
                            child: const Center(
                              child: Icon(Icons.search_outlined,
                                  color: ColorRes.indicator),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0270),
                    Container(
                      width: 300,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        textAlign: TextAlign.start,
                        Strings.services,
                        style: appTextStyle(
                            color: ColorRes.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0266),
                    Container(
                      width: 320,
                      height: 100,
                      color: Colors.transparent,
                      /* decoration: BoxDecoration(
                        color: ColorRes.black,
                      ),*/
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              const CircleAvatar(
                                backgroundColor: ColorRes.white,
                                radius: 35,
                                child: Image(
                                  image: AssetImage(AssetRes.hairCut),
                                  height: 45,
                                ),
                              ),
                              SizedBox(height: Get.height * 0.0123),
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
                  ],
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.0307),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: SizedBox(
                width: 325,
                height: 157,
                child: PageView.builder(
                  onPageChanged: (value) {
                    controller.selectIndicator.value = value;
                  },
                  controller: homePageController,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 157,
                      width: 325,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AssetRes.bener),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 9,
              width: 50,
              child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Obx(() => indicator(
                        controller.selectIndicator.value == index
                            ? true
                            : false,
                        (Theme.of(context).brightness == Brightness.dark)
                            ? Colors.white
                            : ColorRes.indicator));
                  }),
            ),
            SizedBox(height: Get.height * 0.0307),
            mostBook(),
            SizedBox(height: Get.height * 0.0307),
            nearbySalon(),
            SizedBox(height: Get.height * 0.0369),
          ],
        ),
      ),
    );
  }
}
