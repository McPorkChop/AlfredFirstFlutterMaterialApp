import 'package:flutter/material.dart';
import 'package:flutter_demo/contants.dart';
import 'package:flutter_demo/demo1/Screens/Login/login_screen.dart';
import 'package:flutter_demo/demo1/Screens/SignUp/components/background.dart';
import 'package:flutter_demo/demo1/components/login_signin_link.dart';
import 'package:flutter_demo/demo1/components/rounded_button.dart';
import 'package:flutter_demo/demo1/components/rounded_input_field.dart';
import 'package:flutter_demo/demo1/components/text_driver.dart';
import 'package:flutter_svg/svg.dart';

import 'social_icon.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primary=themeColorMap["demo1"].primaryColor;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("SIGNUP", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/demo1/icons/signup.svg",
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
              text: "SIGN UP",
              press: () {},
              color: primary,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            LoginOrSignInLink(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            TextDriver(text: "OR", textColor: primary),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(svg: "assets/demo1/icons/facebook.svg", press: () {}),
                SocialIcon(svg: "assets/demo1/icons/twitter.svg", press: () {}),
                SocialIcon(svg: "assets/demo1/icons/google-plus.svg", press: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
