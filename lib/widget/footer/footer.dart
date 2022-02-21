import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget footer() {
  return Column(
    children: [
      Divider(),
      SizedBox(
        height: 80,
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'All Rights Reserved By ',
                style: GoogleFonts.ubuntu(color: Colors.grey),
                children: [
                  TextSpan(
                      text: 'officaialrifat82@gmail.com',
                      style: GoogleFonts.ubuntu(
                          color: Colors.red, fontStyle: FontStyle.italic)
                  ),
                ]
            ),
          ),
        ),
      )
    ],
  );
}