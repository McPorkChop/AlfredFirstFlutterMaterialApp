import 'package:flutter/material.dart';
import '../contants.dart';

class RoundedTextFieldContainer extends StatelessWidget {
  final Widget child;
  const RoundedTextFieldContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * .8,
      decoration: BoxDecoration(
          color: PrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
