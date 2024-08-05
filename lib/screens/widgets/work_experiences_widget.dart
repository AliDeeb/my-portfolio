import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import 'work_experience_widget.dart';

class WorkExperiencesWidget extends StatelessWidget {
  const WorkExperiencesWidget({super.key});

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
        50.verticalSpace,
        WorkExperienceWidget(
          work: "Senior UX Designer",
          time: "Full Time",
          city: "Damascuse",
          firstDate: DateTime.now(),
          endDate: DateTime.now(),
        ),
        WorkExperienceWidget(
          work: "Senior UX Designer",
          time: "Full Time",
          city: "Damascuse",
          firstDate: DateTime.now(),
          endDate: DateTime.now(),
        ),
        WorkExperienceWidget(
          work: "Senior UX Designer",
          time: "Full Time",
          city: "Damascuse",
          firstDate: DateTime.now(),
          endDate: DateTime.now(),
        ),
      ],
    );
  }
}
