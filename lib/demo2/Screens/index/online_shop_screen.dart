import 'package:flutter/material.dart';
import 'package:flutter_demo/Model/demo_theme.dart';
import 'package:flutter_demo/Provide/theme_provide.dart';
import 'package:flutter_demo/contants.dart';
import 'package:flutter_demo/demo2/Screens/index/components/body.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class OnlineShop extends StatelessWidget {
  const OnlineShop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<ThemeProvider>(context).setTheme("demo2");
    ThemeData _theme = themeColorMap["demo2"];
    return Scaffold(
      appBar: buildAppBar(context, _theme),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context, ThemeData _theme) {
    return AppBar(
      backgroundColor: Colors.white,
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
            color: _theme.primaryColor,
          ),
          onPressed: () {},
        ),
        IconButton(
            icon: SvgPicture.asset(
              "assets/demo2/icons/cart.svg",
              color: _theme.primaryColor,
            ),
            onPressed: () {}),
            SizedBox(width: 20/2,)
      ],
    );
  }
}
