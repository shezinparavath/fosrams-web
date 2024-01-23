import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/decoration.dart';
import 'package:fosrams_web/model/master_model/timesheet_table_model.dart';
import 'package:fosrams_web/widgets/master_data_widgets/lap_widgets/table_timesheet.dart';

class TimesheetMasterLapAndTab extends StatelessWidget {
  const TimesheetMasterLapAndTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 30),
      Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              boxShadow: [AppDecoration.smallShadow],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => BuildTableTimeSheetLap(
                  name: timeSheetModelList[index].name,
                  email: timeSheetModelList[index].email,
                  number: timeSheetModelList[index].number,
                  index: index,
                  visible: timeSheetModelList[index].visible),
              itemCount: timeSheetModelList.length))
    ]);
  }
}
