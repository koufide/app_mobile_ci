import 'package:flutter/material.dart';

class MyAppTheme {
  static  List<ThemeData> themes = [
    ThemeData(
      useMaterial3: true,
        // Color(0xFFFF3C00),
        primaryColor: Colors.black,
        //primarySwatch: Colors.black,
        primaryColorDark: Color(0xFFFF3C00),

        appBarTheme:  const AppBarTheme(color:  Colors.black),

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
        primaryColor: Color(0xFFFF3C00),
        //primarySwatch: Color(0xFFFF3C00),
        // primarySwatch: Colors.black,
        primaryColorDark: Colors.black,

        appBarTheme:  const AppBarTheme(color:  Color(0xFFFF3C00)),
        fontFamily: 'Poppins',
        textTheme:  const TextTheme(
          bodySmall: TextStyle(fontSize: 12),
          bodyMedium: TextStyle(fontSize: 22),
          bodyLarge: TextStyle(fontSize: 32),
        ),
        iconTheme:  const IconThemeData(
          size: 53,
          color: Color(0xFFFF3C00),
        )
    ),



  ];
}