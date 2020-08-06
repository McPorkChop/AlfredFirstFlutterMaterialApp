import 'package:flutter/material.dart';
import 'package:flutter_demo/demo4/models/product.dart';
import 'package:flutter_demo/demo4/constants.dart';
import 'package:flutter_demo/demo4/screens/detail/components/body.dart';
import 'package:flutter_demo/demo4/size.config.dart';
import 'package:flutter_svg/svg.dart';

class Detail extends StatelessWidget {
  const Detail({Key key, @required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: DefaultSecondaryColor,
        appBar: AppBar(
          leading: BackButton(),
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset("assets/demo4/icons/bag.svg"),
                onPressed: () {}),
            SizedBox(width: SizeConfig.defaultSize)
          ],
        ),
        body: Body(product:product),);
  }
}
