import 'package:flutter/material.dart';
import 'package:session1_mon/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName ="Register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Go back to login"))
          ],
        ),
      ),
    );
  }
}
