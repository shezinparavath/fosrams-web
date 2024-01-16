import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/style.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  double preferredHeight = 0;
  if (Responsive.isTablet(context)) {
    preferredHeight = 60;
  } else if (Responsive.isDesktop(context)) {
    preferredHeight = 80;
  }
  return PreferredSize(
      preferredSize: Size.fromHeight(preferredHeight),
      child: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Image.asset(AppAssets.imgIcon,
                          fit: BoxFit.contain,
                          width: Responsive.isMobile(context)
                              ? 70
                              : Responsive.isTablet(context)
                                  ? 90
                                  : 110,
                          height: Responsive.isMobile(context)
                              ? 15
                              : Responsive.isTablet(context)
                                  ? 30
                                  : 50)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: getScreenWidth(context) * .02,
                            backgroundImage:
                                const AssetImage(AppAssets.imgProfile)),
                        const SizedBox(width: 10),
                        Text('Kalyan Bajwa',
                            style: AppStyles.bigText(context: context))
                      ])
                ]),
          )));
}
