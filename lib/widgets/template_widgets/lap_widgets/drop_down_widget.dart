import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/drop_down_buttons_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class BuildDropDown extends StatelessWidget {
  const BuildDropDown(
      {super.key,
      required this.title,
      required this.route,
      required this.index});
  final String title;
  final String route;
  final int index;
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
            Consumer<DropDownButtonsProviders>(
                builder: (context, value, child) => value.onTapResponse(index)
                    ? Container(height: 20, width: 5, color: AppColors.tealClr)
                    : const SizedBox()),
            const SizedBox(width: 5),
            TextButton(
                onPressed: () {
                  Provider.of<DropDownButtonsProviders>(context, listen: false)
                      .triggerButton = index;
                  context.go(route, extra: {1: title});
                },
                child: Consumer<DropDownButtonsProviders>(
                    builder: (context, value, child) => Text(title,
                        style: value.onTapResponse(index)
                            ? AppStyles.averageText(
                                context: context,
                                color: AppColors.lightGreyColor)
                            : AppStyles.smallText(
                                context: context, color: AppColors.greyColor))))
          ]))
    ]);
  }
}
