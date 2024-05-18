import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:youngdev_interne_calculator_task/App_colors.dart';

import 'custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var result = '0';

  void equalPressed() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(title: const Text("Calculator Screen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
      centerTitle: true,
      backgroundColor: Appcolors.pinkColor,),
        body: Column(
          
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 25, left: 10),
              child: Text(
                userInput == '' ? '0' : userInput.toString(),
                textAlign: TextAlign.right,
                style:const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
       const   Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.red,
            
              
            ),
          ),
          const Gap(20),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 10),
              child: Text(
                result.toString(),
                textAlign: TextAlign.right,
                maxLines: 1,
                style:const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
                    const Gap(20),

         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                  buttonTitle: 'AC',
                  buttonOnPress: () {
                    userInput = '';
                    result = '0';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '%',
                  buttonOnPress: () {
                    userInput += '%';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: 'DEL',
                  buttonOnPress: () {
                    userInput = userInput.substring(0, userInput.length - 1);

                    setState(() {});
                  }),
              CalculatorButton(
                
                  buttonTitle: '/',
                  buttonColor: Color.fromARGB(255, 179, 64, 64),
                  buttonOnPress: () {
                    userInput += '/';
                    setState(() {});
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                  buttonTitle: '7',
                  buttonOnPress: () {
                    userInput += '7';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '8',
                  buttonOnPress: () {
                    userInput += '8';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '9',
                  buttonOnPress: () {
                    userInput += '9';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: 'x',
                                    buttonColor: Color.fromARGB(255, 179, 64, 64),

                  buttonOnPress: () {
                    userInput += '*';
                    setState(() {});
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                  buttonTitle: '4',
                  buttonOnPress: () {
                    userInput += '4';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '5',
                  buttonOnPress: () {
                    userInput += '5';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '6',
                  buttonOnPress: () {
                    userInput += '6';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '-',
                                    buttonColor: Color.fromARGB(255, 179, 64, 64),

                  buttonOnPress: () {
                    userInput += '-';
                    setState(() {});
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                  buttonTitle: '1',
                  buttonOnPress: () {
                    userInput += '1';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '2',
                  buttonOnPress: () {
                    userInput += '2';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '3',
                  buttonOnPress: () {
                    userInput += '3';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '+',
                                    buttonColor: Color.fromARGB(255, 179, 64, 64),

                  buttonOnPress: () {
                    userInput += '+';
                    setState(() {});
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                  buttonTitle: '.',
                  buttonOnPress: () {
                    userInput += '.';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '0',
                  buttonOnPress: () {
                    userInput += '0';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '00',
                  buttonOnPress: () {
                    userInput += '00';
                    setState(() {});
                  }),
              CalculatorButton(
                  buttonTitle: '=',
                                    buttonColor: Color.fromARGB(255, 179, 64, 64),

                  buttonOnPress: () {
                    equalPressed();
                    setState(() {});
                  }),
            ],
          ),
          const Gap(20),
        ],
      ),
    );
  }
}