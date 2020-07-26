import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

AppBar buildAppBar(BuildContext context, Color textColor,
    {Color background = Colors.white}) {
  return AppBar(
    backgroundColor: background,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/demo2/icons/back.svg"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/demo2/icons/search.svg",
          color: textColor,
        ),
        onPressed: () {},
      ),
      IconButton(
          icon: SvgPicture.asset(
            "assets/demo2/icons/cart.svg",
            color: textColor,
          ),
          onPressed: () {}),
      SizedBox(
        width: DefaultPadding / 2,
      )
    ],
  );
}
