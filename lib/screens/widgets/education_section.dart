import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import 'education_widget.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Education",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
        ),
        50.verticalSpace,
        EducationWidget(
          education: "Artifical Intelligence",
          time: "Full Time",
          university: "Damascuse University",
          firstDate: DateTime(2015, 9, 1),
          endDate: DateTime(2022, 5, 1),
        ),
      ],
    );
  }
}
