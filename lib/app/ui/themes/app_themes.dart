import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static AppBarTheme get appBarTheme {
    return const AppBarTheme(
      color: Colors.white,
      elevation: 0.2,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    );
  }

  static TextStyle get textStyle {
    return GoogleFonts.montserrat(
      color: Colors.black,
      fontSize: 14,
    );
  }
}
