import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/app_routes.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/widgets/template_widgets/lap_widgets/drop_down_widget.dart';
import 'package:fosrams_web/widgets/template_widgets/lap_widgets/template_cards.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(getScreenHeight(context) * .03),
              bottomRight: Radius.circular(getScreenHeight(context) * .03))),
      width: getScreenWidth(context) * .5,
      child: const Column(children: [
        SizedBox(height: 30),
        TemplateCard(
            image: AppIcons.iconDashboardOutlined,
            title: 'Dashboard',
            index: 0,
            child: SizedBox()),
        TemplateCard(
            image: AppIcons.iconMasterDataOutlined,
            title: 'Master Data',
            index: 1,
            child: Column(children: [
              BuildDropDown(
                  title: 'User Master', route: AppRoutes.masterUser, index: 1),
              SizedBox(height: 10),
              BuildDropDown(
                  title: 'Employee Master',
                  route: AppRoutes.masterEmployee,
                  index: 2),
              SizedBox(height: 10),
              BuildDropDown(
                  title: 'Timesheet Master',
                  route: AppRoutes.masterTimesheet,
                  index: 3)
            ]))
      ]));
}
