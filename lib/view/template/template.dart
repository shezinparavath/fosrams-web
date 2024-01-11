import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/view/template/responsive/template_lap.dart';
import 'package:fosrams_web/view/template/responsive/template_mobile.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isSmallerPhone(context)
        ? const TemplateMobile()
        : Responsive.isMobile(context)
            ? const TemplateMobile()
            : Responsive.isTablet(context)
                ? const TemplateLapAndTab()
                : const TemplateLapAndTab();
  }
}
