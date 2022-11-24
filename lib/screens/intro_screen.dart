import 'package:flutter/material.dart';
import 'package:session1_mon/screens/game_board.dart';

class IntroScreen extends StatelessWidget {
  static String routeName = "intro";
  String player1 = "";
  String player2 = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Intro"),),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            child: TextField(
              onChanged: (text){
                player1 = text;
              },
              decoration: InputDecoration(hintText: "player1 name"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: TextField(
              onChanged: (text){
                player2 = text;
              },
              decoration: InputDecoration(label: Text("player2")),
            ),
          ),
          Spacer(),
          ElevatedButton(onPressed: (){
            showMyDialog(context);
            ;
          }, child: Text("start"))
        ],
      ),
    );

  }
  void showMyDialog(BuildContext context) {
    showDialog(context: context, builder: (_){
      return AlertDialog(
        title: Text("Alert for player1"),
        content: Text("Choose your symbol"),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, GameBoardScreen.routeName,
                arguments: GameBoardArguments(p1:player1,p2: player2, shouldXStart: true));
          }, child: Text("X")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, GameBoardScreen.routeName,
                arguments: GameBoardArguments(p1:player1,p2: player2, shouldXStart: false));
          }, child: Text("O"))
        ],
      );
    });
  }
}
class GameBoardArguments {
  String p1;
  String p2;
  bool shouldXStart;
  GameBoardArguments({required this.p1,required this.p2,required this.shouldXStart});
}