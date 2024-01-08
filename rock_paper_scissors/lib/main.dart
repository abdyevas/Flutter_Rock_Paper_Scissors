import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/game_screen.dart';
import 'package:rock_paper_scissors/theme.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
      ),
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
      ),
      home: const GameScreen(), 
    ),
  );
}