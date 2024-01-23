import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';

void buildCreateMasterDataShowDialog(
    {required BuildContext context,
    required String title,
    required Widget child}) {
  final formkey = GlobalKey<FormState>();
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                child: Text(title,
                    textAlign: TextAlign.center,
                    style: AppStyles.bigText(context: context))),
            FloatingActionButton(
                mini: true,
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.pop(context);
                  }
                },
                backgroundColor: AppColors.darkGreen,
                child: const Icon(Icons.add))
          ]),
          content: Form(
              key: formkey,
              child: ConstrainedBox(
                  constraints:
                      BoxConstraints(maxHeight: getScreenHeight(context) * .5),
                  child: child))));
}
