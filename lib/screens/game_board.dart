import 'package:flutter/material.dart';
import 'package:session1_mon/components/xo_button.dart';
import 'package:session1_mon/screens/intro_screen.dart';

class GameBoardScreen extends StatefulWidget {
  static String routeName = "game board";

  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}

class _GameBoardScreenState extends State<GameBoardScreen> {
  List<String> board = [
    "","","",
    "","","",
    "","",""
  ];

  int player1Score = 0;
  int player2Score = 0;
  late bool shouldXStart;
  @override
  Widget build(BuildContext context) {
     GameBoardArguments args = ModalRoute.of(context)!.settings.arguments as GameBoardArguments;
    shouldXStart = args.shouldXStart;
    return Scaffold(
     appBar: AppBar(
       title: Text("Xo Game"),
     ),
     body: Column(
       children: [
         Expanded(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Text("${args.p1}: $player1Score", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
               Text("${args.p2}: $player2Score",  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold))
             ],
           ),
         ),
         Expanded(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               XoButton(symbol: board[0], onClick: onButtonClicked, index: 0,),
               XoButton(symbol: board[1], onClick: onButtonClicked, index: 1,),
               XoButton(symbol: board[2], onClick: onButtonClicked, index: 2)
             ],
           ),
         ),
         Expanded(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               XoButton(symbol: board[3], onClick: onButtonClicked, index: 3),
               XoButton(symbol: board[4], onClick: onButtonClicked, index: 4),
               XoButton(symbol: board[5], onClick: onButtonClicked, index: 5)
             ],
           ),
         ),
         Expanded(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               XoButton(symbol: board[6], onClick: onButtonClicked, index: 6),
               XoButton(symbol: board[7], onClick: onButtonClicked, index: 7),
               XoButton(symbol: board[8], onClick: onButtonClicked, index: 8)
             ],
           ),
         )
       ],
     ),
    );
  }

  int counter = 0;

  void onButtonClicked(int index) {
    if(board[index].isNotEmpty) return;

    if(counter % 2 == 0 ){
      board[index] = "o";
    }else{
      board[index] = "x";
    }
    /// Case Player1 or two wins
    if(checkWinner(counter % 2 == 0 ? "o" : "x")){
      board = [
        "","","",
        "","","",
        "","",""
      ];
      counter % 2 == 0 ? player1Score++ : player2Score++;
      counter = 0;
      setState(() {});
      return ;
    }
    counter++;
    /// case draw
    if(counter == 9){
      board = [
        "","","",
        "","","",
        "","",""
      ];
      counter = 0 ;
      setState(() {});
      return ;
    }


    setState(() {});
  }
  bool checkWinner(String symbol){
    if(board[0] == symbol && board[4] == symbol && board[8] == symbol){
      return true;
    }
    if(board[2] == symbol && board[4] == symbol && board[6] == symbol){
      return true;
    }
    for(int i = 0; i < 9 ; i += 3){
      if(board[i] == symbol && board[i+1] == symbol && board[i+2] == symbol){
        return true;
      }
    }
    for(int i  = 0; i<3 ; i++){
      if(board[i] == symbol && board[i+3] == symbol && board[i+6] == symbol){
        return true;
      }
    }
    return false;
  }
}

