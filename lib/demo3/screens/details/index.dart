import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/screens/details/components/body.dart';
import 'package:flutter_demo/demo3/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  const MovieDetail({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie:movie),
    );
  }
}