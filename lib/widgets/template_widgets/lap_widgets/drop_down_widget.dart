import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:go_router/go_router.dart';

class BuildDropDown extends StatelessWidget {
  const BuildDropDown({super.key, required this.title, required this.route});
  final String title;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(
              left: Responsive.isSmallerPhone(context)
                  ? 30
                  : Responsive.isMobile(context)
                      ? 40
                      : Responsive.isTablet(context)
                          ? 50
                          : 60),
          child: Row(children: [
            Icon(Icons.subdirectory_arrow_right_rounded,
                color: AppColors.lightGreyColor,
                size: Responsive.isSmallerPhone(context)
                    ? 10
                    : Responsive.isMobile(context)
                        ? 15
                        : Responsive.isTablet(context)
                            ? 20
                            : 25),
            const SizedBox(width: 5),
            TextButton(
                onPressed: () {
                  context.go(route, extra: {1: title});
                },
                child: Text(title,
                    style: AppStyles.smallText(
                        context: context, color: AppColors.lightGreyColor)))
          ]))
    ]);
  }
}
