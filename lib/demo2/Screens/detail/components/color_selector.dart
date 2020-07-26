import 'package:flutter/material.dart';

import '../../../constants.dart';

class ColorSelector extends StatelessWidget {
  final Color color;
  final bool checked;
  const ColorSelector({
    Key key,
    this.color,
    this.checked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: DefaultPadding / 4, right: DefaultPadding / 2),
      padding: checked ? EdgeInsets.all(2.5) : null,
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: checked ? color : Colors.transparent),
      ),
      child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color)),
    );
  }
}
