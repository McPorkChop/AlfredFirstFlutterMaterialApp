import 'package:flutter/material.dart';
import 'package:flutter_demo/demo2/Models/Product.dart';
import 'package:flutter_demo/demo2/Screens/detail/components/body.dart';
import 'package:flutter_demo/demo2/function/buildAppbar.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context, Colors.white, background: product.color),
      body: Body(
        product: product,
      ),
    );
  }
}
