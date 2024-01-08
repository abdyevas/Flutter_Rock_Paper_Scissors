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
          style: GoogleFonts.novaSquare(
            textStyle: TextStyle(
              foreground: (Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 12.0)
                ..color = const Color.fromARGB(255, 151, 189, 68),
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          text,
          style: GoogleFonts.novaSquare(
            textStyle: const TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
