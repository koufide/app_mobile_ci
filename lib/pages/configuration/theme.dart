import 'package:app_mobile_ci/pages/configuration/colors.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  //couleurs
  static Color noirebbgci =  const Color(0xFF000000);
  static Color orangebbgci = const Color(0xFFFF3C00);
  static Color blancbbgci = const Color(0xFFFFFFFF);

  static const Color primary = const Color(0xFF000000);
  static const Color secondary = const Color(0xFFFF3C00);
  static const Color thirdly = const Color(0xFFFFFFFF);

  //--------------
  static  Color appBarTitleColor = blancbbgci;

  //Conversation colors
  // static const Color connectedUserColor = Color(0xFF00F86B);
  // static const Color unConnectedUserColor = Color(0xFFD5D4D4);
  // static const Color conversationDateColor = Color(0xFF9F9F9F);
  // static const Color conversationUnReadCountTextColor = Colors.white;
  // static const Color conversationUnReadCountColor = Colors.black;

  // Styles de texte
  static final TextStyle heading1 =
      TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: noirebbgci);

  static final TextStyle bodyText = TextStyle(
    fontSize: 16.0,
    color: noirebbgci,
  );

  static List<ThemeData> themes = [
    ThemeData(
      useMaterial3: true,
      // Color(0xFFFF3C00),
      primaryColor: noirebbgci,
      highlightColor: orangebbgci,
      scaffoldBackgroundColor: blancbbgci,
      // accentColor: orangebbgci,
      //primarySwatch: Colors.black,
      primaryColorDark: noirebbgci,
      secondaryHeaderColor: blancbbgci,
      textTheme: const TextTheme(
          // bodySmall: TextStyle(fontSize: 12),
          // bodyMedium: TextStyle(fontSize: 22),
          // bodyLarge: TextStyle(fontSize: 32),
          ),
      appBarTheme: AppBarTheme(
        color: noirebbgci,
        // titleTextStyle:
      ),
      fontFamily: 'Poppins',
      iconTheme:  IconThemeData(
        size: 53,
        color:  noirebbgci,
      ),
      inputDecorationTheme:  const InputDecorationTheme(
        border:  OutlineInputBorder(
          borderRadius:  BorderRadius.all(Radius.circular(20.0),)
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(30.0),),
        //   borderSide: BorderSide(color: noirebbgci),
        // ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(30.0),),
        //   borderSide: BorderSide(color: orangebbgci),
        // ),
      ),

      // bouton radio
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return noirebbgci;
          }
          return orangebbgci;
        }),

        overlayColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) {
            return orangebbgci.withOpacity(0.04);
          }
          if (states.contains(MaterialState.focused) || states.contains(MaterialState.pressed)) {
            return orangebbgci.withOpacity(0.12);
          }
          return null;
        }),
        splashRadius: 20.0,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

      ),

      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return noirebbgci;
          }
          return orangebbgci;
        }),
        checkColor: MaterialStateProperty.all(blancbbgci),
      ),




    ),


    ThemeData(
      useMaterial3: true,
      // Color(0xFFFF3C00),
      primaryColor: orangebbgci,
      highlightColor: noirebbgci,
      scaffoldBackgroundColor: blancbbgci,
      // accentColor: orangebbgci,
      //primarySwatch: Colors.black,
      primaryColorDark: orangebbgci,
      secondaryHeaderColor: blancbbgci,
      textTheme: const TextTheme(
        // bodySmall: TextStyle(fontSize: 12),
        // bodyMedium: TextStyle(fontSize: 22),
        // bodyLarge: TextStyle(fontSize: 32),
      ),
      appBarTheme: AppBarTheme(
        color: orangebbgci,
        // titleTextStyle:
      ),
      fontFamily: 'Poppins',
      iconTheme: const IconThemeData(
        size: 53,
        color: Color(0xffff3c00),
      ),
      // inputDecorationTheme: InputDecorationTheme(
      //   border: OutlineInputBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(30.0),)
      //   ),
      //   focusedBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(30.0),),
      //     borderSide: BorderSide(color: orangebbgci),
      //   ),
      //   enabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(30.0),),
      //     borderSide: BorderSide(color: noirebbgci),
      //   ),
      // ),

        // bouton radio
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return noirebbgci;
            }
            return orangebbgci;
          }),

          overlayColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered)) {
              return noirebbgci.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) || states.contains(MaterialState.pressed)) {
              return noirebbgci.withOpacity(0.12);
            }
            return null;
          }),
          splashRadius: 20.0,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

        ),

      // CHECKBOX
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return noirebbgci;
          }
          return orangebbgci;
        }),
        checkColor: MaterialStateProperty.all(orangebbgci),
      ),



    ),


  ];
}
