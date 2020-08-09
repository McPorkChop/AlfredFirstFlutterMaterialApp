import 'package:flutter/material.dart';
import 'package:flutter_demo/demo5/screens/detail/index.dart';
import 'package:flutter_demo/demo5/constants.dart';
import 'package:flutter_demo/demo5/screens/home/components/oval_button.dart';
import 'package:flutter_demo/demo5/screens/home/components/rate_indicator.dart';

import 'components/book_info.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/demo5/images/main_page_bg.png"),
                fit: BoxFit.fitWidth),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: size.height * .1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline4,
                    children: [
                      TextSpan(
                        text: "what are you\nreading ",
                      ),
                      TextSpan(
                          text: "today?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    BookInfo(
                      image: "assets/demo5/images/book-1.png",
                      title: "Crushing & Influence",
                      author: "Gary Venchuk",
                      rate: 4.9,
                      detailTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detail(),
                        ));
                      },
                    ),
                    BookInfo(
                      image: "assets/demo5/images/book-2.png",
                      title: "Top 10 Business Hacks",
                      author: "Herman Joel",
                      rate: 4.8,
                      detailTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detail(),
                        ));
                      },
                    ),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                            TextSpan(text: "Best of the "),
                            TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                    ),
                    buildBestOfDayCard(size, context),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: "Continue "),
                          TextSpan(
                            text: "reading...",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(38.5),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 33,
                            color: Color(0xFFD3D3D3).withOpacity(.84),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 30, right: 20),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Crushing & Influence",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Gary Venchuk",
                                            style: TextStyle(
                                              color: DefaultLightBlackColor,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              "Chapter 7 of 10",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: DefaultLightBlackColor,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/demo5/images/book-1.png",
                                      width: 55,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: size.width * .65,
                              decoration: BoxDecoration(
                                color: DefaultProgressIndicator,
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildBestOfDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFEAEAEA).withOpacity(.45),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(color: Colors.black)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(
                      fontSize: 9,
                      color: DefaultLightBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "How to win \nFriends & Influence",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Gary Venchuk",
                    style: TextStyle(
                      color: DefaultLightBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      RateIndicator(
                        rate: "4.9",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people….",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: DefaultLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/demo5/images/book-3.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: OvalButton(
                text: "Read",
                radius: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
