import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _currentTheme = ThemeMode.light;

  ThemeMode get currentTheme => _currentTheme;
  set currentTheme(ThemeMode v) {
    if (v == _currentTheme) return;
    _currentTheme = v;
    notifyListeners();
  }
}
