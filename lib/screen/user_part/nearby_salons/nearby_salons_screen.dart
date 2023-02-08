import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/nearby_salons/nearby_salons_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class NearBySalonScreen extends StatelessWidget {
  NearBySalonScreen({Key? key}) : super(key: key);
  final NearBySalonsController nearBySalonsController =
      Get.put(NearBySalonsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 160,
                width: Get.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent)),
              ),
              const Image(
                image: AssetImage(AssetRes.mostBookBack),
              ),
              Positioned(
                top: 65,
                left: 60,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        Strings.nearbySalon,
                        style: appTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: ColorRes.white),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Container(
                      height: 40,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 230,
                            child: TextFormField(
                              controller:
                                  nearBySalonsController.searchController,
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
                                hintText: 'search ...',
                                fillColor: Colors.white,
                                filled: true,
                                hintStyle: appTextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
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
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2.6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                    //  onTap: () => Get.toNamed(PageRes.mostBookDetailsScreen),
                    child: Container(
                      /* height: 139,
                      width: 155,*/
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 10,
                            ),
                            child: Stack(
                              children: [
                                const Image(
                                  image: AssetImage(AssetRes.mostBook),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 18,
                                    width: 50,
                                    padding: const EdgeInsets.only(
                                        left: 3, right: 5),
                                    decoration: const BoxDecoration(
                                      color: ColorRes.indicator,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(8)),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          size: 13,
                                          color: ColorRes.indicator,
                                        ),
                                        Text(
                                          Strings.open,
                                          style: TextStyle(
                                              color: ColorRes.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: Get.height * 0.0049),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 69,
                            ),
                            child: Text(
                              Strings.serenitySalon,
                              style: appTextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: ColorRes.black),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 9.0),
                            child: Row(
                              children: [
                                const Image(
                                  image: AssetImage(AssetRes.locationIcon),
                                  height: 12,
                                  color: ColorRes.black,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "5 km",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 8),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: ColorRes.star,
                                  size: 8,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  "4.0",
                                  style: appTextStyle(
                                      color: ColorRes.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 8),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
