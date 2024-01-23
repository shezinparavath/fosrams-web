import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/app_routes.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/hover_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

buildLogoutPopUp(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Log Out', style: AppStyles.bigText(context: context)),
          content: Row(children: [
            Text('Are You Sure To Log Out',
                style: AppStyles.averageText(context: context)),
            SizedBox(width: getScreenWidth(context) * .1)
          ]),
          actions: [
            SizedBox(
                height: Responsive.isSmallerPhone(context)
                    ? 10
                    : Responsive.isMobile(context)
                        ? 20
                        : Responsive.isTablet(context)
                            ? 30
                            : 40,
                width: Responsive.isSmallerPhone(context)
                    ? 107
                    : Responsive.isMobile(context)
                        ? 117
                        : Responsive.isTablet(context)
                            ? 127
                            : 147,
                child: ChangeNotifierProvider(
                    create: (context) => HoverProvider(),
                    child: Consumer<HoverProvider>(
                        builder: (context, value, child) => MouseRegion(
                            onEnter: (event) => value.mouseEnter = true,
                            onExit: (event) => value.mouseEnter = false,
                            child: ElevatedButton(
                                onPressed: () => context.pop(),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: value.mouseEnter != true
                                            ? const BorderSide(
                                                color: AppColors.greyColor2)
                                            : const BorderSide(
                                                color: Colors.transparent)),
                                    backgroundColor: value.mouseEnter != true
                                        ? AppColors.greyColor
                                        : AppColors.blueColor),
                                child: Text('No',
                                    style: AppStyles.mediumText(
                                        context: context,
                                        color: value.mouseEnter != true ? AppColors.textColor : Colors.white))))))),
            SizedBox(
                height: Responsive.isSmallerPhone(context)
                    ? 10
                    : Responsive.isMobile(context)
                        ? 20
                        : Responsive.isTablet(context)
                            ? 30
                            : 40,
                width: Responsive.isSmallerPhone(context)
                    ? 107
                    : Responsive.isMobile(context)
                        ? 117
                        : Responsive.isTablet(context)
                            ? 127
                            : 147,
                child: ChangeNotifierProvider(
                    create: (context) => HoverProvider(),
                    child: Consumer<HoverProvider>(
                        builder: (context, value, child) => MouseRegion(
                            onEnter: (event) => value.mouseEnter = true,
                            onExit: (event) => value.mouseEnter = false,
                            child: ElevatedButton(
                                onPressed: () {
                                  context.pop();
                                  context.go(AppRoutes.loginPage);
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: value.mouseEnter != true
                                            ? const BorderSide(
                                                color: AppColors.greyColor2)
                                            : const BorderSide(
                                                color: Colors.transparent)),
                                    backgroundColor: value.mouseEnter != true
                                        ? AppColors.greyColor
                                        : AppColors.greenColor),
                                child: Text('Yes',
                                    style: AppStyles.mediumText(
                                        context: context,
                                        color: value.mouseEnter != true
                                            ? AppColors.textColor
                                            : Colors.white)))))))
          ],
          actionsPadding: const EdgeInsets.symmetric(vertical: 20),
          actionsAlignment: MainAxisAlignment.spaceEvenly));
}
