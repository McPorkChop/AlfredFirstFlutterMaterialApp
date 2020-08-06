
import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/constants.dart';
import 'package:flutter_demo/demo3/models/movie.dart';
import 'package:flutter_demo/demo3/screens/details/components/detail_cast.dart';
import 'package:flutter_demo/demo3/screens/details/components/detail_rating.dart';

import 'detail_genras.dart';
import 'detail_info.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({Key key, @required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DetailRating(size: size, movie: movie),
          SizedBox(
            height: DefaultPadding / 2,
          ),
          DetailInfo(movie: movie),
          DetailGenras(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: DefaultPadding / 2, horizontal: DefaultPadding),
            child: Text("Plot Summary",
                style: Theme.of(context).textTheme.headline5),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(color: Color(0xFF737599)),
            ),
          ),
          DetailCast(casts: movie.cast)
        ],
      ),
    );
  }
}
