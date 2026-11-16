import 'package:material_ui/material_ui.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _currentTheme = ThemeMode.dark;

  ThemeMode get currentTheme => _currentTheme;
  set currentTheme(ThemeMode v) {
    if (v == _currentTheme) return;
    _currentTheme = v;
    notifyListeners();
  }
}
