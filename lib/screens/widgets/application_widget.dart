import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';

class ApplicationWidget extends StatelessWidget {
  const ApplicationWidget({
    super.key,
    required this.applicationName,
    required this.asset,
    required this.googlePlayLink,
    required this.appleStoreLink,
    required this.isMobile,
  });

  final String applicationName;
  final String asset;
  final String? googlePlayLink;
  final String? appleStoreLink;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          applicationName,
          style: isMobile
              ? TextThemeStyles.labelMedium.copyWith(
                  fontWeight: FontWeight.w600,
                  color: color,
                )
              : TextThemeStyles.titleLarge.copyWith(
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
        ),
        10.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (googlePlayLink != null)
              InkWell(
                borderRadius: BorderRadius.circular(10.r),
                onTap: () async {
                  if (await canLaunchUrl(Uri.parse(googlePlayLink!))) {
                    launchUrl(Uri.parse(googlePlayLink!));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: SizedBox(
                          width: isMobile ? 75.w : 100.w,
                          height: isMobile ? 75.w : 100.w,
                          child: Image.asset(asset),
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        "Google play",
                        style: isMobile
                            ? TextThemeStyles.labelSmall.copyWith(
                                fontWeight: FontWeight.w600,
                                color: color,
                                decoration: TextDecoration.underline,
                              )
                            : TextThemeStyles.titleSmall.copyWith(
                                fontWeight: FontWeight.w600,
                                color: color,
                                decoration: TextDecoration.underline,
                              ),
                      )
                    ],
                  ),
                ),
              ),
            if (appleStoreLink != null) ...[
              100.horizontalSpace,
              InkWell(
                borderRadius: BorderRadius.circular(10.r),
                onTap: () async {
                  if (await canLaunchUrl(Uri.parse(appleStoreLink!))) {
                    launchUrl(Uri.parse(appleStoreLink!));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: SizedBox(
                          width: isMobile ? 75.w : 100.w,
                          height: isMobile ? 75.w : 100.w,
                          child: Image.asset(asset),
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        "Apple Store",
                        style: isMobile
                            ? TextThemeStyles.labelSmall.copyWith(
                                fontWeight: FontWeight.w600,
                                color: color,
                                decoration: TextDecoration.underline,
                              )
                            : TextThemeStyles.titleSmall.copyWith(
                                fontWeight: FontWeight.w600,
                                color: color,
                                decoration: TextDecoration.underline,
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
