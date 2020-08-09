import 'package:flutter/material.dart';
import 'package:flutter_demo/demo5/components/rounded.button.dart';
import 'package:flutter_demo/demo5/screens/home/index.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/demo5/images/Bitmap.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headline2.copyWith(
                    color: DefaultBlackColor,
                  ),
              children: [
                TextSpan(
                  text: "flamin",
                ),
                TextSpan(
                    text: "go.", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(
            width: size.width * .6,
            child: RoundedButton(
              text: "start reading",
              fontSize: 20,
              tap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Home(),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
