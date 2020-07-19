import 'package:flutter/material.dart';
import 'package:flutter_demo/Screen/demo_screen.dart';
import 'package:flutter_demo/demo1/contants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alfred Flutter ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: PrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: DemoScreen(),
    );
  }
}
