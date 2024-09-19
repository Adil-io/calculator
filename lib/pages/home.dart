import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';  // Import for expression parsing and calculation


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String operand = '';
  TextEditingController _controller = TextEditingController();

  void _onButtonPresses(String value) {
    setState(() {
      if (value == 'AC') {
        operand = '';
        _controller.clear();
      } else if (value == '=') {
        _calculate();
      } else {
        operand += value;
        _controller.text = operand;
      }
    });
  }

  void _calculate() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(operand.replaceAll('x', '*'));
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      setState(() {
        operand = eval.toString();
        _controller.text = operand;
      });
    } catch(e) {
      setState(() {
        operand = 'Error';
        _controller.text = operand;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.black,
              alignment: Alignment.bottomRight,
              child: TextField(
                controller: _controller,
                readOnly: true,
                decoration: null,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48
                ),
                textAlign: TextAlign.right,
              ),
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButtonRow(['AC', '+/-', '%', '/']),
                  buildButtonRow(['7', '8', '9', 'x']),
                  buildButtonRow(['4', '5', '6', '-']),
                  buildButtonRow(['1', '2', '3', '+']),
                  buildButtonRow(['fn', '0', '.', '=']),
                ],
              ),
            )
          )
        ],
      )
    );
  }

  Widget buildButtonRow(List<String> labels) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: labels.map((label) {
        return CalculatorButton(
          onPressed: () => _onButtonPresses(label),
          content: label,
          color: _getButtonColor(label),
        );
      }).toList()
    );
  } 

  Color _getButtonColor(String label) {
    if (label == '/' || label == 'x' || label == '-' || label == '+' || label == '=') {
      return const Color(0xffFF9500);
    } else if (label == 'AC' || label == '+/-' || label == '%') {
      return Colors.grey;
    } else {
      return const Color(0xff1C1C1C);
    }
  } 

}