import 'package:flutter/material.dart';

import '../../contants.dart';

class LoginOrSignInLink extends StatelessWidget {
  final Function press;
  final bool login;
  const LoginOrSignInLink({
    Key key,
    @required this.press,
    this.login = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
  Color primaryColor = themeColorMap["demo1"].primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ? ",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Login In",
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
