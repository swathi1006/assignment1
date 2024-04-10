import 'package:flutter/material.dart';
import 'package:assignment1/utils/mycolors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextThemes {
  static TextStyle textHeading = GoogleFonts.cabin(
    fontSize: 40,
    color: MyColors.basicColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle tHeading = GoogleFonts.cabin(
    fontSize: 60,
    color: MyColors.whiteColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyTextStyle1 = const TextStyle(
      fontSize: 20,
      color: Colors.white,
      );

  static TextStyle bodyTextStyle2 = const TextStyle(
      fontSize: 20,
      color: Colors.green,
      );

  static TextStyle bodyTextStyle3 = const TextStyle(
      fontSize: 20,
      color: Colors.grey,
      );
}