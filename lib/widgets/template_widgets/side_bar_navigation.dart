import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/app_routes.dart';
import 'package:fosrams_web/view/template/master_data/employee_master.dart';
import 'package:fosrams_web/view/template/master_data/responsive/timesheet_master/timesheet.dart';
import 'package:fosrams_web/view/template/master_data/timesheet_master.dart';
import 'package:fosrams_web/view/template/master_data/user_master.dart';
import 'package:fosrams_web/view/template/template.dart';
import 'package:fosrams_web/view/user_authentication/login_page.dart';
import 'package:go_router/go_router.dart';

class SideBarNavigation {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
      initialLocation: AppRoutes.loginPage,
      navigatorKey: rootNavigatorKey,
      routes: [
        GoRoute(
            path: AppRoutes.loginPage,
            builder: (context, state) => LoginPage()),
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) => TemplatePage(child: child),
            routes: [
              GoRoute(
                  path: AppRoutes.masterUser,
                  parentNavigatorKey: _shellNavigatorKey,
                  builder: (context, state) {
                    final title = state.extra is Map<int, dynamic>
                        ? (state.extra as Map<int, dynamic>)[1]
                        : 'Master User';
                    return UserMaster(title: title);
                  }),
              GoRoute(
                  path: AppRoutes.masterEmployee,
                  parentNavigatorKey: _shellNavigatorKey,
                  builder: (context, state) {
                    final title = state.extra is Map<int, dynamic>
                        ? (state.extra as Map<int, dynamic>)[1]
                        : 'Master User';
                    return EmployeeMaster(title: title);
                  }),
              GoRoute(
                  path: AppRoutes.masterTimesheet,
                  parentNavigatorKey: _shellNavigatorKey,
                  builder: (context, state) {
                    final title = state.extra is Map<int, dynamic>
                        ? (state.extra as Map<int, dynamic>)[1]
                        : 'Master Data';
                    return TimeSheetMaster(title: title);
                  })
            ]),
        GoRoute(
            path: AppRoutes.timeSheet,
            builder: (context, state) => const TimeSheet())
      ]);
}
