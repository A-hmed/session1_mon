import 'package:flutter/material.dart';
import 'package:session1_mon/page_box.dart';
import 'package:session1_mon/page_image.dart';
import 'package:session1_mon/screens/calculator_screen.dart';
import 'package:session1_mon/screens/game_board.dart';
import 'package:session1_mon/screens/home_screen.dart';
import 'package:session1_mon/screens/intro_screen.dart';
import 'package:session1_mon/screens/login_screen.dart';
import 'package:session1_mon/screens/register_screen.dart';

// List<String> titles = ['car', 'sports'];
// List<String> imagesUrl = ["assets/car.jpg", "assets/sports.jpg"];


void main() {
   
  runApp(
    MaterialApp(
      routes: {
        HomeScreen.routeName: (_)=>HomeScreen(),
        LoginScreen.routeName: (_)=> LoginScreen(),
        RegisterScreen.routeName: (_)=> RegisterScreen(),
        CaluclatorScreen.routeName: (_) => CaluclatorScreen(),
        GameBoardScreen.routeName: (_) => GameBoardScreen(),
        IntroScreen.routeName: (_) => IntroScreen()
      },
      initialRoute: IntroScreen.routeName,
    ),
  );
}

class PageImageData {
  String imagePath;
  String title;

  PageImageData({required this.imagePath, required this.title});
}
