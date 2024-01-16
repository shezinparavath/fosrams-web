import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/view/template/master_data/responsive/timesheet_master/timesheet_master_lap.dart';

import 'responsive/timesheet_master/timesheet_master_mobile.dart';

class TimeSheetMaster extends StatelessWidget {
  const TimeSheetMaster({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context) || Responsive.isTablet(context)
        ? TimesheetMasterLapAndTab(title: title)
        : const TimeSheetMasterMobile();
  }
}
