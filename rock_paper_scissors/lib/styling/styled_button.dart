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
      side: const BorderSide(width: 3.0),
      padding: EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: Colors.lightBlueAccent,
    );
  }

  static Widget image(String? element) {
    return element != null
        ? Image.asset(
            'assets/images/$element.png',
            width: 50,
            height: 80,
            fit: BoxFit.cover,
          )
        : const SizedBox(
            width: 50,
            height: 80,
          );
  }
}
