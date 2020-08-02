import 'package:flutter/material.dart';
import 'package:flutter_demo/demo3/components/genra_list.dart';
import 'package:flutter_demo/demo3/models/movie.dart';

import '../../../constants.dart';
class DetailGenras extends StatelessWidget {
  const DetailGenras({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: DefaultPadding / 2),
      child: GenraList(items: movie.genra),
    );
  }
}
