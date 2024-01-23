import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/view/template/master_data/responsive/timesheet_master/timesheet_master_lap.dart';

import 'responsive/timesheet_master/timesheet_master_mobile.dart';

class TimeSheetMaster extends StatelessWidget {
  const TimeSheetMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context) || Responsive.isTablet(context)
        ? const TimesheetMasterLapAndTab()
        : const TimeSheetMasterMobile();
  }
}
