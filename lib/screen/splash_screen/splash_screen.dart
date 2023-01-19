import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/splash_screen/splash_screen_controller.dart';
import 'package:salon_app/utils/asset_res.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetRes.splashScreen), fit: BoxFit.fill),
            ),
          ),
          const Positioned(
            top: 190,
            left: 123,
            child: Image(
              image: AssetImage(AssetRes.logo),
              width: 137,
              height: 72,
            ),
          ),
        ],
      ),
    );
  }
}
