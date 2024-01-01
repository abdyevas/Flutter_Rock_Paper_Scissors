import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/game_screen.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 67, 90, 13),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 12, 129, 202),
);

void main() {
  runApp(
    const MaterialApp(
      home: GameScreen(), 
    ),
  );
}