import 'package:flutter/material.dart';
import 'package:flutter_demo/demo2/constants.dart';

class CardCounter extends StatefulWidget {
  CardCounter({Key key}) : super(key: key);

  @override
  _CardCounterState createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          buildOutlineButton(
              icon: Icons.remove,
              press: () {
                if (_count > 1)
                  setState(() {
                    --_count;
                  });
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: DefaultPadding / 2),
            child: Text(
              "$_count".padLeft(2,"0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          buildOutlineButton(
              icon: Icons.add,
              press: () {
                setState(() {
                  ++_count;
                });
              })
        ],
      ),
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
