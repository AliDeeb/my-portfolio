import 'package:flutter/material.dart';

import '../../core/theme/custom_theme_colors.dart';

class WorkExperienceWidget extends StatelessWidget {
  const WorkExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Work Experience",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
        ),
      ],
    );
  }
}
