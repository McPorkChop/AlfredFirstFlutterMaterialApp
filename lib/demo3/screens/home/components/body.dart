import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/demo2/constants.dart';
import 'package:flutter_demo/demo3/components/state_tab.dart';
import 'package:flutter_demo/demo3/components/genra_list.dart';
import 'package:flutter_demo/demo3/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          StateTab(),
          GenraList(
            items: [
              "Action",
              "Crime",
              "Comedy",
              "Drama",
              "Horror",
              "Animation"
            ],
          ),
          SizedBox(
            height: DefaultPadding,
          ),
          MovieCarousel()
        ],
      ),
    );
  }
}
