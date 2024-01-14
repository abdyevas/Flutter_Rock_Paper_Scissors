import 'package:flutter/material.dart';

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
    return FilledButton.tonal(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(width: 3.0),
        ),
      ),
      onPressed: widget.element != null ? () {} : () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: widget.element != null
                ? Image.asset(
                    'assets/images/${widget.element}.png',
                    width: 50,
                    height: 80,
                    fit: BoxFit.cover,
                  )
                : const SizedBox(
                    width: 50,
                    height: 80,
                  ),
          ),
        ],
      ),
    );
  }
}
