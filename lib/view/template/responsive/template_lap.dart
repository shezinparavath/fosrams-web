import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/app_routes.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/decoration.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/template_controller.dart';
import 'package:fosrams_web/widgets/template_widgets/lap_widgets/drop_down_widget.dart';
import 'package:fosrams_web/widgets/template_widgets/lap_widgets/template_cards.dart';
import 'package:fosrams_web/widgets/template_widgets/log_out_pop_up.dart';
import 'package:provider/provider.dart';

class TemplateLapAndTab extends StatelessWidget {
  const TemplateLapAndTab(
      {super.key, required this.child, required this.title});
  final Widget child;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Consumer<TemplateController>(
          builder: (context, value, child) => Container(
              width: Responsive.isTablet(context)
                  ? getScreenWidth(context) * .3
                  : getScreenWidth(context) * .2,
              decoration: const BoxDecoration(
                  color: AppColors.darkGreen,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(4, 0),
                        color: AppColors.textColor)
                  ]),
              child: Column(children: [
                const SizedBox(height: 20),
                Image.asset(AppImages.imgIcon, fit: BoxFit.contain),
                const SizedBox(height: 30),
                const TemplateCard(
                    image: AppIcons.iconDashboardOutlined,
                    title: 'Dashboard',
                    index: 0,
                    child: SizedBox()),
                const TemplateCard(
                    image: AppIcons.iconMasterDataOutlined,
                    title: 'Master Data',
                    index: 1,
                    child: Column(children: [
                      BuildDropDown(
                          title: 'User Master',
                          route: AppRoutes.masterUser,
                          index: 1),
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
              ]))),
      Expanded(
          child: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [AppDecoration.shadow],
                    border: Border.all(color: AppColors.greyedOutClr)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(title,
                              style: AppStyles.bigText(context: context)),
                          ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: Responsive.isDesktop(context)
                                      ? getScreenWidth(context) * .2
                                      : getScreenWidth(context) * .3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: Responsive.isDesktop(context)
                                            ? 50
                                            : 30,
                                        width: Responsive.isDesktop(context)
                                            ? 50
                                            : 30,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.greyedOutClr),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                              AppIcons.iconSettings),
                                        )),
                                    // Container(
                                    //     height: Responsive.isDesktop(context)
                                    //         ? 50
                                    //         : 30,
                                    //     width: Responsive.isDesktop(context)
                                    //         ? 50
                                    //         : 30,
                                    //     decoration: const BoxDecoration(
                                    //         shape: BoxShape.circle,
                                    //         color: AppColors.greyedOutClr),
                                    //     child: Padding(
                                    //       padding: const EdgeInsets.all(8.0),
                                    //       child: Image.asset(
                                    //           AppIcons.iconNotification),
                                    //     )),
                                    Row(children: [
                                      Image.asset(AppImages.imgDefaultProfile),
                                      const SizedBox(width: 10),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('Admin',
                                                style: AppStyles.mediumText(
                                                    context: context)),
                                            TextButton(
                                                onPressed: () =>
                                                    buildLogoutPopUp(context),
                                                child: Text('Log Out',
                                                    style: AppStyles.smallText(
                                                        context: context)))
                                          ])
                                    ])
                                  ]))
                        ])))),
        Flexible(
            flex: 7,
            child: Container(
                color: AppColors.backGroundClr.withOpacity(.5),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: child))
      ]))
    ]));
  }
}
