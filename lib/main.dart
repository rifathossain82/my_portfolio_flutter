import 'package:flutter/material.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/pages/splashScreen/splash_screen.dart';
import 'package:my_protfolio/providers/themeProvider.dart';
import 'package:overlay_support/overlay_support.dart';
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
        return OverlaySupport.global(
          child: MaterialApp(
            title: app_name,
            debugShowCheckedModeBanner: false,
            theme: MyTheme.lightTheme,
            darkTheme: MyTheme.darkTheme,
            themeMode: themeProvider.themeMode,
            home: SplashScreen(),
          ),
        );
      },
    );
  }

}
