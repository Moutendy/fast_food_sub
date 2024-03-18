 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget title(String title, double s) {
    return Text(
      title,
      style: GoogleFonts.bebasNeue(fontSize: s),
    );
  }

  Widget icon(IconData icon, double size) {
    return Icon(
      icon,
      size: size,
    );
  }