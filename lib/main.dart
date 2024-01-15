import 'package:flutter/material.dart';
import 'package:fosrams_web/controllers/date_controller.dart';
import 'package:fosrams_web/controllers/template_controller.dart';
import 'package:fosrams_web/controllers/textfield_controller.dart';
import 'package:fosrams_web/widgets/template_widgets/side_bar_navigation.dart';
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
        ChangeNotifierProvider(create: (context) => TemplateController()),
        ChangeNotifierProvider(create: (context) => TextFieldController())
      ],
      child: MaterialApp.router(
          builder: (context, child) {
            final textScaleFactor = MediaQuery.of(context).textScaleFactor;
            return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaleFactor: textScaleFactor),
                child: child!);
          },
          routerConfig: SideBarNavigation.router,
          debugShowCheckedModeBanner: false),
    );
  }
}
