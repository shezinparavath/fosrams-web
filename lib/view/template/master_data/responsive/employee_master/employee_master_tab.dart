import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/decoration.dart';
import 'package:fosrams_web/constants/functions.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/textfield_controller.dart';
import 'package:fosrams_web/model/master_model/employee_table_model.dart';
import 'package:fosrams_web/widgets/master_data_widgets/lap_widgets/table_employee.dart';
import 'package:fosrams_web/widgets/master_data_widgets/create_master_dat_pop_up.dart';
import 'package:fosrams_web/widgets/user_authentication_widgets/loginpage/textfield_widget.dart';
import 'package:provider/provider.dart';

class EmployeeMasterTab extends StatelessWidget {
  const EmployeeMasterTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 30),
      Align(
          alignment: Alignment.centerRight,
          child: Container(
              margin: const EdgeInsets.only(right: 20),
              height: Responsive.isTablet(context) ? 30 : 40,
              width: Responsive.isTablet(context) ? 127 : 147,
              decoration: BoxDecoration(
                  boxShadow: [AppDecoration.smallShadow],
                  gradient: AppColors.gradient,
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                  onPressed: () => bottomSheet(context),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.add),
                        Text('Add Employee',
                            overflow: TextOverflow.ellipsis,
                            style: AppStyles.smallText(
                                context: context, color: Colors.white))
                      ])))),
      SizedBox(height: getScreenHeight(context) * .04),
      Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              boxShadow: [AppDecoration.smallShadow],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(children: [
                for (int index = 0; index < employeeModelList.length; index++)
                  BuildTableEmployeeLap(
                      name: employeeModelList[index].name,
                      email: employeeModelList[index].email,
                      number: employeeModelList[index].number,
                      index: index,
                      logInTime: employeeModelList[index].logInTime,
                      logOutTime: employeeModelList[index].logOutTime,
                      duration: employeeModelList[index].duration)
              ])))
    ]);
  }

  bottomSheet(BuildContext context) {
    buildCreateMasterDataShowDialog(
      context: context,
      title: 'Create Employee',
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        BuildTextField(
          hintText: 'Enter User Name',
          labelText: 'Username',
          validator: (value) => AppFunctions.emptyCheck(value),
        ),
        Consumer<TextFieldController>(
            builder: (context, value, child) => BuildTextField(
                hintText: 'Enter Password',
                labelText: 'Password',
                obscure: value.isObscure,
                validator: (value) => AppFunctions.emptyCheck(value),
                suffixIcon: value.isObscure
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded,
                onSuffixTap: () => value.triggerObscure())),
        BuildTextField(
          hintText: 'Enter Email Address',
          labelText: 'Email Address',
          validator: (value) => AppFunctions.emailCheck(value),
        ),
        BuildTextField(
            hintText: 'Enter Phone Number',
            labelText: 'Phone Number',
            validator: (value) => AppFunctions.emptyCheck(value),
            inputType: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ])
      ]),
    );
  }
}
