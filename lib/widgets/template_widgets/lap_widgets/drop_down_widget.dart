import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';

class BuildDropDown extends StatelessWidget {
  const BuildDropDown({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(left: getScreenWidth(context) * .04),
          child: Row(children: [
            const Icon(Icons.subdirectory_arrow_right_rounded,
                color: AppColors.lightGreyColor),
            const SizedBox(width: 5),
            TextButton(
                onPressed: () {},
                child: Text(title,
                    style: AppStyles.smallText(
                        context: context, color: AppColors.lightGreyColor)))
          ]))
    ]);
  }
}
