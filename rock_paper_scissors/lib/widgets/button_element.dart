import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/styling/styled_button.dart';

class ButtonElement extends StatefulWidget {
  const ButtonElement(
      {super.key, required this.element, required this.onPressed, required this.isSelected,});

  final String? element;
  final VoidCallback? onPressed;
  final bool isSelected;

  @override
  State<StatefulWidget> createState() {
    return _ButtonElementState();
  }
}

class _ButtonElementState extends State<ButtonElement> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: widget.isSelected ? MyStyledButton.selected() : MyStyledButton.normal(),
      onPressed: () {
        if (widget.onPressed != null) {
          widget.onPressed!();
        }
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
