import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

Widget bookingList() {
  return Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.bookingList,
          style: appTextStyle(
              color: ColorRes.black, fontWeight: FontWeight.w500, fontSize: 16),
        ),
        SizedBox(height: Get.height * 0.0184),
        ListView.separated(
          itemCount: 8,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Get.toNamed(PageRes.bookingDetails),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    child: Image(
                      image: AssetImage(AssetRes.person),
                    ),
                  ),
                  SizedBox(width: Get.width * 0.0533),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Esther Howard",
                        style: appTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: ColorRes.black),
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Time :',
                              style: appTextStyle(
                                color: ColorRes.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                            TextSpan(
                              text: '9:00 AM',
                              style: appTextStyle(
                                color: ColorRes.black.withOpacity(0.6),
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Service :',
                              style: appTextStyle(
                                color: ColorRes.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                            TextSpan(
                              text: 'Hair cutting',
                              style: appTextStyle(
                                color: ColorRes.black.withOpacity(0.6),
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Staff :',
                              style: appTextStyle(
                                color: ColorRes.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                            TextSpan(
                              text: 'Jane Cooper',
                              style: appTextStyle(
                                color: ColorRes.black.withOpacity(0.6),
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 15);
          },
        )
      ],
    ),
  );
}
