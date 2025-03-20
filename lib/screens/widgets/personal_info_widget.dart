import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/theme/text_theme_styles.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_constants.dart';
import '../../core/theme/custom_theme_colors.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({
    super.key,
    this.isMobile = false,
  });

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final imageSize = 1.sw * (isMobile ? 0.25 : 0.15);
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
                style: isMobile
                    ? TextThemeStyles.headlineMedium.copyWith(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      )
                    : TextThemeStyles.displayMedium.copyWith(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
              ),
              10.verticalSpace,
              Text(
                "Flutter Developer",
                style: isMobile
                    ? TextThemeStyles.titleSmall.copyWith(
                        fontWeight: FontWeight.bold,
                        // fontSize: 10.sp,
                        color: textColor,
                      )
                    : TextThemeStyles.labelMedium.copyWith(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
              ),
            ],
          ),
          50.verticalSpace,

          // Contact info.
          Padding(
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 50.w : 100.w),
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
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20.w : 50.w,
                vertical: isMobile ? 10.h : 30.h,
              ),
            ),
            onPressed: onDownloadResumeTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.file_download_outlined,
                  size: isMobile ? 15 : 20,
                  color: Colors.white,
                ),
                10.horizontalSpace,
                Text(
                  "Download Resume",
                  style: isMobile
                      ? TextThemeStyles.bodySmall.copyWith(
                          color: Colors.white,
                        )
                      : TextThemeStyles.bodyLarge.copyWith(
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
                      height: isMobile ? 30.h : 50.h,
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
                      height: isMobile ? 30.h : 50.h,
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

  void onDownloadResumeTap() async {
    final uri = Uri.parse(
        "https://docs.google.com/document/d/1exNrLAESWLeb7SO5Vr9e5vZVwTLY7SqPj2pQLl5NuT8/edit?usp=drive_link");
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }

  void onLinkedInTap() async {
    final uri = Uri.parse("https://www.linkedin.com/in/ali-deeb-62b1561a5");
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }

  void onGithubTap() async {
    final uri = Uri.parse("https://github.com/AliDeeb");
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }
}
