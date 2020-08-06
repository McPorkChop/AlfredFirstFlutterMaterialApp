import 'package:flutter/material.dart';
import 'package:flutter_demo/demo4/screens/home/componets/category_list.dart';
import 'package:flutter_demo/demo4/screens/home/componets/recommands_product_card.dart';
import 'package:flutter_demo/demo4/screens/home/componets/title_text.dart';
import 'package:flutter_demo/demo4/services/fetchCategories.dart';
import 'package:flutter_demo/demo4/services/fetchProduct.dart';
import 'package:flutter_demo/demo4/size.config.dart';


class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(title: "Browser By Categories"),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? CategoryList(
                      categories: snapshot.data,
                    )
                  : Center(child: Image.asset("assets/demo4/ripple.gif")),
            ),
            Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(
                title: "Recommands For You",
              ),
            ),
            FutureBuilder(
                future: fetchProducts(),
                builder: (context, snapshot) => snapshot.hasData
                    ? RecommandsProductCard(products: snapshot.data)
                    : Center(child: Image.asset("assets/demo4/ripple.gif")))
          ],
        ),
      ),
    );
  }
}
