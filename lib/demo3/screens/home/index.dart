import 'package:flutter/material.dart';
import 'package:flutter_demo/Provide/theme_provide.dart';
import 'package:flutter_demo/demo3/functions/buildAppBar.dart';
import 'package:flutter_demo/demo3/screens/home/components/body.dart';
import 'package:provider/provider.dart';


class MovieApp extends StatelessWidget {
  const MovieApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<ThemeProvider>(context).setTheme("demo3");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
