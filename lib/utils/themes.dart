import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.teal,
      fontFamily: GoogleFonts.lato().fontFamily,
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(brightness: Brightness.dark);
  }

  static Color rosePink = Color.fromARGB(255, 249, 186, 181);
  static Color pastelGreen = Color.fromARGB(255, 162, 192, 148);
}
