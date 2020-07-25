import 'package:flutter/material.dart';
class ThemeProvider with ChangeNotifier {
  String _themeKey = '';

  String get key => _themeKey;

  setTheme(String themeKey) {
    _themeKey = _themeKey;
    notifyListeners();
  }
}