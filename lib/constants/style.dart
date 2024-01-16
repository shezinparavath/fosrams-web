import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/colors.dart';

class AppStyles {
  static TextStyle mediumText({required BuildContext context, Color? color}) =>
      TextStyle(
          fontSize: Responsive.isSmallerPhone(context)
              ? 11
              : Responsive.isMobile(context)
                  ? 14
                  : Responsive.isTablet(context)
                      ? 16
                      : 18,
          fontWeight: FontWeight.w600,
          color: color ?? AppColors.textColor);
  static TextStyle extraBig(BuildContext context, {Color? color}) => TextStyle(
      fontSize: Responsive.isSmallerPhone(context)
          ? 24
          : Responsive.isMobile(context)
              ? 26
              : Responsive.isTablet(context)
                  ? 28
                  : 30,
      fontWeight: FontWeight.w700,
      color: color ?? AppColors.textColor);
  static TextStyle bigText({required BuildContext context, Color? color}) =>
      TextStyle(
          fontSize: Responsive.isSmallerPhone(context)
              ? 14
              : Responsive.isMobile(context)
                  ? 16
                  : Responsive.isTablet(context)
                      ? 18
                      : 20,
          fontWeight: FontWeight.w600,
          color: color ?? AppColors.textColor);

  static TextStyle averageText({required BuildContext context, Color? color}) =>
      TextStyle(
          fontSize: Responsive.isSmallerPhone(context)
              ? 10
              : Responsive.isMobile(context)
                  ? 12
                  : Responsive.isTablet(context)
                      ? 14
                      : 16,
          fontWeight: FontWeight.w400,
          color: color ?? AppColors.textColor);

  static TextStyle smallText({required BuildContext context, Color? color}) =>
      TextStyle(
          fontSize: Responsive.isSmallerPhone(context)
              ? 8
              : Responsive.isMobile(context)
                  ? 10
                  : Responsive.isTablet(context)
                      ? 12
                      : 14,
          fontWeight: FontWeight.w500,
          color: color ?? AppColors.textColor);
}

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? smallerPhone;
  const Responsive(
      {Key? key, this.mobile, this.tablet, this.desktop, this.smallerPhone})
      : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 550 &&
      MediaQuery.of(context).size.width >= 300;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width > 550;

  static bool isSmallerPhone(BuildContext context) =>
      MediaQuery.of(context).size.width <= 300;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop!;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else if (size.width <= 300) {
      return smallerPhone!;
    } else {
      return mobile!;
    }
  }
}
