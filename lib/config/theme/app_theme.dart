

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  ThemeData geTheme() => ThemeData(
    colorSchemeSeed: Colors.blue,

    //Text Theme
    textTheme: TextTheme(
      titleLarge: GoogleFonts.montserratAlternates(),
      bodyLarge: GoogleFonts.montserratAlternates( fontSize: 25)
    )
  );

}