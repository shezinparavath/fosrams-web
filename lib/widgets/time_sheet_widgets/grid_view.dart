import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';

class BuildGridView extends StatelessWidget {
  const BuildGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: getScreenHeight(context) * .1,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.greyColor)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: Responsive.isMobile(context)
                      ? 137
                      : Responsive.isTablet(context)
                          ? 145
                          : 160,
                  height: Responsive.isMobile(context)
                      ? 28
                      : Responsive.isTablet(context)
                          ? 40
                          : 50,
                  decoration: BoxDecoration(
                      color: AppColors.lightGreyColor,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(
                          getScreenWidth(context) * 0.09)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.greenColor),
                                child: Center(
                                    child: Image.asset(AppIcons.iconCalendar,
                                        width: Responsive.isSmallerPhone(
                                                context)
                                            ? 10
                                            : Responsive.isMobile(context)
                                                ? 12
                                                : Responsive.isTablet(context)
                                                    ? 14
                                                    : 16,
                                        height: Responsive.isSmallerPhone(
                                                context)
                                            ? 10
                                            : Responsive.isMobile(context)
                                                ? 12
                                                : Responsive.isTablet(context)
                                                    ? 14
                                                    : 16,
                                        color: Colors.white)))),
                        Text('October 01, 2023',
                            style: AppStyles.smallText(context: context))
                      ])),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.access_time_rounded,
                            size: Responsive.isMobile(context)
                                ? 10
                                : Responsive.isTablet(context)
                                    ? 15
                                    : 20,
                            color: const Color(0xff00C193)),
                        Text('Starting Time',
                            style: AppStyles.smallText(
                                context: context,
                                color: const Color(0xff00C193)))
                      ]),
                  Text('09:00 AM',
                      style: AppStyles.mediumText(context: context))
                ]),
                Container(
                    width: 1,
                    height: getScreenHeight(context) * .05,
                    color: const Color(0xffEFEFEF)),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.access_time_rounded,
                            size: Responsive.isMobile(context)
                                ? 10
                                : Responsive.isTablet(context)
                                    ? 15
                                    : 20,
                            color: AppColors.redColor),
                        Text('Ending Time',
                            style: AppStyles.smallText(
                                context: context, color: AppColors.redColor))
                      ]),
                  Text('06:00 PM',
                      style: AppStyles.mediumText(context: context))
                ]),
                Container(
                    width: 1,
                    height: getScreenHeight(context) * .05,
                    color: const Color(0xffEFEFEF)),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(AppIcons.iconHourGlass,
                            color: const Color(0xff35BFEB),
                            width: Responsive.isSmallerPhone(context)
                                ? 10
                                : Responsive.isMobile(context)
                                    ? 12
                                    : Responsive.isTablet(context)
                                        ? 14
                                        : 16,
                            height: Responsive.isSmallerPhone(context)
                                ? 10
                                : Responsive.isMobile(context)
                                    ? 12
                                    : Responsive.isTablet(context)
                                        ? 14
                                        : 16),
                        Text('Duration',
                            style: AppStyles.smallText(
                                context: context,
                                color: const Color(0xff35BFEB)))
                      ]),
                  Text('10 Hrs', style: AppStyles.mediumText(context: context))
                ])
              ]),
              SizedBox(
                  height: getScreenHeight(context) * .06,
                  width: getScreenWidth(context) * .85,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xffEAFFF3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                  color: AppColors.greenColor))),
                      onPressed: () {
                        //  context.go(AppRoutes.time);
                      },
                      child: Row(children: [
                        Expanded(
                          child: Text('View full Details',
                              textAlign: TextAlign.center,
                              style: AppStyles.smallText(
                                  context: context,
                                  color: AppColors.greenColor)),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            color: AppColors.greenColor,
                            size: Responsive.isMobile(context)
                                ? 10
                                : Responsive.isTablet(context)
                                    ? 15
                                    : 20)
                      ])))
            ]));
  }
}
