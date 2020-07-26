import 'package:flutter/material.dart';
import 'package:flutter_demo/demo2/Models/Product.dart';
import 'package:flutter_demo/demo2/Screens/detail/detail_screen.dart';
import 'package:flutter_demo/demo2/Screens/index/components/category_list_view.dart';
import 'package:flutter_demo/demo2/Screens/index/components/product_card.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: DefaultPadding,
          ),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        CategoryListView(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: DefaultPadding,
                mainAxisSpacing: DefaultPadding),
            itemBuilder: (context, index) {
              Product product = products[index];
              return ProductCard(
                product: product,
                press: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          product: product,
                        ))),
              );
            },
          ),
        ))
      ],
    );
  }
}
