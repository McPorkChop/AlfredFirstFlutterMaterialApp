import 'package:flutter/material.dart';
import 'package:flutter_demo/contants.dart';
import 'package:flutter_demo/demo2/Models/Product.dart';
import 'package:flutter_demo/demo2/constants.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ProductCard({
    Key key,
    @required this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(DefaultPadding),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child:
                  Hero(tag: "${product.id}", child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: DefaultPadding / 4),
            child: Text(product.title,
                style:
                    TextStyle(color: themeColorMap["demo2"].primaryColorLight)),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
