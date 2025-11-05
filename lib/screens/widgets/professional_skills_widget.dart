import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';
import 'professional_skill_widget.dart';

class ProfessionalSkillsWidget extends StatefulWidget {
  const ProfessionalSkillsWidget({super.key, this.isMobile = false});
  final bool isMobile;

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
          style: widget.isMobile
              ? TextThemeStyles.titleSmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                )
              : TextThemeStyles.headlineSmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
        ),
        50.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: widget.isMobile,
          skill: "Problem-solving",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: widget.isMobile,
          skill: "Creativity",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: widget.isMobile,
          skill: "Communication",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: widget.isMobile,
          skill: "Critical thinking",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: widget.isMobile,
          skill: "Team work",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
        ProfessionalSkillWidget(
          isMobile: widget.isMobile,
          skill: "Analytical reasoning.",
          progressColor: Colors.blue,
          progress: 100,
        ),
        25.verticalSpace,
      ],
    )
        .animate()
        .slideY(
          begin: 0.05,
          end: 0,
          curve: Curves.ease,
        )
        .fade();
  }
}
