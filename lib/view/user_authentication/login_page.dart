import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/app_routes.dart';
import 'package:fosrams_web/constants/assets.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/functions.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/widgets/user_authentication_widgets/loginpage/textfield_widget.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(Responsive.isSmallerPhone(context)
                ? 0
                : Responsive.isMobile(context)
                    ? 0
                    : Responsive.isTablet(context)
                        ? getScreenHeight(context) * .06
                        : getScreenHeight(context) * .09),
            child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxHeight: getScreenHeight(context)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(AppImages.imgIcon,
                          fit: BoxFit.fill,
                          width: Responsive.isSmallerPhone(context)
                              ? 60
                              : Responsive.isMobile(context)
                                  ? 110
                                  : Responsive.isTablet(context)
                                      ? 130
                                      : 140,
                          height: Responsive.isSmallerPhone(context)
                              ? 30
                              : Responsive.isMobile(context)
                                  ? 70
                                  : Responsive.isTablet(context)
                                      ? 90
                                      : 100),
                      Text('Login Your Account',
                          style: AppStyles.extraBig(context,
                              color: AppColors.greenColor)),
                      Form(
                          key: formkey,
                          child: Column(children: [
                            BuildTextField(
                                validator: (value) =>
                                    AppFunctions.emptyCheck(value),
                                hintText: 'Enter username',
                                labelText: 'User Name'),
                            const SizedBox(height: 20),
                            BuildTextField(
                                validator: (value) =>
                                    AppFunctions.emptyCheck(value),
                                hintText: 'Enter Password',
                                labelText: 'Password',
                                obscure: true)
                          ])),
                      Container(
                          width: Responsive.isSmallerPhone(context)
                              ? 200
                              : Responsive.isMobile(context)
                                  ? 300
                                  : Responsive.isTablet(context)
                                      ? 418
                                      : 361,
                          height: Responsive.isSmallerPhone(context) ? 40 : 50,
                          decoration: BoxDecoration(
                              gradient: AppColors.gradient,
                              borderRadius: BorderRadius.circular(5)),
                          child: ElevatedButton(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  context.go(AppRoutes.masterUser);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: Text('Login',
                                  style: AppStyles.mediumText(
                                      context: context, color: Colors.white)))),
                      TextButton(
                          onPressed: () {},
                          child: Text('Forgot my password',
                              style: AppStyles.mediumText(
                                  context: context,
                                  color: const Color(0xff9B9B9B))))
                    ]))),
        bottomNavigationBar: Text('2023 fosrams LLC. All Rights Reserved.',
            textAlign: TextAlign.center,
            style: AppStyles.averageText(
                context: context, color: const Color(0xffA7A7A7))));
  }
}
