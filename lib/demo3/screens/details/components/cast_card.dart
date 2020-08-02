import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;
  const CastCard({Key key, @required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: DefaultPadding),
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(cast['image']))),
          ),
          SizedBox(height: DefaultPadding / 2),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          SizedBox(height: DefaultPadding / 4),
          Text(
            cast['movieName'],
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: TextLightColor),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
