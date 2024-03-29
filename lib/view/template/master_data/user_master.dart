import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/view/template/master_data/responsive/user_master/user_master_lap.dart';
import 'package:fosrams_web/view/template/master_data/responsive/user_master/user_master_mobile.dart';

class UserMaster extends StatelessWidget {
  const UserMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context) || Responsive.isTablet(context)
        ? const UserMasterLapAndTab()
        : const UserMasterMobile();
  }
}
