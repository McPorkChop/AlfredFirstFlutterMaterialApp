import 'package:flutter/material.dart';

ThemeData baseTheme = ThemeData(
    primaryColor: Color(0xFF6F3FA5),
    primaryColorLight: Color(0xFFF1E6FF),
    scaffoldBackgroundColor: Colors.white);
Map<String, ThemeData> themeColorMap = {
  'demo1': baseTheme.copyWith(
      primaryColor: Color(0xFF6F3FA5), primaryColorLight: Color(0xFFF1E6FF)),
  'demo2': baseTheme.copyWith(
      primaryColor: Color(0xFF535353),
      primaryColorLight: Color(0xFFACACAC),
      textTheme: baseTheme.textTheme.apply(bodyColor: Color(0xFFACACAC)),
      visualDensity: VisualDensity.adaptivePlatformDensity)
};
