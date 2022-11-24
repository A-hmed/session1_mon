import 'package:flutter/material.dart';
import 'package:session1_mon/screens/home_screen.dart';
import 'package:session1_mon/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  static String routeName ="Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            }, child: Text("Login")),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
            }, child: Text("Sign up"))
          ],
        ),
      ),
    );
  }
}
