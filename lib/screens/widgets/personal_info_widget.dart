import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/theme/text_theme_styles.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_constants.dart';
import '../../core/theme/custom_theme_colors.dart';
import 'dart:js' as js;

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final imageSize = 1.sw * 0.15;
    final textColor =
        Theme.of(context).extension<CustomThemeColors>()!.textColor;

    return Padding(
      padding: EdgeInsets.only(top: 100.h),
      child: Column(
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
                style: TextThemeStyles.displayMedium.copyWith(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              10.verticalSpace,
              Text(
                "Senior Flutter Developer",
                style: TextThemeStyles.labelMedium.copyWith(
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
                // const Divider(color: AppColors.greyColor100, height: 30),
                // _buildInfoRow(Icons.phone_outlined, "0888888888", context),
                const Divider(color: AppColors.greyColor100, height: 30),
                _buildInfoRow(Icons.location_pin, "Syria / Damascus", context),
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
                const Icon(
                  Icons.file_download_outlined,
                  size: 20,
                  color: Colors.white,
                ),
                10.horizontalSpace,
                Text(
                  "Download Resume",
                  style: TextThemeStyles.bodyLarge.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // social media links
          25.verticalSpace,
          SizedBox(
            height: 50.h,
            child: Wrap(
              spacing: 20.w,
              children: [
                InkWell(
                  onTap: onLinkedInTap,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      AppConstants.IMG_LINKEDIN_LOGO,
                      height: 50.h,
                    ),
                  ),
                ),
                InkWell(
                  onTap: onGithubTap,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      AppConstants.IMG_GITHUB_LOGO,
                      height: 50.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
          style: TextThemeStyles.labelSmall.copyWith(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ],
    );
  }

  void onDownloadResumeTap() {
    js.context.callMethod('open', [
      "https://docs.google.com/document/d/1exNrLAESWLeb7SO5Vr9e5vZVwTLY7SqPj2pQLl5NuT8/edit?usp=drive_link"
    ]);
  }

  void onLinkedInTap() {
    js.context
        .callMethod('open', ['https://www.linkedin.com/in/ali-deeb-62b1561a5']);
  }

  void onGithubTap() {
    js.context.callMethod('open', ['https://github.com/AliDeeb']);
  }
}
