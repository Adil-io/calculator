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
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.symmetric(vertical: 25),
          backgroundColor: color,
        ),
        child: Text(content,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}