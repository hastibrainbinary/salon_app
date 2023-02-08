import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/dashboard/most_book/most_book_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class MostBookScreen extends StatelessWidget {
  MostBookScreen({Key? key}) : super(key: key);
  final MostBookController mostBookController = Get.put(MostBookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage(AssetRes.mostBookBack),
              ),
              Positioned(
                top: 60,
                left: 15,
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back_ios_new_rounded,
                        color: ColorRes.white),
                    const SizedBox(width: 50),
                    Text(
                      Strings.mostBookedSalons,
                      style: appTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.0307),
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
                    onTap: () => Get.toNamed(PageRes.mostBookDetailsScreen),
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
                                    color: ColorRes.black,
                                    height: 9),
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
          SizedBox(height: Get.height * 0.0369),
        ],
      ),
    );
  }
}
