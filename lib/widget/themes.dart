import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonTheme: ButtonThemeData(buttonColor: darkBluishColor),

      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(color: Colors.black),
      )
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
       primarySwatch: Colors.deepPurple,
       brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      
      buttonTheme: ButtonThemeData(buttonColor: darkBluishColor),
      
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        // toolbarTextStyle: Theme.of(context).textTheme.copyWith(
        //   headline6: context.textTheme.headline6?.copyWith(color: Colors.white)
        // ),
        titleTextStyle: TextStyle(color: Colors.black),
      )
      );
      

  //Colors
  static Color creamColor = const Color(0xfff5f5f5);  
  static Color darkcreamColor = const Color.fromARGB(154, 9, 42, 65);  
  static Color darkBluishColor = const Color(0xff403b58);  
  static Color lightBluishColor = Vx.indigo400;  
}
