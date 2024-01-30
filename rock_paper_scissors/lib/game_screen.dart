import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/styling/styled_button.dart';
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
  String opponentChoice = '';
  String userChoice = '';

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
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonElement(
                            element: null,
                            onPressed: () => updateOpponentCard('rock'),
                          ),
                          const SizedBox(width: 15),
                          ButtonElement(
                            element: null,
                            onPressed: () => updateOpponentCard('paper'),
                          ),
                          const SizedBox(width: 15),
                          ButtonElement(
                            element: null,
                            onPressed: () => updateOpponentCard('scissors'),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: MyStyledButton.image(
                              opponentChoice == 'rock'
                                  ? 'assets/images/rock_scissors.png'
                                  : opponentChoice == 'paper'
                                      ? 'assets/images/paper_rock.png'
                                      : opponentChoice == 'scissors'
                                          ? 'assets/images/scissors_paper.png'
                                          : null,
                              300,
                              300),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonElement(element: 'rock', onPressed: null),
                          SizedBox(width: 15),
                          ButtonElement(element: 'paper', onPressed: null),
                          SizedBox(width: 15),
                          ButtonElement(element: 'scissors', onPressed: null),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void updateOpponentCard(String userChoice) {
    setState(() {
      this.userChoice = userChoice;

      if (userChoice == 'rock') {
        opponentChoice = 'paper';
        ButtonElement(element: 'paper', onPressed: null);
      } else if (userChoice == 'paper') {
        opponentChoice = 'scissors';
      } else if (userChoice == 'scissors') {
        opponentChoice = 'rock';
      }
    });
  }
}
