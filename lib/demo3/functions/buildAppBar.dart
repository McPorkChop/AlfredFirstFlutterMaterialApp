import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/constants.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      padding: EdgeInsets.only(left: DefaultPadding),
      icon: SvgPicture.asset("assets/demo3/icons/menu.svg"),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
          padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
          onPressed: () {},
          icon: SvgPicture.asset("assets/demo3/icons/search.svg")),
    ],
  );
}
