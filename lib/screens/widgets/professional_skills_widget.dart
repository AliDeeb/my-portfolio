import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import 'professional_skill_widget.dart';

class ProfessionalSkillsWidget extends StatefulWidget {
  const ProfessionalSkillsWidget({super.key});

  @override
  State<ProfessionalSkillsWidget> createState() =>
      _ProfessionalSkillsWidgetState();
}

class _ProfessionalSkillsWidgetState extends State<ProfessionalSkillsWidget> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Professional Skills",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
        ),
        50.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Problem-solving",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Creativity",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Communication",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Critical thinking",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Team work",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Analytical reasoning.",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
      ],
    );
  }
}
