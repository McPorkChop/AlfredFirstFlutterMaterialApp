import 'package:flutter/material.dart';
import 'package:flutter_demo/demo4/models/product.dart';
import 'package:flutter_demo/demo4/screens/detail/index.dart';
import 'package:flutter_demo/demo4/screens/home/componets/product_card.dart';
import 'package:flutter_demo/demo4/size.config.dart';

class RecommandsProductCard extends StatelessWidget {
  const RecommandsProductCard({
    Key key,
    @required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            crossAxisCount:
                SizeConfig.orientation == Orientation.portrait ? 2 : 4,
            childAspectRatio: .639),
        itemBuilder: (context, index) => ProductCard(
            product: products[index],
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Detail(
                  product: products[index],
                ),
              ));
            }),
      ),
    );
  }
}
