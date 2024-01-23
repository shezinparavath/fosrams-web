import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/widgets/template_widgets/phone_widgets/drawer.dart';

class TemplateMobile extends StatelessWidget {
  const TemplateMobile({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BuildDrawer(),
      appBar: AppBar(
          backgroundColor: AppColors.greenColor,
          title: Text('Master Data',
              style: AppStyles.bigText(context: context, color: Colors.white)),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Center(
                    child: Text('Welcome back\nAdmin',
                        style: AppStyles.bigText(
                            context: context, color: Colors.white))))
          ]),
      body: Container(child: child),
    );
  }
}
