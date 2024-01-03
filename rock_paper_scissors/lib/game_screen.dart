import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/widgets/button_element.dart';

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
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonElement(element: 'Rock'),
              SizedBox(width: 10),
              ButtonElement(element: 'Paper'),
              SizedBox(width: 10),
              ButtonElement(element: 'Scissors'),
            ],
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
