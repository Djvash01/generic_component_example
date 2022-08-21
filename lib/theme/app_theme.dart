import 'package:flutter/material.dart';

class AppTheme {
  static final Color primaryColor = Colors.red.shade400;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: primaryColor,

    //appbar theme
    appBarTheme: AppBarTheme(color: primaryColor, elevation: 0)
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: primaryColor,

    //appbar theme
    appBarTheme: AppBarTheme(color: primaryColor, elevation: 0)
  );
}
