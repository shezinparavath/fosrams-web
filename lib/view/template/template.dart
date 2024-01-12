import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/view/template/master_data/responsive/user_master/user_master_lap.dart';
import 'package:fosrams_web/view/template/master_data/responsive/user_master/user_master_mobile.dart';
import 'package:fosrams_web/view/template/responsive/template_lap.dart';
import 'package:fosrams_web/view/template/responsive/template_mobile.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isSmallerPhone(context)
        ? TemplateMobile(child: UserMasterMobile())
        : Responsive.isMobile(context)
            ? TemplateMobile(child: UserMasterMobile())
            : Responsive.isTablet(context)
                ? TemplateLapAndTab(child: UserMasterLapAndTab())
                : TemplateLapAndTab(child: UserMasterLapAndTab());
  }
}
