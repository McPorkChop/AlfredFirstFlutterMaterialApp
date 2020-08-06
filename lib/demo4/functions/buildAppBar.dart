import 'package:flutter/material.dart';
import 'package:flutter_demo/demo4/constants.dart';
import 'package:flutter_demo/demo4/size.config.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar() {
  return AppBar(
    leading: BackButton(),
    actions: <Widget>[
      IconButton(
          icon: SvgPicture.asset(
            "assets/demo4/icons/scan.svg",
            height: SizeConfig.defaultSize * 2, //20
          ),
          onPressed: () {}),
      Center(
        child: Text(
          "scan",
          style:
              TextStyle(color: DefaultTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        width: SizeConfig.defaultSize,
      )
    ],
  );
}
