import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/constants.dart';

class GenraButton extends StatelessWidget {
  final String name;
  const GenraButton({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: DefaultPadding),
      padding: EdgeInsets.symmetric(
          vertical: DefaultPadding / 4, horizontal: DefaultPadding),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        name,
        style: TextStyle(color: TextColor.withOpacity(.8), fontSize: 16),
      ),
    );
  }
}
