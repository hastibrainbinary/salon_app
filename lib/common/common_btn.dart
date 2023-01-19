import 'package:flutter/material.dart';
import 'package:salon_app/utils/app_style.dart';

Widget commonButton(
    {required String title,
    required Color textColor,
    required Color backgroundColor,
    VoidCallback? onTap,
    double? width}) {
  return InkWell(
    onTap: onTap ?? () {},
    child: Container(
      alignment: Alignment.center,
      height: 50,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: backgroundColor,
      ),
      child: Text(
        title,
        style: appTextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: textColor),
      ),
    ),
  );
}
