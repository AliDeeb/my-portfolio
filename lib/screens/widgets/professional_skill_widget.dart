import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/text_theme_styles.dart';

class ProfessionalSkillWidget extends StatelessWidget {
  const ProfessionalSkillWidget({
    super.key,
    required this.skill,
    required this.progressColor,
    required this.progress,
  });
  final String skill;
  final Color progressColor;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill,
          style: TextThemeStyles.bodyMedium.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
        10.verticalSpace,
        FAProgressBar(
          currentValue: progress,
          size: 5,
          backgroundColor: AppColors.greyColor200,
          progressColor: progressColor,
        )
      ],
    );
  }
}
