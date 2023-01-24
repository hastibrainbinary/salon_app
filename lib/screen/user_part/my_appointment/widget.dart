import 'package:flutter/material.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/string.dart';

Widget upComing() {
  return Column(
    children: [
      Container(
        width: 286,
        height: 161,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff94674F).withOpacity(0.2),
              offset: const Offset(0.0, 4),
              blurRadius: 23.0,
            )
          ],
          color: ColorRes.gray.withOpacity(0.39),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 261,
                  height: 121,
                  decoration: BoxDecoration(
                    color: ColorRes.white,
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Column(
                    children: [
                      Text(
                        Strings.serenitySalon,
                        style: appTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: ColorRes.black),
                      ),
                      Row(

                        children: [
                          Text(
                            Strings.barber,
                            style: appTextStyle(
                              color: ColorRes.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            Strings.rohan,
                            style: appTextStyle(
                              color: ColorRes.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Hair cut and Beard trim",
                        style: appTextStyle(
                          color: ColorRes.black.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                        ),
                      ),
                      Text(
                        "July 3    04:00 PM",
                        style: appTextStyle(
                            color: ColorRes.black.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 10
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )
    ],
  );
}
