import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/functions.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/textfield_controller.dart';
import 'package:fosrams_web/model/master_model/user_table_model.dart';
import 'package:fosrams_web/widgets/master_data_widgets/lap_widgets/table_user.dart';
import 'package:fosrams_web/widgets/template_widgets/pop_up.dart';
import 'package:fosrams_web/widgets/user_authentication_widgets/loginpage/textfield_widget.dart';
import 'package:provider/provider.dart';

class UserMasterLapAndTab extends StatelessWidget {
  const UserMasterLapAndTab({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title, style: AppStyles.extraBig(context)),
      const SizedBox(height: 50),
      Align(
          alignment: Alignment.centerRight,
          child: Container(
              margin: const EdgeInsets.only(right: 20),
              height: Responsive.isTablet(context) ? 30 : 40,
              width: Responsive.isTablet(context) ? 130 : 147,
              decoration: BoxDecoration(
                  gradient: AppColors.gradient,
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                  onPressed: () => bottomSheet(context),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.add),
                        Text('Add User',
                            style: AppStyles.smallText(
                                context: context, color: Colors.white))
                      ])))),
      SizedBox(height: getScreenHeight(context) * .04),
      Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => BuildTableUser(
                  name: userTableList[index].name,
                  email: userTableList[index].email,
                  number: userTableList[index].number,
                  index: index),
              itemCount: userTableList.length))
    ]);
  }

  bottomSheet(BuildContext context) {
    buildShowDialog(
        context: context,
        title: 'Create User',
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
        ]));
  }
}
