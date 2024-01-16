import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/date_controller.dart';
import 'package:fosrams_web/widgets/time_sheet_widgets/date_picker.dart';
import 'package:fosrams_web/widgets/time_sheet_widgets/grid_view.dart';
import 'package:fosrams_web/view/master_data/responsive/timesheet_master/timesheet/appbar/appbar_mobile.dart';
import 'package:provider/provider.dart';

class TimeSheetMobile extends StatelessWidget {
  const TimeSheetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFCFCFC),
        appBar: buildAppBarMobile(context),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(getScreenWidth(context) * .05),
                child: Column(children: [
                  Text('My TimeSheet',
                      style: AppStyles.bigText(
                          context: context, color: AppColors.darkGreen)),
                  const SizedBox(height: 50),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Your Previous Shifts',
                            style: AppStyles.bigText(context: context)),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: AppColors.gradient),
                            child: ElevatedButton(
                                onPressed: () {
                                  _dropDown(context);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.filter_alt,
                                          color: Colors.black,
                                          size: getScreenWidth(context) * .05),
                                      Text('Filter',
                                          style: AppStyles.smallText(
                                              context: context))
                                    ])))
                      ]),
                  const SizedBox(height: 20),
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing: 30,
                              mainAxisExtent: 200,
                              crossAxisSpacing: 30),
                      itemBuilder: (context, index) => const BuildGridView(),
                      itemCount: 20)
                ]))));
  }
}

_dropDown(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              actionsPadding: const EdgeInsets.symmetric(vertical: 20),
              title: Text('Filter',
                  textAlign: TextAlign.center,
                  style: AppStyles.bigText(context: context)),
              content: ConstrainedBox(
                  constraints:
                      BoxConstraints(maxHeight: getScreenHeight(context) * .15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DatePickerWidget(
                            text: 'From Date',
                            onTap: () => _fromDatePick(
                                context,
                                Provider.of<DateProviders>(context,
                                    listen: false)),
                            date: '1'),
                        DatePickerWidget(
                            text: 'To Date',
                            onTap: () => _toDatePick(
                                context,
                                Provider.of<DateProviders>(context,
                                    listen: false)),
                            date: '0')
                      ])),
              actionsAlignment: MainAxisAlignment.spaceEvenly,
              actions: [
                Container(
                    width: getScreenWidth(context) * .3,
                    height: getScreenHeight(context) * .06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: AppColors.redGradient),
                    child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text('Cancel'))),
                Container(
                    width: getScreenWidth(context) * .3,
                    height: getScreenHeight(context) * .06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: AppColors.gradient),
                    child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text('Submit')))
              ]));
}

void _fromDatePick(BuildContext context, provider) async {
  final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                    primary: AppColors.greenColor, // header background color
                    onPrimary: Colors.white, // header text color
                    onSurface: Colors.black // body text color
                    ),
                textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                        foregroundColor:
                            AppColors.blueColor // button text color
                        ))),
            child: child!,
          ));
  if (pickedDate != null) {
    provider.setFromdate(pickedDate);
  }
}

void _toDatePick(BuildContext context, provider) async {
  final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                    primary: AppColors.greenColor, // header background color
                    onPrimary: Colors.white, // header text color
                    onSurface: Colors.black // body text color
                    ),
                textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                        foregroundColor:
                            AppColors.blueColor // button text color
                        ))),
            child: child!,
          ));

  if (pickedDate != null) {
    provider.setTodate(pickedDate);
  }
}
