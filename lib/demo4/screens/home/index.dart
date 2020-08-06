import 'package:flutter/material.dart';
import 'package:flutter_demo/demo4/functions/buildAppBar.dart';
import 'package:flutter_demo/demo4/size.config.dart';
import 'componets/body.dart';

class Demo4 extends StatelessWidget {
  const Demo4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
  
}
