import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/widgets/button_style.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GameScreen();
  }
}

class _GameScreen extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Rock'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Paper'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Scissors'),
            ),
          ],
        ),
      ),
    );
  }
}
