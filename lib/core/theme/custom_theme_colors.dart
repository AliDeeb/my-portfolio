import 'package:flutter/material.dart';

/// This class used to add custom colors for dark and light mode.
@immutable
class CustomThemeColors extends ThemeExtension<CustomThemeColors> {
  final Color? textColor;

  const CustomThemeColors({
    required this.textColor,
  });

  @override
  CustomThemeColors copyWith({
    Color? testButtonColor,
  }) {
    return CustomThemeColors(
      textColor: testButtonColor ?? textColor,
    );
  }

  @override
  CustomThemeColors lerp(ThemeExtension<CustomThemeColors>? other, double t) {
    if (other is! CustomThemeColors) {
      return this;
    }
    return CustomThemeColors(
      textColor: Color.lerp(textColor, other.textColor, t),
    );
  }

  // the light theme
  static const light = CustomThemeColors(
    textColor: Color(0xFF2E4790),
  );

  // the dark theme
  static const dark = CustomThemeColors(
    textColor: Colors.white,
  );
}
