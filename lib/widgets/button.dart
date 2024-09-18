import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.onPressed,
    required this.content,
    required this.color
  });

  final void Function() onPressed;
  final String content;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        backgroundColor: color,
        iconColor: Colors.white
      ),
      child: Text(content,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white
        ),
      ),
    );
  }
}