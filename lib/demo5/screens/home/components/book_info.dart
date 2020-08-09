import 'package:flutter/material.dart';
import 'package:flutter_demo/demo5/screens/home/components/rate_indicator.dart';

import '../../../constants.dart';
import 'oval_button.dart';

class BookInfo extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final double rate;
  final Function detailTap;
  final Function readTap;
  const BookInfo({
    Key key,
    this.image,
    this.title,
    this.author,
    this.rate,
    this.detailTap,
    this.readTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: 202,
      margin: EdgeInsets.only(left: 24, bottom: 40),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: DefaultShadowColor,
                    )
                  ]),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                RateIndicator(rate: "$rate")
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              width: 202,
              height: 85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: DefaultBlackColor),
                          children: [
                            TextSpan(
                              text: "$title\n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: author,
                                style: TextStyle(color: DefaultLightBlackColor))
                          ]),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: detailTap,
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          alignment: Alignment.center,
                          child: Text("Details"),
                        ),
                      ),
                      Expanded(
                        child: OvalButton(
                          text: "Read",
                          tap: readTap,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
