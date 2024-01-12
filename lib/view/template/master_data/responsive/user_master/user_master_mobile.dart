import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/functions.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/textfield_controller.dart';
import 'package:fosrams_web/model/user_table_model.dart';
import 'package:fosrams_web/widgets/master_data_widgets/lap_widgets/table_user.dart';
import 'package:fosrams_web/widgets/user_authentication_widgets/loginpage/textfield_widget.dart';
import 'package:provider/provider.dart';

class UserMasterMobile extends StatelessWidget {
  UserMasterMobile({super.key});
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: getScreenHeight(context) * .04),
      Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => BuildTableUser(
                  name: userTableList[index].name,
                  email: userTableList[index].email,
                  number: userTableList[index].number,
                  index: index),
              itemCount: userTableList.length)),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                  onPressed: () => bottomSheet(context),
                  backgroundColor: AppColors.greenColor,
                  child: const Icon(Icons.add))))
    ]);
  }

  bottomSheet(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text('Create User',
                          textAlign: TextAlign.center,
                          style: AppStyles.bigText(context: context))),
                  FloatingActionButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Navigator.pop(context);
                        }
                      },
                      backgroundColor: AppColors.darkGreen,
                      child: const Icon(Icons.add))
                ]),
            content: Form(
              key: formkey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                            validator: (value) =>
                                AppFunctions.emptyCheck(value),
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
            )));
  }
}
