import 'package:flutter/material.dart';

import '../contants.dart';

class TextDriver extends StatelessWidget {
  final Color textColor;
  final String text;
  const TextDriver({
    Key key,
    this.textColor,
    @required this.text,
  }) : super(key: key);

  Expanded buildDriver() {
    return Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDriver(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text,
              style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
            ),
          ),
          buildDriver()
        ],
      ),
    );
  }
}
