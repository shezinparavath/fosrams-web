import 'package:flutter/material.dart';
import 'package:fosrams_web/model/master_model/timesheet_table_model.dart';
import 'package:fosrams_web/widgets/master_data_widgets/lap_widgets/table_timesheet.dart';

class TimeSheetMasterMobile extends StatelessWidget {
  const TimeSheetMasterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 50),
      Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => BuildTableTimeSheet(
                  name: timeSheetModelList[index].name,
                  email: timeSheetModelList[index].email,
                  number: timeSheetModelList[index].number,
                  index: index,
                  visible: timeSheetModelList[index].visible),
              itemCount: timeSheetModelList.length))
    ]);
  }
}
