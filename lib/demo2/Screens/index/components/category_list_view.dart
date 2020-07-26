import 'package:flutter/material.dart';
import 'package:flutter_demo/contants.dart';
import 'package:flutter_demo/demo2/constants.dart';
class CategoryListView extends StatefulWidget {
  CategoryListView({Key key}) : super(key: key);

  @override
  _CategoryListViewState createState() => _CategoryListViewState();
}


class _CategoryListViewState extends State<CategoryListView> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int categoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:DefaultPadding ),
          child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategoryItem(index)),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    bool current = categoryIndex == index;
    ThemeData theme = themeColorMap["demo2"];
    return GestureDetector(
      onTap: () {
        setState(() {
          categoryIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      current ? theme.primaryColor : theme.primaryColorLight),
            ),
            Container(
              margin: EdgeInsets.only(top: DefaultPadding / 4),
              height: 2,
              width: 30,
              color: current ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
