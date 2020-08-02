import 'package:flutter/material.dart';
import 'package:flutter_demo/Model/demo.dart';

class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  void navTo(BuildContext context, String url) {
    Navigator.pushNamed(context, url);
  }

  List<Demo> demos = [
    Demo("Login/SignUp", "/demo1"),
    Demo("Online Shop", "/demo2"),
    Demo("Movie App","/demo3")
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
