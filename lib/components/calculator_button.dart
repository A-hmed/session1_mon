import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String digit;
  Function onClick;
  CalculatorButton({required this.digit, required this.onClick});

  @override
  Widget build(BuildContext context) {
    
    return Expanded(child: Container(
      margin: EdgeInsets.all(2),
      child: ElevatedButton(onPressed: () {
        if(digit == "="){
          onClick();
        }else
        onClick(digit);
      }, child: Text("$digit",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
    ));
  }
}
