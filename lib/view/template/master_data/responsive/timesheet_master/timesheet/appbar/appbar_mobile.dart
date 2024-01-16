import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/app_routes.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:go_router/go_router.dart';

PreferredSizeWidget buildAppBarMobile(BuildContext context) {
  double preferredHeight = 0;

  if (Responsive.isMobile(context)) {
    preferredHeight = 50;
  } else if (Responsive.isSmallerPhone(context)) {
    preferredHeight = 40;
  }
  return PreferredSize(
      preferredSize: Size.fromHeight(preferredHeight),
      child: AppBar(
          leading: IconButton(
              onPressed: () => context.go(AppRoutes.masterTimesheet),
              icon: const Icon(Icons.arrow_back_sharp)),
          titleSpacing: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Image.asset(AppAssets.imgIcon,
              fit: BoxFit.contain,
              width: Responsive.isMobile(context) ? 70 : 60,
              height: Responsive.isMobile(context) ? 30 : 20),
          flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                CircleAvatar(
                    radius: getScreenWidth(context) * .05,
                    backgroundImage: const AssetImage(AppAssets.imgProfile)),
                const SizedBox(width: 10),
                Center(
                    child: Text('Kalyan Bajwa',
                        style: AppStyles.bigText(context: context)))
              ]))));
}
