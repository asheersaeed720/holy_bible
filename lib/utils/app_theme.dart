import 'package:flutter/material.dart';
import 'package:holy_bible/utils/constants.dart';

final lightThemeData = ThemeData(
  brightness: Brightness.light,
  platform: TargetPlatform.iOS,
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: Colors.white,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: kPrimaryColor),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.black87,
      fontSize: 16.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
    ),
    elevation: 0,
    backgroundColor: Colors.white,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: kTextFieldColor,
    hintStyle: TextStyle(color: Colors.black54),
  ),
  errorColor: Colors.red[800],
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'Poppins',
  // textTheme: textTheme,
);

// final darkThemeData = ThemeData(
//   brightness: Brightness.dark,
//   primaryColor: primaryColor,
//   scaffoldBackgroundColor: const Color(0xFFECF3F9),
//   errorColor: Colors.red[800],
//   visualDensity: VisualDensity.adaptivePlatformDensity,
//   fontFamily: 'Poppins',
//   // textTheme: textTheme,
// );
