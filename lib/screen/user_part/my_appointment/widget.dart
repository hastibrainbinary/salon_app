import 'package:flutter/material.dart';
import 'package:salon_app/utils/color_res.dart';

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
      )
    ],
  );
}
