import 'package:flutter/material.dart';
import 'package:flutter_demo/demo2/constants.dart';
import 'package:flutter_demo/demo3/models/movie.dart';
import 'package:flutter_demo/demo3/screens/home/components/movie_card.dart';
import "dart:math" as math;

class MovieCarousel extends StatefulWidget {
  MovieCarousel({Key key}) : super(key: key);

  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _controller;
  int _initialPage = 1;

  @override
  void initState() {
    super.initState();
    _controller =
        PageController(viewportFraction: .8, initialPage: _initialPage);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: DefaultPadding),
        child: AspectRatio(
            aspectRatio: 0.85,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  _initialPage = value;
                });
              },
              controller: _controller,
              physics: ClampingScrollPhysics(),
              itemCount: movies.length,
              itemBuilder: (context, index) => buildMovieSlider(index),
            )));
  }

  AnimatedBuilder buildMovieSlider(int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double _value = 0;
        if (_controller.position.haveDimensions) {
          _value = index - _controller.page;
          _value = (_value * .038).clamp(-1, 1);
        }
        return AnimatedOpacity(
          duration: Duration(milliseconds: 350),
          opacity: _initialPage == index ? 1 : .4,
          child: Transform.rotate(
              angle: math.pi * _value, child: MovieCard(movie: movies[index])),
        );
      },
    );
  }
}
