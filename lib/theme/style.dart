import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Color(0xFF0C1020),
    hintColor: Color(0xFF00F0FF),
    scaffoldBackgroundColor: Color(0xFF0C1020),

    // Define navigation styles.
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Color(0xFF0C1023),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF0C1023),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
    ),

    // Define the default font family.
    fontFamily: 'Roboto',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}
