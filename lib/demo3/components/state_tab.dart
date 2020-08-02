import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/functions/build_underline_tab.dart';

import '../constants.dart';

class StateTab extends StatefulWidget {
  StateTab({Key key}) : super(key: key);

  @override
  _StateTabState createState() => _StateTabState();
}

class _StateTabState extends State<StateTab> {
  int _index = 0;
  List<String> categories = ["In Theater", "Box Office", "Coming Soon"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: DefaultPadding / 2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildUnderlineTab(
            categories[index], context,
            selected: _index == index, tap: () {
          setState(() {
            _index = index;
          });
        }),
      ),
    );
  }
}
