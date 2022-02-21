import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constraints/colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void changeTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFF212936),
    cardTheme: CardTheme(color:  Colors.black12,shadowColor: Colors.black87),
    colorScheme: ColorScheme.dark(),
    primaryColor: Colors.white.withOpacity(0.5),
    iconTheme: IconThemeData(color: Colors.white70),
    appBarTheme: AppBarTheme(color: Colors.black.withOpacity(0.1)),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.red),
    floatingActionButtonTheme: FloatingActionButtonThemeData( backgroundColor: Colors.white,),
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: Color(0xFF212936),
      selectedIconTheme: IconThemeData(color: Colors.blue, size: 40),
      unselectedIconTheme: IconThemeData(color: Colors.blue.withOpacity(0.5), size: 35),
    ),
  );

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      primaryColor: Colors.black,
      cardTheme: CardTheme(color: Colors.white,shadowColor: Colors.blueGrey[900]),
      iconTheme: IconThemeData(color: Colors.black.withOpacity(0.8)),
      appBarTheme: AppBarTheme(color: Colors.blue),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.green),
      floatingActionButtonTheme: FloatingActionButtonThemeData( backgroundColor: Color(0xFF212936),),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.blue, size: 40),
        unselectedIconTheme:
            IconThemeData(color: Colors.blue.withOpacity(0.5), size: 35),
      )
  );
}
