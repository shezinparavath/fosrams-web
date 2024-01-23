import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/view/template/responsive/template_lap.dart';
import 'package:fosrams_web/view/template/responsive/template_mobile.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({super.key, required this.child, required this.title});
  final Widget child;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Responsive.isSmallerPhone(context) || Responsive.isMobile(context)
        ? TemplateMobile(child: child)
        : TemplateLapAndTab(title: title, child: child);
  }
}
