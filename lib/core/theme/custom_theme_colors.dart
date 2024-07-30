import 'package:flutter/material.dart';

/// This class used to add custom colors for dark and light mode.
@immutable
class CustomThemeColors extends ThemeExtension<CustomThemeColors> {
  final Color? textColor;
  final LinearGradient? toolsSectionGradient;

  const CustomThemeColors({
    required this.textColor,
    required this.toolsSectionGradient,
  });

  @override
  CustomThemeColors copyWith({
    Color? testButtonColor,
    LinearGradient? toolsSectionGradient,
  }) {
    return CustomThemeColors(
      textColor: testButtonColor ?? textColor,
      toolsSectionGradient: toolsSectionGradient ?? toolsSectionGradient,
    );
  }

  @override
  CustomThemeColors lerp(ThemeExtension<CustomThemeColors>? other, double t) {
    if (other is! CustomThemeColors) {
      return this;
    }
    return CustomThemeColors(
      textColor: Color.lerp(textColor, other.textColor, t),
      toolsSectionGradient: LinearGradient.lerp(
          toolsSectionGradient, other.toolsSectionGradient, t),
    );
  }

  // the light theme
  static CustomThemeColors light = CustomThemeColors(
    textColor: const Color(0xFF2E4790),
    toolsSectionGradient: LinearGradient(
      colors: [
        Colors.grey.shade200,
        Colors.grey.shade100,
        Colors.grey.shade50,
      ],
    ),
  );

  // the dark theme
  static CustomThemeColors dark = const CustomThemeColors(
    textColor: Colors.white,
    toolsSectionGradient: LinearGradient(
      colors: [
        Colors.black,
        Colors.black12,
        Colors.black26,
      ],
    ),
  );
}
