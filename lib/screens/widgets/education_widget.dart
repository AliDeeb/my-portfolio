import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({
    super.key,
    required this.education,
    required this.time,
    required this.university,
    required this.firstDate,
    required this.isMobile,
    this.endDate,
  });
  final String education;
  final String time;
  final String university;
  final DateTime firstDate;
  final DateTime? endDate;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              education,
              style: isMobile
                  ? TextThemeStyles.labelSmall.copyWith(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: color,
                    )
                  : TextThemeStyles.titleSmall.copyWith(
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(100),
              ),
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
              child: Text(
                time,
                style: isMobile
                    ? TextThemeStyles.labelSmall.copyWith(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      )
                    : TextThemeStyles.bodySmall.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
              ),
            ),
          ],
        ),
        25.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.menu_book,
                  size: 10,
                  color: AppColors.greyColor200,
                ),
                5.horizontalSpace,
                Text(
                  university,
                  style: isMobile
                      ? TextThemeStyles.labelSmall.copyWith(
                          fontSize: 8.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        )
                      : TextThemeStyles.labelSmall.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  size: 10,
                  color: AppColors.greyColor200,
                ),
                5.horizontalSpace,
                Text(
                  "${DateFormat('MMMM d,y').format(firstDate)} - ${endDate == null ? '' : DateFormat('MMMM d,y').format(endDate!)}",
                  style: isMobile
                      ? TextThemeStyles.labelSmall.copyWith(
                          fontSize: 8.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        )
                      : TextThemeStyles.labelSmall.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                ),
              ],
            ),
          ],
        ),
        Divider(color: Colors.grey.shade100, height: 30),
      ],
    );
  }
}
