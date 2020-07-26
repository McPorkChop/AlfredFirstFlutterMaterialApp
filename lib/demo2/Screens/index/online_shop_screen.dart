import 'package:flutter/material.dart';
import 'package:flutter_demo/Provide/theme_provide.dart';
import 'package:flutter_demo/contants.dart';
import 'package:flutter_demo/demo2/Screens/index/components/body.dart';
import 'package:flutter_demo/demo2/function/buildAppbar.dart';
import 'package:provider/provider.dart';

class OnlineShop extends StatelessWidget {
  const OnlineShop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<ThemeProvider>(context).setTheme("demo2");
    ThemeData _theme = themeColorMap["demo2"];
    return Scaffold(
      appBar: buildAppBar(context, _theme.primaryColor),
      body: Body(),
    );
  }
}
