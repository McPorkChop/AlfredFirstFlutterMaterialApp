import 'package:flutter/material.dart';
import 'package:flutter_demo/contants.dart';
import 'package:flutter_demo/demo2/Models/Product.dart';

import 'color_selector.dart';

class ProductSpecification extends StatelessWidget {
  
  const ProductSpecification({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorSelector(
                    color: Color(0xFF356C95),
                    checked: true,
                  ),
                  ColorSelector(
                    color: Color(0xFFF8C078),
                  ),
                  ColorSelector(
                    color: Color(0xFFA29B9B),
                  ),
                ],
              )
            ]),
      ),
      Expanded(
        child: RichText(
            text: TextSpan(
                style: TextStyle(color: themeColorMap["demo2"].primaryColor),
                children: [
              TextSpan(text: "Size\n"),
              TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold))
            ])),
      )
    ]);
  }
}
