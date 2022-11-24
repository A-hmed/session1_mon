import 'package:flutter/material.dart';

class XoButton extends StatelessWidget {
  String symbol;
  Function onClick;
  int index;
  XoButton({required this.symbol, required this.onClick,required this.index});

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(2),
      child: ElevatedButton(onPressed: () {
        onClick(index);
      }, child: Text("$symbol",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
    ));
  }
}
