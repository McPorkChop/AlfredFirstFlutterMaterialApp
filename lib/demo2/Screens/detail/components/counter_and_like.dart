import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_counter.dart';

class CounterAndLike extends StatelessWidget {
  const CounterAndLike({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: <Widget>[
        CardCounter(),
        Container(
          padding: EdgeInsets.all(8 ),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Color(0xFFFF6464)),
          child:
              SvgPicture.asset("assets/demo2/icons/heart.svg"),
        ),
      ],
    );
  }
}
