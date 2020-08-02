import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/constants.dart';

Widget buildUnderlineTab(String name, BuildContext context,
    {bool selected = false, Function tap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
    child: GestureDetector(
      onTap: tap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name,
              style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.w600,
                  color: selected ? TextColor : Colors.black.withOpacity(.4))),
          Container(
            margin: EdgeInsets.symmetric(vertical: DefaultPadding / 2),
            height: 6,
            width: 40,
            decoration: BoxDecoration(
                color: selected ? SecondaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    ),
  );
}
