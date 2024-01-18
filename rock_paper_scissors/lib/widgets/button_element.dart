import 'package:flutter/material.dart';
import 'dart:math';
import 'package:rock_paper_scissors/styling/styled_button.dart';

class ButtonElement extends StatefulWidget {
  const ButtonElement({super.key, required this.element});

  final String? element;

  @override
  State<StatefulWidget> createState() {
    return _ButtonElementState();
  }
}

class _ButtonElementState extends State<ButtonElement> {
  
  bool isSelected = false;
          
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: isSelected ? MyStyledButton.selected() : MyStyledButton.normal(),
      onPressed: widget.element != null
          ? () {
              int randomChoice = Random().nextInt(3) + 1;
              int playerChoice = 0;
              if (widget.element == 'rock') {
                playerChoice = 1;
              } else if (widget.element == 'paper') {
                playerChoice = 2;
              } else if (widget.element == 'scissors') {
                playerChoice = 3;
              }

              setState(() {
                isSelected = true;
              });
            }
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: MyStyledButton.image(widget.element),
          ),
        ],
      ),
    );
  }
}
