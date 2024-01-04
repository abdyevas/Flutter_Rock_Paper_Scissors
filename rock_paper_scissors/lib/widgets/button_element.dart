import 'package:flutter/material.dart';

class ButtonElement extends StatelessWidget {
  const ButtonElement({super.key, required this.element});

  final String element;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              'assets/images/$element.png',
              width: 50,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
