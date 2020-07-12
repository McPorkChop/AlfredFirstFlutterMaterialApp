import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../contants.dart';

class SocialIcon extends StatelessWidget {
  final String svg;
  final Function press;
  final Color borderColor;
  const SocialIcon({
    Key key,
    @required this.svg,
    this.press,
    this.borderColor = PrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: borderColor),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          svg,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
