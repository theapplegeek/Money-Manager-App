import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData iosTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        elevation: 10,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(color: Colors.blue)),
  );
}
