import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/colors.dart';

class AppDecoration {
  static BoxShadow smallShadow = BoxShadow(
      blurRadius: 5,
      offset: const Offset(0, 6),
      color: Colors.black.withOpacity(.04));
  static BoxShadow shadow =
      BoxShadow(blurRadius: 5, color: AppColors.textColor.withOpacity(.31));
  static buttonDecoration({Gradient gradient = AppColors.gradient}) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(10), gradient: gradient);
  }
}
