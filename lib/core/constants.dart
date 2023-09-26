// Light Theme
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  primaryColor:  Colors.white,
  cardTheme: CardTheme(
    color: Colors.white.withOpacity(0.5),
  ),
  appBarTheme: AppBarTheme(
    // titleTextStyle: GoogleFonts.arefRuqaa(fontSize: 22,color: const Color(0xFF071952)),
    backgroundColor: Colors.white.withOpacity(0.5),
  ),


);

// Dark Theme
final darkTheme = ThemeData(

  iconTheme: const IconThemeData(
      color:Color(0xFF071952)
  ),



  cardTheme: CardTheme(
    color: const Color(0xFF071952).withOpacity(0.5),
  ),

  appBarTheme: AppBarTheme(



    backgroundColor: const Color(0xFF071952).withOpacity(0.3),
  ),
);