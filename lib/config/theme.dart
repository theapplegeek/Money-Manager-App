import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData iosTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xFF171717),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        elevation: 10,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(color: Colors.blue)),
  );
}
