import 'package:flutter/cupertino.dart';

class MyTheme {
  static const iosTheme = CupertinoThemeData(
      barBackgroundColor: CupertinoColors.black,
      brightness: Brightness.dark,
      primaryColor: CupertinoColors.black,
      textTheme: CupertinoTextThemeData(
        primaryColor: CupertinoColors.white,
      ),
      scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray);
}
