import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: CalculatorButton(onPressed: (){}, content: 'AC', color: Colors.grey)),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '+/-', color: Colors.grey)),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '%', color: Colors.grey)),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '/', color: Color(0xffFF9500))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '7', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '8', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '9', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '*', color: Color(0xffFF9500))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '4', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '5', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '6', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '-', color: Color(0xffFF9500))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '1', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '2', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '3', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '+', color: Color(0xffFF9500))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: CalculatorButton(onPressed: (){}, content: 'fn', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '0', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '.', color: Color(0xff1C1C1C))),
                      Expanded(child: CalculatorButton(onPressed: (){}, content: '=', color: Color(0xffFF9500))),
                    ],
                  ),
                ],
              ),
            )
          )
        ],
        
      )
    );
  }
}