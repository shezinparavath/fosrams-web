import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';

class BuildTableEmployee extends StatelessWidget {
  const BuildTableEmployee(
      {Key? key,
      required this.name,
      required this.email,
      required this.number,
      required this.index,
      required this.logInTime,
      required this.logOutTime,
      required this.duration})
      : super(key: key);

  final String name;
  final String email;
  final String number;
  final String logInTime;
  final String logOutTime;
  final String duration;
  final int index;

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
        child:
            Table(defaultColumnWidth: const FixedColumnWidth(100), children: [
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
            TableCell(
                child: Text(logInTime,
                    style: AppStyles.mediumText(context: context),
                    textAlign: TextAlign.center)),
            TableCell(
                child: Text(logOutTime,
                    style: AppStyles.mediumText(context: context),
                    textAlign: TextAlign.center)),
            TableCell(
                child: Text(duration,
                    style: AppStyles.mediumText(context: context),
                    textAlign: TextAlign.center))
          ])
        ]));
  }
}