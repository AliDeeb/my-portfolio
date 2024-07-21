import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_constants.dart';
import '../../core/theme/custom_theme_colors.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final imageSize = 1.sw * 0.15;
    final textColor =
        Theme.of(context).extension<CustomThemeColors>()!.textColor;

    return Column(
      children: [
        // Name and Photo.
        Column(
          children: [
            Container(
              width: imageSize,
              height: imageSize,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AppConstants.IMG_PROFILE_IMAGE),
                ),
              ),
            ),
            30.verticalSpace,
            Text(
              "Ali Deeb",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
            ),
            10.verticalSpace,
            Text(
              "Senior Flutter Developer",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
            ),
          ],
        ),
        50.verticalSpace,

        // Contact info.
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.w),
          child: Column(
            children: [
              _buildInfoRow(
                  Icons.email_outlined, "ali1alideeb@gmail.com", context),
              const Divider(color: AppColors.greyColor100, height: 30),
              _buildInfoRow(Icons.phone_outlined, "0888888888", context),
              const Divider(color: AppColors.greyColor100, height: 30),
              _buildInfoRow(Icons.location_pin, "Damascus", context),
              const Divider(color: AppColors.greyColor100, height: 30),
            ],
          ),
        ),

        // resume.
        50.verticalSpace,
        FilledButton(
          style: FilledButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 30.h),
          ),
          onPressed: onDownloadResumeTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.file_download_outlined, size: 20),
              10.horizontalSpace,
              const Text("Download Resume"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String text, BuildContext context) {
    final textColor =
        Theme.of(context).extension<CustomThemeColors>()!.textColor;

    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.greyColor200,
          size: 20.sp,
        ),
        15.horizontalSpace,
        Text(
          text,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
        ),
      ],
    );
  }

  void onDownloadResumeTap() {}
}
