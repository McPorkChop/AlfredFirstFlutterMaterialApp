import 'package:flutter/material.dart';
import 'package:flutter_demo/demo2/Models/Product.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';



class Add2Card extends StatelessWidget {
  const Add2Card({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: DefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(right: DefaultPadding),
              width: 58,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: product.color)),
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/demo2/icons/add_to_cart.svg",
                  color: product.color,
                ),
                onPressed: () {},
              )),
          Expanded(
            child: SizedBox(
                height: 50,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(18)),
                    color: product.color,
                    onPressed: () {},
                    child: Text(
                      "Buy    Now".toUpperCase(),
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ))),
          )
        ],
      ),
    );
  }
}

