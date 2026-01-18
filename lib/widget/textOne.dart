import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleMainText extends StatelessWidget {
  late String title;

  TitleMainText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        textStyle: Theme.of(context).textTheme.displayLarge,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontSize: 36,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
      ),
    );
    
  }
}
