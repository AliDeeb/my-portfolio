import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/text_theme_styles.dart';

class ToolWidget extends StatelessWidget {
  const ToolWidget({
    super.key,
    required this.name,
    required this.asset,
    required this.progressColor,
    required this.progress,
    required this.isMobile,
  });

  final String name;
  final String asset;
  final Color progressColor;
  final double progress;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: isMobile
              ? TextThemeStyles.labelSmall.copyWith(
                  fontSize: 8.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                )
              : TextThemeStyles.bodyMedium.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
        ),
        15.verticalSpace,
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Container(
                color: Colors.white,
                width: isMobile ? 30.w : 40.w,
                height: isMobile ? 30.w : 40.w,
                child: Image.asset(asset),
              ),
            ),
            isMobile ? 10.horizontalSpace : 25.horizontalSpace,
            Expanded(
              child: FAProgressBar(
                currentValue: progress,
                size: 5,
                backgroundColor: AppColors.greyColor200,
                progressColor: progressColor,
              ),
            ),
          ],
        ),
        Divider(color: Colors.grey.shade300, height: 30),
      ],
    );
  }
}
