import 'package:flutter/material.dart';
import 'package:flutter_demo/demo2/Models/Product.dart';
import 'package:flutter_demo/demo2/Screens/detail/components/counter_and_like.dart';
import 'package:flutter_demo/demo2/Screens/detail/components/product_description.dart';
import 'package:flutter_demo/demo2/Screens/detail/components/product_info.dart';
import 'package:flutter_demo/demo2/Screens/detail/components/product_specifications.dart';
import 'package:flutter_demo/demo2/constants.dart';

import 'add_to_card.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
            height: size.height,
            child: Stack(children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: DefaultPadding,
                      right: DefaultPadding),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(24)),),
                  child: Column(
                    children: <Widget>[
                      ProductSpecification(product: product),
                      SizedBox(height: DefaultPadding / 2),
                      ProductDescription(product: product),
                      SizedBox(height: DefaultPadding / 2),
                      CounterAndLike(),
                      SizedBox(height: DefaultPadding / 2),
                      Add2Card(product: product)
                    ],
                  ),
                ),
              ),
              ProductInfo(product: product)
            ]))
      ]),
    );
  }
}
