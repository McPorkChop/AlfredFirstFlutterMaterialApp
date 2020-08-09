import 'package:flutter/material.dart';
import 'package:flutter_demo/demo5/components/rounded.button.dart';
import 'package:flutter_demo/demo5/constants.dart';

import 'components/body.dart';

class EBook extends StatelessWidget {
  const EBook({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(size: size),
    );
  }
}
