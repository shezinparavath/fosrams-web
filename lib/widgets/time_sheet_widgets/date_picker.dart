import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/date_controller.dart';
import 'package:provider/provider.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget(
      {super.key, required this.text, required this.onTap, required this.date});
  final String text;
  final String date;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(text, style: AppStyles.smallText(context: context)),
      GestureDetector(
          onTap: onTap,
          child: Consumer<DateProviders>(
              builder: (context, value, child) => Container(
                  // padding: const EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.greyColor)),
                  height: Responsive.isSmallerPhone(context)
                      ? 30
                      : Responsive.isMobile(context)
                          ? 36
                          : Responsive.isTablet(context)
                              ? 45
                              : 45,
                  width: Responsive.isMobile(context)
                      ? 168
                      : Responsive.isTablet(context)
                          ? 200
                          : 220,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                date == '1'
                                    ? value.getfromDate()
                                    : value.gettoDate(),
                                style: AppStyles.smallText(context: context)),
                            Image.asset(AppIcons.iconCalendar,
                                width: Responsive.isSmallerPhone(context)
                                    ? 14
                                    : Responsive.isMobile(context)
                                        ? 16
                                        : Responsive.isTablet(context)
                                            ? 20
                                            : 25,
                                height: Responsive.isMobile(context)
                                    ? 16
                                    : Responsive.isTablet(context)
                                        ? 20
                                        : 25,
                                color: AppColors.greenColor)
                          ])))))
    ]);
  }
}
