import 'package:flutter/material.dart';
import 'package:flutter_demo/demo4/models/categories.dart';
import 'package:flutter_demo/demo4/screens/home/componets/category_card.dart';

class CategoryList extends StatelessWidget {
  final List<Category> categories;
  const CategoryList({Key key, this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(categories.length,
              (index) => CategoryCard(category: categories[index]))),
    );
  }
}
