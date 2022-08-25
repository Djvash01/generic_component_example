import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Colors.red.shade400;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: primary,

      //appbar theme
      appBarTheme: AppBarTheme(color: primary, elevation: 0),

      //Text button theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      //floatingActionsButtons
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primary),

      //elevate botton
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary, shape: const StadiumBorder(), elevation: 0)),

      //input decoration theme
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: Colors.amber),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        )
      )

    );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: primary,

      //appbar theme
      appBarTheme: AppBarTheme(color: primary, elevation: 0));
}
