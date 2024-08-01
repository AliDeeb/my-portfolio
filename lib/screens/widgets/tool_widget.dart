import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';

class ToolWidget extends StatelessWidget {
  const ToolWidget({
    super.key,
    required this.name,
    required this.asset,
    required this.progressColor,
    required this.progress,
  });

  final String name;
  final String asset;
  final Color progressColor;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
        ),
        15.verticalSpace,
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: SizedBox(
                width: 60.w,
                height: 60.w,
                child: Image.asset(
                  asset,
                ),
              ),
            ),
            25.horizontalSpace,
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
        Divider(color: Colors.grey.shade300, height: 35),
      ],
    );
  }
}
