import 'package:alp_animated_splashscreen/src/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildtext(
    {required String text,
    Color? fontcolor,
    double? fontsize,
    int maxlines = 10,
    FontWeight? fontweight,
    TextAlign textalign = TextAlign.center}) {
  return Text(
    text,
    maxLines: maxlines,
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.openSans(
        color: fontcolor ?? Colors.black,
        fontSize: fontsize ?? Di.fontSize15,
        fontWeight: fontweight),
  );
}
