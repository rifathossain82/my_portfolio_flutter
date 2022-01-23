import 'package:flutter/material.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/pages/home/homepage.dart';
import 'package:my_protfolio/pages/splashScreen/splash_screen.dart';
import 'package:my_protfolio/providers/themeProvider.dart';
import 'package:my_protfolio/templete/layoutTemplete.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: app_name,
          debugShowCheckedModeBanner: false,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          themeMode: themeProvider.themeMode,
          home: LayoutTemplete(),
        );
      },
    );
  }

}
