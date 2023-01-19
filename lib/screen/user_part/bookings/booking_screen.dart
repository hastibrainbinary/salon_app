import 'package:flutter/material.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
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
                        Strings.todayBookings,
                        style: appTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: ColorRes.white),
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
