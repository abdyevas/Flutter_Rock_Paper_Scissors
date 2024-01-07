import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              foreground: (Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 5.0),
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          text,
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
