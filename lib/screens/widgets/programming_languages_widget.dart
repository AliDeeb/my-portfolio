import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import 'professional_skill_widget.dart';

class ProgrammingLanguages extends StatelessWidget {
  const ProgrammingLanguages({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Programming Languages",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
        ),
        40.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Flutter Framework",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Dart",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "C",
          progressColor: Colors.blue,
          progress: 75,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "C++",
          progressColor: Colors.blue,
          progress: 75,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "C#",
          progressColor: Colors.blue,
          progress: 75,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Java",
          progressColor: Colors.blue,
          progress: 90,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "Python",
          progressColor: Colors.blue,
          progress: 75,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "SQL",
          progressColor: Colors.blue,
          progress: 50,
        ),
        25.verticalSpace,
        const ProfessionalSkillWidget(
          skill: "HTML, CSS, JavaScript",
          progressColor: Colors.blue,
          progress: 100,
        ),
      ],
    );
  }
}
