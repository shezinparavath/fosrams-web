import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/widgets/time_sheet_widgets/responsive/timesheet_lap.dart';
import 'package:fosrams_web/widgets/time_sheet_widgets/responsive/timesheet_mobile.dart';
import 'package:fosrams_web/widgets/time_sheet_widgets/responsive/timesheet_tablet.dart';

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
