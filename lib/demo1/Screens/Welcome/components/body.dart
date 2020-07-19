import 'package:flutter/material.dart';
import 'package:flutter_demo/demo1/Screens/Login/login_screen.dart';
import 'package:flutter_demo/demo1/Screens/SignUp/signup_screen.dart';
import 'package:flutter_demo/demo1/Screens/Welcome/components/background.dart';
import 'package:flutter_demo/demo1/components/rounded_button.dart';
import 'package:flutter_demo/demo1/contants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ALFRED FLUTTER",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset("assets/icons/chat.svg",
                height: size.height * 0.45),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              color: PrimaryLightColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
