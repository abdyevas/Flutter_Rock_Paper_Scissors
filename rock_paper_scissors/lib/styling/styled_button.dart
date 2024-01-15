import 'package:flutter/material.dart';

class MyStyledButton {
  static final ButtonStyle filledTonal = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    side: const BorderSide(width: 3.0),
  );
}
