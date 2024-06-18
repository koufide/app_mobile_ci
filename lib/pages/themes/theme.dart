import 'package:flutter/material.dart';

class MyAppTheme {
  static  List<ThemeData> themes = [
    ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.orange,
        primaryColorDark: Colors.black,
        appBarTheme:  const AppBarTheme(color: Colors.lime),
        fontFamily: 'Poppins',
        textTheme:  const TextTheme(
          bodySmall: TextStyle(fontSize: 22),
          bodyMedium: TextStyle(fontSize: 22),
          bodyLarge: TextStyle(fontSize: 32),
        ),
        iconTheme: const IconThemeData(
          size: 53,
          color: Colors.black,
        )
    ),

    ThemeData(
        primaryColor: Colors.orange,
        // primarySwatch: Colors.black,
        // primarySwatch: Colors.black,
        appBarTheme:  const AppBarTheme(color: Colors.blueAccent),
        fontFamily: 'Poppins',
        textTheme:  const TextTheme(
          bodySmall: TextStyle(fontSize: 22),
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