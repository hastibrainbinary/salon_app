import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';

class CallRingScreen extends StatelessWidget {
  const CallRingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height+100,
          width: Get.width,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetRes.ringBack), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                height: 120,
                top: 70,
                left: 135,
                child: Container(
                  height: 121,
                  width: 121,
                  decoration: BoxDecoration(
                    color: ColorRes.gray,
                    image: const DecorationImage(
                        image: AssetImage(AssetRes.imageStyel), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(121),
                  ),
                ),
              ),
              Positioned(
                top: 210,
                left: 125,
                child: Center(
                  child: Text(
                    "Rohan Survey",
                    style: appTextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 245,
                left: 170,
                child: Center(
                  child: Text(
                    "ringing....",
                    style: appTextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 600,
                left: 110,
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: ColorRes.white,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Transform.rotate(
                          angle: 8.6,
                          child: const Image(
                            image: AssetImage(
                              AssetRes.phoneIcon,
                            ),
                            color: ColorRes.red,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: ColorRes.indicator,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Image(
                          image: AssetImage(AssetRes.phoneIcon),
                          color: ColorRes.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
