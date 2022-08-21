import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Colors.red.shade400;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: primary,

    //appbar theme
    appBarTheme: AppBarTheme(
      color: primary, 
      elevation: 0
    ),

    //Text button theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( primary: primary )
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: primary,

    //appbar theme
    appBarTheme: AppBarTheme(color: primary, elevation: 0)
  );
}
