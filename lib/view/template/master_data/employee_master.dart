import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/view/template/master_data/responsive/employee_master/employee_master_lap.dart';
import 'package:fosrams_web/view/template/master_data/responsive/employee_master/employee_master_mobile.dart';

class EmployeeMaster extends StatelessWidget {
  const EmployeeMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isSmallerPhone(context)
        ? EmployeeMasterMobile()
        : EmployeeMasterLapAndTab();
  }
}
