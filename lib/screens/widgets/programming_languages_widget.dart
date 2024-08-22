import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';
import 'professional_skill_widget.dart';

class ProgrammingLanguages extends StatelessWidget {
  const ProgrammingLanguages({super.key, this.isMobile = false});
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Programming Languages",
          style: isMobile
              ? TextThemeStyles.titleSmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                )
              : TextThemeStyles.headlineSmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
        ),
        40.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: isMobile,
          skill: "Flutter Framework",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: isMobile,
          skill: "Dart",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: isMobile,
          skill: "C",
          progressColor: Colors.blue,
          progress: 75,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: isMobile,
          skill: "C++",
          progressColor: Colors.blue,
          progress: 75,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: isMobile,
          skill: "C#",
          progressColor: Colors.blue,
          progress: 75,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: isMobile,
          skill: "Java",
          progressColor: Colors.blue,
          progress: 90,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: isMobile,
          skill: "Python",
          progressColor: Colors.blue,
          progress: 75,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: isMobile,
          skill: "SQL",
          progressColor: Colors.blue,
          progress: 50,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: isMobile,
          skill: "HTML, CSS, JavaScript",
          progressColor: Colors.blue,
          progress: 100,
        ),
      ],
    );
  }
}
