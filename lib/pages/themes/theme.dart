import 'package:flutter/material.dart';

class MyAppTheme {
  static  List<ThemeData> themes = [
    ThemeData(
        primaryColor: Colors.orange,
        primarySwatch: Colors.lime,
        primaryColorDark: Colors.lime,
        appBarTheme:  const AppBarTheme(color: Colors.lime),
        fontFamily: 'Poppins',
        textTheme:  const TextTheme(
          bodySmall: TextStyle(fontSize: 12),
          bodyMedium: TextStyle(fontSize: 22),
          bodyLarge: TextStyle(fontSize: 32),
        ),
        iconTheme: const IconThemeData(
          size: 53,
          color: Colors.black,
        )
    ),

    ThemeData(
        primaryColor: Colors.blue,
        // primarySwatch: Colors.orange,
        appBarTheme:  const AppBarTheme(color: Colors.blueAccent),
        fontFamily: 'Poppins',
        textTheme:  const TextTheme(
          bodySmall: TextStyle(fontSize: 12),
          bodyMedium: TextStyle(fontSize: 22),
          bodyLarge: TextStyle(fontSize: 32),
        ),
        iconTheme:  const IconThemeData(
          size: 53,
          color: Colors.cyan,
        )
    ),



  ];
}