import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/text_theme_styles.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/providers/theme_provider.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    context.select<ThemeProvider, ThemeMode>((p) => p.currentTheme);

    return SegmentedButton<ThemeMode>(
      showSelectedIcon: false,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return context.read<ThemeProvider>().currentTheme == ThemeMode.light
                ? Colors.black
                : Colors.white;
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.blue;
            }
            return Colors.transparent;
          },
        ),
        side: const MaterialStatePropertyAll(
          BorderSide(
            color: AppColors.greyColor200,
          ),
        ),
      ),
      segments: [
        ButtonSegment(
          value: ThemeMode.light,
          label: Text("Light", style: TextThemeStyles.labelMedium),
        ),
        ButtonSegment(
          value: ThemeMode.dark,
          label: Text("Dark", style: TextThemeStyles.labelMedium),
        ),
      ],
      selected: {context.read<ThemeProvider>().currentTheme},
      onSelectionChanged: (data) {
        context.read<ThemeProvider>().currentTheme = data.first;
      },
    );
  }
}
