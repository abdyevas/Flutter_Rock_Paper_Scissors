import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/styling/styled_text.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.background),
          ),
          Column(
            children: [
              const SizedBox(height: 100),
              const StyledText(text: 'Rock - Paper - Scissors'),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonElement(element: null),
                        SizedBox(width: 15),
                        ButtonElement(element: null),
                        SizedBox(width: 15),
                        ButtonElement(element: null),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Image.asset(
                        'assets/images/scissors_paper.png',
                        width: 350,
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonElement(element: 'rock'),
                        SizedBox(width: 15),
                        ButtonElement(element: 'paper'),
                        SizedBox(width: 15),
                        ButtonElement(element: 'scissors'),
                      ],
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
