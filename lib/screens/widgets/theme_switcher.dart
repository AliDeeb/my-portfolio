import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/text_theme_styles.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/providers/theme_provider.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key, this.isMobile = false});
  final bool isMobile;

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    context.select<ThemeProvider, ThemeMode>((p) => p.currentTheme);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.isMobile ? 10 : 24),
      child: FittedBox(
        child: SegmentedButton<ThemeMode>(
          showSelectedIcon: false,
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.white;
                }
                return context.read<ThemeProvider>().currentTheme ==
                        ThemeMode.light
                    ? Colors.black
                    : Colors.white;
              },
            ),
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.blue;
                }
                return Colors.transparent;
              },
            ),
            side: const WidgetStatePropertyAll(
              BorderSide(
                color: AppColors.greyColor200,
              ),
            ),
          ),
          segments: [
            ButtonSegment(
              value: ThemeMode.light,
              label: FittedBox(
                child: Text(
                  "Light",
                  style: TextThemeStyles.labelMedium,
                ),
              ),
            ),
            ButtonSegment(
              value: ThemeMode.dark,
              label: FittedBox(
                child: Text(
                  "Dark",
                  style: TextThemeStyles.labelMedium,
                ),
              ),
            ),
          ],
          selected: {context.read<ThemeProvider>().currentTheme},
          onSelectionChanged: (data) {
            context.read<ThemeProvider>().currentTheme = data.first;
          },
        ),
      ),
    );
  }
}
