import 'package:flutter/material.dart';
import 'package:flutter_demo/Provide/theme_provide.dart';
import 'package:flutter_demo/demo1/Screens/Welcome/components/body.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<ThemeProvider>(context).setTheme("demo1");
    return Scaffold(
      body:Body() 
    );
  }
}
