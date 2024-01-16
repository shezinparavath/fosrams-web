import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/functions.dart';
import 'package:fosrams_web/controllers/textfield_controller.dart';
import 'package:fosrams_web/model/master_model/employee_table_model.dart';
import 'package:fosrams_web/widgets/master_data_widgets/lap_widgets/table_employee.dart';
import 'package:fosrams_web/widgets/template_widgets/pop_up.dart';
import 'package:fosrams_web/widgets/user_authentication_widgets/loginpage/textfield_widget.dart';
import 'package:provider/provider.dart';

class EmployeeMasterMobile extends StatelessWidget {
  const EmployeeMasterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: getScreenHeight(context) * .04),
      Expanded(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(children: [
                for (int index = 0; index < employeeModelList.length; index++)
                  BuildTableEmployee(
                      name: employeeModelList[index].name,
                      email: employeeModelList[index].email,
                      number: employeeModelList[index].number,
                      index: index,
                      logInTime: employeeModelList[index].logInTime,
                      logOutTime: employeeModelList[index].logOutTime,
                      duration: employeeModelList[index].duration)
              ]))),
      Align(
          alignment: Alignment.bottomRight,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                  onPressed: () => bottomSheet(context),
                  backgroundColor: AppColors.greenColor,
                  child: const Icon(Icons.add))))
    ]);
  }

  bottomSheet(BuildContext context) {
    buildShowDialog(
        context: context,
        title: 'Create Employee',
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          BuildTextField(
              hintText: 'Enter User Name',
              labelText: 'Username',
              validator: (value) => AppFunctions.emptyCheck(value)),
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
        ]));
  }
}
