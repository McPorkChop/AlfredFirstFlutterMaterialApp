import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/models/movie.dart';

import '../../../constants.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(DefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: DefaultPadding / 2,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "${movie.year}",
                      style: TextStyle(color: TextLightColor),
                    ),
                    SizedBox(
                      width: DefaultPadding / 2,
                    ),
                    Text("PG-13", style: TextStyle(color: TextLightColor)),
                    SizedBox(
                      width: DefaultPadding / 2,
                    ),
                    Text("2h 32min", style: TextStyle(color: TextLightColor)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
              width: 64,
              height: 64,
              child: FlatButton(
                  onPressed: () {},
                  color: SecondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.add,
                    size: 28,
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }
}
