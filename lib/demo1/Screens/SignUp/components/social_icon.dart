import 'package:flutter/material.dart';
import 'package:flutter_demo/contants.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  final String svg;
  final Function press;
  final Color borderColor;
  const SocialIcon({
    Key key,
    @required this.svg,
    this.press,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _borderColor;
    if (borderColor == null)
      _borderColor = themeColorMap["demo1"].primaryColor;
    else
      _borderColor = borderColor;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: _borderColor),
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
