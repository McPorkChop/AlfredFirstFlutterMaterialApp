import 'package:flutter/material.dart';
import 'package:flutter_demo/demo1/Screens/Welcome/welcome_screen.dart';

class DemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        padding: EdgeInsets.symmetric(vertical:20),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Login/SignUp"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("DEMO2"),
              onPressed:(){},
            )
          ],
        ),
      ),
    );
  }
}
