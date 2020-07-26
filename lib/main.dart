import 'package:flutter/material.dart';
import 'package:flutter_demo/Provide/theme_provide.dart';
import 'package:flutter_demo/Screen/demo_screen.dart';
import 'package:flutter_demo/demo1/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_demo/contants.dart';
import 'package:provider/provider.dart';

import 'demo2/Screens/index/online_shop_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: ThemeProvider())],
      child: Consumer<ThemeProvider>(builder: (context, appInfo, _) {
        String _themeKey = appInfo.key;
        if (themeColorMap.containsKey(_themeKey))
          _theme = themeColorMap[_themeKey];
        else {
          _theme = baseTheme;
        }

        return MaterialApp(
          title: 'Alfred Flutter ',
          debugShowCheckedModeBanner: false,
          theme: _theme,
          initialRoute: "/",
          routes: {
            "/": (BuildContext context) => DemoScreen(),
            "/demo1": (BuildContext context) => new WelcomeScreen(),
            "/demo2": (BuildContext context) => new OnlineShop()
          },
        );
      }),
    );
  }
}
