import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/app_routes.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:go_router/go_router.dart';

class BuildTableTimeSheet extends StatelessWidget {
  const BuildTableTimeSheet(
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
            boxShadow: index == 0 ? null : [AppColors.shadow],
            color: index == 0
                ? Colors.transparent
                : index % 2 == 0
                    ? AppColors.greyColor
                    : AppColors.lightGreyColor,
            borderRadius: BorderRadius.circular(10)),
        child: Table(columnWidths: {
          0: const FlexColumnWidth(1),
          1: const FlexColumnWidth(1),
          2: const FlexColumnWidth(1),
          3: Responsive.isSmallerPhone(context)
              ? const FlexColumnWidth(1)
              : Responsive.isMobile(context)
                  ? const FlexColumnWidth(.9)
                  : Responsive.isTablet(context)
                      ? const FlexColumnWidth(.7)
                      : const FlexColumnWidth(.4),
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
