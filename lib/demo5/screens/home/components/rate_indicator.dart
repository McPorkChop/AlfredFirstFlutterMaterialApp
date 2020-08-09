import 'package:flutter/material.dart';

import '../../../constants.dart';

class RateIndicator extends StatelessWidget {
  final String rate;
  const RateIndicator({
    Key key,
    this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20,
            color: Color(0xFFD3D3D3).withOpacity(.5),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Icon(Icons.star, color: DefaultIconColor, size: 15),
          SizedBox(
            height: 5,
          ),
          Text(
            rate,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
