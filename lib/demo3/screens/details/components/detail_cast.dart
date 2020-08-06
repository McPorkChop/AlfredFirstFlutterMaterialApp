import 'package:flutter/material.dart';
import 'package:flutter_demo/demo2/constants.dart';
import 'package:flutter_demo/demo3/screens/details/components/cast_card.dart';

class DetailCast extends StatelessWidget {
  final List casts;
  const DetailCast({Key key, @required this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: DefaultPadding / 2),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => CastCard(cast: casts[index]),
            ),
          )
        ],
      ),
    );
  }
}
