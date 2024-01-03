import 'package:flutter/material.dart';

class ButtonElement extends StatelessWidget {
  const ButtonElement({super.key, required this.element});

  final String element;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(element),
    );
  }
}
