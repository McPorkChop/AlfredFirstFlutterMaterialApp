import 'package:flutter/material.dart';

import '../../../constants.dart';

class OvalButton extends StatelessWidget {
  final Function tap;
  final double radius;
  final String text;
  const OvalButton({
    Key key,
    this.tap,
    this.radius = 29,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: DefaultBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
