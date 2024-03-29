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
  int selectedIndex = -1;

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
                            element: opponentChoice == ''
                                ? null
                                : userChoice == 'scissors'
                                    ? opponentChoice
                                    : null,
                            onPressed: opponentChoice == '' ? null : () {},
                            isSelected: userChoice == 'scissors'
                                ? true
                                : false,
                          ),
                          const SizedBox(width: 15),
                          ButtonElement(
                            element: opponentChoice == ''
                                ? null
                                : userChoice == 'rock'
                                    ? opponentChoice
                                    : null,
                            onPressed: opponentChoice == '' ? null : () {},
                            isSelected: userChoice == 'rock'
                                ? true
                                : false,
                          ),
                          const SizedBox(width: 15),
                          ButtonElement(
                            element: opponentChoice == ''
                                ? null
                                : userChoice == 'paper'
                                    ? opponentChoice
                                    : null,
                            onPressed: opponentChoice == '' ? null : () {},
                            isSelected: userChoice == 'paper'
                                ? true
                                : false,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: MyStyledButton.image(
                              opponentChoice == 'rock'
                                  ? 'rock_scissors'
                                  : opponentChoice == 'paper'
                                      ? 'paper_rock'
                                      : opponentChoice == 'scissors'
                                          ? 'scissors_paper'
                                          : null,
                              300,
                              300),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonElement(
                            element: 'rock',
                            onPressed: () {
                              updateOpponentCard('rock', 0);
                            },
                            isSelected: selectedIndex == 0,
                          ),
                          const SizedBox(width: 15),
                          ButtonElement(
                            element: 'paper',
                            onPressed: () {
                              updateOpponentCard('paper', 1);
                            },
                            isSelected: selectedIndex == 1,
                          ),
                          const SizedBox(width: 15),
                          ButtonElement(
                            element: 'scissors',
                            onPressed: () {
                              updateOpponentCard('scissors', 2);
                            },
                            isSelected: selectedIndex == 2,
                          ),
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

  void updateOpponentCard(String userChoice, int buttonIndex) {
    setState(() {
      this.userChoice = userChoice;
      selectedIndex = buttonIndex; 

      if (userChoice == 'rock') {
        opponentChoice = 'paper';
      } else if (userChoice == 'paper') {
        opponentChoice = 'scissors';
      } else if (userChoice == 'scissors') {
        opponentChoice = 'rock';
      }
    });
  }
}
