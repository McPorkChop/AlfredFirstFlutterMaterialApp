import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/constants.dart';
import 'package:flutter_demo/demo3/models/movie.dart';
import 'package:flutter_demo/demo3/screens/details/index.dart';
import 'package:flutter_svg/svg.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
        child: OpenContainer(
          closedElevation: 0,
          openElevation: 0 ,
          closedBuilder: (context, action) => buildMovieCard(context),
          openBuilder: (context, action) => MovieDetail(movie: movie),
        ));
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [DefaultShadow],
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(movie.poster))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: DefaultPadding / 2),
          child: Text(movie.title,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.w600)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/demo3/icons/star_fill.svg",
              height: 20,
            ),
            SizedBox(
              width: DefaultPadding / 2,
            ),
            Text(
              "${movie.rating}",
              style: Theme.of(context).textTheme.bodyText2,
            )
          ],
        )
      ],
    );
  }
}
