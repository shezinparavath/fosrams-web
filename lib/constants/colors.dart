import 'package:flutter/material.dart';

class AppColors {
  static const greyColor = Color(0xFFE0E0E0);
  static const redColor = Color(0xffFF6B6B);
  static const textColor = Color(0xff535353);
  static const darkGreen = Color(0xff679A7F);
  static const blueColor = Color(0xff2294FF);
  static const darkGreyColor = Color(0xff787276);
  static const lightGreyColor = Color(0xffF4F4F4);
  static const greyColor2 = Color.fromARGB(255, 207, 203, 203);
  static const greenColor = Color(0xff24BF6B);
  static BoxShadow shadow = BoxShadow(
      blurRadius: 5,
      offset: const Offset(0, 1),
      color: AppColors.textColor.withOpacity(.31));
  static const Gradient gradient =
      LinearGradient(colors: [Color(0xff30D27A), Color(0xff24BF6B)]);
  static const Gradient redGradient =
      LinearGradient(colors: [Color(0xffFF6E6E), Color(0xffFE3B3B)]);
}
