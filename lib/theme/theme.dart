import 'package:flutter/material.dart';

ThemeData myDarkTheme = ThemeData.dark(
  useMaterial3: true,
).copyWith(
  appBarTheme: const AppBarTheme(
    elevation: 3,
    backgroundColor: Color(0xFF464F60),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xFF464F60)),
    ),
  ),
  buttonTheme: const ButtonThemeData(
    // highlightColor: Color(0xFFE0E7FF),
    buttonColor: Color(0xFFE0E7FF),
    textTheme: ButtonTextTheme.primary,
  ),
  colorScheme: const ColorScheme.dark(),
  scaffoldBackgroundColor: const Color(0xFF0F172A),
);

ThemeData myLightTheme = ThemeData.light(
  useMaterial3: true,
).copyWith(
  snackBarTheme: SnackBarThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 3,
    backgroundColor: Color(0xFFC5CFDB),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(
          color: Color(0xFFC5CFDB),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
        fontWeight: FontWeight.w500,
      )),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(
        const Color(0xFF464F60).withOpacity(0.8),
      ),
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    textTheme: ButtonTextTheme.accent,
  ),
  colorScheme: const ColorScheme.light().copyWith(
    secondary: const Color(0xFF312E81),
  ),
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
);
