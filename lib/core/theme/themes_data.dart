import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_theme_colors.dart';
import 'text_theme_styles.dart';

part 'light_theme.dart';
part 'dark_theme.dart';

class ThemesData {
  static ThemeData lightTheme = _getLightTheme();
  static ThemeData darkTheme = _getDarkTheme();
}
