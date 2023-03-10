import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextStyle bottomTitleStyle = GoogleFonts.poppins(
    color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500);

final TextStyle bottomTitleStyleDisable = GoogleFonts.poppins(
    color: Colors.black.withOpacity(0.6),
    fontSize: 12,
    fontWeight: FontWeight.w500);

TextStyle appTextStyle(
    {FontWeight? fontWeight,
    Color? color,
    double? fontSize,
    double? letterSpacing,
    double? height,
    TextDecoration? textDecoration}) {
  return GoogleFonts.poppins(
    decoration: textDecoration ?? TextDecoration.none,
    color: color ?? Colors.white,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontSize: fontSize ?? 18,
    letterSpacing: letterSpacing ?? 0,
    height: height ?? 0,
  );
}
