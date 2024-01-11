import 'package:flutter/material.dart';
import 'package:fosrams_web/controllers/date_controller.dart';
import 'package:fosrams_web/controllers/template_controller.dart';
import 'package:fosrams_web/view/user_authentication/login_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DateProviders()),
        ChangeNotifierProvider(create: (context) => TemplateController())
      ],
      child: MaterialApp(home: LoginPage(), debugShowCheckedModeBanner: false),
    );
  }
}
