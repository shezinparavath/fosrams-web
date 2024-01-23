import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/app_routes.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/decoration.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:go_router/go_router.dart';

class BuildTableTimeSheetMobile extends StatelessWidget {
  const BuildTableTimeSheetMobile(
      {Key? key,
      required this.name,
      required this.email,
      required this.number,
      required this.index,
      required this.visible})
      : super(key: key);

  final String name;
  final String email;
  final String number;
  final int index;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: index == 0 ? null : const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: index == 0
                ? null
                : Border.all(
                    color: index % 2 == 0
                        ? AppColors.greyColor2
                        : AppColors.greyColor2),
            boxShadow: index == 0 ? null : [AppDecoration.shadow],
            color: index == 0
                ? Colors.transparent
                : index % 2 == 0
                    ? AppColors.greyColor
                    : AppColors.lightGreyColor,
            borderRadius: BorderRadius.circular(10)),
        child: Table(columnWidths: {
          0: const FixedColumnWidth(200),
          1: const FixedColumnWidth(200),
          2: const FixedColumnWidth(200),
          3: Responsive.isSmallerPhone(context)
              ? const FixedColumnWidth(50)
              : Responsive.isMobile(context)
                  ? const FixedColumnWidth(90)
                  : Responsive.isTablet(context)
                      ? const FixedColumnWidth(110)
                      : const FixedColumnWidth(90),
        }, children: [
          TableRow(children: [
            TableCell(
                child: Text(name,
                    style: AppStyles.mediumText(context: context),
                    textAlign: TextAlign.center)),
            TableCell(
                child: Text(email,
                    style: AppStyles.mediumText(context: context),
                    textAlign: TextAlign.center)),
            TableCell(
                child: Text(number,
                    style: AppStyles.mediumText(context: context),
                    textAlign: TextAlign.center)),
            Visibility(
                visible: visible,
                child: TableCell(
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: AppColors.gradient,
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                            onPressed: () => context.go(AppRoutes.timeSheet),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent),
                            child: Text('View',
                                style: AppStyles.smallText(
                                    context: context, color: Colors.white))))))
          ])
        ]));
  }
}
