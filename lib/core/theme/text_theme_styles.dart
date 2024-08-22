import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Centralized the text styles that are used widely in app
class TextThemeStyles {
  static TextStyle get displayLarge => TextStyle(fontSize: 112.sp);
  static TextStyle get displayMedium => TextStyle(fontSize: 56.sp);
  static TextStyle get displaySmall => TextStyle(fontSize: 45.sp);
  static TextStyle get headlineMedium => TextStyle(fontSize: 34.sp);
  static TextStyle get headlineSmall => TextStyle(fontSize: 24.sp);
  static TextStyle get titleLarge => TextStyle(fontSize: 21.sp);

  static TextStyle get titleMedium => TextStyle(fontSize: 17.sp);
  static TextStyle get titleSmall => TextStyle(fontSize: 15.sp);

  static TextStyle get bodyLarge => TextStyle(fontSize: 15.sp);
  static TextStyle get bodyMedium => TextStyle(fontSize: 15.sp);

  static TextStyle get bodySmall => TextStyle(fontSize: 13.sp);

  static TextStyle get labelLarge => TextStyle(fontSize: 13.sp);

  static TextStyle get labelMedium => TextStyle(fontSize: 12.sp);

  static TextStyle get labelSmall => TextStyle(fontSize: 11.sp);
}
