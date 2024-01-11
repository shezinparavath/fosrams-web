import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/style.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(getScreenHeight(context) * .03),
              bottomRight: Radius.circular(getScreenHeight(context) * .03))),
      width: getScreenWidth(context) * .4,
      child: Column(children: [
        const SizedBox(height: 30),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(AppAssets.iconDashboardOutlined),
          const SizedBox(width: 10),
          Text('Dashboard', style: AppStyles.mediumText(context: context))
        ]),
        const SizedBox(height: 30),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(AppAssets.iconMasterDataOutlined),
          const SizedBox(width: 10),
          Text('Master Data', style: AppStyles.mediumText(context: context))
        ])
      ]));
}
