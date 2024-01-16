import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';

class TemplateImages extends StatelessWidget {
  const TemplateImages({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(image,
        height: Responsive.isSmallerPhone(context)
            ? 10
            : Responsive.isMobile(context)
                ? 15
                : Responsive.isTablet(context)
                    ? 20
                    : 25,
        width: Responsive.isSmallerPhone(context)
            ? 10
            : Responsive.isMobile(context)
                ? 15
                : Responsive.isTablet(context)
                    ? 20
                    : 25,
        fit: BoxFit.contain,
        color: AppColors.lightGreyColor);
  }
}
