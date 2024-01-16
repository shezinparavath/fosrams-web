import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/view/master_data/responsive/timesheet_master/timesheet/timesheet_lap.dart';
import 'package:fosrams_web/view/master_data/responsive/timesheet_master/timesheet/timesheet_mobile.dart';
import 'package:fosrams_web/view/master_data/responsive/timesheet_master/timesheet/timesheet_tablet.dart';

class TimeSheet extends StatelessWidget {
  const TimeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? const TimeSheetLap()
        : Responsive.isTablet(context)
            ? const TimeSheetTablet()
            : Responsive.isMobile(context)
                ? const TimeSheetMobile()
                : const TimeSheetMobile();
  }
}
