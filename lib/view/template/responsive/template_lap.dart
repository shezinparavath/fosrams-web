import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/app_routes.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/template_controller.dart';
import 'package:fosrams_web/widgets/template_widgets/lap_widgets/drop_down_widget.dart';
import 'package:fosrams_web/widgets/template_widgets/lap_widgets/template_cards.dart';
import 'package:provider/provider.dart';

class TemplateLapAndTab extends StatelessWidget {
  const TemplateLapAndTab({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Consumer<TemplateController>(
          builder: (context, value, child) => Container(
              width: Responsive.isTablet(context) ? 200 : 250,
              decoration: BoxDecoration(color: AppColors.darkGreen, boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: const Offset(4, -4),
                    color: AppColors.textColor.withOpacity(.5))
              ]),
              child: Column(children: [
                const SizedBox(height: 20),
                Image.asset(AppAssets.imgIcon, fit: BoxFit.contain),
                const SizedBox(height: 30),
                const TemplateCard(
                    image: AppAssets.iconDashboardOutlined,
                    title: 'Dashboard',
                    index: 0,
                    child: SizedBox()),
                const TemplateCard(
                    image: AppAssets.iconMasterDataOutlined,
                    title: 'Master Data',
                    index: 1,
                    child: Column(children: [
                      BuildDropDown(
                          title: 'User Master', route: AppRoutes.masterUser),
                      SizedBox(height: 10),
                      BuildDropDown(
                          title: 'Employee Master',
                          route: AppRoutes.masterEmployee),
                      SizedBox(height: 10),
                      BuildDropDown(
                          title: 'Timesheet Master',
                          route: AppRoutes.masterTimesheet)
                    ]))
              ]))),
      Expanded(
          child:
              Container(padding: const EdgeInsets.only(left: 20), child: child))
    ]));
  }
}
