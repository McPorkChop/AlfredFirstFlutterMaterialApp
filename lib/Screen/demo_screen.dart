import 'package:flutter/material.dart';
import 'package:flutter_demo/Model/demo.dart';
import 'package:flutter_demo/Provide/theme_provide.dart';
import 'package:provider/provider.dart';

class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  void navTo(BuildContext context, String url) {
    Navigator.pushNamed(context, url);
  }

  List<Demo> demos = [
    Demo("Login/SignUp", "/demo1", "demo1"),
    Demo("Online Shop", "/demo2", "demo2"),
    Demo("Movie App", "/demo3", "demo3"),
    Demo("Furniture", "/demo4", "demo4"),
    Demo("EBook", "/demo5", "demo1"),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Alfred Demo"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: demos
                  .map((demo) => SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text(demo.title),
                          onPressed: () {
                            Provider.of<ThemeProvider>(context)
                                .setTheme(demo.theme);
                            navTo(context, demo.route);
                          },
                        ),
                      ))
                  .toList()),
        ),
      ),
    );
  }
}
