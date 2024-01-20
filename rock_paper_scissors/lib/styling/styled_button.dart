import 'package:flutter/material.dart';

class MyStyledButton {
  static ButtonStyle normal() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      side: const BorderSide(width: 3.0),
    );
  }

  static ButtonStyle selected() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      side: const BorderSide(
        color: Colors.green,
        width: 5.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 28,
        vertical: 4,
      ),
    );
  }

  static Widget image(String? element, double height, double width) {
    return element != null
        ? Image.asset(
            'assets/images/$element.png',
            width: width,
            height: height,
            fit: BoxFit.cover,
          )
        : SizedBox(
            width: width,
            height: height,
          );
  }
}
