import 'package:flutter/material.dart';

class PageBox extends StatelessWidget {
  String title;
  PageBox({required this.title});

  @override
  Widget build(BuildContext context) {
     return Expanded(
       child: Container(
           margin: EdgeInsets.only(right: 2),
           padding: EdgeInsets.symmetric(vertical:12 ),
           color:  Color.fromRGBO(136, 43, 189, 1),
           child: Text(title,textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white))),
     );
  }

}