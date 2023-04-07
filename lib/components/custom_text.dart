import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//This class used to custom text
class CustomText extends StatelessWidget {

   String text;
   Color color;
   double fontSize;


   CustomText({
     required this.text,
     required this.color,
     required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  GoogleFonts.poppins(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w400,
          ),
    );
  }
}
