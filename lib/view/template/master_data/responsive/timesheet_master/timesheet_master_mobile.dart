import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/decoration.dart';
import 'package:fosrams_web/model/master_model/timesheet_table_model.dart';
import 'package:fosrams_web/widgets/master_data_widgets/mobile_widgets/table_timesheet.dart';

class TimeSheetMasterMobile extends StatelessWidget {
  const TimeSheetMasterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 50),
      Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              boxShadow: [AppDecoration.smallShadow],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(children: [
                for (int index = 0; index < timeSheetModelList.length; index++)
                  BuildTableTimeSheetMobile(
                      name: timeSheetModelList[index].name,
                      email: timeSheetModelList[index].email,
                      number: timeSheetModelList[index].number,
                      index: index,
                      visible: timeSheetModelList[index].visible)
              ])))
    ]);
  }
}
