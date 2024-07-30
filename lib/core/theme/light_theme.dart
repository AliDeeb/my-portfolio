part of 'themes_data.dart';

ThemeData _getLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
    ),
    extensions: [
      CustomThemeColors.light,
    ],
    textTheme: TextTheme(
      displayLarge: TextThemeStyles.displayLarge,
      displayMedium: TextThemeStyles.displayMedium,
      displaySmall: TextThemeStyles.displaySmall,
      headlineMedium: TextThemeStyles.headlineMedium,
      headlineSmall: TextThemeStyles.headlineSmall,
      titleLarge: TextThemeStyles.titleLarge,
      titleMedium: TextThemeStyles.titleMedium,
      titleSmall: TextThemeStyles.titleSmall,
      bodyLarge: TextThemeStyles.bodyLarge,
      bodyMedium: TextThemeStyles.bodyMedium,
      bodySmall: TextThemeStyles.bodySmall,
      labelLarge: TextThemeStyles.labelLarge,
      labelSmall: TextThemeStyles.labelSmall,
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
