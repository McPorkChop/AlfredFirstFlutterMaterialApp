import 'package:flutter/material.dart';
import 'package:flutter_demo/demo4/constants.dart';
import 'package:flutter_demo/demo4/models/product.dart';
import 'package:flutter_demo/demo4/screens/home/componets/title_text.dart';

import '../../../size.config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: defaultSize * 14.5,
        decoration: BoxDecoration(
            color: DefaultSecondaryColor,
            borderRadius: BorderRadius.circular(30)),
        child: AspectRatio(
          aspectRatio: .693,
          child: Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 1,
                  child: FadeInImage.assetNetwork(
                      placeholder: "assets/demo4/spinner.gif",
                      fit: BoxFit.cover,
                      image: product.image)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize),
                child: TitleText(title: product.title),
              ),
              SizedBox(height: defaultSize / 2),
              Text("\$${product.price}"),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
