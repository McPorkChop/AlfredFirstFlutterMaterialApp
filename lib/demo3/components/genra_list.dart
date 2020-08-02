import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/constants.dart';
import 'package:flutter_demo/demo3/components/genra_item.dart';

class GenraList extends StatelessWidget {
 final List<String> items;
  const GenraList({Key key,@required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: DefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) => GenraButton(
                name: items[index],
              )),
    );
  }
}


