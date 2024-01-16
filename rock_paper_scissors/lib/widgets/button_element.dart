import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: MyStyledButton.filledTonal(),
      onPressed: widget.element != null ? () {} : () {},
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
