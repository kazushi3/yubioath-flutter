import 'package:flutter/material.dart';

const primaryGreen = Color(0xffa8c86c);
const accentGreen = Color(0xff9aca3c);
const primaryBlue = Color(0xff325f74);

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        colorScheme:
            ColorScheme.fromSwatch(brightness: Brightness.light).copyWith(
          primary: primaryBlue,
          secondary: accentGreen,
          background: Colors.grey.shade200,
        ),
        backgroundColor: Colors.white,
        toggleableActiveColor: accentGreen,
        appBarTheme: AppBarTheme(
          elevation: 0.5,
          backgroundColor: Colors.white,
          foregroundColor: Colors.grey.shade800,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.grey.shade600,
          ),
          bodyText2: TextStyle(
            color: Colors.grey.shade800,
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        colorScheme:
            ColorScheme.fromSwatch(brightness: Brightness.dark).copyWith(
          primary: primaryGreen,
          secondary: primaryGreen,
        ),
        toggleableActiveColor: primaryGreen,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.grey.shade400,
          ),
          bodyText2: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
      );
}