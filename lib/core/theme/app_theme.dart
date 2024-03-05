import 'package:flutter/material.dart';

enum Apptheme{
  blueLight("Blue Light"),
  blueDark("Blue Dark"),
  redDark("Red Dark");

  const Apptheme(this.name);
  final String name;
}

final appThemeData = {
  Apptheme.blueLight: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  Apptheme.blueDark: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),
  Apptheme.redDark: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.red[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.red[700],
  ),
};