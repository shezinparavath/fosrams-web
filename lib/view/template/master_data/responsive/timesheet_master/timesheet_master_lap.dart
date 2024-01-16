import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/model/master_model/timesheet_table_model.dart';
import 'package:fosrams_web/widgets/master_data_widgets/lap_widgets/table_timesheet.dart';

class TimesheetMasterLapAndTab extends StatelessWidget {
  const TimesheetMasterLapAndTab({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title, style: AppStyles.extraBig(context)),
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
