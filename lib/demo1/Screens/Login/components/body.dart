import 'package:flutter/material.dart';
import 'package:flutter_demo/contants.dart';
import 'package:flutter_demo/demo1/Screens/Login/components/background.dart';
import 'package:flutter_demo/demo1/Screens/SignUp/signup_screen.dart';
import 'package:flutter_demo/demo1/components/login_signin_link.dart';
import 'package:flutter_demo/demo1/components/rounded_button.dart';
import 'package:flutter_demo/demo1/components/rounded_input_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/demo1/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInputField(
            icon: Icons.person,
            hit: "Email",
            onChanged: (value) {},
          ),
          RoundedInputField(
            hit: "Password",
            icon: Icons.lock,
            password: true,
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
            color: themeColorMap["demo1"].primaryColor,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          LoginOrSignInLink(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            },
          )
        ],
      ),
    ));
  }
}
