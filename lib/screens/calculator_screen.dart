import 'package:flutter/material.dart';
import 'package:session1_mon/components/calculator_button.dart';

class CaluclatorScreen extends StatefulWidget {
  static String routeName = "calculator";

  @override
  State<StatefulWidget> createState() {
    return CaluclatorScreenState();
  }
}

class CaluclatorScreenState extends State<CaluclatorScreen> {
  int counter = 0;
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Center(
                  child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                   Text(result
                    ,
                    style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ],
              ))),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "7",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "8",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "9",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "/",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "4",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "5",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "6",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "*",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "1",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "2",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "3",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "-",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: ".",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "0",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "=",
                  onClick: onEqualClick,
                ),
                CalculatorButton(
                  digit: "+",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onDigitClick(String digit) {
      if(digit == "." && result.contains(".")) return ;
     setState(() {  result += digit;});
  }
  String lhs = "";
  String operator  = "";
  onOperatorClick(String clickedOperator) {
    if(operator.isEmpty){
      lhs = result;
      operator = clickedOperator;
      setState(() {
        result ="";
      });
    }else {
      lhs = calculate(double.parse(lhs), operator, double.parse(result));
      operator = clickedOperator;
      setState(() {
        result ="";
      });
    }
  }

  onEqualClick(){
    setState(() {
      result = calculate(double.parse(lhs), operator, double.parse(result));
       lhs = "";
       operator = "";
    });
  }
  String calculate(double lhs, String operator, double rhs){
    if(operator == "+"){
       return (lhs + rhs).toString();
    } else if(operator == "-"){
      return (lhs - rhs).toString();
    } else if(operator == "*"){
      return (lhs * rhs).toString();
    }else {
      return (lhs / rhs).toString();
    }
  }
}
