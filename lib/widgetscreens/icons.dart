import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subsafood/widgetscreens/colors.dart';

Widget title(String title, double s) {
  return Text(
    title,
    style: GoogleFonts.bebasNeue(fontSize: s),
  );
}

Widget icon(IconData icon, double size) {
  return Container(
    padding: EdgeInsets.all(3),
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(7.0), color: white),
    child: Icon(
      icon,
      size: size,
    ),
  );
}

Widget iconValidation(IconData icon, double size, Color col) {
  return Container(
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0), color: backgroundColor),
    child: Icon(
      icon,
      size: size,
      color: col,
    ),
  );
}
