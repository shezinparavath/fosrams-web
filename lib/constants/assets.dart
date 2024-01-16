import 'package:flutter/widgets.dart';

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

class AppAssets {
  static const apiKey = 'AIzaSyAtg3YbaobDcUtPHO-3hwHi4C0ibVzIeq4';
  static const String iconTimeCalendarFilled = 'assets/icons/timetable.png';
  static const String iconTimeCalendarOutline =
      'assets/icons/timetable_(1).png';
  static const String iconLocation = 'assets/icons/location.png';
  static const String iconHourGlass = 'assets/icons/hourglass.png';
  static const String iconHomeFilled = 'assets/icons/home_(2).png';
  static const String iconHomeOutline = 'assets/icons/home_(1).png';
  static const String iconChronometer = 'assets/icons/chronometer.png';
  static const String iconCalendar = 'assets/icons/calendar.png';
  static const String imgIcon = 'assets/images/app_icon.png';
  static const String imgProfile = 'assets/images/profile.png';
  static const String iconDashboardOutlined =
      'assets/icons/dashboard_outlined.png';
  static const String iconMasterDataOutlined =
      'assets/icons/master_data_outlined.png';
  static const String iconDashboard = 'assets/icons/dashboard.png';
  static const String iconMasterData = 'assets/icons/master_data.png';
}
