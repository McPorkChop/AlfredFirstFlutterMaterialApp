import 'package:flutter/material.dart';

import '../../contants.dart';
import 'rounded_text_fileld_container.dart';

class RoundedInputField extends StatelessWidget {
  final IconData icon;
  final String hit;
  final ValueChanged<String> onChanged;
  final bool password;

  const RoundedInputField({
    Key key,
    this.icon,
    this.hit,
    this.onChanged,
    this.password = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor=themeColorMap["demo1"].primaryColor;
    return RoundedTextFieldContainer(
      child: TextField(
          obscureText: password,
          onChanged: onChanged,
          decoration: InputDecoration(
              hintText: hit,
              icon: Icon(
                icon,
                color: primaryColor,
              ),
              suffixIcon: password ? Icon(Icons.visibility) : null,
              border: InputBorder.none)),
    );
  }
}
