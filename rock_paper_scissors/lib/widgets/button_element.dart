import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/styling/styled_button.dart';

class ButtonElement extends StatefulWidget {
  const ButtonElement(
      {super.key, required this.element, required this.onPressed});

  final String? element;
  final VoidCallback? onPressed;

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
      onPressed: () {
        if (widget.onPressed != null) {
          widget.onPressed!();
        }

        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: MyStyledButton.image(widget.element, 50, 80),
          ),
        ],
      ),
    );
  }
}
