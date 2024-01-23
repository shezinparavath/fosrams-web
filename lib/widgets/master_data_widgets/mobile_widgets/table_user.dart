import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/decoration.dart';
import 'package:fosrams_web/constants/style.dart';

class BuildTableUserMobile extends StatelessWidget {
  const BuildTableUserMobile({
    Key? key,
    required this.name,
    required this.email,
    required this.number,
    required this.index,
  }) : super(key: key);

  final String name;
  final String email;
  final String number;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: index == 0 ? EdgeInsets.zero : const EdgeInsets.all(10),
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
        child:
            Table(defaultColumnWidth: const FixedColumnWidth(200), children: [
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
                    textAlign: TextAlign.center))
          ])
        ]));
  }
}
